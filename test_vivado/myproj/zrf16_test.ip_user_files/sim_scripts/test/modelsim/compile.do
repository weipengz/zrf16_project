vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_10
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_10
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_26
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_23
vlib modelsim_lib/msim/axi_register_slice_v2_1_24
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_24

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 modelsim_lib/msim/axi_vip_v1_1_10
vmap zynq_ultra_ps_e_vip_v1_0_10 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_10
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_26 modelsim_lib/msim/axi_gpio_v2_0_26
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 modelsim_lib/msim/axi_data_fifo_v2_1_23
vmap axi_register_slice_v2_1_24 modelsim_lib/msim/axi_register_slice_v2_1_24
vmap axi_protocol_converter_v2_1_24 modelsim_lib/msim/axi_protocol_converter_v2_1_24

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_10 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L zynq_ultra_ps_e_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/test/ip/test_mpsoc_0/sim/test_mpsoc_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_26 -64 -93 \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/65b4/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/test/ip/test_axi_gpio_0_0/sim/test_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/test/ip/test_rst_mpsoc_99M_0/sim/test_rst_mpsoc_99M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23 -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24 -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_24 -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zrf16_test.gen/sources_1/bd/test/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/ec67/hdl" "+incdir+../../../../zrf16_test.gen/sources_1/bd/test/ipshared/bb17/hdl" "+incdir+/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/test/ip/test_auto_pc_0/sim/test_auto_pc_0.v" \
"../../../bd/test/sim/test.v" \

vlog -work xil_defaultlib \
"glbl.v"

