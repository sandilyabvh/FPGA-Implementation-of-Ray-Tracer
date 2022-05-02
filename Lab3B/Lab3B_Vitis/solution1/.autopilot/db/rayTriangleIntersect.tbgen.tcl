set moduleName rayTriangleIntersect
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {rayTriangleIntersect}
set C_modelType { void 0 }
set C_modelArgList {
	{ dir int 32 regular {axi_master 0}  }
	{ P1_DRAM int 32 regular {axi_master 0}  }
	{ P2_DRAM int 32 regular {axi_master 0}  }
	{ P3_DRAM int 32 regular {axi_master 0}  }
	{ intersectIndex int 32 regular {axi_master 1}  }
	{ dir_DRAM int 64 regular {axi_slave 0}  }
	{ P1_DRAM_offset int 64 regular {axi_slave 0}  }
	{ P2_DRAM_offset int 64 regular {axi_slave 0}  }
	{ P3_DRAM_offset int 64 regular {axi_slave 0}  }
	{ intersectIndex_offset int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dir", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dir_DRAM","offset": { "type": "dynamic","port_name": "dir_DRAM","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "P1_DRAM", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "P1_DRAM_offset","offset": { "type": "dynamic","port_name": "P1_DRAM_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "P2_DRAM", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "P2_DRAM_offset","offset": { "type": "dynamic","port_name": "P2_DRAM_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "P3_DRAM", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "P3_DRAM_offset","offset": { "type": "dynamic","port_name": "P3_DRAM_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "intersectIndex", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "intersectIndex_offset","offset": { "type": "dynamic","port_name": "intersectIndex_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "dir_DRAM", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "P1_DRAM_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "P2_DRAM_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "P3_DRAM_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "intersectIndex_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} ]}
# RTL Port declarations: 
set portNum 245
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_dir_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_dir_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_dir_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_dir_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_dir_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_dir_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_P1_DRAM_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_P1_DRAM_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_P1_DRAM_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_P1_DRAM_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_P1_DRAM_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_P1_DRAM_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_P1_DRAM_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_P1_DRAM_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_P1_DRAM_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_P1_DRAM_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_P1_DRAM_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_P1_DRAM_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_P1_DRAM_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_P1_DRAM_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_P1_DRAM_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_P1_DRAM_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_P1_DRAM_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_P1_DRAM_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_P1_DRAM_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_P1_DRAM_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_P1_DRAM_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_P1_DRAM_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_P1_DRAM_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_P1_DRAM_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_P1_DRAM_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_P1_DRAM_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_P2_DRAM_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_P2_DRAM_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_P2_DRAM_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_P2_DRAM_AWLEN sc_out sc_lv 8 signal 2 } 
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
	{ m_axi_P2_DRAM_ARLEN sc_out sc_lv 8 signal 2 } 
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
	{ m_axi_P3_DRAM_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_P3_DRAM_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_P3_DRAM_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_P3_DRAM_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_P3_DRAM_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_P3_DRAM_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_P3_DRAM_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_P3_DRAM_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_P3_DRAM_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_P3_DRAM_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_P3_DRAM_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_P3_DRAM_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_P3_DRAM_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_P3_DRAM_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_P3_DRAM_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_P3_DRAM_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_P3_DRAM_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_P3_DRAM_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_P3_DRAM_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_P3_DRAM_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_P3_DRAM_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_P3_DRAM_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_P3_DRAM_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_P3_DRAM_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_P3_DRAM_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_P3_DRAM_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_intersectIndex_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_intersectIndex_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_intersectIndex_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_intersectIndex_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_intersectIndex_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_intersectIndex_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_intersectIndex_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_intersectIndex_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_intersectIndex_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_intersectIndex_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_intersectIndex_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_intersectIndex_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_intersectIndex_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_intersectIndex_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_intersectIndex_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_intersectIndex_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_intersectIndex_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_intersectIndex_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_intersectIndex_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_intersectIndex_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_intersectIndex_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_intersectIndex_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_intersectIndex_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_intersectIndex_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_intersectIndex_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_intersectIndex_BUSER sc_in sc_lv 1 signal 4 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"rayTriangleIntersect","role":"start","value":"0","valid_bit":"0"},{"name":"rayTriangleIntersect","role":"continue","value":"0","valid_bit":"4"},{"name":"rayTriangleIntersect","role":"auto_start","value":"0","valid_bit":"7"},{"name":"dir_DRAM","role":"data","value":"16"},{"name":"P1_DRAM_offset","role":"data","value":"28"},{"name":"P2_DRAM_offset","role":"data","value":"40"},{"name":"P3_DRAM_offset","role":"data","value":"52"},{"name":"intersectIndex_offset","role":"data","value":"64"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"rayTriangleIntersect","role":"start","value":"0","valid_bit":"0"},{"name":"rayTriangleIntersect","role":"done","value":"0","valid_bit":"1"},{"name":"rayTriangleIntersect","role":"idle","value":"0","valid_bit":"2"},{"name":"rayTriangleIntersect","role":"ready","value":"0","valid_bit":"3"},{"name":"rayTriangleIntersect","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_dir_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "AWVALID" }} , 
 	{ "name": "m_axi_dir_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "AWREADY" }} , 
 	{ "name": "m_axi_dir_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dir", "role": "AWADDR" }} , 
 	{ "name": "m_axi_dir_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dir", "role": "AWID" }} , 
 	{ "name": "m_axi_dir_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dir", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_dir_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dir", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_P1_DRAM_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWVALID" }} , 
 	{ "name": "m_axi_P1_DRAM_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWREADY" }} , 
 	{ "name": "m_axi_P1_DRAM_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWADDR" }} , 
 	{ "name": "m_axi_P1_DRAM_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWID" }} , 
 	{ "name": "m_axi_P1_DRAM_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_P1_DRAM_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1_DRAM", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_P2_DRAM_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_P2_DRAM_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2_DRAM", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_P3_DRAM_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_P3_DRAM_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3_DRAM", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_intersectIndex_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWVALID" }} , 
 	{ "name": "m_axi_intersectIndex_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWREADY" }} , 
 	{ "name": "m_axi_intersectIndex_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWADDR" }} , 
 	{ "name": "m_axi_intersectIndex_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWID" }} , 
 	{ "name": "m_axi_intersectIndex_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWLEN" }} , 
 	{ "name": "m_axi_intersectIndex_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_intersectIndex_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWBURST" }} , 
 	{ "name": "m_axi_intersectIndex_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_intersectIndex_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_intersectIndex_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWPROT" }} , 
 	{ "name": "m_axi_intersectIndex_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWQOS" }} , 
 	{ "name": "m_axi_intersectIndex_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWREGION" }} , 
 	{ "name": "m_axi_intersectIndex_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "AWUSER" }} , 
 	{ "name": "m_axi_intersectIndex_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "WVALID" }} , 
 	{ "name": "m_axi_intersectIndex_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "WREADY" }} , 
 	{ "name": "m_axi_intersectIndex_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "intersectIndex", "role": "WDATA" }} , 
 	{ "name": "m_axi_intersectIndex_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "intersectIndex", "role": "WSTRB" }} , 
 	{ "name": "m_axi_intersectIndex_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "WLAST" }} , 
 	{ "name": "m_axi_intersectIndex_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "WID" }} , 
 	{ "name": "m_axi_intersectIndex_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "WUSER" }} , 
 	{ "name": "m_axi_intersectIndex_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARVALID" }} , 
 	{ "name": "m_axi_intersectIndex_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARREADY" }} , 
 	{ "name": "m_axi_intersectIndex_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARADDR" }} , 
 	{ "name": "m_axi_intersectIndex_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARID" }} , 
 	{ "name": "m_axi_intersectIndex_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARLEN" }} , 
 	{ "name": "m_axi_intersectIndex_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_intersectIndex_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARBURST" }} , 
 	{ "name": "m_axi_intersectIndex_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_intersectIndex_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_intersectIndex_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARPROT" }} , 
 	{ "name": "m_axi_intersectIndex_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARQOS" }} , 
 	{ "name": "m_axi_intersectIndex_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARREGION" }} , 
 	{ "name": "m_axi_intersectIndex_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "ARUSER" }} , 
 	{ "name": "m_axi_intersectIndex_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "RVALID" }} , 
 	{ "name": "m_axi_intersectIndex_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "RREADY" }} , 
 	{ "name": "m_axi_intersectIndex_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "intersectIndex", "role": "RDATA" }} , 
 	{ "name": "m_axi_intersectIndex_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "RLAST" }} , 
 	{ "name": "m_axi_intersectIndex_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "RID" }} , 
 	{ "name": "m_axi_intersectIndex_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "RUSER" }} , 
 	{ "name": "m_axi_intersectIndex_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "intersectIndex", "role": "RRESP" }} , 
 	{ "name": "m_axi_intersectIndex_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "BVALID" }} , 
 	{ "name": "m_axi_intersectIndex_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "BREADY" }} , 
 	{ "name": "m_axi_intersectIndex_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "intersectIndex", "role": "BRESP" }} , 
 	{ "name": "m_axi_intersectIndex_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "BID" }} , 
 	{ "name": "m_axi_intersectIndex_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intersectIndex", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "12", "14", "44", "45", "46", "47", "48", "49"],
		"CDFG" : "rayTriangleIntersect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25344", "EstimateLatencyMax" : "25344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dir", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dir_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1_fu_240", "Port" : "dir", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "P1_DRAM", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P1_DRAM_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3_fu_250", "Port" : "P1_DRAM", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "P2_DRAM", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2_DRAM_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3_fu_250", "Port" : "P2_DRAM", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "P3_DRAM", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P3_DRAM_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3_fu_250", "Port" : "P3_DRAM", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "intersectIndex", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "intersectIndex_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "intersectIndex_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "intersectIndex_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "dir_DRAM", "Type" : "None", "Direction" : "I"},
			{"Name" : "P1_DRAM_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2_DRAM_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "P3_DRAM_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "intersectIndex_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2_V_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2_V_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2_V_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3_V_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3_V_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3_V_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1_fu_240", "Parent" : "0", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3_fu_250", "Parent" : "0", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3_fu_250.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U21", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U22", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U23", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U24", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U25", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U26", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U27", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U28", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U29", "Parent" : "14"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U30", "Parent" : "14"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U31", "Parent" : "14"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.sdiv_34ns_32s_32_38_1_U32", "Parent" : "14"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U33", "Parent" : "14"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U34", "Parent" : "14"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U35", "Parent" : "14"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U36", "Parent" : "14"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U37", "Parent" : "14"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U38", "Parent" : "14"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U39", "Parent" : "14"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U40", "Parent" : "14"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U41", "Parent" : "14"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U42", "Parent" : "14"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U43", "Parent" : "14"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U44", "Parent" : "14"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U45", "Parent" : "14"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U46", "Parent" : "14"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U47", "Parent" : "14"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.mul_32s_32s_48_1_1_U48", "Parent" : "14"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dir_m_axi_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1_DRAM_m_axi_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2_DRAM_m_axi_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3_DRAM_m_axi_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.intersectIndex_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rayTriangleIntersect {
		dir {Type I LastRead 1 FirstWrite -1}
		P1_DRAM {Type I LastRead 1 FirstWrite -1}
		P2_DRAM {Type I LastRead 1 FirstWrite -1}
		P3_DRAM {Type I LastRead 1 FirstWrite -1}
		intersectIndex {Type O LastRead 14 FirstWrite 12}
		dir_DRAM {Type I LastRead 0 FirstWrite -1}
		P1_DRAM_offset {Type I LastRead 0 FirstWrite -1}
		P2_DRAM_offset {Type I LastRead 0 FirstWrite -1}
		P3_DRAM_offset {Type I LastRead 0 FirstWrite -1}
		intersectIndex_offset {Type I LastRead 0 FirstWrite -1}}
	rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1 {
		dir {Type I LastRead 1 FirstWrite -1}
		sext_ln15 {Type I LastRead 0 FirstWrite -1}
		r_V_2_out {Type O LastRead -1 FirstWrite 0}
		r_V_out {Type O LastRead -1 FirstWrite 0}
		r_V_5_out {Type O LastRead -1 FirstWrite 0}}
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
		P3_V_2 {Type O LastRead -1 FirstWrite 2}}
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
	{"Name" : "Latency", "Min" : "25344", "Max" : "25344"}
	, {"Name" : "Interval", "Min" : "25345", "Max" : "25345"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dir { m_axi {  { m_axi_dir_AWVALID VALID 1 1 }  { m_axi_dir_AWREADY READY 0 1 }  { m_axi_dir_AWADDR ADDR 1 64 }  { m_axi_dir_AWID ID 1 1 }  { m_axi_dir_AWLEN LEN 1 8 }  { m_axi_dir_AWSIZE SIZE 1 3 }  { m_axi_dir_AWBURST BURST 1 2 }  { m_axi_dir_AWLOCK LOCK 1 2 }  { m_axi_dir_AWCACHE CACHE 1 4 }  { m_axi_dir_AWPROT PROT 1 3 }  { m_axi_dir_AWQOS QOS 1 4 }  { m_axi_dir_AWREGION REGION 1 4 }  { m_axi_dir_AWUSER USER 1 1 }  { m_axi_dir_WVALID VALID 1 1 }  { m_axi_dir_WREADY READY 0 1 }  { m_axi_dir_WDATA DATA 1 32 }  { m_axi_dir_WSTRB STRB 1 4 }  { m_axi_dir_WLAST LAST 1 1 }  { m_axi_dir_WID ID 1 1 }  { m_axi_dir_WUSER USER 1 1 }  { m_axi_dir_ARVALID VALID 1 1 }  { m_axi_dir_ARREADY READY 0 1 }  { m_axi_dir_ARADDR ADDR 1 64 }  { m_axi_dir_ARID ID 1 1 }  { m_axi_dir_ARLEN LEN 1 8 }  { m_axi_dir_ARSIZE SIZE 1 3 }  { m_axi_dir_ARBURST BURST 1 2 }  { m_axi_dir_ARLOCK LOCK 1 2 }  { m_axi_dir_ARCACHE CACHE 1 4 }  { m_axi_dir_ARPROT PROT 1 3 }  { m_axi_dir_ARQOS QOS 1 4 }  { m_axi_dir_ARREGION REGION 1 4 }  { m_axi_dir_ARUSER USER 1 1 }  { m_axi_dir_RVALID VALID 0 1 }  { m_axi_dir_RREADY READY 1 1 }  { m_axi_dir_RDATA DATA 0 32 }  { m_axi_dir_RLAST LAST 0 1 }  { m_axi_dir_RID ID 0 1 }  { m_axi_dir_RUSER USER 0 1 }  { m_axi_dir_RRESP RESP 0 2 }  { m_axi_dir_BVALID VALID 0 1 }  { m_axi_dir_BREADY READY 1 1 }  { m_axi_dir_BRESP RESP 0 2 }  { m_axi_dir_BID ID 0 1 }  { m_axi_dir_BUSER USER 0 1 } } }
	P1_DRAM { m_axi {  { m_axi_P1_DRAM_AWVALID VALID 1 1 }  { m_axi_P1_DRAM_AWREADY READY 0 1 }  { m_axi_P1_DRAM_AWADDR ADDR 1 64 }  { m_axi_P1_DRAM_AWID ID 1 1 }  { m_axi_P1_DRAM_AWLEN LEN 1 8 }  { m_axi_P1_DRAM_AWSIZE SIZE 1 3 }  { m_axi_P1_DRAM_AWBURST BURST 1 2 }  { m_axi_P1_DRAM_AWLOCK LOCK 1 2 }  { m_axi_P1_DRAM_AWCACHE CACHE 1 4 }  { m_axi_P1_DRAM_AWPROT PROT 1 3 }  { m_axi_P1_DRAM_AWQOS QOS 1 4 }  { m_axi_P1_DRAM_AWREGION REGION 1 4 }  { m_axi_P1_DRAM_AWUSER USER 1 1 }  { m_axi_P1_DRAM_WVALID VALID 1 1 }  { m_axi_P1_DRAM_WREADY READY 0 1 }  { m_axi_P1_DRAM_WDATA DATA 1 32 }  { m_axi_P1_DRAM_WSTRB STRB 1 4 }  { m_axi_P1_DRAM_WLAST LAST 1 1 }  { m_axi_P1_DRAM_WID ID 1 1 }  { m_axi_P1_DRAM_WUSER USER 1 1 }  { m_axi_P1_DRAM_ARVALID VALID 1 1 }  { m_axi_P1_DRAM_ARREADY READY 0 1 }  { m_axi_P1_DRAM_ARADDR ADDR 1 64 }  { m_axi_P1_DRAM_ARID ID 1 1 }  { m_axi_P1_DRAM_ARLEN LEN 1 8 }  { m_axi_P1_DRAM_ARSIZE SIZE 1 3 }  { m_axi_P1_DRAM_ARBURST BURST 1 2 }  { m_axi_P1_DRAM_ARLOCK LOCK 1 2 }  { m_axi_P1_DRAM_ARCACHE CACHE 1 4 }  { m_axi_P1_DRAM_ARPROT PROT 1 3 }  { m_axi_P1_DRAM_ARQOS QOS 1 4 }  { m_axi_P1_DRAM_ARREGION REGION 1 4 }  { m_axi_P1_DRAM_ARUSER USER 1 1 }  { m_axi_P1_DRAM_RVALID VALID 0 1 }  { m_axi_P1_DRAM_RREADY READY 1 1 }  { m_axi_P1_DRAM_RDATA DATA 0 32 }  { m_axi_P1_DRAM_RLAST LAST 0 1 }  { m_axi_P1_DRAM_RID ID 0 1 }  { m_axi_P1_DRAM_RUSER USER 0 1 }  { m_axi_P1_DRAM_RRESP RESP 0 2 }  { m_axi_P1_DRAM_BVALID VALID 0 1 }  { m_axi_P1_DRAM_BREADY READY 1 1 }  { m_axi_P1_DRAM_BRESP RESP 0 2 }  { m_axi_P1_DRAM_BID ID 0 1 }  { m_axi_P1_DRAM_BUSER USER 0 1 } } }
	P2_DRAM { m_axi {  { m_axi_P2_DRAM_AWVALID VALID 1 1 }  { m_axi_P2_DRAM_AWREADY READY 0 1 }  { m_axi_P2_DRAM_AWADDR ADDR 1 64 }  { m_axi_P2_DRAM_AWID ID 1 1 }  { m_axi_P2_DRAM_AWLEN LEN 1 8 }  { m_axi_P2_DRAM_AWSIZE SIZE 1 3 }  { m_axi_P2_DRAM_AWBURST BURST 1 2 }  { m_axi_P2_DRAM_AWLOCK LOCK 1 2 }  { m_axi_P2_DRAM_AWCACHE CACHE 1 4 }  { m_axi_P2_DRAM_AWPROT PROT 1 3 }  { m_axi_P2_DRAM_AWQOS QOS 1 4 }  { m_axi_P2_DRAM_AWREGION REGION 1 4 }  { m_axi_P2_DRAM_AWUSER USER 1 1 }  { m_axi_P2_DRAM_WVALID VALID 1 1 }  { m_axi_P2_DRAM_WREADY READY 0 1 }  { m_axi_P2_DRAM_WDATA DATA 1 32 }  { m_axi_P2_DRAM_WSTRB STRB 1 4 }  { m_axi_P2_DRAM_WLAST LAST 1 1 }  { m_axi_P2_DRAM_WID ID 1 1 }  { m_axi_P2_DRAM_WUSER USER 1 1 }  { m_axi_P2_DRAM_ARVALID VALID 1 1 }  { m_axi_P2_DRAM_ARREADY READY 0 1 }  { m_axi_P2_DRAM_ARADDR ADDR 1 64 }  { m_axi_P2_DRAM_ARID ID 1 1 }  { m_axi_P2_DRAM_ARLEN LEN 1 8 }  { m_axi_P2_DRAM_ARSIZE SIZE 1 3 }  { m_axi_P2_DRAM_ARBURST BURST 1 2 }  { m_axi_P2_DRAM_ARLOCK LOCK 1 2 }  { m_axi_P2_DRAM_ARCACHE CACHE 1 4 }  { m_axi_P2_DRAM_ARPROT PROT 1 3 }  { m_axi_P2_DRAM_ARQOS QOS 1 4 }  { m_axi_P2_DRAM_ARREGION REGION 1 4 }  { m_axi_P2_DRAM_ARUSER USER 1 1 }  { m_axi_P2_DRAM_RVALID VALID 0 1 }  { m_axi_P2_DRAM_RREADY READY 1 1 }  { m_axi_P2_DRAM_RDATA DATA 0 32 }  { m_axi_P2_DRAM_RLAST LAST 0 1 }  { m_axi_P2_DRAM_RID ID 0 1 }  { m_axi_P2_DRAM_RUSER USER 0 1 }  { m_axi_P2_DRAM_RRESP RESP 0 2 }  { m_axi_P2_DRAM_BVALID VALID 0 1 }  { m_axi_P2_DRAM_BREADY READY 1 1 }  { m_axi_P2_DRAM_BRESP RESP 0 2 }  { m_axi_P2_DRAM_BID ID 0 1 }  { m_axi_P2_DRAM_BUSER USER 0 1 } } }
	P3_DRAM { m_axi {  { m_axi_P3_DRAM_AWVALID VALID 1 1 }  { m_axi_P3_DRAM_AWREADY READY 0 1 }  { m_axi_P3_DRAM_AWADDR ADDR 1 64 }  { m_axi_P3_DRAM_AWID ID 1 1 }  { m_axi_P3_DRAM_AWLEN LEN 1 8 }  { m_axi_P3_DRAM_AWSIZE SIZE 1 3 }  { m_axi_P3_DRAM_AWBURST BURST 1 2 }  { m_axi_P3_DRAM_AWLOCK LOCK 1 2 }  { m_axi_P3_DRAM_AWCACHE CACHE 1 4 }  { m_axi_P3_DRAM_AWPROT PROT 1 3 }  { m_axi_P3_DRAM_AWQOS QOS 1 4 }  { m_axi_P3_DRAM_AWREGION REGION 1 4 }  { m_axi_P3_DRAM_AWUSER USER 1 1 }  { m_axi_P3_DRAM_WVALID VALID 1 1 }  { m_axi_P3_DRAM_WREADY READY 0 1 }  { m_axi_P3_DRAM_WDATA DATA 1 32 }  { m_axi_P3_DRAM_WSTRB STRB 1 4 }  { m_axi_P3_DRAM_WLAST LAST 1 1 }  { m_axi_P3_DRAM_WID ID 1 1 }  { m_axi_P3_DRAM_WUSER USER 1 1 }  { m_axi_P3_DRAM_ARVALID VALID 1 1 }  { m_axi_P3_DRAM_ARREADY READY 0 1 }  { m_axi_P3_DRAM_ARADDR ADDR 1 64 }  { m_axi_P3_DRAM_ARID ID 1 1 }  { m_axi_P3_DRAM_ARLEN LEN 1 8 }  { m_axi_P3_DRAM_ARSIZE SIZE 1 3 }  { m_axi_P3_DRAM_ARBURST BURST 1 2 }  { m_axi_P3_DRAM_ARLOCK LOCK 1 2 }  { m_axi_P3_DRAM_ARCACHE CACHE 1 4 }  { m_axi_P3_DRAM_ARPROT PROT 1 3 }  { m_axi_P3_DRAM_ARQOS QOS 1 4 }  { m_axi_P3_DRAM_ARREGION REGION 1 4 }  { m_axi_P3_DRAM_ARUSER USER 1 1 }  { m_axi_P3_DRAM_RVALID VALID 0 1 }  { m_axi_P3_DRAM_RREADY READY 1 1 }  { m_axi_P3_DRAM_RDATA DATA 0 32 }  { m_axi_P3_DRAM_RLAST LAST 0 1 }  { m_axi_P3_DRAM_RID ID 0 1 }  { m_axi_P3_DRAM_RUSER USER 0 1 }  { m_axi_P3_DRAM_RRESP RESP 0 2 }  { m_axi_P3_DRAM_BVALID VALID 0 1 }  { m_axi_P3_DRAM_BREADY READY 1 1 }  { m_axi_P3_DRAM_BRESP RESP 0 2 }  { m_axi_P3_DRAM_BID ID 0 1 }  { m_axi_P3_DRAM_BUSER USER 0 1 } } }
	intersectIndex { m_axi {  { m_axi_intersectIndex_AWVALID VALID 1 1 }  { m_axi_intersectIndex_AWREADY READY 0 1 }  { m_axi_intersectIndex_AWADDR ADDR 1 64 }  { m_axi_intersectIndex_AWID ID 1 1 }  { m_axi_intersectIndex_AWLEN LEN 1 8 }  { m_axi_intersectIndex_AWSIZE SIZE 1 3 }  { m_axi_intersectIndex_AWBURST BURST 1 2 }  { m_axi_intersectIndex_AWLOCK LOCK 1 2 }  { m_axi_intersectIndex_AWCACHE CACHE 1 4 }  { m_axi_intersectIndex_AWPROT PROT 1 3 }  { m_axi_intersectIndex_AWQOS QOS 1 4 }  { m_axi_intersectIndex_AWREGION REGION 1 4 }  { m_axi_intersectIndex_AWUSER USER 1 1 }  { m_axi_intersectIndex_WVALID VALID 1 1 }  { m_axi_intersectIndex_WREADY READY 0 1 }  { m_axi_intersectIndex_WDATA DATA 1 32 }  { m_axi_intersectIndex_WSTRB STRB 1 4 }  { m_axi_intersectIndex_WLAST LAST 1 1 }  { m_axi_intersectIndex_WID ID 1 1 }  { m_axi_intersectIndex_WUSER USER 1 1 }  { m_axi_intersectIndex_ARVALID VALID 1 1 }  { m_axi_intersectIndex_ARREADY READY 0 1 }  { m_axi_intersectIndex_ARADDR ADDR 1 64 }  { m_axi_intersectIndex_ARID ID 1 1 }  { m_axi_intersectIndex_ARLEN LEN 1 8 }  { m_axi_intersectIndex_ARSIZE SIZE 1 3 }  { m_axi_intersectIndex_ARBURST BURST 1 2 }  { m_axi_intersectIndex_ARLOCK LOCK 1 2 }  { m_axi_intersectIndex_ARCACHE CACHE 1 4 }  { m_axi_intersectIndex_ARPROT PROT 1 3 }  { m_axi_intersectIndex_ARQOS QOS 1 4 }  { m_axi_intersectIndex_ARREGION REGION 1 4 }  { m_axi_intersectIndex_ARUSER USER 1 1 }  { m_axi_intersectIndex_RVALID VALID 0 1 }  { m_axi_intersectIndex_RREADY READY 1 1 }  { m_axi_intersectIndex_RDATA DATA 0 32 }  { m_axi_intersectIndex_RLAST LAST 0 1 }  { m_axi_intersectIndex_RID ID 0 1 }  { m_axi_intersectIndex_RUSER USER 0 1 }  { m_axi_intersectIndex_RRESP RESP 0 2 }  { m_axi_intersectIndex_BVALID VALID 0 1 }  { m_axi_intersectIndex_BREADY READY 1 1 }  { m_axi_intersectIndex_BRESP RESP 0 2 }  { m_axi_intersectIndex_BID ID 0 1 }  { m_axi_intersectIndex_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ dir { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ P1_DRAM { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ P2_DRAM { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ P3_DRAM { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ intersectIndex { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ dir 1 }
	{ P1_DRAM 1 }
	{ P2_DRAM 1 }
	{ P3_DRAM 1 }
	{ intersectIndex 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ dir 1 }
	{ P1_DRAM 1 }
	{ P2_DRAM 1 }
	{ P3_DRAM 1 }
	{ intersectIndex 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
