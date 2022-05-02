-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_dir_AWVALID : OUT STD_LOGIC;
    m_axi_dir_AWREADY : IN STD_LOGIC;
    m_axi_dir_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_dir_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_dir_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_dir_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_dir_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_dir_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_dir_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_dir_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_dir_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_dir_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_WVALID : OUT STD_LOGIC;
    m_axi_dir_WREADY : IN STD_LOGIC;
    m_axi_dir_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_dir_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_dir_WLAST : OUT STD_LOGIC;
    m_axi_dir_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_ARVALID : OUT STD_LOGIC;
    m_axi_dir_ARREADY : IN STD_LOGIC;
    m_axi_dir_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_dir_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_dir_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_dir_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_dir_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_dir_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_dir_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_dir_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_dir_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_dir_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_RVALID : IN STD_LOGIC;
    m_axi_dir_RREADY : OUT STD_LOGIC;
    m_axi_dir_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_dir_RLAST : IN STD_LOGIC;
    m_axi_dir_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_dir_BVALID : IN STD_LOGIC;
    m_axi_dir_BREADY : OUT STD_LOGIC;
    m_axi_dir_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_dir_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_dir_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln15 : IN STD_LOGIC_VECTOR (61 downto 0);
    r_V_2_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    r_V_2_out_ap_vld : OUT STD_LOGIC;
    r_V_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    r_V_out_ap_vld : OUT STD_LOGIC;
    r_V_5_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    r_V_5_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln15_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal dir_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_1_reg_189 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_54 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln15_fu_126_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal dir_V_1_fu_58 : STD_LOGIC_VECTOR (31 downto 0);
    signal dir_V_1_1_fu_62 : STD_LOGIC_VECTOR (31 downto 0);
    signal dir_V_1_2_fu_66 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component rayTriangleIntersect_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component rayTriangleIntersect_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln15_fu_120_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_54 <= add_ln15_fu_126_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_54 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (i_1_reg_189 = ap_const_lv2_1))) then
                dir_V_1_1_fu_62 <= m_axi_dir_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((i_1_reg_189 = ap_const_lv2_1)) and not((i_1_reg_189 = ap_const_lv2_0)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                dir_V_1_2_fu_66 <= m_axi_dir_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (i_1_reg_189 = ap_const_lv2_0))) then
                dir_V_1_fu_58 <= m_axi_dir_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_1_reg_189 <= ap_sig_allocacmp_i_1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln15_fu_126_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_dir_RVALID)
    begin
                ap_block_pp0_stage0_01001 <= ((m_axi_dir_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_dir_RVALID)
    begin
                ap_block_pp0_stage0_11001 <= ((m_axi_dir_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_dir_RVALID)
    begin
                ap_block_pp0_stage0_subdone <= ((m_axi_dir_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_dir_RVALID)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (m_axi_dir_RVALID = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln15_fu_120_p2)
    begin
        if (((icmp_ln15_fu_120_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_54, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_54;
        end if; 
    end process;


    dir_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_dir_RVALID, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dir_blk_n_R <= m_axi_dir_RVALID;
        else 
            dir_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln15_fu_120_p2 <= "1" when (ap_sig_allocacmp_i_1 = ap_const_lv2_3) else "0";
    m_axi_dir_ARADDR <= ap_const_lv64_0;
    m_axi_dir_ARBURST <= ap_const_lv2_0;
    m_axi_dir_ARCACHE <= ap_const_lv4_0;
    m_axi_dir_ARID <= ap_const_lv1_0;
    m_axi_dir_ARLEN <= ap_const_lv32_0;
    m_axi_dir_ARLOCK <= ap_const_lv2_0;
    m_axi_dir_ARPROT <= ap_const_lv3_0;
    m_axi_dir_ARQOS <= ap_const_lv4_0;
    m_axi_dir_ARREGION <= ap_const_lv4_0;
    m_axi_dir_ARSIZE <= ap_const_lv3_0;
    m_axi_dir_ARUSER <= ap_const_lv1_0;
    m_axi_dir_ARVALID <= ap_const_logic_0;
    m_axi_dir_AWADDR <= ap_const_lv64_0;
    m_axi_dir_AWBURST <= ap_const_lv2_0;
    m_axi_dir_AWCACHE <= ap_const_lv4_0;
    m_axi_dir_AWID <= ap_const_lv1_0;
    m_axi_dir_AWLEN <= ap_const_lv32_0;
    m_axi_dir_AWLOCK <= ap_const_lv2_0;
    m_axi_dir_AWPROT <= ap_const_lv3_0;
    m_axi_dir_AWQOS <= ap_const_lv4_0;
    m_axi_dir_AWREGION <= ap_const_lv4_0;
    m_axi_dir_AWSIZE <= ap_const_lv3_0;
    m_axi_dir_AWUSER <= ap_const_lv1_0;
    m_axi_dir_AWVALID <= ap_const_logic_0;
    m_axi_dir_BREADY <= ap_const_logic_0;

    m_axi_dir_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_dir_RREADY <= ap_const_logic_1;
        else 
            m_axi_dir_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_dir_WDATA <= ap_const_lv32_0;
    m_axi_dir_WID <= ap_const_lv1_0;
    m_axi_dir_WLAST <= ap_const_logic_0;
    m_axi_dir_WSTRB <= ap_const_lv4_0;
    m_axi_dir_WUSER <= ap_const_lv1_0;
    m_axi_dir_WVALID <= ap_const_logic_0;
    r_V_2_out <= dir_V_1_2_fu_66;

    r_V_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln15_fu_120_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln15_fu_120_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            r_V_2_out_ap_vld <= ap_const_logic_1;
        else 
            r_V_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    r_V_5_out <= dir_V_1_fu_58;

    r_V_5_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln15_fu_120_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln15_fu_120_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            r_V_5_out_ap_vld <= ap_const_logic_1;
        else 
            r_V_5_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    r_V_out <= dir_V_1_1_fu_62;

    r_V_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln15_fu_120_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln15_fu_120_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            r_V_out_ap_vld <= ap_const_logic_1;
        else 
            r_V_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
