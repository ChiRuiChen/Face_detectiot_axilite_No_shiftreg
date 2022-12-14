set moduleName Loop_2_proc189
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
set C_modelName {Loop_2_proc189}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_local_V_V int 16 regular {fifo 0 volatile }  }
	{ out_V int 16 regular {array 5 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_local_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_local_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ out_local_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ out_local_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_address0 sc_out sc_lv 3 signal 1 } 
	{ out_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_V_we0 sc_out sc_logic 1 signal 1 } 
	{ out_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_local_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_local_V_V", "role": "dout" }} , 
 	{ "name": "out_local_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_local_V_V", "role": "empty_n" }} , 
 	{ "name": "out_local_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_local_V_V", "role": "read" }} , 
 	{ "name": "out_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "address0" }} , 
 	{ "name": "out_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ce0" }} , 
 	{ "name": "out_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "we0" }} , 
 	{ "name": "out_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_2_proc189",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_local_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_local_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_2_proc189 {
		out_local_V_V {Type I LastRead 2 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_local_V_V { ap_fifo {  { out_local_V_V_dout fifo_data 0 16 }  { out_local_V_V_empty_n fifo_status 0 1 }  { out_local_V_V_read fifo_update 1 1 } } }
	out_V { ap_memory {  { out_V_address0 mem_address 1 3 }  { out_V_ce0 mem_ce 1 1 }  { out_V_we0 mem_we 1 1 }  { out_V_d0 mem_din 1 16 } } }
}
