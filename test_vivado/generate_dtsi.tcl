hsi open_hw_design myproj/zrf16_test.hw/zrf16_test.xsa
hsi set_repo_path /home/ubuntu/casper/xilinx/device-tree-xlnx
hsi create_sw_design device-tree -os device_tree -proc psu_cortexa53_0
hsi set_property CONFIG.dt_overlay true [hsi::get_os]
#hsi set_property CONFIG.dt_zocl true [hsi get_os]          # if ZOCL is used
hsi generate_target -dir myproj/dts
hsi close_hw_design [hsi current_hw_design]
