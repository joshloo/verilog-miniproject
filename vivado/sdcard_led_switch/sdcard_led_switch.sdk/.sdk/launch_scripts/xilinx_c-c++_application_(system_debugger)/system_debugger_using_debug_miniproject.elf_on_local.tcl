connect -url tcp:127.0.0.1:3121
source E:/XilinxSdk/verilog-miniproject/vivado/sdcard_led_switch/sdcard_led_switch.sdk/sdcard_led_switch_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786791A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786791A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786791A"} -index 0
dow E:/XilinxSdk/verilog-miniproject/vivado/sdcard_led_switch/sdcard_led_switch.sdk/miniproject/Debug/miniproject.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786791A"} -index 0
con
