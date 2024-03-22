import numpy as np

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
  m10 = adc_dat['m10']
  m20 = adc_dat['m20']
  m30 = adc_dat['m30']
  x_m00 = np.array(deinterleave_quad(m00, 16))
  x_m10 = np.array(deinterleave_quad(m10, 16))
  x_m20 = np.array(deinterleave_quad(m20, 16))
  x_m30 = np.array(deinterleave_quad(m30, 16))
  return x_m00, x_m10, x_m20, x_m30

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
    
  
