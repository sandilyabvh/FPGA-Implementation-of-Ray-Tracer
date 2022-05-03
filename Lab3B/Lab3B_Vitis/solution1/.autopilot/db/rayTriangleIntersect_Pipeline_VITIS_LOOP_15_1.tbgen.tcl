set moduleName rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1
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
set C_modelName {rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ dir int 32 regular {axi_master 0}  }
	{ sext_ln15 int 62 regular  }
	{ r_V_2_out int 32 regular {pointer 1}  }
	{ r_V_out int 32 regular {pointer 1}  }
	{ r_V_5_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dir", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dir_DRAM","offset": { "type": "dynamic","port_name": "dir_DRAM","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln15", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "r_V_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_V_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_V_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_dir_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_dir_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_dir_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_dir_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_dir_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_dir_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_dir_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_dir_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_dir_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_dir_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_dir_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_dir_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_dir_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_dir_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_dir_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_dir_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_dir_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_dir_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_dir_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_dir_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_dir_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_dir_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_dir_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_dir_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_dir_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_dir_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_dir_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_dir_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_dir_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_dir_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_dir_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_dir_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_dir_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_dir_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_dir_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_dir_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_dir_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_dir_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_dir_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_dir_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_dir_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_dir_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_dir_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_dir_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_dir_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln15 sc_in sc_lv 62 signal 1 } 
	{ r_V_2_out sc_out sc_lv 32 signal 2 } 
	{ r_V_2_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ r_V_out sc_out sc_lv 32 signal 3 } 
	{ r_V_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ r_V_5_out sc_out sc_lv 32 signal 4 } 
	{ r_V_5_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_dir_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "AWVALID" }} , 
 	{ "name": "m_axi_dir_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "AWREADY" }} , 
 	{ "name": "m_axi_dir_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dir", "role": "AWADDR" }} , 
 	{ "name": "m_axi_dir_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "AWID" }} , 
 	{ "name": "m_axi_dir_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dir", "role": "AWLEN" }} , 
 	{ "name": "m_axi_dir_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dir", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_dir_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dir", "role": "AWBURST" }} , 
 	{ "name": "m_axi_dir_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dir", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_dir_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dir", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_dir_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dir", "role": "AWPROT" }} , 
 	{ "name": "m_axi_dir_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dir", "role": "AWQOS" }} , 
 	{ "name": "m_axi_dir_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dir", "role": "AWREGION" }} , 
 	{ "name": "m_axi_dir_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "AWUSER" }} , 
 	{ "name": "m_axi_dir_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "WVALID" }} , 
 	{ "name": "m_axi_dir_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "WREADY" }} , 
 	{ "name": "m_axi_dir_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dir", "role": "WDATA" }} , 
 	{ "name": "m_axi_dir_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dir", "role": "WSTRB" }} , 
 	{ "name": "m_axi_dir_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "WLAST" }} , 
 	{ "name": "m_axi_dir_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "WID" }} , 
 	{ "name": "m_axi_dir_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "WUSER" }} , 
 	{ "name": "m_axi_dir_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "ARVALID" }} , 
 	{ "name": "m_axi_dir_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "ARREADY" }} , 
 	{ "name": "m_axi_dir_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dir", "role": "ARADDR" }} , 
 	{ "name": "m_axi_dir_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "ARID" }} , 
 	{ "name": "m_axi_dir_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dir", "role": "ARLEN" }} , 
 	{ "name": "m_axi_dir_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dir", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_dir_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dir", "role": "ARBURST" }} , 
 	{ "name": "m_axi_dir_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dir", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_dir_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dir", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_dir_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dir", "role": "ARPROT" }} , 
 	{ "name": "m_axi_dir_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dir", "role": "ARQOS" }} , 
 	{ "name": "m_axi_dir_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dir", "role": "ARREGION" }} , 
 	{ "name": "m_axi_dir_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "ARUSER" }} , 
 	{ "name": "m_axi_dir_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "RVALID" }} , 
 	{ "name": "m_axi_dir_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "RREADY" }} , 
 	{ "name": "m_axi_dir_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dir", "role": "RDATA" }} , 
 	{ "name": "m_axi_dir_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "RLAST" }} , 
 	{ "name": "m_axi_dir_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "RID" }} , 
 	{ "name": "m_axi_dir_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "RUSER" }} , 
 	{ "name": "m_axi_dir_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dir", "role": "RRESP" }} , 
 	{ "name": "m_axi_dir_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "BVALID" }} , 
 	{ "name": "m_axi_dir_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "BREADY" }} , 
 	{ "name": "m_axi_dir_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dir", "role": "BRESP" }} , 
 	{ "name": "m_axi_dir_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "BID" }} , 
 	{ "name": "m_axi_dir_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "BUSER" }} , 
 	{ "name": "sext_ln15", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln15", "role": "default" }} , 
 	{ "name": "r_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_V_2_out", "role": "default" }} , 
 	{ "name": "r_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "r_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_V_out", "role": "default" }} , 
 	{ "name": "r_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_V_out", "role": "ap_vld" }} , 
 	{ "name": "r_V_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_V_5_out", "role": "default" }} , 
 	{ "name": "r_V_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_V_5_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dir", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dir_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln15", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r_V_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1 {
		dir {Type I LastRead 1 FirstWrite -1}
		sext_ln15 {Type I LastRead 0 FirstWrite -1}
		r_V_2_out {Type O LastRead -1 FirstWrite 0}
		r_V_out {Type O LastRead -1 FirstWrite 0}
		r_V_5_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dir { m_axi {  { m_axi_dir_AWVALID VALID 1 1 }  { m_axi_dir_AWREADY READY 0 1 }  { m_axi_dir_AWADDR ADDR 1 64 }  { m_axi_dir_AWID ID 1 1 }  { m_axi_dir_AWLEN LEN 1 32 }  { m_axi_dir_AWSIZE SIZE 1 3 }  { m_axi_dir_AWBURST BURST 1 2 }  { m_axi_dir_AWLOCK LOCK 1 2 }  { m_axi_dir_AWCACHE CACHE 1 4 }  { m_axi_dir_AWPROT PROT 1 3 }  { m_axi_dir_AWQOS QOS 1 4 }  { m_axi_dir_AWREGION REGION 1 4 }  { m_axi_dir_AWUSER USER 1 1 }  { m_axi_dir_WVALID VALID 1 1 }  { m_axi_dir_WREADY READY 0 1 }  { m_axi_dir_WDATA DATA 1 32 }  { m_axi_dir_WSTRB STRB 1 4 }  { m_axi_dir_WLAST LAST 1 1 }  { m_axi_dir_WID ID 1 1 }  { m_axi_dir_WUSER USER 1 1 }  { m_axi_dir_ARVALID VALID 1 1 }  { m_axi_dir_ARREADY READY 0 1 }  { m_axi_dir_ARADDR ADDR 1 64 }  { m_axi_dir_ARID ID 1 1 }  { m_axi_dir_ARLEN LEN 1 32 }  { m_axi_dir_ARSIZE SIZE 1 3 }  { m_axi_dir_ARBURST BURST 1 2 }  { m_axi_dir_ARLOCK LOCK 1 2 }  { m_axi_dir_ARCACHE CACHE 1 4 }  { m_axi_dir_ARPROT PROT 1 3 }  { m_axi_dir_ARQOS QOS 1 4 }  { m_axi_dir_ARREGION REGION 1 4 }  { m_axi_dir_ARUSER USER 1 1 }  { m_axi_dir_RVALID VALID 0 1 }  { m_axi_dir_RREADY READY 1 1 }  { m_axi_dir_RDATA DATA 0 32 }  { m_axi_dir_RLAST LAST 0 1 }  { m_axi_dir_RID ID 0 1 }  { m_axi_dir_RUSER USER 0 1 }  { m_axi_dir_RRESP RESP 0 2 }  { m_axi_dir_BVALID VALID 0 1 }  { m_axi_dir_BREADY READY 1 1 }  { m_axi_dir_BRESP RESP 0 2 }  { m_axi_dir_BID ID 0 1 }  { m_axi_dir_BUSER USER 0 1 } } }
	sext_ln15 { ap_none {  { sext_ln15 in_data 0 62 } } }
	r_V_2_out { ap_vld {  { r_V_2_out out_data 1 32 }  { r_V_2_out_ap_vld out_vld 1 1 } } }
	r_V_out { ap_vld {  { r_V_out out_data 1 32 }  { r_V_out_ap_vld out_vld 1 1 } } }
	r_V_5_out { ap_vld {  { r_V_5_out out_data 1 32 }  { r_V_5_out_ap_vld out_vld 1 1 } } }
}
