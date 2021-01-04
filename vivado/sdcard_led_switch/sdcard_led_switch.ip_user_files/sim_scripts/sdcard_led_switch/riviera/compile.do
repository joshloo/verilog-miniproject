vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/xil_common_vip_v1_0_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v1_1_13
vlib riviera/axi_vip_v1_0_1
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_14
vlib riviera/proc_sys_reset_v5_0_11
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_12
vlib riviera/fifo_generator_v13_1_4
vlib riviera/axi_data_fifo_v2_1_11
vlib riviera/axi_crossbar_v2_1_13
vlib riviera/axi_protocol_converter_v2_1_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 riviera/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_13 riviera/axi_protocol_checker_v1_1_13
vmap axi_vip_v1_0_1 riviera/axi_vip_v1_0_1
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_14 riviera/axi_gpio_v2_0_14
vmap proc_sys_reset_v5_0_11 riviera/proc_sys_reset_v5_0_11
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_12 riviera/axi_register_slice_v2_1_12
vmap fifo_generator_v13_1_4 riviera/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_11 riviera/axi_data_fifo_v2_1_11
vmap axi_crossbar_v2_1_13 riviera/axi_crossbar_v2_1_13
vmap axi_protocol_converter_v2_1_12 riviera/axi_protocol_converter_v2_1_12

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0  -sv2k12 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_13  -sv2k12 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/8017/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1  -sv2k12 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl/axi_vip_v1_0_vl_rfs.sv" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ip/sdcard_led_switch_processing_system7_0_0/sim/sdcard_led_switch_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_14 -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/3b45/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ip/sdcard_led_switch_axi_gpio_0_1/sim/sdcard_led_switch_axi_gpio_0_1.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ip/sdcard_led_switch_rst_ps7_0_100M_0/sim/sdcard_led_switch_rst_ps7_0_100M_0.vhd" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ip/sdcard_led_switch_axi_gpio_1_0/sim/sdcard_led_switch_axi_gpio_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_12  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_11  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_13  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ip/sdcard_led_switch_xbar_0/sim/sdcard_led_switch_xbar_0.v" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/hdl/sdcard_led_switch.v" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/8cec/hdl/arbitor_v1_0_S00_AXI.v" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/8cec/hdl/arbitor_v1_0.v" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ip/sdcard_led_switch_arbitor_0_0/sim/sdcard_led_switch_arbitor_0_0.v" \

vlog -work axi_protocol_converter_v2_1_12  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/7e3a/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/2ad9/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/16a2/hdl/verilog" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/856d/hdl" "+incdir+../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ipshared/d5eb/hdl" \
"../../../../sdcard_led_switch.srcs/sources_1/bd/sdcard_led_switch/ip/sdcard_led_switch_auto_pc_0/sim/sdcard_led_switch_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

