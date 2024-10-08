# Copyright (C) 2023  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: two-agent-arbiter.tcl
# Generated on: Tue Oct  8 20:33:10 2024

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "two-agent-arbiter"]} {
		puts "Project two-agent-arbiter is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists two-agent-arbiter]} {
		project_open -revision top two-agent-arbiter
	} else {
		project_new -revision top two-agent-arbiter
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSXFC6D6F31C8ES
	set_global_assignment -name TOP_LEVEL_ENTITY golden_top
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 12.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "22:55:46  OCTOBER 03, 2012"
	set_global_assignment -name LAST_QUARTUS_VERSION "23.1std.0 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (Verilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name UNIPHY_SEQUENCER_DQS_CONFIG_ENABLE ON
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON
	set_global_assignment -name ECO_REGENERATE_REPORT ON
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "PASSIVE PARALLEL X16"
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name GENERATE_RBF_FILE ON
	set_global_assignment -name GENERATE_HEX_FILE ON
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN ON
	set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF
	set_global_assignment -name RESERVE_DATA15_THROUGH_DATA8_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name RESERVE_DATA7_THROUGH_DATA5_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name ENABLE_SIGNALTAP OFF
	set_global_assignment -name USE_SIGNALTAP_FILE output_files_sof_rpt/stp1.stp
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VERILOG_FILE golden_top.v
	set_location_assignment PIN_D25 -to clk_osc1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_osc1
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_rzq -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[5] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[6] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[7] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[8] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[9] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[10] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[11] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[12] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[13] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[14] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[15] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[16] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[17] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[18] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[19] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[20] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[21] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[22] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[23] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[24] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[25] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[26] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[27] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[28] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[29] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[30] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[31] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[32] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[33] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[34] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[35] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[36] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[37] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[38] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dq[39] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_p[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_p[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_p[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_p[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_p[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_n[0]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_n[1]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_n[2]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_n[3]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_dqs_n[4]
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_clk_p -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to ddr3_hps_clk_n -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[10] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[11] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[12] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[13] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[14] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[5] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[6] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[7] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[8] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_a[9] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_ba[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_ba[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_ba[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_casn -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_cke -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_csn -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_odt -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_rasn -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_wen -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_resetn -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dm[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dm[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dm[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dm[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_hps_dm[4] -tag __hps_sdram_p0
	set_location_assignment PIN_F26 -to ddr3_hps_a[0]
	set_location_assignment PIN_G30 -to ddr3_hps_a[1]
	set_location_assignment PIN_F28 -to ddr3_hps_a[2]
	set_location_assignment PIN_F30 -to ddr3_hps_a[3]
	set_location_assignment PIN_J25 -to ddr3_hps_a[4]
	set_location_assignment PIN_J27 -to ddr3_hps_a[5]
	set_location_assignment PIN_F29 -to ddr3_hps_a[6]
	set_location_assignment PIN_E28 -to ddr3_hps_a[7]
	set_location_assignment PIN_H27 -to ddr3_hps_a[8]
	set_location_assignment PIN_G26 -to ddr3_hps_a[9]
	set_location_assignment PIN_D29 -to ddr3_hps_a[10]
	set_location_assignment PIN_C30 -to ddr3_hps_a[11]
	set_location_assignment PIN_B30 -to ddr3_hps_a[12]
	set_location_assignment PIN_C29 -to ddr3_hps_a[13]
	set_location_assignment PIN_H25 -to ddr3_hps_a[14]
	set_location_assignment PIN_E29 -to ddr3_hps_ba[0]
	set_location_assignment PIN_J24 -to ddr3_hps_ba[1]
	set_location_assignment PIN_J23 -to ddr3_hps_ba[2]
	set_location_assignment PIN_K28 -to ddr3_hps_dm[0]
	set_location_assignment PIN_M28 -to ddr3_hps_dm[1]
	set_location_assignment PIN_R28 -to ddr3_hps_dm[2]
	set_location_assignment PIN_W30 -to ddr3_hps_dm[3]
	set_location_assignment PIN_W27 -to ddr3_hps_dm[4]
	set_location_assignment PIN_K23 -to ddr3_hps_dq[0]
	set_location_assignment PIN_K22 -to ddr3_hps_dq[1]
	set_location_assignment PIN_H30 -to ddr3_hps_dq[2]
	set_location_assignment PIN_G28 -to ddr3_hps_dq[3]
	set_location_assignment PIN_L25 -to ddr3_hps_dq[4]
	set_location_assignment PIN_L24 -to ddr3_hps_dq[5]
	set_location_assignment PIN_J30 -to ddr3_hps_dq[6]
	set_location_assignment PIN_J29 -to ddr3_hps_dq[7]
	set_location_assignment PIN_K26 -to ddr3_hps_dq[8]
	set_location_assignment PIN_L26 -to ddr3_hps_dq[9]
	set_location_assignment PIN_K29 -to ddr3_hps_dq[10]
	set_location_assignment PIN_K27 -to ddr3_hps_dq[11]
	set_location_assignment PIN_M26 -to ddr3_hps_dq[12]
	set_location_assignment PIN_M27 -to ddr3_hps_dq[13]
	set_location_assignment PIN_L28 -to ddr3_hps_dq[14]
	set_location_assignment PIN_M30 -to ddr3_hps_dq[15]
	set_location_assignment PIN_U26 -to ddr3_hps_dq[16]
	set_location_assignment PIN_T26 -to ddr3_hps_dq[17]
	set_location_assignment PIN_N29 -to ddr3_hps_dq[18]
	set_location_assignment PIN_N28 -to ddr3_hps_dq[19]
	set_location_assignment PIN_P26 -to ddr3_hps_dq[20]
	set_location_assignment PIN_P27 -to ddr3_hps_dq[21]
	set_location_assignment PIN_N27 -to ddr3_hps_dq[22]
	set_location_assignment PIN_R29 -to ddr3_hps_dq[23]
	set_location_assignment PIN_P24 -to ddr3_hps_dq[24]
	set_location_assignment PIN_P25 -to ddr3_hps_dq[25]
	set_location_assignment PIN_T29 -to ddr3_hps_dq[26]
	set_location_assignment PIN_T28 -to ddr3_hps_dq[27]
	set_location_assignment PIN_R27 -to ddr3_hps_dq[28]
	set_location_assignment PIN_R26 -to ddr3_hps_dq[29]
	set_location_assignment PIN_V30 -to ddr3_hps_dq[30]
	set_location_assignment PIN_W29 -to ddr3_hps_dq[31]
	set_location_assignment PIN_W26 -to ddr3_hps_dq[32]
	set_location_assignment PIN_R24 -to ddr3_hps_dq[33]
	set_location_assignment PIN_U27 -to ddr3_hps_dq[34]
	set_location_assignment PIN_V28 -to ddr3_hps_dq[35]
	set_location_assignment PIN_T25 -to ddr3_hps_dq[36]
	set_location_assignment PIN_U25 -to ddr3_hps_dq[37]
	set_location_assignment PIN_V27 -to ddr3_hps_dq[38]
	set_location_assignment PIN_Y29 -to ddr3_hps_dq[39]
	set_location_assignment PIN_M19 -to ddr3_hps_dqs_n[0]
	set_location_assignment PIN_N24 -to ddr3_hps_dqs_n[1]
	set_location_assignment PIN_R18 -to ddr3_hps_dqs_n[2]
	set_location_assignment PIN_R21 -to ddr3_hps_dqs_n[3]
	set_location_assignment PIN_T23 -to ddr3_hps_dqs_n[4]
	set_location_assignment PIN_N18 -to ddr3_hps_dqs_p[0]
	set_location_assignment PIN_N25 -to ddr3_hps_dqs_p[1]
	set_location_assignment PIN_R19 -to ddr3_hps_dqs_p[2]
	set_location_assignment PIN_R22 -to ddr3_hps_dqs_p[3]
	set_location_assignment PIN_T24 -to ddr3_hps_dqs_p[4]
	set_location_assignment PIN_E27 -to ddr3_hps_casn
	set_location_assignment PIN_L29 -to ddr3_hps_cke
	set_location_assignment PIN_L23 -to ddr3_hps_clk_n
	set_location_assignment PIN_M23 -to ddr3_hps_clk_p
	set_location_assignment PIN_H24 -to ddr3_hps_csn
	set_location_assignment PIN_H28 -to ddr3_hps_odt
	set_location_assignment PIN_D30 -to ddr3_hps_rasn
	set_location_assignment PIN_P30 -to ddr3_hps_resetn
	set_location_assignment PIN_C28 -to ddr3_hps_wen
	set_location_assignment PIN_D27 -to ddr3_hps_rzq
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_osc2
	set_location_assignment PIN_F25 -to clk_osc2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to mictor_rstn
	set_location_assignment PIN_C27 -to mictor_rstn
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hps_resetn
	set_location_assignment PIN_F23 -to hps_resetn
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_dipsw_hps
	set_location_assignment PIN_N30 -to user_dipsw_hps[0]
	set_location_assignment PIN_P29 -to user_dipsw_hps[1]
	set_location_assignment PIN_P22 -to user_dipsw_hps[2]
	set_location_assignment PIN_V20 -to user_dipsw_hps[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to user_led_hps
	set_location_assignment PIN_E17 -to user_led_hps[0]
	set_location_assignment PIN_E18 -to user_led_hps[1]
	set_location_assignment PIN_G17 -to user_led_hps[2]
	set_location_assignment PIN_C18 -to user_led_hps[3]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_pb_hps
	set_location_assignment PIN_T30 -to user_pb_hps[0]
	set_location_assignment PIN_U28 -to user_pb_hps[1]
	set_location_assignment PIN_T21 -to user_pb_hps[2]
	set_location_assignment PIN_U20 -to user_pb_hps[3]
	set_location_assignment PIN_E24 -to uart_rx
	set_location_assignment PIN_D24 -to uart_tx
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to uart_rx
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to uart_tx
	set_location_assignment PIN_D22 -to i2c_scl_hps
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to i2c_scl_hps
	set_location_assignment PIN_C23 -to i2c_sda_hps
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to i2c_sda_hps
	set_location_assignment PIN_H20 -to spi_csn
	set_location_assignment PIN_B23 -to spi_miso
	set_location_assignment PIN_C22 -to spi_mosi
	set_location_assignment PIN_A23 -to spi_sck
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to spi_csn
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to spi_miso
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to spi_mosi
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to spi_sck
	set_location_assignment PIN_D19 -to qspi_clk
	set_location_assignment PIN_C20 -to qspi_io[0]
	set_location_assignment PIN_H18 -to qspi_io[1]
	set_location_assignment PIN_A19 -to qspi_io[2]
	set_location_assignment PIN_E19 -to qspi_io[3]
	set_location_assignment PIN_A18 -to qspi_ss0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to qspi_clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to qspi_io
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to qspi_ss0
	set_location_assignment PIN_B16 -to sd_dat[3]
	set_location_assignment PIN_A16 -to sd_clk
	set_location_assignment PIN_F18 -to sd_cmd
	set_location_assignment PIN_G18 -to sd_dat[0]
	set_location_assignment PIN_C17 -to sd_dat[1]
	set_location_assignment PIN_D17 -to sd_dat[2]
	set_location_assignment PIN_B17 -to sd_pwren
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to sd_clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to sd_cmd
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to sd_pwren
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to sd_dat
	set_location_assignment PIN_N16 -to usb_clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to usb_clk
	set_location_assignment PIN_E16 -to usb_data[0]
	set_location_assignment PIN_G16 -to usb_data[1]
	set_location_assignment PIN_D16 -to usb_data[2]
	set_location_assignment PIN_D14 -to usb_data[3]
	set_location_assignment PIN_A15 -to usb_data[4]
	set_location_assignment PIN_C14 -to usb_data[5]
	set_location_assignment PIN_D15 -to usb_data[6]
	set_location_assignment PIN_M17 -to usb_data[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to usb_data
	set_location_assignment PIN_A14 -to usb_nxt
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to usb_nxt
	set_location_assignment PIN_E14 -to usb_dir
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to usb_stp
	set_location_assignment PIN_C15 -to usb_stp
	set_location_assignment PIN_H19 -to enet_hps_gtx_clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_gtx_clk
	set_location_assignment PIN_B21 -to enet_hps_mdc
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_mdc
	set_location_assignment PIN_E21 -to enet_hps_mdio
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_mdio
	set_location_assignment PIN_G20 -to enet_hps_rx_clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_rx_clk
	set_location_assignment PIN_K17 -to enet_hps_rx_dv
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_rx_dv
	set_location_assignment PIN_A21 -to enet_hps_rxd[0]
	set_location_assignment PIN_B20 -to enet_hps_rxd[1]
	set_location_assignment PIN_B18 -to enet_hps_rxd[2]
	set_location_assignment PIN_D21 -to enet_hps_rxd[3]
	set_location_assignment PIN_A20 -to enet_hps_tx_en
	set_location_assignment PIN_F20 -to enet_hps_txd[0]
	set_location_assignment PIN_J19 -to enet_hps_txd[1]
	set_location_assignment PIN_F21 -to enet_hps_txd[2]
	set_location_assignment PIN_F19 -to enet_hps_txd[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_rxd
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_tx_en
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_txd
	set_location_assignment PIN_C19 -to enet_hps_intn
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to enet_hps_intn
	set_location_assignment PIN_B22 -to can_0_rx
	set_location_assignment PIN_G22 -to can_0_tx
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to can_0_rx
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to can_0_tx
	set_location_assignment PIN_B26 -to trace_clk_mic
	set_location_assignment PIN_B25 -to trace_data[0]
	set_location_assignment PIN_C25 -to trace_data[1]
	set_location_assignment PIN_A25 -to trace_data[2]
	set_location_assignment PIN_H23 -to trace_data[3]
	set_location_assignment PIN_A24 -to trace_data[4]
	set_location_assignment PIN_G21 -to trace_data[5]
	set_location_assignment PIN_C24 -to trace_data[6]
	set_location_assignment PIN_E23 -to trace_data[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to trace_clk_mic
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to trace_data
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to usb_dir
	set_location_assignment PIN_AB27 -to clk_100m_fpga
	set_instance_assignment -name IO_STANDARD "2.5 V" -to clk_100m_fpga
	set_location_assignment PIN_AC18 -to clk_50m_fpga
	set_instance_assignment -name IO_STANDARD "1.5 V" -to clk_50m_fpga
	set_location_assignment PIN_AF14 -to clk_bot1
	set_instance_assignment -name IO_STANDARD "1.5 V" -to clk_bot1
	set_location_assignment PIN_Y26 -to clk_enet_fpga_p
	set_instance_assignment -name IO_STANDARD LVDS -to clk_enet_fpga_p
	set_location_assignment PIN_AA26 -to clk_top1
	set_instance_assignment -name IO_STANDARD "2.5 V" -to clk_top1
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_a
	set_location_assignment PIN_AJ14 -to ddr3_fpga_a[0]
	set_location_assignment PIN_AK14 -to ddr3_fpga_a[1]
	set_location_assignment PIN_AH12 -to ddr3_fpga_a[2]
	set_location_assignment PIN_AJ12 -to ddr3_fpga_a[3]
	set_location_assignment PIN_AG15 -to ddr3_fpga_a[4]
	set_location_assignment PIN_AH15 -to ddr3_fpga_a[5]
	set_location_assignment PIN_AK12 -to ddr3_fpga_a[6]
	set_location_assignment PIN_AK13 -to ddr3_fpga_a[7]
	set_location_assignment PIN_AH13 -to ddr3_fpga_a[8]
	set_location_assignment PIN_AH14 -to ddr3_fpga_a[9]
	set_location_assignment PIN_AJ9 -to ddr3_fpga_a[10]
	set_location_assignment PIN_AK9 -to ddr3_fpga_a[11]
	set_location_assignment PIN_AK7 -to ddr3_fpga_a[12]
	set_location_assignment PIN_AK8 -to ddr3_fpga_a[13]
	set_location_assignment PIN_AG12 -to ddr3_fpga_a[14]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_ba
	set_location_assignment PIN_AH10 -to ddr3_fpga_ba[0]
	set_location_assignment PIN_AJ11 -to ddr3_fpga_ba[1]
	set_location_assignment PIN_AK11 -to ddr3_fpga_ba[2]
	set_location_assignment PIN_AH7 -to ddr3_fpga_casn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_casn
	set_location_assignment PIN_AJ21 -to ddr3_fpga_cke
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_cke
	set_location_assignment PIN_AA15 -to ddr3_fpga_clk_n
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_clk_n
	set_location_assignment PIN_AA14 -to ddr3_fpga_clk_p
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_clk_p
	set_location_assignment PIN_AB15 -to ddr3_fpga_csn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_csn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dm
	set_location_assignment PIN_AH17 -to ddr3_fpga_dm[0]
	set_location_assignment PIN_AG23 -to ddr3_fpga_dm[1]
	set_location_assignment PIN_AK23 -to ddr3_fpga_dm[2]
	set_location_assignment PIN_AJ27 -to ddr3_fpga_dm[3]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dq
	set_location_assignment PIN_AF18 -to ddr3_fpga_dq[0]
	set_location_assignment PIN_AE17 -to ddr3_fpga_dq[1]
	set_location_assignment PIN_AG16 -to ddr3_fpga_dq[2]
	set_location_assignment PIN_AF16 -to ddr3_fpga_dq[3]
	set_location_assignment PIN_AH20 -to ddr3_fpga_dq[4]
	set_location_assignment PIN_AG21 -to ddr3_fpga_dq[5]
	set_location_assignment PIN_AJ16 -to ddr3_fpga_dq[6]
	set_location_assignment PIN_AH18 -to ddr3_fpga_dq[7]
	set_location_assignment PIN_AK18 -to ddr3_fpga_dq[8]
	set_location_assignment PIN_AJ17 -to ddr3_fpga_dq[9]
	set_location_assignment PIN_AG18 -to ddr3_fpga_dq[10]
	set_location_assignment PIN_AK19 -to ddr3_fpga_dq[11]
	set_location_assignment PIN_AG20 -to ddr3_fpga_dq[12]
	set_location_assignment PIN_AF19 -to ddr3_fpga_dq[13]
	set_location_assignment PIN_AJ20 -to ddr3_fpga_dq[14]
	set_location_assignment PIN_AH24 -to ddr3_fpga_dq[15]
	set_location_assignment PIN_AE19 -to ddr3_fpga_dq[16]
	set_location_assignment PIN_AE18 -to ddr3_fpga_dq[17]
	set_location_assignment PIN_AG22 -to ddr3_fpga_dq[18]
	set_location_assignment PIN_AK22 -to ddr3_fpga_dq[19]
	set_location_assignment PIN_AF21 -to ddr3_fpga_dq[20]
	set_location_assignment PIN_AF20 -to ddr3_fpga_dq[21]
	set_location_assignment PIN_AH23 -to ddr3_fpga_dq[22]
	set_location_assignment PIN_AK24 -to ddr3_fpga_dq[23]
	set_location_assignment PIN_AF24 -to ddr3_fpga_dq[24]
	set_location_assignment PIN_AF23 -to ddr3_fpga_dq[25]
	set_location_assignment PIN_AJ24 -to ddr3_fpga_dq[26]
	set_location_assignment PIN_AK26 -to ddr3_fpga_dq[27]
	set_location_assignment PIN_AE23 -to ddr3_fpga_dq[28]
	set_location_assignment PIN_AE22 -to ddr3_fpga_dq[29]
	set_location_assignment PIN_AG25 -to ddr3_fpga_dq[30]
	set_location_assignment PIN_AK27 -to ddr3_fpga_dq[31]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dqs_n
	set_location_assignment PIN_W16 -to ddr3_fpga_dqs_n[0]
	set_location_assignment PIN_W17 -to ddr3_fpga_dqs_n[1]
	set_location_assignment PIN_AA18 -to ddr3_fpga_dqs_n[2]
	set_location_assignment PIN_AD19 -to ddr3_fpga_dqs_n[3]
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_dqs_p
	set_location_assignment PIN_V16 -to ddr3_fpga_dqs_p[0]
	set_location_assignment PIN_V17 -to ddr3_fpga_dqs_p[1]
	set_location_assignment PIN_Y17 -to ddr3_fpga_dqs_p[2]
	set_location_assignment PIN_AC20 -to ddr3_fpga_dqs_p[3]
	set_location_assignment PIN_AE16 -to ddr3_fpga_odt
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_odt
	set_location_assignment PIN_AH8 -to ddr3_fpga_rasn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_rasn
	set_location_assignment PIN_AK21 -to ddr3_fpga_resetn
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_resetn
	set_location_assignment PIN_AJ6 -to ddr3_fpga_wen
	set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to ddr3_fpga_wen
	set_location_assignment PIN_H4 -to hsma_tx_p[3]
	set_location_assignment PIN_K4 -to hsma_tx_p[2]
	set_location_assignment PIN_M4 -to hsma_tx_p[1]
	set_location_assignment PIN_P4 -to hsma_tx_p[0]
	set_location_assignment PIN_H3 -to hsma_tx_n[3]
	set_location_assignment PIN_K3 -to hsma_tx_n[2]
	set_location_assignment PIN_M3 -to hsma_tx_n[1]
	set_location_assignment PIN_P3 -to hsma_tx_n[0]
	set_location_assignment PIN_C12 -to hsma_tx_d_p[16]
	set_location_assignment PIN_B13 -to hsma_tx_d_p[15]
	set_location_assignment PIN_C10 -to hsma_tx_d_p[14]
	set_location_assignment PIN_C8 -to hsma_tx_d_p[13]
	set_location_assignment PIN_A9 -to hsma_tx_d_p[12]
	set_location_assignment PIN_C7 -to hsma_tx_d_p[11]
	set_location_assignment PIN_A6 -to hsma_tx_d_p[10]
	set_location_assignment PIN_D5 -to hsma_tx_d_p[9]
	set_location_assignment PIN_A4 -to hsma_tx_d_p[8]
	set_location_assignment PIN_C3 -to hsma_tx_d_p[7]
	set_location_assignment PIN_B2 -to hsma_tx_d_p[6]
	set_location_assignment PIN_D2 -to hsma_tx_d_p[5]
	set_location_assignment PIN_E1 -to hsma_tx_d_p[4]
	set_location_assignment PIN_E3 -to hsma_tx_d_p[3]
	set_location_assignment PIN_E4 -to hsma_tx_d_p[2]
	set_location_assignment PIN_D6 -to hsma_tx_d_p[1]
	set_location_assignment PIN_E8 -to hsma_tx_d_p[0]
	set_instance_assignment -name IO_STANDARD LVDS -to hsma_tx_d_p
	set_location_assignment PIN_B11 -to hsma_tx_d_n[16]
	set_location_assignment PIN_A13 -to hsma_tx_d_n[15]
	set_location_assignment PIN_C9 -to hsma_tx_d_n[14]
	set_location_assignment PIN_B8 -to hsma_tx_d_n[13]
	set_location_assignment PIN_A8 -to hsma_tx_d_n[12]
	set_location_assignment PIN_B7 -to hsma_tx_d_n[11]
	set_location_assignment PIN_A5 -to hsma_tx_d_n[10]
	set_location_assignment PIN_C4 -to hsma_tx_d_n[9]
	set_location_assignment PIN_A3 -to hsma_tx_d_n[8]
	set_location_assignment PIN_B3 -to hsma_tx_d_n[7]
	set_location_assignment PIN_B1 -to hsma_tx_d_n[6]
	set_location_assignment PIN_C2 -to hsma_tx_d_n[5]
	set_location_assignment PIN_D1 -to hsma_tx_d_n[4]
	set_location_assignment PIN_E2 -to hsma_tx_d_n[3]
	set_location_assignment PIN_D4 -to hsma_tx_d_n[2]
	set_location_assignment PIN_C5 -to hsma_tx_d_n[1]
	set_location_assignment PIN_D7 -to hsma_tx_d_n[0]
	set_location_assignment PIN_AH2 -to hsma_sda
	set_location_assignment PIN_AA12 -to hsma_scl
	set_instance_assignment -name IO_STANDARD "2.5 V" -to hsma_scl
	set_location_assignment PIN_J2 -to hsma_rx_p[3]
	set_location_assignment PIN_L2 -to hsma_rx_p[2]
	set_location_assignment PIN_N2 -to hsma_rx_p[1]
	set_location_assignment PIN_R2 -to hsma_rx_p[0]
	set_location_assignment PIN_J1 -to hsma_rx_n[3]
	set_location_assignment PIN_L1 -to hsma_rx_n[2]
	set_location_assignment PIN_N1 -to hsma_rx_n[1]
	set_location_assignment PIN_R1 -to hsma_rx_n[0]
	set_location_assignment PIN_F15 -to hsma_rx_d_p[16]
	set_location_assignment PIN_C13 -to hsma_rx_d_p[15]
	set_location_assignment PIN_F13 -to hsma_rx_d_p[14]
	set_location_assignment PIN_E12 -to hsma_rx_d_p[13]
	set_location_assignment PIN_D11 -to hsma_rx_d_p[12]
	set_location_assignment PIN_E9 -to hsma_rx_d_p[11]
	set_location_assignment PIN_B6 -to hsma_rx_d_p[10]
	set_location_assignment PIN_F11 -to hsma_rx_d_p[9]
	set_location_assignment PIN_F9 -to hsma_rx_d_p[8]
	set_location_assignment PIN_G10 -to hsma_rx_d_p[7]
	set_location_assignment PIN_H8 -to hsma_rx_d_p[6]
	set_location_assignment PIN_J7 -to hsma_rx_d_p[5]
	set_location_assignment PIN_G12 -to hsma_rx_d_p[4]
	set_location_assignment PIN_K7 -to hsma_rx_d_p[3]
	set_location_assignment PIN_J10 -to hsma_rx_d_p[2]
	set_location_assignment PIN_K12 -to hsma_rx_d_p[1]
	set_location_assignment PIN_H14 -to hsma_rx_d_p[0]
	set_instance_assignment -name IO_STANDARD LVDS -to hsma_rx_d_p
	set_location_assignment PIN_F14 -to hsma_rx_d_n[16]
	set_location_assignment PIN_B12 -to hsma_rx_d_n[15]
	set_location_assignment PIN_E13 -to hsma_rx_d_n[14]
	set_location_assignment PIN_D12 -to hsma_rx_d_n[13]
	set_location_assignment PIN_D10 -to hsma_rx_d_n[12]
	set_location_assignment PIN_D9 -to hsma_rx_d_n[11]
	set_location_assignment PIN_B5 -to hsma_rx_d_n[10]
	set_location_assignment PIN_E11 -to hsma_rx_d_n[9]
	set_location_assignment PIN_F8 -to hsma_rx_d_n[8]
	set_location_assignment PIN_F10 -to hsma_rx_d_n[7]
	set_location_assignment PIN_G8 -to hsma_rx_d_n[6]
	set_location_assignment PIN_H7 -to hsma_rx_d_n[5]
	set_location_assignment PIN_G11 -to hsma_rx_d_n[4]
	set_location_assignment PIN_K8 -to hsma_rx_d_n[3]
	set_location_assignment PIN_J9 -to hsma_rx_d_n[2]
	set_location_assignment PIN_J12 -to hsma_rx_d_n[1]
	set_location_assignment PIN_G13 -to hsma_rx_d_n[0]
	set_location_assignment PIN_AD12 -to hsma_prsntn
	set_instance_assignment -name IO_STANDARD "2.5 V" -to hsma_prsntn
	set_location_assignment PIN_AG1 -to hsma_d[3]
	set_location_assignment PIN_AG7 -to hsma_d[2]
	set_location_assignment PIN_AF8 -to hsma_d[1]
	set_location_assignment PIN_AF9 -to hsma_d[0]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to hsma_d
	set_location_assignment PIN_A10 -to hsma_clk_out0
	set_instance_assignment -name IO_STANDARD "2.5 V" -to hsma_clk_out0
	set_location_assignment PIN_E7 -to hsma_clk_out_p2
	set_instance_assignment -name IO_STANDARD LVDS -to hsma_clk_out_p2
	set_location_assignment PIN_E6 -to hsma_clk_out_n2
	set_location_assignment PIN_K14 -to hsma_clk_in0
	set_instance_assignment -name IO_STANDARD "2.5 V" -to hsma_clk_in0
	set_location_assignment PIN_H15 -to hsma_clk_in_p2
	set_instance_assignment -name IO_STANDARD LVDS -to hsma_clk_in_p2
	set_location_assignment PIN_G15 -to hsma_clk_in_n2
	set_location_assignment PIN_AB22 -to enet1_tx_en
	set_location_assignment PIN_AB26 -to enet1_tx_d[3]
	set_location_assignment PIN_AA25 -to enet1_tx_d[2]
	set_location_assignment PIN_Y21 -to enet1_tx_d[1]
	set_location_assignment PIN_W20 -to enet1_tx_d[0]
	set_location_assignment PIN_W25 -to enet1_tx_clk_fb
	set_location_assignment PIN_AE28 -to enet1_rx_error
	set_location_assignment PIN_Y23 -to enet1_rx_dv
	set_location_assignment PIN_AE27 -to enet1_rx_d[3]
	set_location_assignment PIN_AB25 -to enet1_rx_d[2]
	set_location_assignment PIN_AA24 -to enet1_rx_d[1]
	set_location_assignment PIN_AB23 -to enet1_rx_d[0]
	set_location_assignment PIN_Y24 -to enet1_rx_clk
	set_location_assignment PIN_W24 -to enet2_tx_en
	set_location_assignment PIN_V23 -to enet2_tx_d[3]
	set_location_assignment PIN_AF28 -to enet2_tx_d[2]
	set_location_assignment PIN_AG28 -to enet2_tx_d[1]
	set_location_assignment PIN_AG27 -to enet2_tx_d[0]
	set_location_assignment PIN_AG30 -to enet2_tx_clk_fb
	set_location_assignment PIN_V25 -to enet2_rx_error
	set_location_assignment PIN_AC28 -to enet2_rx_dv
	set_location_assignment PIN_AC27 -to enet2_rx_d[3]
	set_location_assignment PIN_AD26 -to enet2_rx_d[2]
	set_location_assignment PIN_AF30 -to enet2_rx_d[1]
	set_location_assignment PIN_AF29 -to enet2_rx_d[0]
	set_location_assignment PIN_AH30 -to enet2_rx_clk
	set_location_assignment PIN_AC29 -to sdi_tx_sd_hdn
	set_location_assignment PIN_AA30 -to sdi_tx_en
	set_location_assignment PIN_AA28 -to sdi_rx_en
	set_location_assignment PIN_AB28 -to sdi_rx_bypass
	set_location_assignment PIN_AB30 -to sdi_rsti
	set_location_assignment PIN_AD30 -to sdi_fault
	set_location_assignment PIN_AB12 -to sdi_clk148_up
	set_location_assignment PIN_AF6 -to sdi_clk148_dn
	set_location_assignment PIN_AG10 -to user_dipsw_fpga[0]
	set_location_assignment PIN_AH9 -to user_dipsw_fpga[1]
	set_location_assignment PIN_AF11 -to user_dipsw_fpga[2]
	set_location_assignment PIN_AG11 -to user_dipsw_fpga[3]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_dipsw_fpga[0]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_dipsw_fpga[1]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_dipsw_fpga[2]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_dipsw_fpga[3]
	set_location_assignment PIN_AK2 -to user_led_fpga[0]
	set_location_assignment PIN_Y16 -to user_led_fpga[1]
	set_location_assignment PIN_W15 -to user_led_fpga[2]
	set_location_assignment PIN_AB17 -to user_led_fpga[3]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_led_fpga[0]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_led_fpga[1]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_led_fpga[2]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_led_fpga[3]
	set_location_assignment PIN_AA13 -to user_pb_fpga[0]
	set_location_assignment PIN_AB13 -to user_pb_fpga[1]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_pb_fpga[0]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to user_pb_fpga[1]
	set_location_assignment PIN_AG17 -to ddr3_fpga_rzq
	set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_fpga_rzq
	set_location_assignment PIN_W21 -to pcie_perstn_in
	set_location_assignment PIN_AG6 -to pcie_perstn_out
	set_location_assignment PIN_W7 -to pcie_refclk_n
	set_location_assignment PIN_W8 -to pcie_refclk_p
	set_location_assignment PIN_AE1 -to pcie_rx_n[0]
	set_location_assignment PIN_AC1 -to pcie_rx_n[1]
	set_location_assignment PIN_AA1 -to pcie_rx_n[2]
	set_location_assignment PIN_W1 -to pcie_rx_n[3]
	set_location_assignment PIN_AE2 -to pcie_rx_p[0]
	set_location_assignment PIN_AC2 -to pcie_rx_p[1]
	set_location_assignment PIN_AA2 -to pcie_rx_p[2]
	set_location_assignment PIN_W2 -to pcie_rx_p[3]
	set_location_assignment PIN_AD3 -to pcie_tx_n[0]
	set_location_assignment PIN_AB3 -to pcie_tx_n[1]
	set_location_assignment PIN_Y3 -to pcie_tx_n[2]
	set_location_assignment PIN_V3 -to pcie_tx_n[3]
	set_location_assignment PIN_AD4 -to pcie_tx_p[0]
	set_location_assignment PIN_AB4 -to pcie_tx_p[1]
	set_location_assignment PIN_Y4 -to pcie_tx_p[2]
	set_location_assignment PIN_V4 -to pcie_tx_p[3]
	set_location_assignment PIN_AF13 -to usb_b2_clk
	set_location_assignment PIN_AK28 -to usb_b2_data[0]
	set_location_assignment PIN_AD20 -to usb_b2_data[1]
	set_location_assignment PIN_AD21 -to usb_b2_data[2]
	set_location_assignment PIN_Y19 -to usb_b2_data[3]
	set_location_assignment PIN_AA20 -to usb_b2_data[4]
	set_location_assignment PIN_AH27 -to usb_b2_data[5]
	set_location_assignment PIN_AF25 -to usb_b2_data[6]
	set_location_assignment PIN_AC22 -to usb_b2_data[7]
	set_instance_assignment -name IO_STANDARD "1.5 V" -to usb_b2_clk
	set_instance_assignment -name IO_STANDARD "1.5 V" -to usb_b2_data
	set_location_assignment PIN_AD27 -to cpu_resetn
	set_location_assignment PIN_AG5 -to enet1_tx_error
	set_location_assignment PIN_AH5 -to enet2_tx_error
	set_location_assignment PIN_AJ1 -to enet_dual_resetn
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to pcie_tx_p
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to pcie_rx_p
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to hsma_tx_p
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to hsma_rx_p
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to gxb_rx_l4_p
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to gxb_tx_l4_p
	set_instance_assignment -name IO_STANDARD LVDS -to clk_148_p
	set_instance_assignment -name IO_STANDARD LVDS -to pcie_refclk_p
	set_location_assignment PIN_T9 -to clk_148_p
	set_location_assignment PIN_G7 -to i2c_scl_fpga
	set_location_assignment PIN_F6 -to i2c_sda_fpga
	set_location_assignment PIN_AJ4 -to usb_empty
	set_location_assignment PIN_AK3 -to usb_full
	set_location_assignment PIN_AE14 -to usb_oen
	set_location_assignment PIN_AJ5 -to usb_rdn
	set_location_assignment PIN_AD14 -to usb_resetn
	set_location_assignment PIN_AK4 -to usb_scl
	set_location_assignment PIN_AE13 -to usb_sda
	set_location_assignment PIN_AK6 -to usb_wrn
	set_location_assignment PIN_H12 -to enet_fpga_mdc
	set_location_assignment PIN_H13 -to enet_fpga_mdio
	set_location_assignment PIN_T8 -to clk_148_n
	set_location_assignment PIN_Y27 -to clk_enet_fpga_n
	set_location_assignment PIN_U1 -to gxb_rx_l4_n
	set_location_assignment PIN_U2 -to gxb_rx_l4_p
	set_location_assignment PIN_T3 -to gxb_tx_l4_n
	set_location_assignment PIN_T4 -to gxb_tx_l4_p
	set_location_assignment PIN_P8 -to refclk_ql2_n
	set_location_assignment PIN_P9 -to refclk_ql2_p
	set_location_assignment PIN_AE29 -to pcie_smbclk
	set_location_assignment PIN_J14 -to pcie_smbdat
	set_location_assignment PIN_W22 -to pcie_waken
	set_location_assignment PIN_AD25 -to max_fpga_miso
	set_location_assignment PIN_AE26 -to max_fpga_mosi
	set_location_assignment PIN_AJ29 -to max_fpga_sck
	set_location_assignment PIN_AC25 -to max_fpga_ssel
	set_location_assignment PIN_AD29 -to pcie_prsnt2_x1
	set_location_assignment PIN_A11 -to pcie_prsnt2_x4
	set_instance_assignment -name IO_STANDARD LVDS -to refclk_ql2_p
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[0] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[1] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[2] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[3] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[4] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[4] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[5] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[5] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[6] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[6] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[7] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[7] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[8] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[8] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[9] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[9] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[10] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[10] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[11] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[11] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[12] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[12] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[13] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[13] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[14] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[14] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[15] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[15] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[16] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[16] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[17] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[17] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[18] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[18] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[19] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[19] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[20] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[20] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[21] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[21] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[22] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[22] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[23] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[23] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[24] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[24] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[25] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[25] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[26] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[26] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[27] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[27] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[28] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[28] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[29] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[29] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[30] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[30] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[31] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[31] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[32] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[32] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[33] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[33] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[34] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[34] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[35] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[35] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[36] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[36] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[37] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[37] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[38] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[38] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[39] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dq[39] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_p[4]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[0]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[0]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[1]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[1]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[2]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[2]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[3]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[3]
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dqs_n[4]
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to ddr3_hps_clk_p -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITHOUT CALIBRATION" -to ddr3_hps_clk_n -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[0] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[10] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[11] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[12] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[13] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[14] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[1] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[2] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[3] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[4] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[5] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[6] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[7] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[8] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_a[9] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_ba[0] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_ba[1] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_ba[2] -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_casn -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_cke -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_csn -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_odt -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_rasn -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_wen -tag __hps_sdram_p0
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to ddr3_hps_resetn -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dm[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dm[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dm[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dm[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 50 OHM WITH CALIBRATION" -to ddr3_hps_dm[4] -tag __hps_sdram_p0
	set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to u0|hps_0|hps_io|border|hps_sdram_inst -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to hsma_rx_d_p
	set_instance_assignment -name INPUT_TERMINATION DIFFERENTIAL -to hsma_clk_in_p2
	set_instance_assignment -name INPUT_TERMINATION "OCT 100 OHMS" -to clk_148_p
	set_instance_assignment -name INPUT_TERMINATION "OCT 100 OHMS" -to pcie_refclk_p
	set_instance_assignment -name INPUT_TERMINATION "OCT 100 OHMS" -to refclk_ql2_p
	set_location_assignment PIN_AA16 -to clk_25m_fpga
	set_instance_assignment -name IO_STANDARD "1.5 V" -to clk_25m_fpga
	set_location_assignment PIN_AJ2 -to hsma_clk_out_p1
	set_location_assignment PIN_AC12 -to hsma_clk_out_n1
	set_location_assignment PIN_AG2 -to hsma_clk_in_p1
	set_location_assignment PIN_AH3 -to hsma_clk_in_n1
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
