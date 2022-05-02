// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_dir_AWVALID,
        m_axi_dir_AWREADY,
        m_axi_dir_AWADDR,
        m_axi_dir_AWID,
        m_axi_dir_AWLEN,
        m_axi_dir_AWSIZE,
        m_axi_dir_AWBURST,
        m_axi_dir_AWLOCK,
        m_axi_dir_AWCACHE,
        m_axi_dir_AWPROT,
        m_axi_dir_AWQOS,
        m_axi_dir_AWREGION,
        m_axi_dir_AWUSER,
        m_axi_dir_WVALID,
        m_axi_dir_WREADY,
        m_axi_dir_WDATA,
        m_axi_dir_WSTRB,
        m_axi_dir_WLAST,
        m_axi_dir_WID,
        m_axi_dir_WUSER,
        m_axi_dir_ARVALID,
        m_axi_dir_ARREADY,
        m_axi_dir_ARADDR,
        m_axi_dir_ARID,
        m_axi_dir_ARLEN,
        m_axi_dir_ARSIZE,
        m_axi_dir_ARBURST,
        m_axi_dir_ARLOCK,
        m_axi_dir_ARCACHE,
        m_axi_dir_ARPROT,
        m_axi_dir_ARQOS,
        m_axi_dir_ARREGION,
        m_axi_dir_ARUSER,
        m_axi_dir_RVALID,
        m_axi_dir_RREADY,
        m_axi_dir_RDATA,
        m_axi_dir_RLAST,
        m_axi_dir_RID,
        m_axi_dir_RUSER,
        m_axi_dir_RRESP,
        m_axi_dir_BVALID,
        m_axi_dir_BREADY,
        m_axi_dir_BRESP,
        m_axi_dir_BID,
        m_axi_dir_BUSER,
        sext_ln15,
        r_V_2_out,
        r_V_2_out_ap_vld,
        r_V_out,
        r_V_out_ap_vld,
        r_V_5_out,
        r_V_5_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_dir_AWVALID;
input   m_axi_dir_AWREADY;
output  [63:0] m_axi_dir_AWADDR;
output  [0:0] m_axi_dir_AWID;
output  [31:0] m_axi_dir_AWLEN;
output  [2:0] m_axi_dir_AWSIZE;
output  [1:0] m_axi_dir_AWBURST;
output  [1:0] m_axi_dir_AWLOCK;
output  [3:0] m_axi_dir_AWCACHE;
output  [2:0] m_axi_dir_AWPROT;
output  [3:0] m_axi_dir_AWQOS;
output  [3:0] m_axi_dir_AWREGION;
output  [0:0] m_axi_dir_AWUSER;
output   m_axi_dir_WVALID;
input   m_axi_dir_WREADY;
output  [31:0] m_axi_dir_WDATA;
output  [3:0] m_axi_dir_WSTRB;
output   m_axi_dir_WLAST;
output  [0:0] m_axi_dir_WID;
output  [0:0] m_axi_dir_WUSER;
output   m_axi_dir_ARVALID;
input   m_axi_dir_ARREADY;
output  [63:0] m_axi_dir_ARADDR;
output  [0:0] m_axi_dir_ARID;
output  [31:0] m_axi_dir_ARLEN;
output  [2:0] m_axi_dir_ARSIZE;
output  [1:0] m_axi_dir_ARBURST;
output  [1:0] m_axi_dir_ARLOCK;
output  [3:0] m_axi_dir_ARCACHE;
output  [2:0] m_axi_dir_ARPROT;
output  [3:0] m_axi_dir_ARQOS;
output  [3:0] m_axi_dir_ARREGION;
output  [0:0] m_axi_dir_ARUSER;
input   m_axi_dir_RVALID;
output   m_axi_dir_RREADY;
input  [31:0] m_axi_dir_RDATA;
input   m_axi_dir_RLAST;
input  [0:0] m_axi_dir_RID;
input  [0:0] m_axi_dir_RUSER;
input  [1:0] m_axi_dir_RRESP;
input   m_axi_dir_BVALID;
output   m_axi_dir_BREADY;
input  [1:0] m_axi_dir_BRESP;
input  [0:0] m_axi_dir_BID;
input  [0:0] m_axi_dir_BUSER;
input  [61:0] sext_ln15;
output  [31:0] r_V_2_out;
output   r_V_2_out_ap_vld;
output  [31:0] r_V_out;
output   r_V_out_ap_vld;
output  [31:0] r_V_5_out;
output   r_V_5_out_ap_vld;

reg ap_idle;
reg m_axi_dir_RREADY;
reg r_V_2_out_ap_vld;
reg r_V_out_ap_vld;
reg r_V_5_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15_fu_120_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    dir_blk_n_R;
wire    ap_block_pp0_stage0;
reg   [1:0] i_1_reg_189;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] i_fu_54;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_1;
wire   [1:0] add_ln15_fu_126_p2;
reg   [31:0] dir_V_1_fu_58;
reg   [31:0] dir_V_1_1_fu_62;
reg   [31:0] dir_V_1_2_fu_66;
reg    ap_block_pp0_stage0_01001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln15_fu_120_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_54 <= add_ln15_fu_126_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_54 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (i_1_reg_189 == 2'd1))) begin
        dir_V_1_1_fu_62 <= m_axi_dir_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((~(i_1_reg_189 == 2'd1) & ~(i_1_reg_189 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dir_V_1_2_fu_66 <= m_axi_dir_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (i_1_reg_189 == 2'd0))) begin
        dir_V_1_fu_58 <= m_axi_dir_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_189 <= ap_sig_allocacmp_i_1;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_120_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_54;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dir_blk_n_R = m_axi_dir_RVALID;
    end else begin
        dir_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_dir_RREADY = 1'b1;
    end else begin
        m_axi_dir_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_120_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_2_out_ap_vld = 1'b1;
    end else begin
        r_V_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_120_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_5_out_ap_vld = 1'b1;
    end else begin
        r_V_5_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_120_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_out_ap_vld = 1'b1;
    end else begin
        r_V_out_ap_vld = 1'b0;
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

assign add_ln15_fu_126_p2 = (ap_sig_allocacmp_i_1 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_dir_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_dir_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_dir_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (m_axi_dir_RVALID == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln15_fu_120_p2 = ((ap_sig_allocacmp_i_1 == 2'd3) ? 1'b1 : 1'b0);

assign m_axi_dir_ARADDR = 64'd0;

assign m_axi_dir_ARBURST = 2'd0;

assign m_axi_dir_ARCACHE = 4'd0;

assign m_axi_dir_ARID = 1'd0;

assign m_axi_dir_ARLEN = 32'd0;

assign m_axi_dir_ARLOCK = 2'd0;

assign m_axi_dir_ARPROT = 3'd0;

assign m_axi_dir_ARQOS = 4'd0;

assign m_axi_dir_ARREGION = 4'd0;

assign m_axi_dir_ARSIZE = 3'd0;

assign m_axi_dir_ARUSER = 1'd0;

assign m_axi_dir_ARVALID = 1'b0;

assign m_axi_dir_AWADDR = 64'd0;

assign m_axi_dir_AWBURST = 2'd0;

assign m_axi_dir_AWCACHE = 4'd0;

assign m_axi_dir_AWID = 1'd0;

assign m_axi_dir_AWLEN = 32'd0;

assign m_axi_dir_AWLOCK = 2'd0;

assign m_axi_dir_AWPROT = 3'd0;

assign m_axi_dir_AWQOS = 4'd0;

assign m_axi_dir_AWREGION = 4'd0;

assign m_axi_dir_AWSIZE = 3'd0;

assign m_axi_dir_AWUSER = 1'd0;

assign m_axi_dir_AWVALID = 1'b0;

assign m_axi_dir_BREADY = 1'b0;

assign m_axi_dir_WDATA = 32'd0;

assign m_axi_dir_WID = 1'd0;

assign m_axi_dir_WLAST = 1'b0;

assign m_axi_dir_WSTRB = 4'd0;

assign m_axi_dir_WUSER = 1'd0;

assign m_axi_dir_WVALID = 1'b0;

assign r_V_2_out = dir_V_1_2_fu_66;

assign r_V_5_out = dir_V_1_fu_58;

assign r_V_out = dir_V_1_1_fu_62;

endmodule //rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1
