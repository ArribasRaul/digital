set C_TypeInfoList {{ 
"cic" : [[], {"return": [[],"0"] }, [{"ExternC" : 0}], [ {"ENTRADA": [[], {"array": ["1", [64]]}] }],[],""], 
"1": [ "ap_fixed<16, 2, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 16}}],[[], {"scalar": { "int": 2}}],[[], {"scalar": { "2": 5}}],[[], {"scalar": { "3": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"3": [ "ap_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}], 
"2": [ "ap_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}], 
"0": [ "data_t", {"typedef": [[[],"4"],""]}], 
"4": [ "ap_fixed<46, 32, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 46}}],[[], {"scalar": { "int": 32}}],[[], {"scalar": { "2": 5}}],[[], {"scalar": { "3": 3}}],[[], {"scalar": { "int": 0}}]],""]}}]
}}
set moduleName cic
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {cic}
set C_modelType { int 46 }
set C_modelArgList {
	{ ENTRADA_V int 16 regular {axi_s 0 volatile  { ENTRADA_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ENTRADA_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "ENTRADA.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 46,"bitSlice":[{"low":0,"up":45,"cElement": [{"cName": "agg.result.V","cData": "int46","bit_use": { "low": 0,"up": 45},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ENTRADA_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ ENTRADA_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ ENTRADA_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ ap_return sc_out sc_lv 46 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ENTRADA_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ENTRADA_V", "role": "TDATA" }} , 
 	{ "name": "ENTRADA_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ENTRADA_V", "role": "TVALID" }} , 
 	{ "name": "ENTRADA_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "ENTRADA_V", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "cic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ENTRADA_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ENTRADA_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inte_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inte_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inte_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inte_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inte_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "deriv_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "deriv_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "deriv_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "deriv_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "deriv_V_4", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	cic {
		ENTRADA_V {Type I LastRead 1 FirstWrite -1}
		inte_V_0 {Type IO LastRead -1 FirstWrite -1}
		inte_V_1 {Type IO LastRead -1 FirstWrite -1}
		inte_V_2 {Type IO LastRead -1 FirstWrite -1}
		inte_V_3 {Type IO LastRead -1 FirstWrite -1}
		inte_V_4 {Type IO LastRead -1 FirstWrite -1}
		deriv_V_0 {Type IO LastRead -1 FirstWrite -1}
		deriv_V_1 {Type IO LastRead -1 FirstWrite -1}
		deriv_V_2 {Type IO LastRead -1 FirstWrite -1}
		deriv_V_3 {Type IO LastRead -1 FirstWrite -1}
		deriv_V_4 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "68", "Max" : "68"}
	, {"Name" : "Interval", "Min" : "69", "Max" : "69"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ENTRADA_V { axis {  { ENTRADA_V_TDATA in_data 0 16 }  { ENTRADA_V_TVALID in_vld 0 1 }  { ENTRADA_V_TREADY in_acc 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
