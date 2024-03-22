# -------------- -------------- -------------- -------------- -------------- -------------- -------
# PL RF Clock Pin
# -------------- -------------- -------------- -------------- -------------- -------------- -------

#set_property PACKAGE_PIN AP22 [get_ports PL_SYSREF[0]]
#set_property IOSTANDARD LVDS_25 [get_ports {PL_SYSREF[*]}]

set_property PACKAGE_PIN AU12 [get_ports PL_CLK[0]]
set_property IOSTANDARD LVDS_25 [get_ports {PL_CLK[*]}]

# -------------- -------------- -------------- -------------- -------------- -------------- -------
# Timing Constraints
# -------------- -------------- -------------- -------------- -------------- -------------- -------
create_clock -period 8.138 -name pl_clk_p -waveform {0.000 4.069} [get_ports {PL_CLK}]

# Input Delay for PL_SYSREF to ensure MTS requirements via PG269
set_input_delay -clock [get_clocks PL_CLK_clk] -min -add_delay 2.000 [get_ports PL_SYSREF]
set_input_delay -clock [get_clocks PL_CLK_clk] -max -add_delay 2.031 [get_ports PL_SYSREF]

# -------------- -------------- -------------- -------------- -------------- -------------- -------
# User Define Pin
# -------------- -------------- -------------- -------------- -------------- -------------- -------
set_property PACKAGE_PIN AR10 [get_ports led_tri_o[0]]
set_property IOSTANDARD LVCMOS33 [get_ports led_tri_o[0]]

set_property PACKAGE_PIN AV11 [get_ports led_tri_o[1]]
set_property IOSTANDARD LVCMOS33 [get_ports led_tri_o[1]]

set_property PACKAGE_PIN AR12 [get_ports led_tri_o[2]]
set_property IOSTANDARD LVCMOS33 [get_ports led_tri_o[2]]

set_property PACKAGE_PIN AT12 [get_ports led_tri_o[3]]
set_property IOSTANDARD LVCMOS33 [get_ports led_tri_o[3]]