// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_P1_DRAM_AWVALID,
        m_axi_P1_DRAM_AWREADY,
        m_axi_P1_DRAM_AWADDR,
        m_axi_P1_DRAM_AWID,
        m_axi_P1_DRAM_AWLEN,
        m_axi_P1_DRAM_AWSIZE,
        m_axi_P1_DRAM_AWBURST,
        m_axi_P1_DRAM_AWLOCK,
        m_axi_P1_DRAM_AWCACHE,
        m_axi_P1_DRAM_AWPROT,
        m_axi_P1_DRAM_AWQOS,
        m_axi_P1_DRAM_AWREGION,
        m_axi_P1_DRAM_AWUSER,
        m_axi_P1_DRAM_WVALID,
        m_axi_P1_DRAM_WREADY,
        m_axi_P1_DRAM_WDATA,
        m_axi_P1_DRAM_WSTRB,
        m_axi_P1_DRAM_WLAST,
        m_axi_P1_DRAM_WID,
        m_axi_P1_DRAM_WUSER,
        m_axi_P1_DRAM_ARVALID,
        m_axi_P1_DRAM_ARREADY,
        m_axi_P1_DRAM_ARADDR,
        m_axi_P1_DRAM_ARID,
        m_axi_P1_DRAM_ARLEN,
        m_axi_P1_DRAM_ARSIZE,
        m_axi_P1_DRAM_ARBURST,
        m_axi_P1_DRAM_ARLOCK,
        m_axi_P1_DRAM_ARCACHE,
        m_axi_P1_DRAM_ARPROT,
        m_axi_P1_DRAM_ARQOS,
        m_axi_P1_DRAM_ARREGION,
        m_axi_P1_DRAM_ARUSER,
        m_axi_P1_DRAM_RVALID,
        m_axi_P1_DRAM_RREADY,
        m_axi_P1_DRAM_RDATA,
        m_axi_P1_DRAM_RLAST,
        m_axi_P1_DRAM_RID,
        m_axi_P1_DRAM_RUSER,
        m_axi_P1_DRAM_RRESP,
        m_axi_P1_DRAM_BVALID,
        m_axi_P1_DRAM_BREADY,
        m_axi_P1_DRAM_BRESP,
        m_axi_P1_DRAM_BID,
        m_axi_P1_DRAM_BUSER,
        m_axi_P2_DRAM_AWVALID,
        m_axi_P2_DRAM_AWREADY,
        m_axi_P2_DRAM_AWADDR,
        m_axi_P2_DRAM_AWID,
        m_axi_P2_DRAM_AWLEN,
        m_axi_P2_DRAM_AWSIZE,
        m_axi_P2_DRAM_AWBURST,
        m_axi_P2_DRAM_AWLOCK,
        m_axi_P2_DRAM_AWCACHE,
        m_axi_P2_DRAM_AWPROT,
        m_axi_P2_DRAM_AWQOS,
        m_axi_P2_DRAM_AWREGION,
        m_axi_P2_DRAM_AWUSER,
        m_axi_P2_DRAM_WVALID,
        m_axi_P2_DRAM_WREADY,
        m_axi_P2_DRAM_WDATA,
        m_axi_P2_DRAM_WSTRB,
        m_axi_P2_DRAM_WLAST,
        m_axi_P2_DRAM_WID,
        m_axi_P2_DRAM_WUSER,
        m_axi_P2_DRAM_ARVALID,
        m_axi_P2_DRAM_ARREADY,
        m_axi_P2_DRAM_ARADDR,
        m_axi_P2_DRAM_ARID,
        m_axi_P2_DRAM_ARLEN,
        m_axi_P2_DRAM_ARSIZE,
        m_axi_P2_DRAM_ARBURST,
        m_axi_P2_DRAM_ARLOCK,
        m_axi_P2_DRAM_ARCACHE,
        m_axi_P2_DRAM_ARPROT,
        m_axi_P2_DRAM_ARQOS,
        m_axi_P2_DRAM_ARREGION,
        m_axi_P2_DRAM_ARUSER,
        m_axi_P2_DRAM_RVALID,
        m_axi_P2_DRAM_RREADY,
        m_axi_P2_DRAM_RDATA,
        m_axi_P2_DRAM_RLAST,
        m_axi_P2_DRAM_RID,
        m_axi_P2_DRAM_RUSER,
        m_axi_P2_DRAM_RRESP,
        m_axi_P2_DRAM_BVALID,
        m_axi_P2_DRAM_BREADY,
        m_axi_P2_DRAM_BRESP,
        m_axi_P2_DRAM_BID,
        m_axi_P2_DRAM_BUSER,
        m_axi_P3_DRAM_AWVALID,
        m_axi_P3_DRAM_AWREADY,
        m_axi_P3_DRAM_AWADDR,
        m_axi_P3_DRAM_AWID,
        m_axi_P3_DRAM_AWLEN,
        m_axi_P3_DRAM_AWSIZE,
        m_axi_P3_DRAM_AWBURST,
        m_axi_P3_DRAM_AWLOCK,
        m_axi_P3_DRAM_AWCACHE,
        m_axi_P3_DRAM_AWPROT,
        m_axi_P3_DRAM_AWQOS,
        m_axi_P3_DRAM_AWREGION,
        m_axi_P3_DRAM_AWUSER,
        m_axi_P3_DRAM_WVALID,
        m_axi_P3_DRAM_WREADY,
        m_axi_P3_DRAM_WDATA,
        m_axi_P3_DRAM_WSTRB,
        m_axi_P3_DRAM_WLAST,
        m_axi_P3_DRAM_WID,
        m_axi_P3_DRAM_WUSER,
        m_axi_P3_DRAM_ARVALID,
        m_axi_P3_DRAM_ARREADY,
        m_axi_P3_DRAM_ARADDR,
        m_axi_P3_DRAM_ARID,
        m_axi_P3_DRAM_ARLEN,
        m_axi_P3_DRAM_ARSIZE,
        m_axi_P3_DRAM_ARBURST,
        m_axi_P3_DRAM_ARLOCK,
        m_axi_P3_DRAM_ARCACHE,
        m_axi_P3_DRAM_ARPROT,
        m_axi_P3_DRAM_ARQOS,
        m_axi_P3_DRAM_ARREGION,
        m_axi_P3_DRAM_ARUSER,
        m_axi_P3_DRAM_RVALID,
        m_axi_P3_DRAM_RREADY,
        m_axi_P3_DRAM_RDATA,
        m_axi_P3_DRAM_RLAST,
        m_axi_P3_DRAM_RID,
        m_axi_P3_DRAM_RUSER,
        m_axi_P3_DRAM_RRESP,
        m_axi_P3_DRAM_BVALID,
        m_axi_P3_DRAM_BREADY,
        m_axi_P3_DRAM_BRESP,
        m_axi_P3_DRAM_BID,
        m_axi_P3_DRAM_BUSER,
        sext_ln20_2,
        sext_ln20_1,
        sext_ln20,
        P1_V_0_address0,
        P1_V_0_ce0,
        P1_V_0_we0,
        P1_V_0_d0,
        P2_V_0_address0,
        P2_V_0_ce0,
        P2_V_0_we0,
        P2_V_0_d0,
        P3_V_0_address0,
        P3_V_0_ce0,
        P3_V_0_we0,
        P3_V_0_d0,
        P1_V_1_address0,
        P1_V_1_ce0,
        P1_V_1_we0,
        P1_V_1_d0,
        P2_V_1_address0,
        P2_V_1_ce0,
        P2_V_1_we0,
        P2_V_1_d0,
        P3_V_1_address0,
        P3_V_1_ce0,
        P3_V_1_we0,
        P3_V_1_d0,
        P1_V_2_address0,
        P1_V_2_ce0,
        P1_V_2_we0,
        P1_V_2_d0,
        P2_V_2_address0,
        P2_V_2_ce0,
        P2_V_2_we0,
        P2_V_2_d0,
        P3_V_2_address0,
        P3_V_2_ce0,
        P3_V_2_we0,
        P3_V_2_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_P1_DRAM_AWVALID;
input   m_axi_P1_DRAM_AWREADY;
output  [63:0] m_axi_P1_DRAM_AWADDR;
output  [0:0] m_axi_P1_DRAM_AWID;
output  [31:0] m_axi_P1_DRAM_AWLEN;
output  [2:0] m_axi_P1_DRAM_AWSIZE;
output  [1:0] m_axi_P1_DRAM_AWBURST;
output  [1:0] m_axi_P1_DRAM_AWLOCK;
output  [3:0] m_axi_P1_DRAM_AWCACHE;
output  [2:0] m_axi_P1_DRAM_AWPROT;
output  [3:0] m_axi_P1_DRAM_AWQOS;
output  [3:0] m_axi_P1_DRAM_AWREGION;
output  [0:0] m_axi_P1_DRAM_AWUSER;
output   m_axi_P1_DRAM_WVALID;
input   m_axi_P1_DRAM_WREADY;
output  [31:0] m_axi_P1_DRAM_WDATA;
output  [3:0] m_axi_P1_DRAM_WSTRB;
output   m_axi_P1_DRAM_WLAST;
output  [0:0] m_axi_P1_DRAM_WID;
output  [0:0] m_axi_P1_DRAM_WUSER;
output   m_axi_P1_DRAM_ARVALID;
input   m_axi_P1_DRAM_ARREADY;
output  [63:0] m_axi_P1_DRAM_ARADDR;
output  [0:0] m_axi_P1_DRAM_ARID;
output  [31:0] m_axi_P1_DRAM_ARLEN;
output  [2:0] m_axi_P1_DRAM_ARSIZE;
output  [1:0] m_axi_P1_DRAM_ARBURST;
output  [1:0] m_axi_P1_DRAM_ARLOCK;
output  [3:0] m_axi_P1_DRAM_ARCACHE;
output  [2:0] m_axi_P1_DRAM_ARPROT;
output  [3:0] m_axi_P1_DRAM_ARQOS;
output  [3:0] m_axi_P1_DRAM_ARREGION;
output  [0:0] m_axi_P1_DRAM_ARUSER;
input   m_axi_P1_DRAM_RVALID;
output   m_axi_P1_DRAM_RREADY;
input  [31:0] m_axi_P1_DRAM_RDATA;
input   m_axi_P1_DRAM_RLAST;
input  [0:0] m_axi_P1_DRAM_RID;
input  [0:0] m_axi_P1_DRAM_RUSER;
input  [1:0] m_axi_P1_DRAM_RRESP;
input   m_axi_P1_DRAM_BVALID;
output   m_axi_P1_DRAM_BREADY;
input  [1:0] m_axi_P1_DRAM_BRESP;
input  [0:0] m_axi_P1_DRAM_BID;
input  [0:0] m_axi_P1_DRAM_BUSER;
output   m_axi_P2_DRAM_AWVALID;
input   m_axi_P2_DRAM_AWREADY;
output  [63:0] m_axi_P2_DRAM_AWADDR;
output  [0:0] m_axi_P2_DRAM_AWID;
output  [31:0] m_axi_P2_DRAM_AWLEN;
output  [2:0] m_axi_P2_DRAM_AWSIZE;
output  [1:0] m_axi_P2_DRAM_AWBURST;
output  [1:0] m_axi_P2_DRAM_AWLOCK;
output  [3:0] m_axi_P2_DRAM_AWCACHE;
output  [2:0] m_axi_P2_DRAM_AWPROT;
output  [3:0] m_axi_P2_DRAM_AWQOS;
output  [3:0] m_axi_P2_DRAM_AWREGION;
output  [0:0] m_axi_P2_DRAM_AWUSER;
output   m_axi_P2_DRAM_WVALID;
input   m_axi_P2_DRAM_WREADY;
output  [31:0] m_axi_P2_DRAM_WDATA;
output  [3:0] m_axi_P2_DRAM_WSTRB;
output   m_axi_P2_DRAM_WLAST;
output  [0:0] m_axi_P2_DRAM_WID;
output  [0:0] m_axi_P2_DRAM_WUSER;
output   m_axi_P2_DRAM_ARVALID;
input   m_axi_P2_DRAM_ARREADY;
output  [63:0] m_axi_P2_DRAM_ARADDR;
output  [0:0] m_axi_P2_DRAM_ARID;
output  [31:0] m_axi_P2_DRAM_ARLEN;
output  [2:0] m_axi_P2_DRAM_ARSIZE;
output  [1:0] m_axi_P2_DRAM_ARBURST;
output  [1:0] m_axi_P2_DRAM_ARLOCK;
output  [3:0] m_axi_P2_DRAM_ARCACHE;
output  [2:0] m_axi_P2_DRAM_ARPROT;
output  [3:0] m_axi_P2_DRAM_ARQOS;
output  [3:0] m_axi_P2_DRAM_ARREGION;
output  [0:0] m_axi_P2_DRAM_ARUSER;
input   m_axi_P2_DRAM_RVALID;
output   m_axi_P2_DRAM_RREADY;
input  [31:0] m_axi_P2_DRAM_RDATA;
input   m_axi_P2_DRAM_RLAST;
input  [0:0] m_axi_P2_DRAM_RID;
input  [0:0] m_axi_P2_DRAM_RUSER;
input  [1:0] m_axi_P2_DRAM_RRESP;
input   m_axi_P2_DRAM_BVALID;
output   m_axi_P2_DRAM_BREADY;
input  [1:0] m_axi_P2_DRAM_BRESP;
input  [0:0] m_axi_P2_DRAM_BID;
input  [0:0] m_axi_P2_DRAM_BUSER;
output   m_axi_P3_DRAM_AWVALID;
input   m_axi_P3_DRAM_AWREADY;
output  [63:0] m_axi_P3_DRAM_AWADDR;
output  [0:0] m_axi_P3_DRAM_AWID;
output  [31:0] m_axi_P3_DRAM_AWLEN;
output  [2:0] m_axi_P3_DRAM_AWSIZE;
output  [1:0] m_axi_P3_DRAM_AWBURST;
output  [1:0] m_axi_P3_DRAM_AWLOCK;
output  [3:0] m_axi_P3_DRAM_AWCACHE;
output  [2:0] m_axi_P3_DRAM_AWPROT;
output  [3:0] m_axi_P3_DRAM_AWQOS;
output  [3:0] m_axi_P3_DRAM_AWREGION;
output  [0:0] m_axi_P3_DRAM_AWUSER;
output   m_axi_P3_DRAM_WVALID;
input   m_axi_P3_DRAM_WREADY;
output  [31:0] m_axi_P3_DRAM_WDATA;
output  [3:0] m_axi_P3_DRAM_WSTRB;
output   m_axi_P3_DRAM_WLAST;
output  [0:0] m_axi_P3_DRAM_WID;
output  [0:0] m_axi_P3_DRAM_WUSER;
output   m_axi_P3_DRAM_ARVALID;
input   m_axi_P3_DRAM_ARREADY;
output  [63:0] m_axi_P3_DRAM_ARADDR;
output  [0:0] m_axi_P3_DRAM_ARID;
output  [31:0] m_axi_P3_DRAM_ARLEN;
output  [2:0] m_axi_P3_DRAM_ARSIZE;
output  [1:0] m_axi_P3_DRAM_ARBURST;
output  [1:0] m_axi_P3_DRAM_ARLOCK;
output  [3:0] m_axi_P3_DRAM_ARCACHE;
output  [2:0] m_axi_P3_DRAM_ARPROT;
output  [3:0] m_axi_P3_DRAM_ARQOS;
output  [3:0] m_axi_P3_DRAM_ARREGION;
output  [0:0] m_axi_P3_DRAM_ARUSER;
input   m_axi_P3_DRAM_RVALID;
output   m_axi_P3_DRAM_RREADY;
input  [31:0] m_axi_P3_DRAM_RDATA;
input   m_axi_P3_DRAM_RLAST;
input  [0:0] m_axi_P3_DRAM_RID;
input  [0:0] m_axi_P3_DRAM_RUSER;
input  [1:0] m_axi_P3_DRAM_RRESP;
input   m_axi_P3_DRAM_BVALID;
output   m_axi_P3_DRAM_BREADY;
input  [1:0] m_axi_P3_DRAM_BRESP;
input  [0:0] m_axi_P3_DRAM_BID;
input  [0:0] m_axi_P3_DRAM_BUSER;
input  [61:0] sext_ln20_2;
input  [61:0] sext_ln20_1;
input  [61:0] sext_ln20;
output  [12:0] P1_V_0_address0;
output   P1_V_0_ce0;
output   P1_V_0_we0;
output  [31:0] P1_V_0_d0;
output  [12:0] P2_V_0_address0;
output   P2_V_0_ce0;
output   P2_V_0_we0;
output  [31:0] P2_V_0_d0;
output  [12:0] P3_V_0_address0;
output   P3_V_0_ce0;
output   P3_V_0_we0;
output  [31:0] P3_V_0_d0;
output  [12:0] P1_V_1_address0;
output   P1_V_1_ce0;
output   P1_V_1_we0;
output  [31:0] P1_V_1_d0;
output  [12:0] P2_V_1_address0;
output   P2_V_1_ce0;
output   P2_V_1_we0;
output  [31:0] P2_V_1_d0;
output  [12:0] P3_V_1_address0;
output   P3_V_1_ce0;
output   P3_V_1_we0;
output  [31:0] P3_V_1_d0;
output  [12:0] P1_V_2_address0;
output   P1_V_2_ce0;
output   P1_V_2_we0;
output  [31:0] P1_V_2_d0;
output  [12:0] P2_V_2_address0;
output   P2_V_2_ce0;
output   P2_V_2_we0;
output  [31:0] P2_V_2_d0;
output  [12:0] P3_V_2_address0;
output   P3_V_2_ce0;
output   P3_V_2_we0;
output  [31:0] P3_V_2_d0;

reg ap_idle;
reg m_axi_P1_DRAM_RREADY;
reg m_axi_P2_DRAM_RREADY;
reg m_axi_P3_DRAM_RREADY;
reg P1_V_0_ce0;
reg P1_V_0_we0;
reg P2_V_0_ce0;
reg P2_V_0_we0;
reg P3_V_0_ce0;
reg P3_V_0_we0;
reg P1_V_1_ce0;
reg P1_V_1_we0;
reg P2_V_1_ce0;
reg P2_V_1_we0;
reg P3_V_1_ce0;
reg P3_V_1_we0;
reg P1_V_2_ce0;
reg P1_V_2_we0;
reg P2_V_2_ce0;
reg P2_V_2_we0;
reg P3_V_2_ce0;
reg P3_V_2_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln20_reg_416;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20_fu_282_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    P3_DRAM_blk_n_R;
wire    ap_block_pp0_stage0;
reg    P2_DRAM_blk_n_R;
reg    P1_DRAM_blk_n_R;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] P1_DRAM_addr_read_reg_420;
reg   [31:0] P2_DRAM_addr_read_reg_427;
reg   [31:0] P3_DRAM_addr_read_reg_434;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln20_fu_351_p1;
wire   [1:0] select_ln20_fu_329_p3;
reg   [1:0] j_fu_90;
wire   [1:0] add_ln22_fu_364_p2;
wire    ap_loop_init;
reg   [12:0] i_fu_94;
wire   [12:0] select_ln20_1_fu_343_p3;
reg   [14:0] indvar_flatten_fu_98;
reg   [14:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [14:0] add_ln20_fu_288_p2;
wire   [0:0] icmp_ln22_fu_323_p2;
wire   [12:0] add_ln20_1_fu_337_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

rayTriangleIntersect_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            i_fu_94 <= 13'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            i_fu_94 <= select_ln20_1_fu_343_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_282_p2 == 1'd0))) begin
            indvar_flatten_fu_98 <= add_ln20_fu_288_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_98 <= 15'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            j_fu_90 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            j_fu_90 <= add_ln22_fu_364_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln20_reg_416 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P1_DRAM_addr_read_reg_420 <= m_axi_P1_DRAM_RDATA;
        P2_DRAM_addr_read_reg_427 <= m_axi_P2_DRAM_RDATA;
        P3_DRAM_addr_read_reg_434 <= m_axi_P3_DRAM_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln20_reg_416 <= icmp_ln20_fu_282_p2;
    end
end

always @ (*) begin
    if (((icmp_ln20_reg_416 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P1_DRAM_blk_n_R = m_axi_P1_DRAM_RVALID;
    end else begin
        P1_DRAM_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P1_V_0_ce0 = 1'b1;
    end else begin
        P1_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln20_fu_329_p3 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P1_V_0_we0 = 1'b1;
    end else begin
        P1_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P1_V_1_ce0 = 1'b1;
    end else begin
        P1_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln20_fu_329_p3 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P1_V_1_we0 = 1'b1;
    end else begin
        P1_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P1_V_2_ce0 = 1'b1;
    end else begin
        P1_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(select_ln20_fu_329_p3 == 2'd0) & ~(select_ln20_fu_329_p3 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P1_V_2_we0 = 1'b1;
    end else begin
        P1_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_reg_416 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P2_DRAM_blk_n_R = m_axi_P2_DRAM_RVALID;
    end else begin
        P2_DRAM_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P2_V_0_ce0 = 1'b1;
    end else begin
        P2_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln20_fu_329_p3 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P2_V_0_we0 = 1'b1;
    end else begin
        P2_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P2_V_1_ce0 = 1'b1;
    end else begin
        P2_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln20_fu_329_p3 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P2_V_1_we0 = 1'b1;
    end else begin
        P2_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P2_V_2_ce0 = 1'b1;
    end else begin
        P2_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(select_ln20_fu_329_p3 == 2'd0) & ~(select_ln20_fu_329_p3 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P2_V_2_we0 = 1'b1;
    end else begin
        P2_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_reg_416 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        P3_DRAM_blk_n_R = m_axi_P3_DRAM_RVALID;
    end else begin
        P3_DRAM_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P3_V_0_ce0 = 1'b1;
    end else begin
        P3_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln20_fu_329_p3 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P3_V_0_we0 = 1'b1;
    end else begin
        P3_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P3_V_1_ce0 = 1'b1;
    end else begin
        P3_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln20_fu_329_p3 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P3_V_1_we0 = 1'b1;
    end else begin
        P3_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P3_V_2_ce0 = 1'b1;
    end else begin
        P3_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(select_ln20_fu_329_p3 == 2'd0) & ~(select_ln20_fu_329_p3 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        P3_V_2_we0 = 1'b1;
    end else begin
        P3_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_282_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_reg_416 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_98;
    end
end

always @ (*) begin
    if (((icmp_ln20_reg_416 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_P1_DRAM_RREADY = 1'b1;
    end else begin
        m_axi_P1_DRAM_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_reg_416 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_P2_DRAM_RREADY = 1'b1;
    end else begin
        m_axi_P2_DRAM_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_reg_416 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_P3_DRAM_RREADY = 1'b1;
    end else begin
        m_axi_P3_DRAM_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign P1_V_0_address0 = zext_ln20_fu_351_p1;

assign P1_V_0_d0 = P1_DRAM_addr_read_reg_420;

assign P1_V_1_address0 = zext_ln20_fu_351_p1;

assign P1_V_1_d0 = P1_DRAM_addr_read_reg_420;

assign P1_V_2_address0 = zext_ln20_fu_351_p1;

assign P1_V_2_d0 = P1_DRAM_addr_read_reg_420;

assign P2_V_0_address0 = zext_ln20_fu_351_p1;

assign P2_V_0_d0 = P2_DRAM_addr_read_reg_427;

assign P2_V_1_address0 = zext_ln20_fu_351_p1;

assign P2_V_1_d0 = P2_DRAM_addr_read_reg_427;

assign P2_V_2_address0 = zext_ln20_fu_351_p1;

assign P2_V_2_d0 = P2_DRAM_addr_read_reg_427;

assign P3_V_0_address0 = zext_ln20_fu_351_p1;

assign P3_V_0_d0 = P3_DRAM_addr_read_reg_434;

assign P3_V_1_address0 = zext_ln20_fu_351_p1;

assign P3_V_1_d0 = P3_DRAM_addr_read_reg_434;

assign P3_V_2_address0 = zext_ln20_fu_351_p1;

assign P3_V_2_d0 = P3_DRAM_addr_read_reg_434;

assign add_ln20_1_fu_337_p2 = (i_fu_94 + 13'd1);

assign add_ln20_fu_288_p2 = (ap_sig_allocacmp_indvar_flatten_load + 15'd1);

assign add_ln22_fu_364_p2 = (select_ln20_fu_329_p3 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln20_reg_416 == 1'd0) & (m_axi_P1_DRAM_RVALID == 1'b0)) | ((icmp_ln20_reg_416 == 1'd0) & (m_axi_P3_DRAM_RVALID == 1'b0)) | ((icmp_ln20_reg_416 == 1'd0) & (m_axi_P2_DRAM_RVALID == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln20_reg_416 == 1'd0) & (m_axi_P1_DRAM_RVALID == 1'b0)) | ((icmp_ln20_reg_416 == 1'd0) & (m_axi_P3_DRAM_RVALID == 1'b0)) | ((icmp_ln20_reg_416 == 1'd0) & (m_axi_P2_DRAM_RVALID == 1'b0))));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((icmp_ln20_reg_416 == 1'd0) & (m_axi_P1_DRAM_RVALID == 1'b0)) | ((icmp_ln20_reg_416 == 1'd0) & (m_axi_P3_DRAM_RVALID == 1'b0)) | ((icmp_ln20_reg_416 == 1'd0) & (m_axi_P2_DRAM_RVALID == 1'b0)));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln20_fu_282_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 15'd18960) ? 1'b1 : 1'b0);

assign icmp_ln22_fu_323_p2 = ((j_fu_90 == 2'd3) ? 1'b1 : 1'b0);

assign m_axi_P1_DRAM_ARADDR = 64'd0;

assign m_axi_P1_DRAM_ARBURST = 2'd0;

assign m_axi_P1_DRAM_ARCACHE = 4'd0;

assign m_axi_P1_DRAM_ARID = 1'd0;

assign m_axi_P1_DRAM_ARLEN = 32'd0;

assign m_axi_P1_DRAM_ARLOCK = 2'd0;

assign m_axi_P1_DRAM_ARPROT = 3'd0;

assign m_axi_P1_DRAM_ARQOS = 4'd0;

assign m_axi_P1_DRAM_ARREGION = 4'd0;

assign m_axi_P1_DRAM_ARSIZE = 3'd0;

assign m_axi_P1_DRAM_ARUSER = 1'd0;

assign m_axi_P1_DRAM_ARVALID = 1'b0;

assign m_axi_P1_DRAM_AWADDR = 64'd0;

assign m_axi_P1_DRAM_AWBURST = 2'd0;

assign m_axi_P1_DRAM_AWCACHE = 4'd0;

assign m_axi_P1_DRAM_AWID = 1'd0;

assign m_axi_P1_DRAM_AWLEN = 32'd0;

assign m_axi_P1_DRAM_AWLOCK = 2'd0;

assign m_axi_P1_DRAM_AWPROT = 3'd0;

assign m_axi_P1_DRAM_AWQOS = 4'd0;

assign m_axi_P1_DRAM_AWREGION = 4'd0;

assign m_axi_P1_DRAM_AWSIZE = 3'd0;

assign m_axi_P1_DRAM_AWUSER = 1'd0;

assign m_axi_P1_DRAM_AWVALID = 1'b0;

assign m_axi_P1_DRAM_BREADY = 1'b0;

assign m_axi_P1_DRAM_WDATA = 32'd0;

assign m_axi_P1_DRAM_WID = 1'd0;

assign m_axi_P1_DRAM_WLAST = 1'b0;

assign m_axi_P1_DRAM_WSTRB = 4'd0;

assign m_axi_P1_DRAM_WUSER = 1'd0;

assign m_axi_P1_DRAM_WVALID = 1'b0;

assign m_axi_P2_DRAM_ARADDR = 64'd0;

assign m_axi_P2_DRAM_ARBURST = 2'd0;

assign m_axi_P2_DRAM_ARCACHE = 4'd0;

assign m_axi_P2_DRAM_ARID = 1'd0;

assign m_axi_P2_DRAM_ARLEN = 32'd0;

assign m_axi_P2_DRAM_ARLOCK = 2'd0;

assign m_axi_P2_DRAM_ARPROT = 3'd0;

assign m_axi_P2_DRAM_ARQOS = 4'd0;

assign m_axi_P2_DRAM_ARREGION = 4'd0;

assign m_axi_P2_DRAM_ARSIZE = 3'd0;

assign m_axi_P2_DRAM_ARUSER = 1'd0;

assign m_axi_P2_DRAM_ARVALID = 1'b0;

assign m_axi_P2_DRAM_AWADDR = 64'd0;

assign m_axi_P2_DRAM_AWBURST = 2'd0;

assign m_axi_P2_DRAM_AWCACHE = 4'd0;

assign m_axi_P2_DRAM_AWID = 1'd0;

assign m_axi_P2_DRAM_AWLEN = 32'd0;

assign m_axi_P2_DRAM_AWLOCK = 2'd0;

assign m_axi_P2_DRAM_AWPROT = 3'd0;

assign m_axi_P2_DRAM_AWQOS = 4'd0;

assign m_axi_P2_DRAM_AWREGION = 4'd0;

assign m_axi_P2_DRAM_AWSIZE = 3'd0;

assign m_axi_P2_DRAM_AWUSER = 1'd0;

assign m_axi_P2_DRAM_AWVALID = 1'b0;

assign m_axi_P2_DRAM_BREADY = 1'b0;

assign m_axi_P2_DRAM_WDATA = 32'd0;

assign m_axi_P2_DRAM_WID = 1'd0;

assign m_axi_P2_DRAM_WLAST = 1'b0;

assign m_axi_P2_DRAM_WSTRB = 4'd0;

assign m_axi_P2_DRAM_WUSER = 1'd0;

assign m_axi_P2_DRAM_WVALID = 1'b0;

assign m_axi_P3_DRAM_ARADDR = 64'd0;

assign m_axi_P3_DRAM_ARBURST = 2'd0;

assign m_axi_P3_DRAM_ARCACHE = 4'd0;

assign m_axi_P3_DRAM_ARID = 1'd0;

assign m_axi_P3_DRAM_ARLEN = 32'd0;

assign m_axi_P3_DRAM_ARLOCK = 2'd0;

assign m_axi_P3_DRAM_ARPROT = 3'd0;

assign m_axi_P3_DRAM_ARQOS = 4'd0;

assign m_axi_P3_DRAM_ARREGION = 4'd0;

assign m_axi_P3_DRAM_ARSIZE = 3'd0;

assign m_axi_P3_DRAM_ARUSER = 1'd0;

assign m_axi_P3_DRAM_ARVALID = 1'b0;

assign m_axi_P3_DRAM_AWADDR = 64'd0;

assign m_axi_P3_DRAM_AWBURST = 2'd0;

assign m_axi_P3_DRAM_AWCACHE = 4'd0;

assign m_axi_P3_DRAM_AWID = 1'd0;

assign m_axi_P3_DRAM_AWLEN = 32'd0;

assign m_axi_P3_DRAM_AWLOCK = 2'd0;

assign m_axi_P3_DRAM_AWPROT = 3'd0;

assign m_axi_P3_DRAM_AWQOS = 4'd0;

assign m_axi_P3_DRAM_AWREGION = 4'd0;

assign m_axi_P3_DRAM_AWSIZE = 3'd0;

assign m_axi_P3_DRAM_AWUSER = 1'd0;

assign m_axi_P3_DRAM_AWVALID = 1'b0;

assign m_axi_P3_DRAM_BREADY = 1'b0;

assign m_axi_P3_DRAM_WDATA = 32'd0;

assign m_axi_P3_DRAM_WID = 1'd0;

assign m_axi_P3_DRAM_WLAST = 1'b0;

assign m_axi_P3_DRAM_WSTRB = 4'd0;

assign m_axi_P3_DRAM_WUSER = 1'd0;

assign m_axi_P3_DRAM_WVALID = 1'b0;

assign select_ln20_1_fu_343_p3 = ((icmp_ln22_fu_323_p2[0:0] == 1'b1) ? add_ln20_1_fu_337_p2 : i_fu_94);

assign select_ln20_fu_329_p3 = ((icmp_ln22_fu_323_p2[0:0] == 1'b1) ? 2'd0 : j_fu_90);

assign zext_ln20_fu_351_p1 = select_ln20_1_fu_343_p3;

endmodule //rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3