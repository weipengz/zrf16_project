variable proj_name
set proj_name zrf16_test

write_hw_platform -fixed -include_bit -force -file myproj/${proj_name}.hw/${proj_name}.xsa
