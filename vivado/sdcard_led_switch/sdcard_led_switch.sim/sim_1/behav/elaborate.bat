@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 48c126123b084184be654e9e2cd7d3c1 -m64 --debug typical --relax --mt 2 -L axi_infrastructure_v1_1_0 -L xil_common_vip_v1_0_0 -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L axi_vip_v1_0_1 -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_14 -L proc_sys_reset_v5_0_11 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_12 -L fifo_generator_v13_1_4 -L axi_data_fifo_v2_1_11 -L axi_crossbar_v2_1_13 -L axi_protocol_converter_v2_1_12 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot sdcard_led_switch_wrapper_behav xil_defaultlib.sdcard_led_switch_wrapper xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
