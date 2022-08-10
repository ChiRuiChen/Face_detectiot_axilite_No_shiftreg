set moduleName conv_2d_cl_me_ap_fixed_ap_fixed_16_4_5_3_0_config12_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_2d_cl_me<ap_fixed,ap_fixed<16,4,5,3,0>,config12>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {fifo 0 volatile }  }
	{ res_V_V int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ data_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ data_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_V_read sc_out sc_logic 1 signal 0 } 
	{ res_V_V_din sc_out sc_lv 16 signal 1 } 
	{ res_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ res_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "data_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "dout" }} , 
 	{ "name": "data_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "empty_n" }} , 
 	{ "name": "data_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "read" }} , 
 	{ "name": "res_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "din" }} , 
 	{ "name": "res_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_V", "role": "full_n" }} , 
 	{ "name": "res_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "conv_2d_cl_me_ap_fixed_ap_fixed_16_4_5_3_0_config12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2771551", "EstimateLatencyMax" : "2952901",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_fu_1965"}],
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "linebuffer_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_fu_1965", "Port" : "linebuffer_V"}]},
			{"Name" : "layer_in_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_fu_1965", "Port" : "output_V"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w12_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_in_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w12_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmpdata_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_out_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_fu_1965", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12185", "EstimateLatencyMax" : "12185",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuffer_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_fu_1965.linebuffer_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_fu_1965.tmpinput_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_5s_16s_21_2_1_U181", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U182", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U183", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U184", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U185", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U186", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U187", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U188", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U189", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U190", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U191", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U192", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U193", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U194", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U195", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U196", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U197", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U198", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U199", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U200", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U201", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U202", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U203", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U204", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U205", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U206", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U207", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U208", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U209", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U210", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U211", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U212", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U213", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U214", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U215", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U216", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U217", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U218", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U219", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U220", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U221", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U222", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U223", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U224", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U225", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U226", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U227", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U228", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U229", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U230", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U231", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U232", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U233", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U234", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U235", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U236", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U237", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U238", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U239", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U240", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U241", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U242", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U243", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U244", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_me_ap_fixed_ap_fixed_16_4_5_3_0_config12_s {
		data_V_V {Type I LastRead 2 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 39}
		linebuffer_V {Type IO LastRead -1 FirstWrite -1}
		layer_in_V {Type IO LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		pX_5 {Type IO LastRead -1 FirstWrite -1}
		w12_V {Type I LastRead -1 FirstWrite -1}}
	cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s {
		data_V {Type I LastRead 1 FirstWrite -1}
		output_V {Type IO LastRead 5 FirstWrite 7}
		linebuffer_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2771551", "Max" : "2952901"}
	, {"Name" : "Interval", "Min" : "2771551", "Max" : "2952901"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_V { ap_fifo {  { data_V_V_dout fifo_data 0 16 }  { data_V_V_empty_n fifo_status 0 1 }  { data_V_V_read fifo_update 1 1 } } }
	res_V_V { ap_fifo {  { res_V_V_din fifo_data 1 16 }  { res_V_V_full_n fifo_status 0 1 }  { res_V_V_write fifo_update 1 1 } } }
}
