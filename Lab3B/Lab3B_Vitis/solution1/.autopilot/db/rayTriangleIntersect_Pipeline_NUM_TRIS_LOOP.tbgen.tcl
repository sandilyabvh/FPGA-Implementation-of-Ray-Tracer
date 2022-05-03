set moduleName rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln69 int 32 regular  }
	{ dir_V_1_068_cast int 32 regular  }
	{ dir_V_21_069_cast int 32 regular  }
	{ P2_V_0 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P1_V_0 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P2_V_1 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P1_V_1 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P2_V_2 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P1_V_2 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P3_V_0 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P3_V_1 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ P3_V_2 int 32 regular {array 6320 { 1 3 } 1 1 }  }
	{ intersectIndex_BRAM_out int 16 regular {pointer 1}  }
	{ t_V_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln69", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dir_V_1_068_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dir_V_21_069_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P2_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P1_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P2_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P1_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P2_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P1_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P3_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P3_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P3_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "intersectIndex_BRAM_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_V_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln69 sc_in sc_lv 32 signal 0 } 
	{ dir_V_1_068_cast sc_in sc_lv 32 signal 1 } 
	{ dir_V_21_069_cast sc_in sc_lv 32 signal 2 } 
	{ P2_V_0_address0 sc_out sc_lv 13 signal 3 } 
	{ P2_V_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ P2_V_0_q0 sc_in sc_lv 32 signal 3 } 
	{ P1_V_0_address0 sc_out sc_lv 13 signal 4 } 
	{ P1_V_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ P1_V_0_q0 sc_in sc_lv 32 signal 4 } 
	{ P2_V_1_address0 sc_out sc_lv 13 signal 5 } 
	{ P2_V_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ P2_V_1_q0 sc_in sc_lv 32 signal 5 } 
	{ P1_V_1_address0 sc_out sc_lv 13 signal 6 } 
	{ P1_V_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ P1_V_1_q0 sc_in sc_lv 32 signal 6 } 
	{ P2_V_2_address0 sc_out sc_lv 13 signal 7 } 
	{ P2_V_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ P2_V_2_q0 sc_in sc_lv 32 signal 7 } 
	{ P1_V_2_address0 sc_out sc_lv 13 signal 8 } 
	{ P1_V_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ P1_V_2_q0 sc_in sc_lv 32 signal 8 } 
	{ P3_V_0_address0 sc_out sc_lv 13 signal 9 } 
	{ P3_V_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ P3_V_0_q0 sc_in sc_lv 32 signal 9 } 
	{ P3_V_1_address0 sc_out sc_lv 13 signal 10 } 
	{ P3_V_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ P3_V_1_q0 sc_in sc_lv 32 signal 10 } 
	{ P3_V_2_address0 sc_out sc_lv 13 signal 11 } 
	{ P3_V_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ P3_V_2_q0 sc_in sc_lv 32 signal 11 } 
	{ intersectIndex_BRAM_out sc_out sc_lv 16 signal 12 } 
	{ intersectIndex_BRAM_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ t_V_out sc_out sc_lv 32 signal 13 } 
	{ t_V_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln69", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln69", "role": "default" }} , 
 	{ "name": "dir_V_1_068_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dir_V_1_068_cast", "role": "default" }} , 
 	{ "name": "dir_V_21_069_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dir_V_21_069_cast", "role": "default" }} , 
 	{ "name": "P2_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P2_V_0", "role": "address0" }} , 
 	{ "name": "P2_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_0", "role": "ce0" }} , 
 	{ "name": "P2_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_V_0", "role": "q0" }} , 
 	{ "name": "P1_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1_V_0", "role": "address0" }} , 
 	{ "name": "P1_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_0", "role": "ce0" }} , 
 	{ "name": "P1_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_V_0", "role": "q0" }} , 
 	{ "name": "P2_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P2_V_1", "role": "address0" }} , 
 	{ "name": "P2_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_1", "role": "ce0" }} , 
 	{ "name": "P2_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_V_1", "role": "q0" }} , 
 	{ "name": "P1_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1_V_1", "role": "address0" }} , 
 	{ "name": "P1_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_1", "role": "ce0" }} , 
 	{ "name": "P1_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_V_1", "role": "q0" }} , 
 	{ "name": "P2_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P2_V_2", "role": "address0" }} , 
 	{ "name": "P2_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_2", "role": "ce0" }} , 
 	{ "name": "P2_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_V_2", "role": "q0" }} , 
 	{ "name": "P1_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1_V_2", "role": "address0" }} , 
 	{ "name": "P1_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_2", "role": "ce0" }} , 
 	{ "name": "P1_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_V_2", "role": "q0" }} , 
 	{ "name": "P3_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P3_V_0", "role": "address0" }} , 
 	{ "name": "P3_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_0", "role": "ce0" }} , 
 	{ "name": "P3_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_V_0", "role": "q0" }} , 
 	{ "name": "P3_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P3_V_1", "role": "address0" }} , 
 	{ "name": "P3_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_1", "role": "ce0" }} , 
 	{ "name": "P3_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_V_1", "role": "q0" }} , 
 	{ "name": "P3_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P3_V_2", "role": "address0" }} , 
 	{ "name": "P3_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_2", "role": "ce0" }} , 
 	{ "name": "P3_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_V_2", "role": "q0" }} , 
 	{ "name": "intersectIndex_BRAM_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "intersectIndex_BRAM_out", "role": "default" }} , 
 	{ "name": "intersectIndex_BRAM_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "intersectIndex_BRAM_out", "role": "ap_vld" }} , 
 	{ "name": "t_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_V_out", "role": "default" }} , 
 	{ "name": "t_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6363", "EstimateLatencyMax" : "6363",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sext_ln69", "Type" : "None", "Direction" : "I"},
			{"Name" : "dir_V_1_068_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "dir_V_21_069_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P1_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P2_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P1_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P2_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P1_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P3_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P3_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P3_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "intersectIndex_BRAM_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "NUM_TRIS_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter41", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter41", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U21", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U22", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U23", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U24", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U25", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U26", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U27", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U28", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U29", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U30", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U31", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_34ns_32s_32_38_1_U32", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U33", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U34", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U35", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U36", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U37", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U38", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U39", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U40", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U41", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U42", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U43", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U44", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U45", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U46", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U47", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_1_1_U48", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP {
		sext_ln69 {Type I LastRead 0 FirstWrite -1}
		dir_V_1_068_cast {Type I LastRead 0 FirstWrite -1}
		dir_V_21_069_cast {Type I LastRead 0 FirstWrite -1}
		P2_V_0 {Type I LastRead 1 FirstWrite -1}
		P1_V_0 {Type I LastRead 0 FirstWrite -1}
		P2_V_1 {Type I LastRead 1 FirstWrite -1}
		P1_V_1 {Type I LastRead 0 FirstWrite -1}
		P2_V_2 {Type I LastRead 1 FirstWrite -1}
		P1_V_2 {Type I LastRead 0 FirstWrite -1}
		P3_V_0 {Type I LastRead 0 FirstWrite -1}
		P3_V_1 {Type I LastRead 0 FirstWrite -1}
		P3_V_2 {Type I LastRead 0 FirstWrite -1}
		intersectIndex_BRAM_out {Type O LastRead -1 FirstWrite 41}
		t_V_out {Type O LastRead -1 FirstWrite 41}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6363", "Max" : "6363"}
	, {"Name" : "Interval", "Min" : "6363", "Max" : "6363"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln69 { ap_none {  { sext_ln69 in_data 0 32 } } }
	dir_V_1_068_cast { ap_none {  { dir_V_1_068_cast in_data 0 32 } } }
	dir_V_21_069_cast { ap_none {  { dir_V_21_069_cast in_data 0 32 } } }
	P2_V_0 { ap_memory {  { P2_V_0_address0 mem_address 1 13 }  { P2_V_0_ce0 mem_ce 1 1 }  { P2_V_0_q0 mem_dout 0 32 } } }
	P1_V_0 { ap_memory {  { P1_V_0_address0 mem_address 1 13 }  { P1_V_0_ce0 mem_ce 1 1 }  { P1_V_0_q0 mem_dout 0 32 } } }
	P2_V_1 { ap_memory {  { P2_V_1_address0 mem_address 1 13 }  { P2_V_1_ce0 mem_ce 1 1 }  { P2_V_1_q0 mem_dout 0 32 } } }
	P1_V_1 { ap_memory {  { P1_V_1_address0 mem_address 1 13 }  { P1_V_1_ce0 mem_ce 1 1 }  { P1_V_1_q0 mem_dout 0 32 } } }
	P2_V_2 { ap_memory {  { P2_V_2_address0 mem_address 1 13 }  { P2_V_2_ce0 mem_ce 1 1 }  { P2_V_2_q0 mem_dout 0 32 } } }
	P1_V_2 { ap_memory {  { P1_V_2_address0 mem_address 1 13 }  { P1_V_2_ce0 mem_ce 1 1 }  { P1_V_2_q0 mem_dout 0 32 } } }
	P3_V_0 { ap_memory {  { P3_V_0_address0 mem_address 1 13 }  { P3_V_0_ce0 mem_ce 1 1 }  { P3_V_0_q0 mem_dout 0 32 } } }
	P3_V_1 { ap_memory {  { P3_V_1_address0 mem_address 1 13 }  { P3_V_1_ce0 mem_ce 1 1 }  { P3_V_1_q0 mem_dout 0 32 } } }
	P3_V_2 { ap_memory {  { P3_V_2_address0 mem_address 1 13 }  { P3_V_2_ce0 mem_ce 1 1 }  { P3_V_2_q0 mem_dout 0 32 } } }
	intersectIndex_BRAM_out { ap_vld {  { intersectIndex_BRAM_out out_data 1 16 }  { intersectIndex_BRAM_out_ap_vld out_vld 1 1 } } }
	t_V_out { ap_vld {  { t_V_out out_data 1 32 }  { t_V_out_ap_vld out_vld 1 1 } } }
}
