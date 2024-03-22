ls -t ./rfdc_awg/outputs/*.fpg | head -1
cp `ls -t ./rfdc_awg/outputs/*.fpg | head -1` ./rfdc_awg.fpg
ls -t ./rfdc_awg/outputs/*.dtbo | head -1
cp `ls -t ./rfdc_awg/outputs/*.dtbo | head -1` ./rfdc_awg.dtbo
