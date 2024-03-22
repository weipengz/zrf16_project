source  /home/ubuntu/casper/set_env.sh
source ./startsg ./startsg.local
#python /home/ubuntu/casper/mlib_devel/jasper_library/exec_flow.py -m /home/ubuntu/casper/zrf16_project/rfdc_awg/rfdc_awg.slx --middleware
#python /home/ubuntu/casper/mlib_devel/jasper_library/exec_flow.py -m /home/ubuntu/casper/zrf16_project/rfdc_awg/rfdc_awg.slx --middleware --backend
#python /home/ubuntu/casper/mlib_devel/jasper_library/exec_flow.py -m /home/ubuntu/casper/zrf16_project/rfdc_awg/rfdc_awg.slx --middleware --software
python /home/ubuntu/casper/mlib_devel/jasper_library/exec_flow.py -m /home/ubuntu/casper/zrf16_project/rfdc_awg/rfdc_awg.slx --vitis
