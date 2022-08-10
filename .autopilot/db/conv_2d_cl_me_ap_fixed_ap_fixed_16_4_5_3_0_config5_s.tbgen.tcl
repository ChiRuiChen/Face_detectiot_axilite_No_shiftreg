set moduleName conv_2d_cl_me_ap_fixed_ap_fixed_16_4_5_3_0_config5_s
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
set C_modelName {conv_2d_cl_me<ap_fixed,ap_fixed<16,4,5,3,0>,config5>}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "conv_2d_cl_me_ap_fixed_ap_fixed_16_4_5_3_0_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11892737", "EstimateLatencyMax" : "12308481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_fu_1101"}],
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "linebuffer_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_fu_1101", "Port" : "linebuffer_V_4"}]},
			{"Name" : "layer_in_V_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_fu_1101", "Port" : "output_V"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w5_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_in_V_8_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w5_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmpdata_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_out_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_fu_1101", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11545", "EstimateLatencyMax" : "11545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuffer_V_4", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_fu_1101.linebuffer_V_4_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_fu_1101.tmpinput_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_5s_16s_21_2_1_U55", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U56", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U57", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U58", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U59", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U60", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U61", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U62", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U63", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U64", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U65", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U66", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U67", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U68", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U69", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U70", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U71", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U72", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U73", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U74", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U75", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U76", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U77", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U78", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U79", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U80", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U81", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U82", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U83", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U84", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U85", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_mul_6s_16s_21_3_1_U86", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_me_ap_fixed_ap_fixed_16_4_5_3_0_config5_s {
		data_V_V {Type I LastRead 2 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 23}
		linebuffer_V_4 {Type IO LastRead -1 FirstWrite -1}
		layer_in_V_8 {Type IO LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		w5_V {Type I LastRead -1 FirstWrite -1}}
	cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s {
		data_V {Type I LastRead 1 FirstWrite -1}
		output_V {Type IO LastRead 5 FirstWrite 7}
		linebuffer_V_4 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11892737", "Max" : "12308481"}
	, {"Name" : "Interval", "Min" : "11892737", "Max" : "12308481"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_V { ap_fifo {  { data_V_V_dout fifo_data 0 16 }  { data_V_V_empty_n fifo_status 0 1 }  { data_V_V_read fifo_update 1 1 } } }
	res_V_V { ap_fifo {  { res_V_V_din fifo_data 1 16 }  { res_V_V_full_n fifo_status 0 1 }  { res_V_V_write fifo_update 1 1 } } }
}
