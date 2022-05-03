//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon May  2 18:34:24 2022
//Host        : ece-linlabsrv01.ece.gatech.edu running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=6,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire [48:0]axi_smc_1_M00_AXI_ARADDR;
  wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M00_AXI_ARLEN;
  wire [0:0]axi_smc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  wire [3:0]axi_smc_1_M00_AXI_ARQOS;
  wire axi_smc_1_M00_AXI_ARREADY;
  wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  wire axi_smc_1_M00_AXI_ARVALID;
  wire [48:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [127:0]axi_smc_1_M00_AXI_RDATA;
  wire axi_smc_1_M00_AXI_RLAST;
  wire axi_smc_1_M00_AXI_RREADY;
  wire [1:0]axi_smc_1_M00_AXI_RRESP;
  wire axi_smc_1_M00_AXI_RVALID;
  wire [127:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [15:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [48:0]axi_smc_2_M00_AXI_ARADDR;
  wire [1:0]axi_smc_2_M00_AXI_ARBURST;
  wire [3:0]axi_smc_2_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_2_M00_AXI_ARLEN;
  wire [0:0]axi_smc_2_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_2_M00_AXI_ARPROT;
  wire [3:0]axi_smc_2_M00_AXI_ARQOS;
  wire axi_smc_2_M00_AXI_ARREADY;
  wire [2:0]axi_smc_2_M00_AXI_ARSIZE;
  wire axi_smc_2_M00_AXI_ARVALID;
  wire [48:0]axi_smc_2_M00_AXI_AWADDR;
  wire [1:0]axi_smc_2_M00_AXI_AWBURST;
  wire [3:0]axi_smc_2_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_2_M00_AXI_AWLEN;
  wire [0:0]axi_smc_2_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_2_M00_AXI_AWPROT;
  wire [3:0]axi_smc_2_M00_AXI_AWQOS;
  wire axi_smc_2_M00_AXI_AWREADY;
  wire [2:0]axi_smc_2_M00_AXI_AWSIZE;
  wire axi_smc_2_M00_AXI_AWVALID;
  wire axi_smc_2_M00_AXI_BREADY;
  wire [1:0]axi_smc_2_M00_AXI_BRESP;
  wire axi_smc_2_M00_AXI_BVALID;
  wire [127:0]axi_smc_2_M00_AXI_RDATA;
  wire axi_smc_2_M00_AXI_RLAST;
  wire axi_smc_2_M00_AXI_RREADY;
  wire [1:0]axi_smc_2_M00_AXI_RRESP;
  wire axi_smc_2_M00_AXI_RVALID;
  wire [127:0]axi_smc_2_M00_AXI_WDATA;
  wire axi_smc_2_M00_AXI_WLAST;
  wire axi_smc_2_M00_AXI_WREADY;
  wire [15:0]axi_smc_2_M00_AXI_WSTRB;
  wire axi_smc_2_M00_AXI_WVALID;
  wire [48:0]axi_smc_3_M00_AXI_ARADDR;
  wire [1:0]axi_smc_3_M00_AXI_ARBURST;
  wire [3:0]axi_smc_3_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_3_M00_AXI_ARLEN;
  wire [0:0]axi_smc_3_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_3_M00_AXI_ARPROT;
  wire [3:0]axi_smc_3_M00_AXI_ARQOS;
  wire axi_smc_3_M00_AXI_ARREADY;
  wire [2:0]axi_smc_3_M00_AXI_ARSIZE;
  wire axi_smc_3_M00_AXI_ARVALID;
  wire [48:0]axi_smc_3_M00_AXI_AWADDR;
  wire [1:0]axi_smc_3_M00_AXI_AWBURST;
  wire [3:0]axi_smc_3_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_3_M00_AXI_AWLEN;
  wire [0:0]axi_smc_3_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_3_M00_AXI_AWPROT;
  wire [3:0]axi_smc_3_M00_AXI_AWQOS;
  wire axi_smc_3_M00_AXI_AWREADY;
  wire [2:0]axi_smc_3_M00_AXI_AWSIZE;
  wire axi_smc_3_M00_AXI_AWVALID;
  wire axi_smc_3_M00_AXI_BREADY;
  wire [1:0]axi_smc_3_M00_AXI_BRESP;
  wire axi_smc_3_M00_AXI_BVALID;
  wire [127:0]axi_smc_3_M00_AXI_RDATA;
  wire axi_smc_3_M00_AXI_RLAST;
  wire axi_smc_3_M00_AXI_RREADY;
  wire [1:0]axi_smc_3_M00_AXI_RRESP;
  wire axi_smc_3_M00_AXI_RVALID;
  wire [127:0]axi_smc_3_M00_AXI_WDATA;
  wire axi_smc_3_M00_AXI_WLAST;
  wire axi_smc_3_M00_AXI_WREADY;
  wire [15:0]axi_smc_3_M00_AXI_WSTRB;
  wire axi_smc_3_M00_AXI_WVALID;
  wire [48:0]axi_smc_4_M00_AXI_ARADDR;
  wire [1:0]axi_smc_4_M00_AXI_ARBURST;
  wire [3:0]axi_smc_4_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_4_M00_AXI_ARLEN;
  wire [0:0]axi_smc_4_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_4_M00_AXI_ARPROT;
  wire [3:0]axi_smc_4_M00_AXI_ARQOS;
  wire axi_smc_4_M00_AXI_ARREADY;
  wire [2:0]axi_smc_4_M00_AXI_ARSIZE;
  wire axi_smc_4_M00_AXI_ARVALID;
  wire [48:0]axi_smc_4_M00_AXI_AWADDR;
  wire [1:0]axi_smc_4_M00_AXI_AWBURST;
  wire [3:0]axi_smc_4_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_4_M00_AXI_AWLEN;
  wire [0:0]axi_smc_4_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_4_M00_AXI_AWPROT;
  wire [3:0]axi_smc_4_M00_AXI_AWQOS;
  wire axi_smc_4_M00_AXI_AWREADY;
  wire [2:0]axi_smc_4_M00_AXI_AWSIZE;
  wire axi_smc_4_M00_AXI_AWVALID;
  wire axi_smc_4_M00_AXI_BREADY;
  wire [1:0]axi_smc_4_M00_AXI_BRESP;
  wire axi_smc_4_M00_AXI_BVALID;
  wire [127:0]axi_smc_4_M00_AXI_RDATA;
  wire axi_smc_4_M00_AXI_RLAST;
  wire axi_smc_4_M00_AXI_RREADY;
  wire [1:0]axi_smc_4_M00_AXI_RRESP;
  wire axi_smc_4_M00_AXI_RVALID;
  wire [127:0]axi_smc_4_M00_AXI_WDATA;
  wire axi_smc_4_M00_AXI_WLAST;
  wire axi_smc_4_M00_AXI_WREADY;
  wire [15:0]axi_smc_4_M00_AXI_WSTRB;
  wire axi_smc_4_M00_AXI_WVALID;
  wire [48:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [48:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [127:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [127:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [15:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire ps8_0_axi_periph_M00_AXI_AWVALID;
  wire ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire ps8_0_axi_periph_M00_AXI_WVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARQOS;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_ARREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_P1_DRAM_ARSIZE;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_ARVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWQOS;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_AWREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_P1_DRAM_AWSIZE;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_AWVALID;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_BREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_P1_DRAM_BRESP;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_BVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_P1_DRAM_RDATA;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_RLAST;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_RREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_P1_DRAM_RRESP;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_RVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_P1_DRAM_WDATA;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_WLAST;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_WREADY;
  wire [3:0]rayTriangleIntersect_0_m_axi_P1_DRAM_WSTRB;
  wire rayTriangleIntersect_0_m_axi_P1_DRAM_WVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARQOS;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_ARREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_P2_DRAM_ARSIZE;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_ARVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWQOS;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_AWREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_P2_DRAM_AWSIZE;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_AWVALID;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_BREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_P2_DRAM_BRESP;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_BVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_P2_DRAM_RDATA;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_RLAST;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_RREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_P2_DRAM_RRESP;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_RVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_P2_DRAM_WDATA;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_WLAST;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_WREADY;
  wire [3:0]rayTriangleIntersect_0_m_axi_P2_DRAM_WSTRB;
  wire rayTriangleIntersect_0_m_axi_P2_DRAM_WVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARQOS;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_ARREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_P3_DRAM_ARSIZE;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_ARVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWQOS;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_AWREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_P3_DRAM_AWSIZE;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_AWVALID;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_BREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_P3_DRAM_BRESP;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_BVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_P3_DRAM_RDATA;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_RLAST;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_RREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_P3_DRAM_RRESP;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_RVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_P3_DRAM_WDATA;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_WLAST;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_WREADY;
  wire [3:0]rayTriangleIntersect_0_m_axi_P3_DRAM_WSTRB;
  wire rayTriangleIntersect_0_m_axi_P3_DRAM_WVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_dir_ARADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_dir_ARBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_dir_ARCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_dir_ARLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_dir_ARLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_dir_ARPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_dir_ARQOS;
  wire rayTriangleIntersect_0_m_axi_dir_ARREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_dir_ARSIZE;
  wire rayTriangleIntersect_0_m_axi_dir_ARVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_dir_AWADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_dir_AWBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_dir_AWCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_dir_AWLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_dir_AWLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_dir_AWPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_dir_AWQOS;
  wire rayTriangleIntersect_0_m_axi_dir_AWREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_dir_AWSIZE;
  wire rayTriangleIntersect_0_m_axi_dir_AWVALID;
  wire rayTriangleIntersect_0_m_axi_dir_BREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_dir_BRESP;
  wire rayTriangleIntersect_0_m_axi_dir_BVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_dir_RDATA;
  wire rayTriangleIntersect_0_m_axi_dir_RLAST;
  wire rayTriangleIntersect_0_m_axi_dir_RREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_dir_RRESP;
  wire rayTriangleIntersect_0_m_axi_dir_RVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_dir_WDATA;
  wire rayTriangleIntersect_0_m_axi_dir_WLAST;
  wire rayTriangleIntersect_0_m_axi_dir_WREADY;
  wire [3:0]rayTriangleIntersect_0_m_axi_dir_WSTRB;
  wire rayTriangleIntersect_0_m_axi_dir_WVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARQOS;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_ARREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_intersectIndex_ARSIZE;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_ARVALID;
  wire [63:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWADDR;
  wire [1:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWBURST;
  wire [3:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWCACHE;
  wire [7:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWLEN;
  wire [1:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWLOCK;
  wire [2:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWPROT;
  wire [3:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWQOS;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_AWREADY;
  wire [2:0]rayTriangleIntersect_0_m_axi_intersectIndex_AWSIZE;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_AWVALID;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_BREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_intersectIndex_BRESP;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_BVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_intersectIndex_RDATA;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_RLAST;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_RREADY;
  wire [1:0]rayTriangleIntersect_0_m_axi_intersectIndex_RRESP;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_RVALID;
  wire [31:0]rayTriangleIntersect_0_m_axi_intersectIndex_WDATA;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_WLAST;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_WREADY;
  wire [3:0]rayTriangleIntersect_0_m_axi_intersectIndex_WSTRB;
  wire rayTriangleIntersect_0_m_axi_intersectIndex_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  design_1_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(rayTriangleIntersect_0_m_axi_dir_ARADDR),
        .S00_AXI_arburst(rayTriangleIntersect_0_m_axi_dir_ARBURST),
        .S00_AXI_arcache(rayTriangleIntersect_0_m_axi_dir_ARCACHE),
        .S00_AXI_arlen(rayTriangleIntersect_0_m_axi_dir_ARLEN),
        .S00_AXI_arlock(rayTriangleIntersect_0_m_axi_dir_ARLOCK[0]),
        .S00_AXI_arprot(rayTriangleIntersect_0_m_axi_dir_ARPROT),
        .S00_AXI_arqos(rayTriangleIntersect_0_m_axi_dir_ARQOS),
        .S00_AXI_arready(rayTriangleIntersect_0_m_axi_dir_ARREADY),
        .S00_AXI_arsize(rayTriangleIntersect_0_m_axi_dir_ARSIZE),
        .S00_AXI_arvalid(rayTriangleIntersect_0_m_axi_dir_ARVALID),
        .S00_AXI_awaddr(rayTriangleIntersect_0_m_axi_dir_AWADDR),
        .S00_AXI_awburst(rayTriangleIntersect_0_m_axi_dir_AWBURST),
        .S00_AXI_awcache(rayTriangleIntersect_0_m_axi_dir_AWCACHE),
        .S00_AXI_awlen(rayTriangleIntersect_0_m_axi_dir_AWLEN),
        .S00_AXI_awlock(rayTriangleIntersect_0_m_axi_dir_AWLOCK[0]),
        .S00_AXI_awprot(rayTriangleIntersect_0_m_axi_dir_AWPROT),
        .S00_AXI_awqos(rayTriangleIntersect_0_m_axi_dir_AWQOS),
        .S00_AXI_awready(rayTriangleIntersect_0_m_axi_dir_AWREADY),
        .S00_AXI_awsize(rayTriangleIntersect_0_m_axi_dir_AWSIZE),
        .S00_AXI_awvalid(rayTriangleIntersect_0_m_axi_dir_AWVALID),
        .S00_AXI_bready(rayTriangleIntersect_0_m_axi_dir_BREADY),
        .S00_AXI_bresp(rayTriangleIntersect_0_m_axi_dir_BRESP),
        .S00_AXI_bvalid(rayTriangleIntersect_0_m_axi_dir_BVALID),
        .S00_AXI_rdata(rayTriangleIntersect_0_m_axi_dir_RDATA),
        .S00_AXI_rlast(rayTriangleIntersect_0_m_axi_dir_RLAST),
        .S00_AXI_rready(rayTriangleIntersect_0_m_axi_dir_RREADY),
        .S00_AXI_rresp(rayTriangleIntersect_0_m_axi_dir_RRESP),
        .S00_AXI_rvalid(rayTriangleIntersect_0_m_axi_dir_RVALID),
        .S00_AXI_wdata(rayTriangleIntersect_0_m_axi_dir_WDATA),
        .S00_AXI_wlast(rayTriangleIntersect_0_m_axi_dir_WLAST),
        .S00_AXI_wready(rayTriangleIntersect_0_m_axi_dir_WREADY),
        .S00_AXI_wstrb(rayTriangleIntersect_0_m_axi_dir_WSTRB),
        .S00_AXI_wvalid(rayTriangleIntersect_0_m_axi_dir_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_axi_smc_1_0 axi_smc_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .S00_AXI_araddr(rayTriangleIntersect_0_m_axi_P1_DRAM_ARADDR),
        .S00_AXI_arburst(rayTriangleIntersect_0_m_axi_P1_DRAM_ARBURST),
        .S00_AXI_arcache(rayTriangleIntersect_0_m_axi_P1_DRAM_ARCACHE),
        .S00_AXI_arlen(rayTriangleIntersect_0_m_axi_P1_DRAM_ARLEN),
        .S00_AXI_arlock(rayTriangleIntersect_0_m_axi_P1_DRAM_ARLOCK[0]),
        .S00_AXI_arprot(rayTriangleIntersect_0_m_axi_P1_DRAM_ARPROT),
        .S00_AXI_arqos(rayTriangleIntersect_0_m_axi_P1_DRAM_ARQOS),
        .S00_AXI_arready(rayTriangleIntersect_0_m_axi_P1_DRAM_ARREADY),
        .S00_AXI_arsize(rayTriangleIntersect_0_m_axi_P1_DRAM_ARSIZE),
        .S00_AXI_arvalid(rayTriangleIntersect_0_m_axi_P1_DRAM_ARVALID),
        .S00_AXI_awaddr(rayTriangleIntersect_0_m_axi_P1_DRAM_AWADDR),
        .S00_AXI_awburst(rayTriangleIntersect_0_m_axi_P1_DRAM_AWBURST),
        .S00_AXI_awcache(rayTriangleIntersect_0_m_axi_P1_DRAM_AWCACHE),
        .S00_AXI_awlen(rayTriangleIntersect_0_m_axi_P1_DRAM_AWLEN),
        .S00_AXI_awlock(rayTriangleIntersect_0_m_axi_P1_DRAM_AWLOCK[0]),
        .S00_AXI_awprot(rayTriangleIntersect_0_m_axi_P1_DRAM_AWPROT),
        .S00_AXI_awqos(rayTriangleIntersect_0_m_axi_P1_DRAM_AWQOS),
        .S00_AXI_awready(rayTriangleIntersect_0_m_axi_P1_DRAM_AWREADY),
        .S00_AXI_awsize(rayTriangleIntersect_0_m_axi_P1_DRAM_AWSIZE),
        .S00_AXI_awvalid(rayTriangleIntersect_0_m_axi_P1_DRAM_AWVALID),
        .S00_AXI_bready(rayTriangleIntersect_0_m_axi_P1_DRAM_BREADY),
        .S00_AXI_bresp(rayTriangleIntersect_0_m_axi_P1_DRAM_BRESP),
        .S00_AXI_bvalid(rayTriangleIntersect_0_m_axi_P1_DRAM_BVALID),
        .S00_AXI_rdata(rayTriangleIntersect_0_m_axi_P1_DRAM_RDATA),
        .S00_AXI_rlast(rayTriangleIntersect_0_m_axi_P1_DRAM_RLAST),
        .S00_AXI_rready(rayTriangleIntersect_0_m_axi_P1_DRAM_RREADY),
        .S00_AXI_rresp(rayTriangleIntersect_0_m_axi_P1_DRAM_RRESP),
        .S00_AXI_rvalid(rayTriangleIntersect_0_m_axi_P1_DRAM_RVALID),
        .S00_AXI_wdata(rayTriangleIntersect_0_m_axi_P1_DRAM_WDATA),
        .S00_AXI_wlast(rayTriangleIntersect_0_m_axi_P1_DRAM_WLAST),
        .S00_AXI_wready(rayTriangleIntersect_0_m_axi_P1_DRAM_WREADY),
        .S00_AXI_wstrb(rayTriangleIntersect_0_m_axi_P1_DRAM_WSTRB),
        .S00_AXI_wvalid(rayTriangleIntersect_0_m_axi_P1_DRAM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_axi_smc_2_0 axi_smc_2
       (.M00_AXI_araddr(axi_smc_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_2_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_2_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_2_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_2_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_2_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_2_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_2_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_2_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_2_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_2_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_2_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_2_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_2_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_2_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_2_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_2_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_2_M00_AXI_WVALID),
        .S00_AXI_araddr(rayTriangleIntersect_0_m_axi_P2_DRAM_ARADDR),
        .S00_AXI_arburst(rayTriangleIntersect_0_m_axi_P2_DRAM_ARBURST),
        .S00_AXI_arcache(rayTriangleIntersect_0_m_axi_P2_DRAM_ARCACHE),
        .S00_AXI_arlen(rayTriangleIntersect_0_m_axi_P2_DRAM_ARLEN),
        .S00_AXI_arlock(rayTriangleIntersect_0_m_axi_P2_DRAM_ARLOCK[0]),
        .S00_AXI_arprot(rayTriangleIntersect_0_m_axi_P2_DRAM_ARPROT),
        .S00_AXI_arqos(rayTriangleIntersect_0_m_axi_P2_DRAM_ARQOS),
        .S00_AXI_arready(rayTriangleIntersect_0_m_axi_P2_DRAM_ARREADY),
        .S00_AXI_arsize(rayTriangleIntersect_0_m_axi_P2_DRAM_ARSIZE),
        .S00_AXI_arvalid(rayTriangleIntersect_0_m_axi_P2_DRAM_ARVALID),
        .S00_AXI_awaddr(rayTriangleIntersect_0_m_axi_P2_DRAM_AWADDR),
        .S00_AXI_awburst(rayTriangleIntersect_0_m_axi_P2_DRAM_AWBURST),
        .S00_AXI_awcache(rayTriangleIntersect_0_m_axi_P2_DRAM_AWCACHE),
        .S00_AXI_awlen(rayTriangleIntersect_0_m_axi_P2_DRAM_AWLEN),
        .S00_AXI_awlock(rayTriangleIntersect_0_m_axi_P2_DRAM_AWLOCK[0]),
        .S00_AXI_awprot(rayTriangleIntersect_0_m_axi_P2_DRAM_AWPROT),
        .S00_AXI_awqos(rayTriangleIntersect_0_m_axi_P2_DRAM_AWQOS),
        .S00_AXI_awready(rayTriangleIntersect_0_m_axi_P2_DRAM_AWREADY),
        .S00_AXI_awsize(rayTriangleIntersect_0_m_axi_P2_DRAM_AWSIZE),
        .S00_AXI_awvalid(rayTriangleIntersect_0_m_axi_P2_DRAM_AWVALID),
        .S00_AXI_bready(rayTriangleIntersect_0_m_axi_P2_DRAM_BREADY),
        .S00_AXI_bresp(rayTriangleIntersect_0_m_axi_P2_DRAM_BRESP),
        .S00_AXI_bvalid(rayTriangleIntersect_0_m_axi_P2_DRAM_BVALID),
        .S00_AXI_rdata(rayTriangleIntersect_0_m_axi_P2_DRAM_RDATA),
        .S00_AXI_rlast(rayTriangleIntersect_0_m_axi_P2_DRAM_RLAST),
        .S00_AXI_rready(rayTriangleIntersect_0_m_axi_P2_DRAM_RREADY),
        .S00_AXI_rresp(rayTriangleIntersect_0_m_axi_P2_DRAM_RRESP),
        .S00_AXI_rvalid(rayTriangleIntersect_0_m_axi_P2_DRAM_RVALID),
        .S00_AXI_wdata(rayTriangleIntersect_0_m_axi_P2_DRAM_WDATA),
        .S00_AXI_wlast(rayTriangleIntersect_0_m_axi_P2_DRAM_WLAST),
        .S00_AXI_wready(rayTriangleIntersect_0_m_axi_P2_DRAM_WREADY),
        .S00_AXI_wstrb(rayTriangleIntersect_0_m_axi_P2_DRAM_WSTRB),
        .S00_AXI_wvalid(rayTriangleIntersect_0_m_axi_P2_DRAM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_axi_smc_3_0 axi_smc_3
       (.M00_AXI_araddr(axi_smc_3_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_3_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_3_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_3_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_3_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_3_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_3_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_3_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_3_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_3_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_3_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_3_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_3_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_3_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_3_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_3_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_3_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_3_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_3_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_3_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_3_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_3_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_3_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_3_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_3_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_3_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_3_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_3_M00_AXI_WVALID),
        .S00_AXI_araddr(rayTriangleIntersect_0_m_axi_P3_DRAM_ARADDR),
        .S00_AXI_arburst(rayTriangleIntersect_0_m_axi_P3_DRAM_ARBURST),
        .S00_AXI_arcache(rayTriangleIntersect_0_m_axi_P3_DRAM_ARCACHE),
        .S00_AXI_arlen(rayTriangleIntersect_0_m_axi_P3_DRAM_ARLEN),
        .S00_AXI_arlock(rayTriangleIntersect_0_m_axi_P3_DRAM_ARLOCK[0]),
        .S00_AXI_arprot(rayTriangleIntersect_0_m_axi_P3_DRAM_ARPROT),
        .S00_AXI_arqos(rayTriangleIntersect_0_m_axi_P3_DRAM_ARQOS),
        .S00_AXI_arready(rayTriangleIntersect_0_m_axi_P3_DRAM_ARREADY),
        .S00_AXI_arsize(rayTriangleIntersect_0_m_axi_P3_DRAM_ARSIZE),
        .S00_AXI_arvalid(rayTriangleIntersect_0_m_axi_P3_DRAM_ARVALID),
        .S00_AXI_awaddr(rayTriangleIntersect_0_m_axi_P3_DRAM_AWADDR),
        .S00_AXI_awburst(rayTriangleIntersect_0_m_axi_P3_DRAM_AWBURST),
        .S00_AXI_awcache(rayTriangleIntersect_0_m_axi_P3_DRAM_AWCACHE),
        .S00_AXI_awlen(rayTriangleIntersect_0_m_axi_P3_DRAM_AWLEN),
        .S00_AXI_awlock(rayTriangleIntersect_0_m_axi_P3_DRAM_AWLOCK[0]),
        .S00_AXI_awprot(rayTriangleIntersect_0_m_axi_P3_DRAM_AWPROT),
        .S00_AXI_awqos(rayTriangleIntersect_0_m_axi_P3_DRAM_AWQOS),
        .S00_AXI_awready(rayTriangleIntersect_0_m_axi_P3_DRAM_AWREADY),
        .S00_AXI_awsize(rayTriangleIntersect_0_m_axi_P3_DRAM_AWSIZE),
        .S00_AXI_awvalid(rayTriangleIntersect_0_m_axi_P3_DRAM_AWVALID),
        .S00_AXI_bready(rayTriangleIntersect_0_m_axi_P3_DRAM_BREADY),
        .S00_AXI_bresp(rayTriangleIntersect_0_m_axi_P3_DRAM_BRESP),
        .S00_AXI_bvalid(rayTriangleIntersect_0_m_axi_P3_DRAM_BVALID),
        .S00_AXI_rdata(rayTriangleIntersect_0_m_axi_P3_DRAM_RDATA),
        .S00_AXI_rlast(rayTriangleIntersect_0_m_axi_P3_DRAM_RLAST),
        .S00_AXI_rready(rayTriangleIntersect_0_m_axi_P3_DRAM_RREADY),
        .S00_AXI_rresp(rayTriangleIntersect_0_m_axi_P3_DRAM_RRESP),
        .S00_AXI_rvalid(rayTriangleIntersect_0_m_axi_P3_DRAM_RVALID),
        .S00_AXI_wdata(rayTriangleIntersect_0_m_axi_P3_DRAM_WDATA),
        .S00_AXI_wlast(rayTriangleIntersect_0_m_axi_P3_DRAM_WLAST),
        .S00_AXI_wready(rayTriangleIntersect_0_m_axi_P3_DRAM_WREADY),
        .S00_AXI_wstrb(rayTriangleIntersect_0_m_axi_P3_DRAM_WSTRB),
        .S00_AXI_wvalid(rayTriangleIntersect_0_m_axi_P3_DRAM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_axi_smc_4_0 axi_smc_4
       (.M00_AXI_araddr(axi_smc_4_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_4_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_4_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_4_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_4_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_4_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_4_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_4_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_4_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_4_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_4_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_4_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_4_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_4_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_4_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_4_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_4_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_4_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_4_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_4_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_4_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_4_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_4_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_4_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_4_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_4_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_4_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_4_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_4_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_4_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_4_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_4_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_4_M00_AXI_WVALID),
        .S00_AXI_araddr(rayTriangleIntersect_0_m_axi_intersectIndex_ARADDR),
        .S00_AXI_arburst(rayTriangleIntersect_0_m_axi_intersectIndex_ARBURST),
        .S00_AXI_arcache(rayTriangleIntersect_0_m_axi_intersectIndex_ARCACHE),
        .S00_AXI_arlen(rayTriangleIntersect_0_m_axi_intersectIndex_ARLEN),
        .S00_AXI_arlock(rayTriangleIntersect_0_m_axi_intersectIndex_ARLOCK[0]),
        .S00_AXI_arprot(rayTriangleIntersect_0_m_axi_intersectIndex_ARPROT),
        .S00_AXI_arqos(rayTriangleIntersect_0_m_axi_intersectIndex_ARQOS),
        .S00_AXI_arready(rayTriangleIntersect_0_m_axi_intersectIndex_ARREADY),
        .S00_AXI_arsize(rayTriangleIntersect_0_m_axi_intersectIndex_ARSIZE),
        .S00_AXI_arvalid(rayTriangleIntersect_0_m_axi_intersectIndex_ARVALID),
        .S00_AXI_awaddr(rayTriangleIntersect_0_m_axi_intersectIndex_AWADDR),
        .S00_AXI_awburst(rayTriangleIntersect_0_m_axi_intersectIndex_AWBURST),
        .S00_AXI_awcache(rayTriangleIntersect_0_m_axi_intersectIndex_AWCACHE),
        .S00_AXI_awlen(rayTriangleIntersect_0_m_axi_intersectIndex_AWLEN),
        .S00_AXI_awlock(rayTriangleIntersect_0_m_axi_intersectIndex_AWLOCK[0]),
        .S00_AXI_awprot(rayTriangleIntersect_0_m_axi_intersectIndex_AWPROT),
        .S00_AXI_awqos(rayTriangleIntersect_0_m_axi_intersectIndex_AWQOS),
        .S00_AXI_awready(rayTriangleIntersect_0_m_axi_intersectIndex_AWREADY),
        .S00_AXI_awsize(rayTriangleIntersect_0_m_axi_intersectIndex_AWSIZE),
        .S00_AXI_awvalid(rayTriangleIntersect_0_m_axi_intersectIndex_AWVALID),
        .S00_AXI_bready(rayTriangleIntersect_0_m_axi_intersectIndex_BREADY),
        .S00_AXI_bresp(rayTriangleIntersect_0_m_axi_intersectIndex_BRESP),
        .S00_AXI_bvalid(rayTriangleIntersect_0_m_axi_intersectIndex_BVALID),
        .S00_AXI_rdata(rayTriangleIntersect_0_m_axi_intersectIndex_RDATA),
        .S00_AXI_rlast(rayTriangleIntersect_0_m_axi_intersectIndex_RLAST),
        .S00_AXI_rready(rayTriangleIntersect_0_m_axi_intersectIndex_RREADY),
        .S00_AXI_rresp(rayTriangleIntersect_0_m_axi_intersectIndex_RRESP),
        .S00_AXI_rvalid(rayTriangleIntersect_0_m_axi_intersectIndex_RVALID),
        .S00_AXI_wdata(rayTriangleIntersect_0_m_axi_intersectIndex_WDATA),
        .S00_AXI_wlast(rayTriangleIntersect_0_m_axi_intersectIndex_WLAST),
        .S00_AXI_wready(rayTriangleIntersect_0_m_axi_intersectIndex_WREADY),
        .S00_AXI_wstrb(rayTriangleIntersect_0_m_axi_intersectIndex_WSTRB),
        .S00_AXI_wvalid(rayTriangleIntersect_0_m_axi_intersectIndex_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  design_1_rayTriangleIntersect_0_0 rayTriangleIntersect_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_99M_peripheral_aresetn),
        .m_axi_P1_DRAM_ARADDR(rayTriangleIntersect_0_m_axi_P1_DRAM_ARADDR),
        .m_axi_P1_DRAM_ARBURST(rayTriangleIntersect_0_m_axi_P1_DRAM_ARBURST),
        .m_axi_P1_DRAM_ARCACHE(rayTriangleIntersect_0_m_axi_P1_DRAM_ARCACHE),
        .m_axi_P1_DRAM_ARLEN(rayTriangleIntersect_0_m_axi_P1_DRAM_ARLEN),
        .m_axi_P1_DRAM_ARLOCK(rayTriangleIntersect_0_m_axi_P1_DRAM_ARLOCK),
        .m_axi_P1_DRAM_ARPROT(rayTriangleIntersect_0_m_axi_P1_DRAM_ARPROT),
        .m_axi_P1_DRAM_ARQOS(rayTriangleIntersect_0_m_axi_P1_DRAM_ARQOS),
        .m_axi_P1_DRAM_ARREADY(rayTriangleIntersect_0_m_axi_P1_DRAM_ARREADY),
        .m_axi_P1_DRAM_ARSIZE(rayTriangleIntersect_0_m_axi_P1_DRAM_ARSIZE),
        .m_axi_P1_DRAM_ARVALID(rayTriangleIntersect_0_m_axi_P1_DRAM_ARVALID),
        .m_axi_P1_DRAM_AWADDR(rayTriangleIntersect_0_m_axi_P1_DRAM_AWADDR),
        .m_axi_P1_DRAM_AWBURST(rayTriangleIntersect_0_m_axi_P1_DRAM_AWBURST),
        .m_axi_P1_DRAM_AWCACHE(rayTriangleIntersect_0_m_axi_P1_DRAM_AWCACHE),
        .m_axi_P1_DRAM_AWLEN(rayTriangleIntersect_0_m_axi_P1_DRAM_AWLEN),
        .m_axi_P1_DRAM_AWLOCK(rayTriangleIntersect_0_m_axi_P1_DRAM_AWLOCK),
        .m_axi_P1_DRAM_AWPROT(rayTriangleIntersect_0_m_axi_P1_DRAM_AWPROT),
        .m_axi_P1_DRAM_AWQOS(rayTriangleIntersect_0_m_axi_P1_DRAM_AWQOS),
        .m_axi_P1_DRAM_AWREADY(rayTriangleIntersect_0_m_axi_P1_DRAM_AWREADY),
        .m_axi_P1_DRAM_AWSIZE(rayTriangleIntersect_0_m_axi_P1_DRAM_AWSIZE),
        .m_axi_P1_DRAM_AWVALID(rayTriangleIntersect_0_m_axi_P1_DRAM_AWVALID),
        .m_axi_P1_DRAM_BREADY(rayTriangleIntersect_0_m_axi_P1_DRAM_BREADY),
        .m_axi_P1_DRAM_BRESP(rayTriangleIntersect_0_m_axi_P1_DRAM_BRESP),
        .m_axi_P1_DRAM_BVALID(rayTriangleIntersect_0_m_axi_P1_DRAM_BVALID),
        .m_axi_P1_DRAM_RDATA(rayTriangleIntersect_0_m_axi_P1_DRAM_RDATA),
        .m_axi_P1_DRAM_RLAST(rayTriangleIntersect_0_m_axi_P1_DRAM_RLAST),
        .m_axi_P1_DRAM_RREADY(rayTriangleIntersect_0_m_axi_P1_DRAM_RREADY),
        .m_axi_P1_DRAM_RRESP(rayTriangleIntersect_0_m_axi_P1_DRAM_RRESP),
        .m_axi_P1_DRAM_RVALID(rayTriangleIntersect_0_m_axi_P1_DRAM_RVALID),
        .m_axi_P1_DRAM_WDATA(rayTriangleIntersect_0_m_axi_P1_DRAM_WDATA),
        .m_axi_P1_DRAM_WLAST(rayTriangleIntersect_0_m_axi_P1_DRAM_WLAST),
        .m_axi_P1_DRAM_WREADY(rayTriangleIntersect_0_m_axi_P1_DRAM_WREADY),
        .m_axi_P1_DRAM_WSTRB(rayTriangleIntersect_0_m_axi_P1_DRAM_WSTRB),
        .m_axi_P1_DRAM_WVALID(rayTriangleIntersect_0_m_axi_P1_DRAM_WVALID),
        .m_axi_P2_DRAM_ARADDR(rayTriangleIntersect_0_m_axi_P2_DRAM_ARADDR),
        .m_axi_P2_DRAM_ARBURST(rayTriangleIntersect_0_m_axi_P2_DRAM_ARBURST),
        .m_axi_P2_DRAM_ARCACHE(rayTriangleIntersect_0_m_axi_P2_DRAM_ARCACHE),
        .m_axi_P2_DRAM_ARLEN(rayTriangleIntersect_0_m_axi_P2_DRAM_ARLEN),
        .m_axi_P2_DRAM_ARLOCK(rayTriangleIntersect_0_m_axi_P2_DRAM_ARLOCK),
        .m_axi_P2_DRAM_ARPROT(rayTriangleIntersect_0_m_axi_P2_DRAM_ARPROT),
        .m_axi_P2_DRAM_ARQOS(rayTriangleIntersect_0_m_axi_P2_DRAM_ARQOS),
        .m_axi_P2_DRAM_ARREADY(rayTriangleIntersect_0_m_axi_P2_DRAM_ARREADY),
        .m_axi_P2_DRAM_ARSIZE(rayTriangleIntersect_0_m_axi_P2_DRAM_ARSIZE),
        .m_axi_P2_DRAM_ARVALID(rayTriangleIntersect_0_m_axi_P2_DRAM_ARVALID),
        .m_axi_P2_DRAM_AWADDR(rayTriangleIntersect_0_m_axi_P2_DRAM_AWADDR),
        .m_axi_P2_DRAM_AWBURST(rayTriangleIntersect_0_m_axi_P2_DRAM_AWBURST),
        .m_axi_P2_DRAM_AWCACHE(rayTriangleIntersect_0_m_axi_P2_DRAM_AWCACHE),
        .m_axi_P2_DRAM_AWLEN(rayTriangleIntersect_0_m_axi_P2_DRAM_AWLEN),
        .m_axi_P2_DRAM_AWLOCK(rayTriangleIntersect_0_m_axi_P2_DRAM_AWLOCK),
        .m_axi_P2_DRAM_AWPROT(rayTriangleIntersect_0_m_axi_P2_DRAM_AWPROT),
        .m_axi_P2_DRAM_AWQOS(rayTriangleIntersect_0_m_axi_P2_DRAM_AWQOS),
        .m_axi_P2_DRAM_AWREADY(rayTriangleIntersect_0_m_axi_P2_DRAM_AWREADY),
        .m_axi_P2_DRAM_AWSIZE(rayTriangleIntersect_0_m_axi_P2_DRAM_AWSIZE),
        .m_axi_P2_DRAM_AWVALID(rayTriangleIntersect_0_m_axi_P2_DRAM_AWVALID),
        .m_axi_P2_DRAM_BREADY(rayTriangleIntersect_0_m_axi_P2_DRAM_BREADY),
        .m_axi_P2_DRAM_BRESP(rayTriangleIntersect_0_m_axi_P2_DRAM_BRESP),
        .m_axi_P2_DRAM_BVALID(rayTriangleIntersect_0_m_axi_P2_DRAM_BVALID),
        .m_axi_P2_DRAM_RDATA(rayTriangleIntersect_0_m_axi_P2_DRAM_RDATA),
        .m_axi_P2_DRAM_RLAST(rayTriangleIntersect_0_m_axi_P2_DRAM_RLAST),
        .m_axi_P2_DRAM_RREADY(rayTriangleIntersect_0_m_axi_P2_DRAM_RREADY),
        .m_axi_P2_DRAM_RRESP(rayTriangleIntersect_0_m_axi_P2_DRAM_RRESP),
        .m_axi_P2_DRAM_RVALID(rayTriangleIntersect_0_m_axi_P2_DRAM_RVALID),
        .m_axi_P2_DRAM_WDATA(rayTriangleIntersect_0_m_axi_P2_DRAM_WDATA),
        .m_axi_P2_DRAM_WLAST(rayTriangleIntersect_0_m_axi_P2_DRAM_WLAST),
        .m_axi_P2_DRAM_WREADY(rayTriangleIntersect_0_m_axi_P2_DRAM_WREADY),
        .m_axi_P2_DRAM_WSTRB(rayTriangleIntersect_0_m_axi_P2_DRAM_WSTRB),
        .m_axi_P2_DRAM_WVALID(rayTriangleIntersect_0_m_axi_P2_DRAM_WVALID),
        .m_axi_P3_DRAM_ARADDR(rayTriangleIntersect_0_m_axi_P3_DRAM_ARADDR),
        .m_axi_P3_DRAM_ARBURST(rayTriangleIntersect_0_m_axi_P3_DRAM_ARBURST),
        .m_axi_P3_DRAM_ARCACHE(rayTriangleIntersect_0_m_axi_P3_DRAM_ARCACHE),
        .m_axi_P3_DRAM_ARLEN(rayTriangleIntersect_0_m_axi_P3_DRAM_ARLEN),
        .m_axi_P3_DRAM_ARLOCK(rayTriangleIntersect_0_m_axi_P3_DRAM_ARLOCK),
        .m_axi_P3_DRAM_ARPROT(rayTriangleIntersect_0_m_axi_P3_DRAM_ARPROT),
        .m_axi_P3_DRAM_ARQOS(rayTriangleIntersect_0_m_axi_P3_DRAM_ARQOS),
        .m_axi_P3_DRAM_ARREADY(rayTriangleIntersect_0_m_axi_P3_DRAM_ARREADY),
        .m_axi_P3_DRAM_ARSIZE(rayTriangleIntersect_0_m_axi_P3_DRAM_ARSIZE),
        .m_axi_P3_DRAM_ARVALID(rayTriangleIntersect_0_m_axi_P3_DRAM_ARVALID),
        .m_axi_P3_DRAM_AWADDR(rayTriangleIntersect_0_m_axi_P3_DRAM_AWADDR),
        .m_axi_P3_DRAM_AWBURST(rayTriangleIntersect_0_m_axi_P3_DRAM_AWBURST),
        .m_axi_P3_DRAM_AWCACHE(rayTriangleIntersect_0_m_axi_P3_DRAM_AWCACHE),
        .m_axi_P3_DRAM_AWLEN(rayTriangleIntersect_0_m_axi_P3_DRAM_AWLEN),
        .m_axi_P3_DRAM_AWLOCK(rayTriangleIntersect_0_m_axi_P3_DRAM_AWLOCK),
        .m_axi_P3_DRAM_AWPROT(rayTriangleIntersect_0_m_axi_P3_DRAM_AWPROT),
        .m_axi_P3_DRAM_AWQOS(rayTriangleIntersect_0_m_axi_P3_DRAM_AWQOS),
        .m_axi_P3_DRAM_AWREADY(rayTriangleIntersect_0_m_axi_P3_DRAM_AWREADY),
        .m_axi_P3_DRAM_AWSIZE(rayTriangleIntersect_0_m_axi_P3_DRAM_AWSIZE),
        .m_axi_P3_DRAM_AWVALID(rayTriangleIntersect_0_m_axi_P3_DRAM_AWVALID),
        .m_axi_P3_DRAM_BREADY(rayTriangleIntersect_0_m_axi_P3_DRAM_BREADY),
        .m_axi_P3_DRAM_BRESP(rayTriangleIntersect_0_m_axi_P3_DRAM_BRESP),
        .m_axi_P3_DRAM_BVALID(rayTriangleIntersect_0_m_axi_P3_DRAM_BVALID),
        .m_axi_P3_DRAM_RDATA(rayTriangleIntersect_0_m_axi_P3_DRAM_RDATA),
        .m_axi_P3_DRAM_RLAST(rayTriangleIntersect_0_m_axi_P3_DRAM_RLAST),
        .m_axi_P3_DRAM_RREADY(rayTriangleIntersect_0_m_axi_P3_DRAM_RREADY),
        .m_axi_P3_DRAM_RRESP(rayTriangleIntersect_0_m_axi_P3_DRAM_RRESP),
        .m_axi_P3_DRAM_RVALID(rayTriangleIntersect_0_m_axi_P3_DRAM_RVALID),
        .m_axi_P3_DRAM_WDATA(rayTriangleIntersect_0_m_axi_P3_DRAM_WDATA),
        .m_axi_P3_DRAM_WLAST(rayTriangleIntersect_0_m_axi_P3_DRAM_WLAST),
        .m_axi_P3_DRAM_WREADY(rayTriangleIntersect_0_m_axi_P3_DRAM_WREADY),
        .m_axi_P3_DRAM_WSTRB(rayTriangleIntersect_0_m_axi_P3_DRAM_WSTRB),
        .m_axi_P3_DRAM_WVALID(rayTriangleIntersect_0_m_axi_P3_DRAM_WVALID),
        .m_axi_dir_ARADDR(rayTriangleIntersect_0_m_axi_dir_ARADDR),
        .m_axi_dir_ARBURST(rayTriangleIntersect_0_m_axi_dir_ARBURST),
        .m_axi_dir_ARCACHE(rayTriangleIntersect_0_m_axi_dir_ARCACHE),
        .m_axi_dir_ARLEN(rayTriangleIntersect_0_m_axi_dir_ARLEN),
        .m_axi_dir_ARLOCK(rayTriangleIntersect_0_m_axi_dir_ARLOCK),
        .m_axi_dir_ARPROT(rayTriangleIntersect_0_m_axi_dir_ARPROT),
        .m_axi_dir_ARQOS(rayTriangleIntersect_0_m_axi_dir_ARQOS),
        .m_axi_dir_ARREADY(rayTriangleIntersect_0_m_axi_dir_ARREADY),
        .m_axi_dir_ARSIZE(rayTriangleIntersect_0_m_axi_dir_ARSIZE),
        .m_axi_dir_ARVALID(rayTriangleIntersect_0_m_axi_dir_ARVALID),
        .m_axi_dir_AWADDR(rayTriangleIntersect_0_m_axi_dir_AWADDR),
        .m_axi_dir_AWBURST(rayTriangleIntersect_0_m_axi_dir_AWBURST),
        .m_axi_dir_AWCACHE(rayTriangleIntersect_0_m_axi_dir_AWCACHE),
        .m_axi_dir_AWLEN(rayTriangleIntersect_0_m_axi_dir_AWLEN),
        .m_axi_dir_AWLOCK(rayTriangleIntersect_0_m_axi_dir_AWLOCK),
        .m_axi_dir_AWPROT(rayTriangleIntersect_0_m_axi_dir_AWPROT),
        .m_axi_dir_AWQOS(rayTriangleIntersect_0_m_axi_dir_AWQOS),
        .m_axi_dir_AWREADY(rayTriangleIntersect_0_m_axi_dir_AWREADY),
        .m_axi_dir_AWSIZE(rayTriangleIntersect_0_m_axi_dir_AWSIZE),
        .m_axi_dir_AWVALID(rayTriangleIntersect_0_m_axi_dir_AWVALID),
        .m_axi_dir_BREADY(rayTriangleIntersect_0_m_axi_dir_BREADY),
        .m_axi_dir_BRESP(rayTriangleIntersect_0_m_axi_dir_BRESP),
        .m_axi_dir_BVALID(rayTriangleIntersect_0_m_axi_dir_BVALID),
        .m_axi_dir_RDATA(rayTriangleIntersect_0_m_axi_dir_RDATA),
        .m_axi_dir_RLAST(rayTriangleIntersect_0_m_axi_dir_RLAST),
        .m_axi_dir_RREADY(rayTriangleIntersect_0_m_axi_dir_RREADY),
        .m_axi_dir_RRESP(rayTriangleIntersect_0_m_axi_dir_RRESP),
        .m_axi_dir_RVALID(rayTriangleIntersect_0_m_axi_dir_RVALID),
        .m_axi_dir_WDATA(rayTriangleIntersect_0_m_axi_dir_WDATA),
        .m_axi_dir_WLAST(rayTriangleIntersect_0_m_axi_dir_WLAST),
        .m_axi_dir_WREADY(rayTriangleIntersect_0_m_axi_dir_WREADY),
        .m_axi_dir_WSTRB(rayTriangleIntersect_0_m_axi_dir_WSTRB),
        .m_axi_dir_WVALID(rayTriangleIntersect_0_m_axi_dir_WVALID),
        .m_axi_intersectIndex_ARADDR(rayTriangleIntersect_0_m_axi_intersectIndex_ARADDR),
        .m_axi_intersectIndex_ARBURST(rayTriangleIntersect_0_m_axi_intersectIndex_ARBURST),
        .m_axi_intersectIndex_ARCACHE(rayTriangleIntersect_0_m_axi_intersectIndex_ARCACHE),
        .m_axi_intersectIndex_ARLEN(rayTriangleIntersect_0_m_axi_intersectIndex_ARLEN),
        .m_axi_intersectIndex_ARLOCK(rayTriangleIntersect_0_m_axi_intersectIndex_ARLOCK),
        .m_axi_intersectIndex_ARPROT(rayTriangleIntersect_0_m_axi_intersectIndex_ARPROT),
        .m_axi_intersectIndex_ARQOS(rayTriangleIntersect_0_m_axi_intersectIndex_ARQOS),
        .m_axi_intersectIndex_ARREADY(rayTriangleIntersect_0_m_axi_intersectIndex_ARREADY),
        .m_axi_intersectIndex_ARSIZE(rayTriangleIntersect_0_m_axi_intersectIndex_ARSIZE),
        .m_axi_intersectIndex_ARVALID(rayTriangleIntersect_0_m_axi_intersectIndex_ARVALID),
        .m_axi_intersectIndex_AWADDR(rayTriangleIntersect_0_m_axi_intersectIndex_AWADDR),
        .m_axi_intersectIndex_AWBURST(rayTriangleIntersect_0_m_axi_intersectIndex_AWBURST),
        .m_axi_intersectIndex_AWCACHE(rayTriangleIntersect_0_m_axi_intersectIndex_AWCACHE),
        .m_axi_intersectIndex_AWLEN(rayTriangleIntersect_0_m_axi_intersectIndex_AWLEN),
        .m_axi_intersectIndex_AWLOCK(rayTriangleIntersect_0_m_axi_intersectIndex_AWLOCK),
        .m_axi_intersectIndex_AWPROT(rayTriangleIntersect_0_m_axi_intersectIndex_AWPROT),
        .m_axi_intersectIndex_AWQOS(rayTriangleIntersect_0_m_axi_intersectIndex_AWQOS),
        .m_axi_intersectIndex_AWREADY(rayTriangleIntersect_0_m_axi_intersectIndex_AWREADY),
        .m_axi_intersectIndex_AWSIZE(rayTriangleIntersect_0_m_axi_intersectIndex_AWSIZE),
        .m_axi_intersectIndex_AWVALID(rayTriangleIntersect_0_m_axi_intersectIndex_AWVALID),
        .m_axi_intersectIndex_BREADY(rayTriangleIntersect_0_m_axi_intersectIndex_BREADY),
        .m_axi_intersectIndex_BRESP(rayTriangleIntersect_0_m_axi_intersectIndex_BRESP),
        .m_axi_intersectIndex_BVALID(rayTriangleIntersect_0_m_axi_intersectIndex_BVALID),
        .m_axi_intersectIndex_RDATA(rayTriangleIntersect_0_m_axi_intersectIndex_RDATA),
        .m_axi_intersectIndex_RLAST(rayTriangleIntersect_0_m_axi_intersectIndex_RLAST),
        .m_axi_intersectIndex_RREADY(rayTriangleIntersect_0_m_axi_intersectIndex_RREADY),
        .m_axi_intersectIndex_RRESP(rayTriangleIntersect_0_m_axi_intersectIndex_RRESP),
        .m_axi_intersectIndex_RVALID(rayTriangleIntersect_0_m_axi_intersectIndex_RVALID),
        .m_axi_intersectIndex_WDATA(rayTriangleIntersect_0_m_axi_intersectIndex_WDATA),
        .m_axi_intersectIndex_WLAST(rayTriangleIntersect_0_m_axi_intersectIndex_WLAST),
        .m_axi_intersectIndex_WREADY(rayTriangleIntersect_0_m_axi_intersectIndex_WREADY),
        .m_axi_intersectIndex_WSTRB(rayTriangleIntersect_0_m_axi_intersectIndex_WSTRB),
        .m_axi_intersectIndex_WVALID(rayTriangleIntersect_0_m_axi_intersectIndex_WVALID),
        .s_axi_control_ARADDR(ps8_0_axi_periph_M00_AXI_ARADDR[6:0]),
        .s_axi_control_ARREADY(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(ps8_0_axi_periph_M00_AXI_AWADDR[6:0]),
        .s_axi_control_AWREADY(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_control_BREADY(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_control_BRESP(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_control_BVALID(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_control_RDATA(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_control_RREADY(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_control_RRESP(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_control_RVALID(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_control_WDATA(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_control_WREADY(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_control_WSTRB(ps8_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_control_WVALID(ps8_0_axi_periph_M00_AXI_WVALID));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp1_araddr(axi_smc_4_M00_AXI_ARADDR),
        .saxigp1_arburst(axi_smc_4_M00_AXI_ARBURST),
        .saxigp1_arcache(axi_smc_4_M00_AXI_ARCACHE),
        .saxigp1_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp1_arlen(axi_smc_4_M00_AXI_ARLEN),
        .saxigp1_arlock(axi_smc_4_M00_AXI_ARLOCK),
        .saxigp1_arprot(axi_smc_4_M00_AXI_ARPROT),
        .saxigp1_arqos(axi_smc_4_M00_AXI_ARQOS),
        .saxigp1_arready(axi_smc_4_M00_AXI_ARREADY),
        .saxigp1_arsize(axi_smc_4_M00_AXI_ARSIZE),
        .saxigp1_aruser(1'b0),
        .saxigp1_arvalid(axi_smc_4_M00_AXI_ARVALID),
        .saxigp1_awaddr(axi_smc_4_M00_AXI_AWADDR),
        .saxigp1_awburst(axi_smc_4_M00_AXI_AWBURST),
        .saxigp1_awcache(axi_smc_4_M00_AXI_AWCACHE),
        .saxigp1_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp1_awlen(axi_smc_4_M00_AXI_AWLEN),
        .saxigp1_awlock(axi_smc_4_M00_AXI_AWLOCK),
        .saxigp1_awprot(axi_smc_4_M00_AXI_AWPROT),
        .saxigp1_awqos(axi_smc_4_M00_AXI_AWQOS),
        .saxigp1_awready(axi_smc_4_M00_AXI_AWREADY),
        .saxigp1_awsize(axi_smc_4_M00_AXI_AWSIZE),
        .saxigp1_awuser(1'b0),
        .saxigp1_awvalid(axi_smc_4_M00_AXI_AWVALID),
        .saxigp1_bready(axi_smc_4_M00_AXI_BREADY),
        .saxigp1_bresp(axi_smc_4_M00_AXI_BRESP),
        .saxigp1_bvalid(axi_smc_4_M00_AXI_BVALID),
        .saxigp1_rdata(axi_smc_4_M00_AXI_RDATA),
        .saxigp1_rlast(axi_smc_4_M00_AXI_RLAST),
        .saxigp1_rready(axi_smc_4_M00_AXI_RREADY),
        .saxigp1_rresp(axi_smc_4_M00_AXI_RRESP),
        .saxigp1_rvalid(axi_smc_4_M00_AXI_RVALID),
        .saxigp1_wdata(axi_smc_4_M00_AXI_WDATA),
        .saxigp1_wlast(axi_smc_4_M00_AXI_WLAST),
        .saxigp1_wready(axi_smc_4_M00_AXI_WREADY),
        .saxigp1_wstrb(axi_smc_4_M00_AXI_WSTRB),
        .saxigp1_wvalid(axi_smc_4_M00_AXI_WVALID),
        .saxigp2_araddr(axi_smc_M00_AXI_ARADDR),
        .saxigp2_arburst(axi_smc_M00_AXI_ARBURST),
        .saxigp2_arcache(axi_smc_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(axi_smc_M00_AXI_ARLEN),
        .saxigp2_arlock(axi_smc_M00_AXI_ARLOCK),
        .saxigp2_arprot(axi_smc_M00_AXI_ARPROT),
        .saxigp2_arqos(axi_smc_M00_AXI_ARQOS),
        .saxigp2_arready(axi_smc_M00_AXI_ARREADY),
        .saxigp2_arsize(axi_smc_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(axi_smc_M00_AXI_ARVALID),
        .saxigp2_awaddr(axi_smc_M00_AXI_AWADDR),
        .saxigp2_awburst(axi_smc_M00_AXI_AWBURST),
        .saxigp2_awcache(axi_smc_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(axi_smc_M00_AXI_AWLEN),
        .saxigp2_awlock(axi_smc_M00_AXI_AWLOCK),
        .saxigp2_awprot(axi_smc_M00_AXI_AWPROT),
        .saxigp2_awqos(axi_smc_M00_AXI_AWQOS),
        .saxigp2_awready(axi_smc_M00_AXI_AWREADY),
        .saxigp2_awsize(axi_smc_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(axi_smc_M00_AXI_AWVALID),
        .saxigp2_bready(axi_smc_M00_AXI_BREADY),
        .saxigp2_bresp(axi_smc_M00_AXI_BRESP),
        .saxigp2_bvalid(axi_smc_M00_AXI_BVALID),
        .saxigp2_rdata(axi_smc_M00_AXI_RDATA),
        .saxigp2_rlast(axi_smc_M00_AXI_RLAST),
        .saxigp2_rready(axi_smc_M00_AXI_RREADY),
        .saxigp2_rresp(axi_smc_M00_AXI_RRESP),
        .saxigp2_rvalid(axi_smc_M00_AXI_RVALID),
        .saxigp2_wdata(axi_smc_M00_AXI_WDATA),
        .saxigp2_wlast(axi_smc_M00_AXI_WLAST),
        .saxigp2_wready(axi_smc_M00_AXI_WREADY),
        .saxigp2_wstrb(axi_smc_M00_AXI_WSTRB),
        .saxigp2_wvalid(axi_smc_M00_AXI_WVALID),
        .saxigp3_araddr(axi_smc_1_M00_AXI_ARADDR),
        .saxigp3_arburst(axi_smc_1_M00_AXI_ARBURST),
        .saxigp3_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(axi_smc_1_M00_AXI_ARLEN),
        .saxigp3_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .saxigp3_arprot(axi_smc_1_M00_AXI_ARPROT),
        .saxigp3_arqos(axi_smc_1_M00_AXI_ARQOS),
        .saxigp3_arready(axi_smc_1_M00_AXI_ARREADY),
        .saxigp3_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .saxigp3_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .saxigp3_awburst(axi_smc_1_M00_AXI_AWBURST),
        .saxigp3_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen(axi_smc_1_M00_AXI_AWLEN),
        .saxigp3_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .saxigp3_awprot(axi_smc_1_M00_AXI_AWPROT),
        .saxigp3_awqos(axi_smc_1_M00_AXI_AWQOS),
        .saxigp3_awready(axi_smc_1_M00_AXI_AWREADY),
        .saxigp3_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .saxigp3_bready(axi_smc_1_M00_AXI_BREADY),
        .saxigp3_bresp(axi_smc_1_M00_AXI_BRESP),
        .saxigp3_bvalid(axi_smc_1_M00_AXI_BVALID),
        .saxigp3_rdata(axi_smc_1_M00_AXI_RDATA),
        .saxigp3_rlast(axi_smc_1_M00_AXI_RLAST),
        .saxigp3_rready(axi_smc_1_M00_AXI_RREADY),
        .saxigp3_rresp(axi_smc_1_M00_AXI_RRESP),
        .saxigp3_rvalid(axi_smc_1_M00_AXI_RVALID),
        .saxigp3_wdata(axi_smc_1_M00_AXI_WDATA),
        .saxigp3_wlast(axi_smc_1_M00_AXI_WLAST),
        .saxigp3_wready(axi_smc_1_M00_AXI_WREADY),
        .saxigp3_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .saxigp3_wvalid(axi_smc_1_M00_AXI_WVALID),
        .saxigp4_araddr(axi_smc_2_M00_AXI_ARADDR),
        .saxigp4_arburst(axi_smc_2_M00_AXI_ARBURST),
        .saxigp4_arcache(axi_smc_2_M00_AXI_ARCACHE),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arlen(axi_smc_2_M00_AXI_ARLEN),
        .saxigp4_arlock(axi_smc_2_M00_AXI_ARLOCK),
        .saxigp4_arprot(axi_smc_2_M00_AXI_ARPROT),
        .saxigp4_arqos(axi_smc_2_M00_AXI_ARQOS),
        .saxigp4_arready(axi_smc_2_M00_AXI_ARREADY),
        .saxigp4_arsize(axi_smc_2_M00_AXI_ARSIZE),
        .saxigp4_aruser(1'b0),
        .saxigp4_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .saxigp4_awaddr(axi_smc_2_M00_AXI_AWADDR),
        .saxigp4_awburst(axi_smc_2_M00_AXI_AWBURST),
        .saxigp4_awcache(axi_smc_2_M00_AXI_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_awlen(axi_smc_2_M00_AXI_AWLEN),
        .saxigp4_awlock(axi_smc_2_M00_AXI_AWLOCK),
        .saxigp4_awprot(axi_smc_2_M00_AXI_AWPROT),
        .saxigp4_awqos(axi_smc_2_M00_AXI_AWQOS),
        .saxigp4_awready(axi_smc_2_M00_AXI_AWREADY),
        .saxigp4_awsize(axi_smc_2_M00_AXI_AWSIZE),
        .saxigp4_awuser(1'b0),
        .saxigp4_awvalid(axi_smc_2_M00_AXI_AWVALID),
        .saxigp4_bready(axi_smc_2_M00_AXI_BREADY),
        .saxigp4_bresp(axi_smc_2_M00_AXI_BRESP),
        .saxigp4_bvalid(axi_smc_2_M00_AXI_BVALID),
        .saxigp4_rdata(axi_smc_2_M00_AXI_RDATA),
        .saxigp4_rlast(axi_smc_2_M00_AXI_RLAST),
        .saxigp4_rready(axi_smc_2_M00_AXI_RREADY),
        .saxigp4_rresp(axi_smc_2_M00_AXI_RRESP),
        .saxigp4_rvalid(axi_smc_2_M00_AXI_RVALID),
        .saxigp4_wdata(axi_smc_2_M00_AXI_WDATA),
        .saxigp4_wlast(axi_smc_2_M00_AXI_WLAST),
        .saxigp4_wready(axi_smc_2_M00_AXI_WREADY),
        .saxigp4_wstrb(axi_smc_2_M00_AXI_WSTRB),
        .saxigp4_wvalid(axi_smc_2_M00_AXI_WVALID),
        .saxigp5_araddr(axi_smc_3_M00_AXI_ARADDR),
        .saxigp5_arburst(axi_smc_3_M00_AXI_ARBURST),
        .saxigp5_arcache(axi_smc_3_M00_AXI_ARCACHE),
        .saxigp5_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_arlen(axi_smc_3_M00_AXI_ARLEN),
        .saxigp5_arlock(axi_smc_3_M00_AXI_ARLOCK),
        .saxigp5_arprot(axi_smc_3_M00_AXI_ARPROT),
        .saxigp5_arqos(axi_smc_3_M00_AXI_ARQOS),
        .saxigp5_arready(axi_smc_3_M00_AXI_ARREADY),
        .saxigp5_arsize(axi_smc_3_M00_AXI_ARSIZE),
        .saxigp5_aruser(1'b0),
        .saxigp5_arvalid(axi_smc_3_M00_AXI_ARVALID),
        .saxigp5_awaddr(axi_smc_3_M00_AXI_AWADDR),
        .saxigp5_awburst(axi_smc_3_M00_AXI_AWBURST),
        .saxigp5_awcache(axi_smc_3_M00_AXI_AWCACHE),
        .saxigp5_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_awlen(axi_smc_3_M00_AXI_AWLEN),
        .saxigp5_awlock(axi_smc_3_M00_AXI_AWLOCK),
        .saxigp5_awprot(axi_smc_3_M00_AXI_AWPROT),
        .saxigp5_awqos(axi_smc_3_M00_AXI_AWQOS),
        .saxigp5_awready(axi_smc_3_M00_AXI_AWREADY),
        .saxigp5_awsize(axi_smc_3_M00_AXI_AWSIZE),
        .saxigp5_awuser(1'b0),
        .saxigp5_awvalid(axi_smc_3_M00_AXI_AWVALID),
        .saxigp5_bready(axi_smc_3_M00_AXI_BREADY),
        .saxigp5_bresp(axi_smc_3_M00_AXI_BRESP),
        .saxigp5_bvalid(axi_smc_3_M00_AXI_BVALID),
        .saxigp5_rdata(axi_smc_3_M00_AXI_RDATA),
        .saxigp5_rlast(axi_smc_3_M00_AXI_RLAST),
        .saxigp5_rready(axi_smc_3_M00_AXI_RREADY),
        .saxigp5_rresp(axi_smc_3_M00_AXI_RRESP),
        .saxigp5_rvalid(axi_smc_3_M00_AXI_RVALID),
        .saxigp5_wdata(axi_smc_3_M00_AXI_WDATA),
        .saxigp5_wlast(axi_smc_3_M00_AXI_WLAST),
        .saxigp5_wready(axi_smc_3_M00_AXI_WREADY),
        .saxigp5_wstrb(axi_smc_3_M00_AXI_WSTRB),
        .saxigp5_wvalid(axi_smc_3_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp2_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp3_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihpc1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

module design_1_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [127:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [127:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire s00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire s00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]s00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire s00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire s00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire s00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_BRESP;
  wire s00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_RDATA;
  wire s00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_RRESP;
  wire s00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_WDATA;
  wire s00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire s00_couplers_to_ps8_0_axi_periph_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign ps8_0_axi_periph_ACLK_net = M00_ACLK;
  assign ps8_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_1A7ZMW4 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1A7ZMW4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire [0:0]s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire [3:0]s00_couplers_to_auto_ds_ARQOS;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [39:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire [0:0]s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire [3:0]s00_couplers_to_auto_ds_AWQOS;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [15:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [127:0]s00_couplers_to_auto_ds_RDATA;
  wire [15:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [127:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [15:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule
