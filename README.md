Steps to run in VIVADO SDK  
(tested working in Xilinx SDK 2017.1)  

1. Open VIVADO SDK  
2. File -> Import -> General -> Projects from Folder or Archive  
3. Select directory to "vivado\sdcard_led_switch\sdcard_led_switch.sdk"  
4. Finish  
5. Then Ctrl + B to build  

If there's error about f_mount or ff related functions, it could be due to linker, do the below  

SDK Properties -> C/C++ Build -> Settings -> gcc linker -> Inferred Options -> Software Platform  

In Software Platform Inferred Flags options, add '-lxilffs'.  

C file resides in vivado/sdcard_led_switch/sdcard_led_switch.sdk/sdcard_led_switch/src/sdcard-led.c  