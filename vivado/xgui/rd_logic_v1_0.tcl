# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_COMMON_CLOCK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_EN_SAFETY_CKT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FIFO_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ALMOST_EMPTY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DATA_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RD_DATA_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SRST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_UNDERFLOW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PRELOAD_LATENCY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PRELOAD_REGS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PROG_EMPTY_THRESH_ASSERT_VAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PROG_EMPTY_THRESH_NEGATE_VAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PROG_EMPTY_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RD_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RD_PNTR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_UNDERFLOW_LOW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_USE_EMBEDDED_REG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_USE_FWFT_DATA_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VALID_LOW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WR_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WR_PNTR_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_COMMON_CLOCK { PARAM_VALUE.C_COMMON_CLOCK } {
	# Procedure called to update C_COMMON_CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_COMMON_CLOCK { PARAM_VALUE.C_COMMON_CLOCK } {
	# Procedure called to validate C_COMMON_CLOCK
	return true
}

proc update_PARAM_VALUE.C_EN_SAFETY_CKT { PARAM_VALUE.C_EN_SAFETY_CKT } {
	# Procedure called to update C_EN_SAFETY_CKT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_EN_SAFETY_CKT { PARAM_VALUE.C_EN_SAFETY_CKT } {
	# Procedure called to validate C_EN_SAFETY_CKT
	return true
}

proc update_PARAM_VALUE.C_FIFO_TYPE { PARAM_VALUE.C_FIFO_TYPE } {
	# Procedure called to update C_FIFO_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FIFO_TYPE { PARAM_VALUE.C_FIFO_TYPE } {
	# Procedure called to validate C_FIFO_TYPE
	return true
}

proc update_PARAM_VALUE.C_HAS_ALMOST_EMPTY { PARAM_VALUE.C_HAS_ALMOST_EMPTY } {
	# Procedure called to update C_HAS_ALMOST_EMPTY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ALMOST_EMPTY { PARAM_VALUE.C_HAS_ALMOST_EMPTY } {
	# Procedure called to validate C_HAS_ALMOST_EMPTY
	return true
}

proc update_PARAM_VALUE.C_HAS_DATA_COUNT { PARAM_VALUE.C_HAS_DATA_COUNT } {
	# Procedure called to update C_HAS_DATA_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DATA_COUNT { PARAM_VALUE.C_HAS_DATA_COUNT } {
	# Procedure called to validate C_HAS_DATA_COUNT
	return true
}

proc update_PARAM_VALUE.C_HAS_RD_DATA_COUNT { PARAM_VALUE.C_HAS_RD_DATA_COUNT } {
	# Procedure called to update C_HAS_RD_DATA_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RD_DATA_COUNT { PARAM_VALUE.C_HAS_RD_DATA_COUNT } {
	# Procedure called to validate C_HAS_RD_DATA_COUNT
	return true
}

proc update_PARAM_VALUE.C_HAS_RST { PARAM_VALUE.C_HAS_RST } {
	# Procedure called to update C_HAS_RST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RST { PARAM_VALUE.C_HAS_RST } {
	# Procedure called to validate C_HAS_RST
	return true
}

proc update_PARAM_VALUE.C_HAS_SRST { PARAM_VALUE.C_HAS_SRST } {
	# Procedure called to update C_HAS_SRST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SRST { PARAM_VALUE.C_HAS_SRST } {
	# Procedure called to validate C_HAS_SRST
	return true
}

proc update_PARAM_VALUE.C_HAS_UNDERFLOW { PARAM_VALUE.C_HAS_UNDERFLOW } {
	# Procedure called to update C_HAS_UNDERFLOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_UNDERFLOW { PARAM_VALUE.C_HAS_UNDERFLOW } {
	# Procedure called to validate C_HAS_UNDERFLOW
	return true
}

proc update_PARAM_VALUE.C_HAS_VALID { PARAM_VALUE.C_HAS_VALID } {
	# Procedure called to update C_HAS_VALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VALID { PARAM_VALUE.C_HAS_VALID } {
	# Procedure called to validate C_HAS_VALID
	return true
}

proc update_PARAM_VALUE.C_PRELOAD_LATENCY { PARAM_VALUE.C_PRELOAD_LATENCY } {
	# Procedure called to update C_PRELOAD_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PRELOAD_LATENCY { PARAM_VALUE.C_PRELOAD_LATENCY } {
	# Procedure called to validate C_PRELOAD_LATENCY
	return true
}

proc update_PARAM_VALUE.C_PRELOAD_REGS { PARAM_VALUE.C_PRELOAD_REGS } {
	# Procedure called to update C_PRELOAD_REGS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PRELOAD_REGS { PARAM_VALUE.C_PRELOAD_REGS } {
	# Procedure called to validate C_PRELOAD_REGS
	return true
}

proc update_PARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL { PARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL } {
	# Procedure called to update C_PROG_EMPTY_THRESH_ASSERT_VAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL { PARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL } {
	# Procedure called to validate C_PROG_EMPTY_THRESH_ASSERT_VAL
	return true
}

proc update_PARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL { PARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL } {
	# Procedure called to update C_PROG_EMPTY_THRESH_NEGATE_VAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL { PARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL } {
	# Procedure called to validate C_PROG_EMPTY_THRESH_NEGATE_VAL
	return true
}

proc update_PARAM_VALUE.C_PROG_EMPTY_TYPE { PARAM_VALUE.C_PROG_EMPTY_TYPE } {
	# Procedure called to update C_PROG_EMPTY_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PROG_EMPTY_TYPE { PARAM_VALUE.C_PROG_EMPTY_TYPE } {
	# Procedure called to validate C_PROG_EMPTY_TYPE
	return true
}

proc update_PARAM_VALUE.C_RD_DEPTH { PARAM_VALUE.C_RD_DEPTH } {
	# Procedure called to update C_RD_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RD_DEPTH { PARAM_VALUE.C_RD_DEPTH } {
	# Procedure called to validate C_RD_DEPTH
	return true
}

proc update_PARAM_VALUE.C_RD_PNTR_WIDTH { PARAM_VALUE.C_RD_PNTR_WIDTH } {
	# Procedure called to update C_RD_PNTR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RD_PNTR_WIDTH { PARAM_VALUE.C_RD_PNTR_WIDTH } {
	# Procedure called to validate C_RD_PNTR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UNDERFLOW_LOW { PARAM_VALUE.C_UNDERFLOW_LOW } {
	# Procedure called to update C_UNDERFLOW_LOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UNDERFLOW_LOW { PARAM_VALUE.C_UNDERFLOW_LOW } {
	# Procedure called to validate C_UNDERFLOW_LOW
	return true
}

proc update_PARAM_VALUE.C_USE_EMBEDDED_REG { PARAM_VALUE.C_USE_EMBEDDED_REG } {
	# Procedure called to update C_USE_EMBEDDED_REG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_EMBEDDED_REG { PARAM_VALUE.C_USE_EMBEDDED_REG } {
	# Procedure called to validate C_USE_EMBEDDED_REG
	return true
}

proc update_PARAM_VALUE.C_USE_FWFT_DATA_COUNT { PARAM_VALUE.C_USE_FWFT_DATA_COUNT } {
	# Procedure called to update C_USE_FWFT_DATA_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_FWFT_DATA_COUNT { PARAM_VALUE.C_USE_FWFT_DATA_COUNT } {
	# Procedure called to validate C_USE_FWFT_DATA_COUNT
	return true
}

proc update_PARAM_VALUE.C_VALID_LOW { PARAM_VALUE.C_VALID_LOW } {
	# Procedure called to update C_VALID_LOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VALID_LOW { PARAM_VALUE.C_VALID_LOW } {
	# Procedure called to validate C_VALID_LOW
	return true
}

proc update_PARAM_VALUE.C_WR_DEPTH { PARAM_VALUE.C_WR_DEPTH } {
	# Procedure called to update C_WR_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WR_DEPTH { PARAM_VALUE.C_WR_DEPTH } {
	# Procedure called to validate C_WR_DEPTH
	return true
}

proc update_PARAM_VALUE.C_WR_PNTR_WIDTH { PARAM_VALUE.C_WR_PNTR_WIDTH } {
	# Procedure called to update C_WR_PNTR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WR_PNTR_WIDTH { PARAM_VALUE.C_WR_PNTR_WIDTH } {
	# Procedure called to validate C_WR_PNTR_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_EN_SAFETY_CKT { MODELPARAM_VALUE.C_EN_SAFETY_CKT PARAM_VALUE.C_EN_SAFETY_CKT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_EN_SAFETY_CKT}] ${MODELPARAM_VALUE.C_EN_SAFETY_CKT}
}

proc update_MODELPARAM_VALUE.C_COMMON_CLOCK { MODELPARAM_VALUE.C_COMMON_CLOCK PARAM_VALUE.C_COMMON_CLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_COMMON_CLOCK}] ${MODELPARAM_VALUE.C_COMMON_CLOCK}
}

proc update_MODELPARAM_VALUE.C_HAS_ALMOST_EMPTY { MODELPARAM_VALUE.C_HAS_ALMOST_EMPTY PARAM_VALUE.C_HAS_ALMOST_EMPTY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ALMOST_EMPTY}] ${MODELPARAM_VALUE.C_HAS_ALMOST_EMPTY}
}

proc update_MODELPARAM_VALUE.C_HAS_RD_DATA_COUNT { MODELPARAM_VALUE.C_HAS_RD_DATA_COUNT PARAM_VALUE.C_HAS_RD_DATA_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RD_DATA_COUNT}] ${MODELPARAM_VALUE.C_HAS_RD_DATA_COUNT}
}

proc update_MODELPARAM_VALUE.C_USE_FWFT_DATA_COUNT { MODELPARAM_VALUE.C_USE_FWFT_DATA_COUNT PARAM_VALUE.C_USE_FWFT_DATA_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_FWFT_DATA_COUNT}] ${MODELPARAM_VALUE.C_USE_FWFT_DATA_COUNT}
}

proc update_MODELPARAM_VALUE.C_HAS_DATA_COUNT { MODELPARAM_VALUE.C_HAS_DATA_COUNT PARAM_VALUE.C_HAS_DATA_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DATA_COUNT}] ${MODELPARAM_VALUE.C_HAS_DATA_COUNT}
}

proc update_MODELPARAM_VALUE.C_HAS_RST { MODELPARAM_VALUE.C_HAS_RST PARAM_VALUE.C_HAS_RST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RST}] ${MODELPARAM_VALUE.C_HAS_RST}
}

proc update_MODELPARAM_VALUE.C_HAS_SRST { MODELPARAM_VALUE.C_HAS_SRST PARAM_VALUE.C_HAS_SRST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SRST}] ${MODELPARAM_VALUE.C_HAS_SRST}
}

proc update_MODELPARAM_VALUE.C_HAS_VALID { MODELPARAM_VALUE.C_HAS_VALID PARAM_VALUE.C_HAS_VALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VALID}] ${MODELPARAM_VALUE.C_HAS_VALID}
}

proc update_MODELPARAM_VALUE.C_VALID_LOW { MODELPARAM_VALUE.C_VALID_LOW PARAM_VALUE.C_VALID_LOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VALID_LOW}] ${MODELPARAM_VALUE.C_VALID_LOW}
}

proc update_MODELPARAM_VALUE.C_HAS_UNDERFLOW { MODELPARAM_VALUE.C_HAS_UNDERFLOW PARAM_VALUE.C_HAS_UNDERFLOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_UNDERFLOW}] ${MODELPARAM_VALUE.C_HAS_UNDERFLOW}
}

proc update_MODELPARAM_VALUE.C_UNDERFLOW_LOW { MODELPARAM_VALUE.C_UNDERFLOW_LOW PARAM_VALUE.C_UNDERFLOW_LOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UNDERFLOW_LOW}] ${MODELPARAM_VALUE.C_UNDERFLOW_LOW}
}

proc update_MODELPARAM_VALUE.C_PRELOAD_LATENCY { MODELPARAM_VALUE.C_PRELOAD_LATENCY PARAM_VALUE.C_PRELOAD_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PRELOAD_LATENCY}] ${MODELPARAM_VALUE.C_PRELOAD_LATENCY}
}

proc update_MODELPARAM_VALUE.C_PRELOAD_REGS { MODELPARAM_VALUE.C_PRELOAD_REGS PARAM_VALUE.C_PRELOAD_REGS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PRELOAD_REGS}] ${MODELPARAM_VALUE.C_PRELOAD_REGS}
}

proc update_MODELPARAM_VALUE.C_RD_DEPTH { MODELPARAM_VALUE.C_RD_DEPTH PARAM_VALUE.C_RD_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RD_DEPTH}] ${MODELPARAM_VALUE.C_RD_DEPTH}
}

proc update_MODELPARAM_VALUE.C_RD_PNTR_WIDTH { MODELPARAM_VALUE.C_RD_PNTR_WIDTH PARAM_VALUE.C_RD_PNTR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RD_PNTR_WIDTH}] ${MODELPARAM_VALUE.C_RD_PNTR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_WR_DEPTH { MODELPARAM_VALUE.C_WR_DEPTH PARAM_VALUE.C_WR_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WR_DEPTH}] ${MODELPARAM_VALUE.C_WR_DEPTH}
}

proc update_MODELPARAM_VALUE.C_WR_PNTR_WIDTH { MODELPARAM_VALUE.C_WR_PNTR_WIDTH PARAM_VALUE.C_WR_PNTR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WR_PNTR_WIDTH}] ${MODELPARAM_VALUE.C_WR_PNTR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_PROG_EMPTY_TYPE { MODELPARAM_VALUE.C_PROG_EMPTY_TYPE PARAM_VALUE.C_PROG_EMPTY_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PROG_EMPTY_TYPE}] ${MODELPARAM_VALUE.C_PROG_EMPTY_TYPE}
}

proc update_MODELPARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL { MODELPARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL PARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL}] ${MODELPARAM_VALUE.C_PROG_EMPTY_THRESH_ASSERT_VAL}
}

proc update_MODELPARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL { MODELPARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL PARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL}] ${MODELPARAM_VALUE.C_PROG_EMPTY_THRESH_NEGATE_VAL}
}

proc update_MODELPARAM_VALUE.C_USE_EMBEDDED_REG { MODELPARAM_VALUE.C_USE_EMBEDDED_REG PARAM_VALUE.C_USE_EMBEDDED_REG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_EMBEDDED_REG}] ${MODELPARAM_VALUE.C_USE_EMBEDDED_REG}
}

proc update_MODELPARAM_VALUE.C_FIFO_TYPE { MODELPARAM_VALUE.C_FIFO_TYPE PARAM_VALUE.C_FIFO_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FIFO_TYPE}] ${MODELPARAM_VALUE.C_FIFO_TYPE}
}

