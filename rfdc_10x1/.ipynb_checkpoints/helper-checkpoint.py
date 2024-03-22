import numpy as np
import matplotlib.pyplot as plt

def toSigned(v, bits):
  mask = 1 << (bits-1)
  return -(v & mask) | (v & (mask-1))

def capture_snapshots(fpga):
  snapshot_data = {}
  for ss in fpga.snapshots:
    ss.arm()

  fpga.registers.snapshot_ctrl.write(start='pulse')
  for ss in fpga.snapshots:
    dat = ss.read(arm=False)['data']

    for (k,v) in dat.items():
      snapshot_data[k] = v

  return snapshot_data

def deinterleave_quad(samples, bits=16):
  x = []
  for s in samples:
    x0 = toSigned(0xffff & (s >> 0) , bits)
    x1 = toSigned(0xffff & (s >> 16), bits)
    x2 = toSigned(0xffff & (s >> 32), bits)
    x3 = toSigned(0xffff & (s >> 48), bits)
    x4 = toSigned(0xffff & (s >> 64) , bits)
    x5 = toSigned(0xffff & (s >> 80), bits)
    x6 = toSigned(0xffff & (s >> 96), bits)
    x7 = toSigned(0xffff & (s >> 112), bits)

    x.append(x0)
    x.append(x1)
    x.append(x2)
    x.append(x3)
    x.append(x4)
    x.append(x5)
    x.append(x6)
    x.append(x7)
        
  return x

def capture(fpga):
  adc_dat = capture_snapshots(fpga)
  m00 = adc_dat['m00']
  x_m00 = np.array(deinterleave_quad(m00, 16))
  return x_m00

def capture_u(fpga):
  adc_dat = capture_snapshots(fpga)
  u1 = adc_dat['u1']
  u2 = adc_dat['u2']
  u1 = np.array(deinterleave_quad(u1, 16))
  u2 = np.array(deinterleave_quad(u2, 16))
  return u1, u2

def packet_write_data(data_seq):
    write_data = np.zeros(int(len(data_seq)/2))
    for i in range(int(len(data_seq)/2)):
        data1 = data_seq[2*i].to_bytes(2,'big',signed=True)
        data2 = data_seq[2*i+1].to_bytes(2,'big',signed=True)
        int_to_write = data1+data2
        write_data[i] = int.from_bytes(int_to_write,'big')
    write_data = np.array(write_data,dtype=int)
    return write_data

def depacket_read_data(dat):
    read_data = np.zeros(int(len(dat)/2))
    for i in range(len(read_data)):
        read_data[i] = int.from_bytes([dat[2*i],dat[2*i+1]],'big',signed=True)
    return read_data

def packet_write_data_bytes(data_seq):
    data_bytes_list = []
    for i in range(int(len(data_seq)/2)):
        data1 = data_seq[2*i].to_bytes(2,'big',signed=True)
        data2 = data_seq[2*i+1].to_bytes(2,'big',signed=True)
        data_bytes_list.append(data1)
        data_bytes_list.append(data2)
    data_bytes = b''.join(data_bytes_list)
    return data_bytes

def upload_trig(zrf16, data, data_amplitute = 32767):
    data /= max(np.abs(data))
    data *= data_amplitute
    bram_odd = zrf16.sbrams['ram_trig_odd']
    bram_even = zrf16.sbrams['ram_trig_even']
    seq_len = bram_odd.length_bytes
    data_seq = np.zeros(seq_len)
    data_length = int(len(data)/2)
    data_seq[:2*data_length] = data
    data_seq = np.array(data_seq,dtype=int)
    data_seq = data_seq.tolist()
    data_seq1 = []
    data_seq2 = []
    for i in range(int(seq_len/16)):
        data_seq1.extend(data_seq[16*i+8:16*i+16])
        data_seq2.extend(data_seq[16*i:16*i+8])
    write_data_bytes1 = packet_write_data_bytes(data_seq1)
    write_data_bytes2 = packet_write_data_bytes(data_seq2)
    bram_odd.write_blind(write_data_bytes1)
    bram_even.write_blind(write_data_bytes2)
    zrf16.write_int('data_length',int(data_length/8)-1)
    zrf16.write_int('ram_trig_enable',1)

def enable_dac(zrf16, dac_id, enable = 1):
    zrf16.write_int('ram_dac{}_enable'.format(dac_id),enable)

def upload_dac(zrf16, dac_id, data, data_amplitute = 16383):
    data /= max(np.abs(data))
    data *= data_amplitute
    bram_odd = zrf16.sbrams['ram_dac{}_odd'.format(dac_id)]
    bram_even = zrf16.sbrams['ram_dac{}_even'.format(dac_id)]
    seq_len = bram_odd.length_bytes
    data_seq = np.zeros(seq_len)
    data_length = int(len(data)/2)
    data_seq[:2*data_length] = data
    data_seq = np.array(data_seq,dtype=int)
    data_seq = data_seq.tolist()
    data_seq1 = []
    data_seq2 = []
    for i in range(int(seq_len/16)):
        data_seq1.extend(data_seq[16*i+8:16*i+16])
        data_seq2.extend(data_seq[16*i:16*i+8])
    write_data_bytes1 = packet_write_data_bytes(data_seq1)
    write_data_bytes2 = packet_write_data_bytes(data_seq2)
    bram_odd.write_blind(write_data_bytes1)
    bram_even.write_blind(write_data_bytes2)
    zrf16.write_int('data_length',int(data_length/8)-1)
    
def pulse_shaping(bits, sps = 8, num_taps = 101, beta = 0.35):
    num_symbols = len(bits)
    bits = np.concatenate([bits,bits,bits])
    x = np.array([])
    for bit in bits:
        pulse = np.zeros(sps)
        pulse[0] = bit # set the first value to either a 1 or -1
        x = np.concatenate((x, pulse)) # add the 8 samples to the signal

    # Create our raised-cosine filter
    Ts = sps # Assume sample rate is 1 Hz, so sample period is 1, so *symbol* period is 8
    t = np.arange(num_taps) - (num_taps-1)//2
    h = np.sinc(t/Ts) * np.cos(np.pi*beta*t/Ts) / (1 - (2*beta*t/Ts)**2)

    # Filter our signal, in order to apply the pulse shaping
    x_shaped = np.convolve(x, h)
    idx0 = num_taps//2
    x_shaped = x_shaped[idx0:idx0+sps*num_symbols]
    return x_shaped

def check_dac_ram(zrf16, dac_id, data_length):
    bram_odd = zrf16.sbrams['ram_dac{}_odd'.format(dac_id)]
    bram_even = zrf16.sbrams['ram_dac{}_even'.format(dac_id)]
    read_data1 = depacket_read_data(bram_odd.read_raw()[0])
    read_data2 = depacket_read_data(bram_even.read_raw()[0])
    seq_len = len(read_data1)
    n = np.arange(2*data_length)
    n1 = []
    n2 = []
    for i in range(int(seq_len/16)):
        n1.extend(n[16*i+8:16*i+16])
        n2.extend(n[16*i:16*i+8])
    plt.figure(figsize=(10,3))
    plt.plot(n1[:data_length],read_data1[:data_length],'o')
    plt.plot(n2[:data_length],read_data2[:data_length],'o')
    plt.tight_layout()