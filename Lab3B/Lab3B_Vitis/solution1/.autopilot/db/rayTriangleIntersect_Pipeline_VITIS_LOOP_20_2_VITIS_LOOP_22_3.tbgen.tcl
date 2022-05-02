set moduleName rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3
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
set C_modelName {rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ P3_DRAM int 32 regular {axi_master 0}  }
	{ sext_ln20_2 int 62 regular  }
	{ P2_DRAM int 32 regular {axi_master 0}  }
	{ sext_ln20_1 int 62 regular  }
	{ P1_DRAM int 32 regular {axi_master 0}  }
	{ sext_ln20 int 62 regular  }
	{ P1_V_0 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P2_V_0 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P3_V_0 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P1_V_1 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P2_V_1 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P3_V_1 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P1_V_2 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P2_V_2 int 32 regular {array 6320 { 0 3 } 0 1 }  }
	{ P3_V_2 int 32 regular {array 6320 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P3_DRAM", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "P3_DRAM_offset","offset": { "type": "dynamic","port_name": "P3_DRAM_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln20_2", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "P2_DRAM", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "P2_DRAM_offset","offset": { "type": "dynamic","port_name": "P2_DRAM_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln20_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "P1_DRAM", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "P1_DRAM_offset","offset": { "type": "dynamic","port_name": "P1_DRAM_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln20", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "P1_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P2_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P3_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P1_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P2_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P3_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P1_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P2_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P3_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 180
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_P1_DRAM_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_P1_DRAM_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_P1_DRAM_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_P1_DRAM_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_P1_DRAM_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_P1_DRAM_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_P1_DRAM_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_P1_DRAM_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_P1_DRAM_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_P1_DRAM_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_P1_DRAM_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_P1_DRAM_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_P1_DRAM_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_P1_DRAM_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_P1_DRAM_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_P1_DRAM_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_P1_DRAM_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_P1_DRAM_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_P1_DRAM_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_P1_DRAM_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_P1_DRAM_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_P1_DRAM_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_P1_DRAM_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_P1_DRAM_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_P1_DRAM_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_P1_DRAM_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_P2_DRAM_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_P2_DRAM_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_P2_DRAM_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_P2_DRAM_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_P2_DRAM_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_P2_DRAM_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_P2_DRAM_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_P2_DRAM_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_P2_DRAM_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_P2_DRAM_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_P2_DRAM_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_P2_DRAM_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_P2_DRAM_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_P2_DRAM_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_P2_DRAM_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_P2_DRAM_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_P2_DRAM_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_P2_DRAM_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_P2_DRAM_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_P2_DRAM_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_P2_DRAM_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_P2_DRAM_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_P2_DRAM_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_P2_DRAM_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_P3_DRAM_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_P3_DRAM_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_P3_DRAM_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_P3_DRAM_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_P3_DRAM_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_P3_DRAM_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_P3_DRAM_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_P3_DRAM_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_P3_DRAM_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_P3_DRAM_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_P3_DRAM_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_P3_DRAM_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_P3_DRAM_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_P3_DRAM_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_P3_DRAM_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_P3_DRAM_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_P3_DRAM_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_P3_DRAM_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_P3_DRAM_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_P3_DRAM_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_P3_DRAM_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_P3_DRAM_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_P3_DRAM_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_P3_DRAM_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_P3_DRAM_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_P3_DRAM_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln20_2 sc_in sc_lv 62 signal 1 } 
	{ sext_ln20_1 sc_in sc_lv 62 signal 3 } 
	{ sext_ln20 sc_in sc_lv 62 signal 5 } 
	{ P1_V_0_address0 sc_out sc_lv 13 signal 6 } 
	{ P1_V_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ P1_V_0_we0 sc_out sc_logic 1 signal 6 } 
	{ P1_V_0_d0 sc_out sc_lv 32 signal 6 } 
	{ P2_V_0_address0 sc_out sc_lv 13 signal 7 } 
	{ P2_V_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ P2_V_0_we0 sc_out sc_logic 1 signal 7 } 
	{ P2_V_0_d0 sc_out sc_lv 32 signal 7 } 
	{ P3_V_0_address0 sc_out sc_lv 13 signal 8 } 
	{ P3_V_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ P3_V_0_we0 sc_out sc_logic 1 signal 8 } 
	{ P3_V_0_d0 sc_out sc_lv 32 signal 8 } 
	{ P1_V_1_address0 sc_out sc_lv 13 signal 9 } 
	{ P1_V_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ P1_V_1_we0 sc_out sc_logic 1 signal 9 } 
	{ P1_V_1_d0 sc_out sc_lv 32 signal 9 } 
	{ P2_V_1_address0 sc_out sc_lv 13 signal 10 } 
	{ P2_V_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ P2_V_1_we0 sc_out sc_logic 1 signal 10 } 
	{ P2_V_1_d0 sc_out sc_lv 32 signal 10 } 
	{ P3_V_1_address0 sc_out sc_lv 13 signal 11 } 
	{ P3_V_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ P3_V_1_we0 sc_out sc_logic 1 signal 11 } 
	{ P3_V_1_d0 sc_out sc_lv 32 signal 11 } 
	{ P1_V_2_address0 sc_out sc_lv 13 signal 12 } 
	{ P1_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ P1_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ P1_V_2_d0 sc_out sc_lv 32 signal 12 } 
	{ P2_V_2_address0 sc_out sc_lv 13 signal 13 } 
	{ P2_V_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ P2_V_2_we0 sc_out sc_logic 1 signal 13 } 
	{ P2_V_2_d0 sc_out sc_lv 32 signal 13 } 
	{ P3_V_2_address0 sc_out sc_lv 13 signal 14 } 
	{ P3_V_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ P3_V_2_we0 sc_out sc_logic 1 signal 14 } 
	{ P3_V_2_d0 sc_out sc_lv 32 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_P1_DRAM_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWVALID" }} , 
 	{ "name": "m_axi_P1_DRAM_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWREADY" }} , 
 	{ "name": "m_axi_P1_DRAM_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWADDR" }} , 
 	{ "name": "m_axi_P1_DRAM_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWID" }} , 
 	{ "name": "m_axi_P1_DRAM_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWLEN" }} , 
 	{ "name": "m_axi_P1_DRAM_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_P1_DRAM_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWBURST" }} , 
 	{ "name": "m_axi_P1_DRAM_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_P1_DRAM_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_P1_DRAM_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWPROT" }} , 
 	{ "name": "m_axi_P1_DRAM_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWQOS" }} , 
 	{ "name": "m_axi_P1_DRAM_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWREGION" }} , 
 	{ "name": "m_axi_P1_DRAM_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWUSER" }} , 
 	{ "name": "m_axi_P1_DRAM_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "WVALID" }} , 
 	{ "name": "m_axi_P1_DRAM_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "WREADY" }} , 
 	{ "name": "m_axi_P1_DRAM_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "WDATA" }} , 
 	{ "name": "m_axi_P1_DRAM_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "WSTRB" }} , 
 	{ "name": "m_axi_P1_DRAM_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "WLAST" }} , 
 	{ "name": "m_axi_P1_DRAM_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "WID" }} , 
 	{ "name": "m_axi_P1_DRAM_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "WUSER" }} , 
 	{ "name": "m_axi_P1_DRAM_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARVALID" }} , 
 	{ "name": "m_axi_P1_DRAM_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARREADY" }} , 
 	{ "name": "m_axi_P1_DRAM_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARADDR" }} , 
 	{ "name": "m_axi_P1_DRAM_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARID" }} , 
 	{ "name": "m_axi_P1_DRAM_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARLEN" }} , 
 	{ "name": "m_axi_P1_DRAM_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_P1_DRAM_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARBURST" }} , 
 	{ "name": "m_axi_P1_DRAM_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_P1_DRAM_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_P1_DRAM_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARPROT" }} , 
 	{ "name": "m_axi_P1_DRAM_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARQOS" }} , 
 	{ "name": "m_axi_P1_DRAM_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARREGION" }} , 
 	{ "name": "m_axi_P1_DRAM_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARUSER" }} , 
 	{ "name": "m_axi_P1_DRAM_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "RVALID" }} , 
 	{ "name": "m_axi_P1_DRAM_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "RREADY" }} , 
 	{ "name": "m_axi_P1_DRAM_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "RDATA" }} , 
 	{ "name": "m_axi_P1_DRAM_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "RLAST" }} , 
 	{ "name": "m_axi_P1_DRAM_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "RID" }} , 
 	{ "name": "m_axi_P1_DRAM_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "RUSER" }} , 
 	{ "name": "m_axi_P1_DRAM_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "RRESP" }} , 
 	{ "name": "m_axi_P1_DRAM_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "BVALID" }} , 
 	{ "name": "m_axi_P1_DRAM_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "BREADY" }} , 
 	{ "name": "m_axi_P1_DRAM_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "BRESP" }} , 
 	{ "name": "m_axi_P1_DRAM_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "BID" }} , 
 	{ "name": "m_axi_P1_DRAM_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "BUSER" }} , 
 	{ "name": "m_axi_P2_DRAM_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWVALID" }} , 
 	{ "name": "m_axi_P2_DRAM_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWREADY" }} , 
 	{ "name": "m_axi_P2_DRAM_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWADDR" }} , 
 	{ "name": "m_axi_P2_DRAM_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWID" }} , 
 	{ "name": "m_axi_P2_DRAM_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWLEN" }} , 
 	{ "name": "m_axi_P2_DRAM_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_P2_DRAM_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWBURST" }} , 
 	{ "name": "m_axi_P2_DRAM_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_P2_DRAM_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_P2_DRAM_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWPROT" }} , 
 	{ "name": "m_axi_P2_DRAM_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWQOS" }} , 
 	{ "name": "m_axi_P2_DRAM_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWREGION" }} , 
 	{ "name": "m_axi_P2_DRAM_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWUSER" }} , 
 	{ "name": "m_axi_P2_DRAM_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "WVALID" }} , 
 	{ "name": "m_axi_P2_DRAM_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "WREADY" }} , 
 	{ "name": "m_axi_P2_DRAM_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "WDATA" }} , 
 	{ "name": "m_axi_P2_DRAM_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "WSTRB" }} , 
 	{ "name": "m_axi_P2_DRAM_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "WLAST" }} , 
 	{ "name": "m_axi_P2_DRAM_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "WID" }} , 
 	{ "name": "m_axi_P2_DRAM_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "WUSER" }} , 
 	{ "name": "m_axi_P2_DRAM_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARVALID" }} , 
 	{ "name": "m_axi_P2_DRAM_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARREADY" }} , 
 	{ "name": "m_axi_P2_DRAM_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARADDR" }} , 
 	{ "name": "m_axi_P2_DRAM_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARID" }} , 
 	{ "name": "m_axi_P2_DRAM_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARLEN" }} , 
 	{ "name": "m_axi_P2_DRAM_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_P2_DRAM_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARBURST" }} , 
 	{ "name": "m_axi_P2_DRAM_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_P2_DRAM_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_P2_DRAM_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARPROT" }} , 
 	{ "name": "m_axi_P2_DRAM_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARQOS" }} , 
 	{ "name": "m_axi_P2_DRAM_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARREGION" }} , 
 	{ "name": "m_axi_P2_DRAM_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARUSER" }} , 
 	{ "name": "m_axi_P2_DRAM_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "RVALID" }} , 
 	{ "name": "m_axi_P2_DRAM_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "RREADY" }} , 
 	{ "name": "m_axi_P2_DRAM_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "RDATA" }} , 
 	{ "name": "m_axi_P2_DRAM_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "RLAST" }} , 
 	{ "name": "m_axi_P2_DRAM_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "RID" }} , 
 	{ "name": "m_axi_P2_DRAM_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "RUSER" }} , 
 	{ "name": "m_axi_P2_DRAM_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "RRESP" }} , 
 	{ "name": "m_axi_P2_DRAM_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "BVALID" }} , 
 	{ "name": "m_axi_P2_DRAM_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "BREADY" }} , 
 	{ "name": "m_axi_P2_DRAM_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "BRESP" }} , 
 	{ "name": "m_axi_P2_DRAM_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "BID" }} , 
 	{ "name": "m_axi_P2_DRAM_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "BUSER" }} , 
 	{ "name": "m_axi_P3_DRAM_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWVALID" }} , 
 	{ "name": "m_axi_P3_DRAM_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWREADY" }} , 
 	{ "name": "m_axi_P3_DRAM_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWADDR" }} , 
 	{ "name": "m_axi_P3_DRAM_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWID" }} , 
 	{ "name": "m_axi_P3_DRAM_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWLEN" }} , 
 	{ "name": "m_axi_P3_DRAM_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_P3_DRAM_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWBURST" }} , 
 	{ "name": "m_axi_P3_DRAM_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_P3_DRAM_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_P3_DRAM_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWPROT" }} , 
 	{ "name": "m_axi_P3_DRAM_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWQOS" }} , 
 	{ "name": "m_axi_P3_DRAM_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWREGION" }} , 
 	{ "name": "m_axi_P3_DRAM_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWUSER" }} , 
 	{ "name": "m_axi_P3_DRAM_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "WVALID" }} , 
 	{ "name": "m_axi_P3_DRAM_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "WREADY" }} , 
 	{ "name": "m_axi_P3_DRAM_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "WDATA" }} , 
 	{ "name": "m_axi_P3_DRAM_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "WSTRB" }} , 
 	{ "name": "m_axi_P3_DRAM_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "WLAST" }} , 
 	{ "name": "m_axi_P3_DRAM_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "WID" }} , 
 	{ "name": "m_axi_P3_DRAM_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "WUSER" }} , 
 	{ "name": "m_axi_P3_DRAM_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARVALID" }} , 
 	{ "name": "m_axi_P3_DRAM_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARREADY" }} , 
 	{ "name": "m_axi_P3_DRAM_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARADDR" }} , 
 	{ "name": "m_axi_P3_DRAM_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARID" }} , 
 	{ "name": "m_axi_P3_DRAM_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARLEN" }} , 
 	{ "name": "m_axi_P3_DRAM_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_P3_DRAM_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARBURST" }} , 
 	{ "name": "m_axi_P3_DRAM_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_P3_DRAM_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_P3_DRAM_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARPROT" }} , 
 	{ "name": "m_axi_P3_DRAM_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARQOS" }} , 
 	{ "name": "m_axi_P3_DRAM_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARREGION" }} , 
 	{ "name": "m_axi_P3_DRAM_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARUSER" }} , 
 	{ "name": "m_axi_P3_DRAM_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "RVALID" }} , 
 	{ "name": "m_axi_P3_DRAM_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "RREADY" }} , 
 	{ "name": "m_axi_P3_DRAM_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "RDATA" }} , 
 	{ "name": "m_axi_P3_DRAM_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "RLAST" }} , 
 	{ "name": "m_axi_P3_DRAM_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "RID" }} , 
 	{ "name": "m_axi_P3_DRAM_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "RUSER" }} , 
 	{ "name": "m_axi_P3_DRAM_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "RRESP" }} , 
 	{ "name": "m_axi_P3_DRAM_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "BVALID" }} , 
 	{ "name": "m_axi_P3_DRAM_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "BREADY" }} , 
 	{ "name": "m_axi_P3_DRAM_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "BRESP" }} , 
 	{ "name": "m_axi_P3_DRAM_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "BID" }} , 
 	{ "name": "m_axi_P3_DRAM_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "BUSER" }} , 
 	{ "name": "sext_ln20_2", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln20_2", "role": "default" }} , 
 	{ "name": "sext_ln20_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln20_1", "role": "default" }} , 
 	{ "name": "sext_ln20", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln20", "role": "default" }} , 
 	{ "name": "P1_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1_V_0", "role": "address0" }} , 
 	{ "name": "P1_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_0", "role": "ce0" }} , 
 	{ "name": "P1_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_0", "role": "we0" }} , 
 	{ "name": "P1_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_V_0", "role": "d0" }} , 
 	{ "name": "P2_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P2_V_0", "role": "address0" }} , 
 	{ "name": "P2_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_0", "role": "ce0" }} , 
 	{ "name": "P2_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_0", "role": "we0" }} , 
 	{ "name": "P2_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_V_0", "role": "d0" }} , 
 	{ "name": "P3_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P3_V_0", "role": "address0" }} , 
 	{ "name": "P3_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_0", "role": "ce0" }} , 
 	{ "name": "P3_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_0", "role": "we0" }} , 
 	{ "name": "P3_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_V_0", "role": "d0" }} , 
 	{ "name": "P1_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1_V_1", "role": "address0" }} , 
 	{ "name": "P1_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_1", "role": "ce0" }} , 
 	{ "name": "P1_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_1", "role": "we0" }} , 
 	{ "name": "P1_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_V_1", "role": "d0" }} , 
 	{ "name": "P2_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P2_V_1", "role": "address0" }} , 
 	{ "name": "P2_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_1", "role": "ce0" }} , 
 	{ "name": "P2_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_1", "role": "we0" }} , 
 	{ "name": "P2_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_V_1", "role": "d0" }} , 
 	{ "name": "P3_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P3_V_1", "role": "address0" }} , 
 	{ "name": "P3_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_1", "role": "ce0" }} , 
 	{ "name": "P3_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_1", "role": "we0" }} , 
 	{ "name": "P3_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_V_1", "role": "d0" }} , 
 	{ "name": "P1_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1_V_2", "role": "address0" }} , 
 	{ "name": "P1_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_2", "role": "ce0" }} , 
 	{ "name": "P1_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_V_2", "role": "we0" }} , 
 	{ "name": "P1_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1_V_2", "role": "d0" }} , 
 	{ "name": "P2_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P2_V_2", "role": "address0" }} , 
 	{ "name": "P2_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_2", "role": "ce0" }} , 
 	{ "name": "P2_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2_V_2", "role": "we0" }} , 
 	{ "name": "P2_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P2_V_2", "role": "d0" }} , 
 	{ "name": "P3_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P3_V_2", "role": "address0" }} , 
 	{ "name": "P3_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_2", "role": "ce0" }} , 
 	{ "name": "P3_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3_V_2", "role": "we0" }} , 
 	{ "name": "P3_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3_V_2", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18963", "EstimateLatencyMax" : "18963",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P3_DRAM", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P3_DRAM_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln20_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2_DRAM", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2_DRAM_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln20_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P1_DRAM", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P1_DRAM_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln20", "Type" : "None", "Direction" : "I"},
			{"Name" : "P1_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P2_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P3_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P1_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P2_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P3_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P1_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P2_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P3_V_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_2_VITIS_LOOP_22_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3 {
		P3_DRAM {Type I LastRead 1 FirstWrite -1}
		sext_ln20_2 {Type I LastRead 0 FirstWrite -1}
		P2_DRAM {Type I LastRead 1 FirstWrite -1}
		sext_ln20_1 {Type I LastRead 0 FirstWrite -1}
		P1_DRAM {Type I LastRead 1 FirstWrite -1}
		sext_ln20 {Type I LastRead 0 FirstWrite -1}
		P1_V_0 {Type O LastRead -1 FirstWrite 2}
		P2_V_0 {Type O LastRead -1 FirstWrite 2}
		P3_V_0 {Type O LastRead -1 FirstWrite 2}
		P1_V_1 {Type O LastRead -1 FirstWrite 2}
		P2_V_1 {Type O LastRead -1 FirstWrite 2}
		P3_V_1 {Type O LastRead -1 FirstWrite 2}
		P1_V_2 {Type O LastRead -1 FirstWrite 2}
		P2_V_2 {Type O LastRead -1 FirstWrite 2}
		P3_V_2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18963", "Max" : "18963"}
	, {"Name" : "Interval", "Min" : "18963", "Max" : "18963"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	P3_DRAM { m_axi {  { m_axi_P3_DRAM_AWVALID VALID 1 1 }  { m_axi_P3_DRAM_AWREADY READY 0 1 }  { m_axi_P3_DRAM_AWADDR ADDR 1 64 }  { m_axi_P3_DRAM_AWID ID 1 1 }  { m_axi_P3_DRAM_AWLEN LEN 1 32 }  { m_axi_P3_DRAM_AWSIZE SIZE 1 3 }  { m_axi_P3_DRAM_AWBURST BURST 1 2 }  { m_axi_P3_DRAM_AWLOCK LOCK 1 2 }  { m_axi_P3_DRAM_AWCACHE CACHE 1 4 }  { m_axi_P3_DRAM_AWPROT PROT 1 3 }  { m_axi_P3_DRAM_AWQOS QOS 1 4 }  { m_axi_P3_DRAM_AWREGION REGION 1 4 }  { m_axi_P3_DRAM_AWUSER USER 1 1 }  { m_axi_P3_DRAM_WVALID VALID 1 1 }  { m_axi_P3_DRAM_WREADY READY 0 1 }  { m_axi_P3_DRAM_WDATA DATA 1 32 }  { m_axi_P3_DRAM_WSTRB STRB 1 4 }  { m_axi_P3_DRAM_WLAST LAST 1 1 }  { m_axi_P3_DRAM_WID ID 1 1 }  { m_axi_P3_DRAM_WUSER USER 1 1 }  { m_axi_P3_DRAM_ARVALID VALID 1 1 }  { m_axi_P3_DRAM_ARREADY READY 0 1 }  { m_axi_P3_DRAM_ARADDR ADDR 1 64 }  { m_axi_P3_DRAM_ARID ID 1 1 }  { m_axi_P3_DRAM_ARLEN LEN 1 32 }  { m_axi_P3_DRAM_ARSIZE SIZE 1 3 }  { m_axi_P3_DRAM_ARBURST BURST 1 2 }  { m_axi_P3_DRAM_ARLOCK LOCK 1 2 }  { m_axi_P3_DRAM_ARCACHE CACHE 1 4 }  { m_axi_P3_DRAM_ARPROT PROT 1 3 }  { m_axi_P3_DRAM_ARQOS QOS 1 4 }  { m_axi_P3_DRAM_ARREGION REGION 1 4 }  { m_axi_P3_DRAM_ARUSER USER 1 1 }  { m_axi_P3_DRAM_RVALID VALID 0 1 }  { m_axi_P3_DRAM_RREADY READY 1 1 }  { m_axi_P3_DRAM_RDATA DATA 0 32 }  { m_axi_P3_DRAM_RLAST LAST 0 1 }  { m_axi_P3_DRAM_RID ID 0 1 }  { m_axi_P3_DRAM_RUSER USER 0 1 }  { m_axi_P3_DRAM_RRESP RESP 0 2 }  { m_axi_P3_DRAM_BVALID VALID 0 1 }  { m_axi_P3_DRAM_BREADY READY 1 1 }  { m_axi_P3_DRAM_BRESP RESP 0 2 }  { m_axi_P3_DRAM_BID ID 0 1 }  { m_axi_P3_DRAM_BUSER USER 0 1 } } }
	sext_ln20_2 { ap_none {  { sext_ln20_2 in_data 0 62 } } }
	P2_DRAM { m_axi {  { m_axi_P2_DRAM_AWVALID VALID 1 1 }  { m_axi_P2_DRAM_AWREADY READY 0 1 }  { m_axi_P2_DRAM_AWADDR ADDR 1 64 }  { m_axi_P2_DRAM_AWID ID 1 1 }  { m_axi_P2_DRAM_AWLEN LEN 1 32 }  { m_axi_P2_DRAM_AWSIZE SIZE 1 3 }  { m_axi_P2_DRAM_AWBURST BURST 1 2 }  { m_axi_P2_DRAM_AWLOCK LOCK 1 2 }  { m_axi_P2_DRAM_AWCACHE CACHE 1 4 }  { m_axi_P2_DRAM_AWPROT PROT 1 3 }  { m_axi_P2_DRAM_AWQOS QOS 1 4 }  { m_axi_P2_DRAM_AWREGION REGION 1 4 }  { m_axi_P2_DRAM_AWUSER USER 1 1 }  { m_axi_P2_DRAM_WVALID VALID 1 1 }  { m_axi_P2_DRAM_WREADY READY 0 1 }  { m_axi_P2_DRAM_WDATA DATA 1 32 }  { m_axi_P2_DRAM_WSTRB STRB 1 4 }  { m_axi_P2_DRAM_WLAST LAST 1 1 }  { m_axi_P2_DRAM_WID ID 1 1 }  { m_axi_P2_DRAM_WUSER USER 1 1 }  { m_axi_P2_DRAM_ARVALID VALID 1 1 }  { m_axi_P2_DRAM_ARREADY READY 0 1 }  { m_axi_P2_DRAM_ARADDR ADDR 1 64 }  { m_axi_P2_DRAM_ARID ID 1 1 }  { m_axi_P2_DRAM_ARLEN LEN 1 32 }  { m_axi_P2_DRAM_ARSIZE SIZE 1 3 }  { m_axi_P2_DRAM_ARBURST BURST 1 2 }  { m_axi_P2_DRAM_ARLOCK LOCK 1 2 }  { m_axi_P2_DRAM_ARCACHE CACHE 1 4 }  { m_axi_P2_DRAM_ARPROT PROT 1 3 }  { m_axi_P2_DRAM_ARQOS QOS 1 4 }  { m_axi_P2_DRAM_ARREGION REGION 1 4 }  { m_axi_P2_DRAM_ARUSER USER 1 1 }  { m_axi_P2_DRAM_RVALID VALID 0 1 }  { m_axi_P2_DRAM_RREADY READY 1 1 }  { m_axi_P2_DRAM_RDATA DATA 0 32 }  { m_axi_P2_DRAM_RLAST LAST 0 1 }  { m_axi_P2_DRAM_RID ID 0 1 }  { m_axi_P2_DRAM_RUSER USER 0 1 }  { m_axi_P2_DRAM_RRESP RESP 0 2 }  { m_axi_P2_DRAM_BVALID VALID 0 1 }  { m_axi_P2_DRAM_BREADY READY 1 1 }  { m_axi_P2_DRAM_BRESP RESP 0 2 }  { m_axi_P2_DRAM_BID ID 0 1 }  { m_axi_P2_DRAM_BUSER USER 0 1 } } }
	sext_ln20_1 { ap_none {  { sext_ln20_1 in_data 0 62 } } }
	P1_DRAM { m_axi {  { m_axi_P1_DRAM_AWVALID VALID 1 1 }  { m_axi_P1_DRAM_AWREADY READY 0 1 }  { m_axi_P1_DRAM_AWADDR ADDR 1 64 }  { m_axi_P1_DRAM_AWID ID 1 1 }  { m_axi_P1_DRAM_AWLEN LEN 1 32 }  { m_axi_P1_DRAM_AWSIZE SIZE 1 3 }  { m_axi_P1_DRAM_AWBURST BURST 1 2 }  { m_axi_P1_DRAM_AWLOCK LOCK 1 2 }  { m_axi_P1_DRAM_AWCACHE CACHE 1 4 }  { m_axi_P1_DRAM_AWPROT PROT 1 3 }  { m_axi_P1_DRAM_AWQOS QOS 1 4 }  { m_axi_P1_DRAM_AWREGION REGION 1 4 }  { m_axi_P1_DRAM_AWUSER USER 1 1 }  { m_axi_P1_DRAM_WVALID VALID 1 1 }  { m_axi_P1_DRAM_WREADY READY 0 1 }  { m_axi_P1_DRAM_WDATA DATA 1 32 }  { m_axi_P1_DRAM_WSTRB STRB 1 4 }  { m_axi_P1_DRAM_WLAST LAST 1 1 }  { m_axi_P1_DRAM_WID ID 1 1 }  { m_axi_P1_DRAM_WUSER USER 1 1 }  { m_axi_P1_DRAM_ARVALID VALID 1 1 }  { m_axi_P1_DRAM_ARREADY READY 0 1 }  { m_axi_P1_DRAM_ARADDR ADDR 1 64 }  { m_axi_P1_DRAM_ARID ID 1 1 }  { m_axi_P1_DRAM_ARLEN LEN 1 32 }  { m_axi_P1_DRAM_ARSIZE SIZE 1 3 }  { m_axi_P1_DRAM_ARBURST BURST 1 2 }  { m_axi_P1_DRAM_ARLOCK LOCK 1 2 }  { m_axi_P1_DRAM_ARCACHE CACHE 1 4 }  { m_axi_P1_DRAM_ARPROT PROT 1 3 }  { m_axi_P1_DRAM_ARQOS QOS 1 4 }  { m_axi_P1_DRAM_ARREGION REGION 1 4 }  { m_axi_P1_DRAM_ARUSER USER 1 1 }  { m_axi_P1_DRAM_RVALID VALID 0 1 }  { m_axi_P1_DRAM_RREADY READY 1 1 }  { m_axi_P1_DRAM_RDATA DATA 0 32 }  { m_axi_P1_DRAM_RLAST LAST 0 1 }  { m_axi_P1_DRAM_RID ID 0 1 }  { m_axi_P1_DRAM_RUSER USER 0 1 }  { m_axi_P1_DRAM_RRESP RESP 0 2 }  { m_axi_P1_DRAM_BVALID VALID 0 1 }  { m_axi_P1_DRAM_BREADY READY 1 1 }  { m_axi_P1_DRAM_BRESP RESP 0 2 }  { m_axi_P1_DRAM_BID ID 0 1 }  { m_axi_P1_DRAM_BUSER USER 0 1 } } }
	sext_ln20 { ap_none {  { sext_ln20 in_data 0 62 } } }
	P1_V_0 { ap_memory {  { P1_V_0_address0 mem_address 1 13 }  { P1_V_0_ce0 mem_ce 1 1 }  { P1_V_0_we0 mem_we 1 1 }  { P1_V_0_d0 mem_din 1 32 } } }
	P2_V_0 { ap_memory {  { P2_V_0_address0 mem_address 1 13 }  { P2_V_0_ce0 mem_ce 1 1 }  { P2_V_0_we0 mem_we 1 1 }  { P2_V_0_d0 mem_din 1 32 } } }
	P3_V_0 { ap_memory {  { P3_V_0_address0 mem_address 1 13 }  { P3_V_0_ce0 mem_ce 1 1 }  { P3_V_0_we0 mem_we 1 1 }  { P3_V_0_d0 mem_din 1 32 } } }
	P1_V_1 { ap_memory {  { P1_V_1_address0 mem_address 1 13 }  { P1_V_1_ce0 mem_ce 1 1 }  { P1_V_1_we0 mem_we 1 1 }  { P1_V_1_d0 mem_din 1 32 } } }
	P2_V_1 { ap_memory {  { P2_V_1_address0 mem_address 1 13 }  { P2_V_1_ce0 mem_ce 1 1 }  { P2_V_1_we0 mem_we 1 1 }  { P2_V_1_d0 mem_din 1 32 } } }
	P3_V_1 { ap_memory {  { P3_V_1_address0 mem_address 1 13 }  { P3_V_1_ce0 mem_ce 1 1 }  { P3_V_1_we0 mem_we 1 1 }  { P3_V_1_d0 mem_din 1 32 } } }
	P1_V_2 { ap_memory {  { P1_V_2_address0 mem_address 1 13 }  { P1_V_2_ce0 mem_ce 1 1 }  { P1_V_2_we0 mem_we 1 1 }  { P1_V_2_d0 mem_din 1 32 } } }
	P2_V_2 { ap_memory {  { P2_V_2_address0 mem_address 1 13 }  { P2_V_2_ce0 mem_ce 1 1 }  { P2_V_2_we0 mem_we 1 1 }  { P2_V_2_d0 mem_din 1 32 } } }
	P3_V_2 { ap_memory {  { P3_V_2_address0 mem_address 1 13 }  { P3_V_2_ce0 mem_ce 1 1 }  { P3_V_2_we0 mem_we 1 1 }  { P3_V_2_d0 mem_din 1 32 } } }
}
