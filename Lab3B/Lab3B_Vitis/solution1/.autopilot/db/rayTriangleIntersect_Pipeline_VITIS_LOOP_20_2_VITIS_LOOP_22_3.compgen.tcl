# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name P1_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P1_V_0 \
    op interface \
    ports { P1_V_0_address0 { O 13 vector } P1_V_0_ce0 { O 1 bit } P1_V_0_we0 { O 1 bit } P1_V_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name P2_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P2_V_0 \
    op interface \
    ports { P2_V_0_address0 { O 13 vector } P2_V_0_ce0 { O 1 bit } P2_V_0_we0 { O 1 bit } P2_V_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P2_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name P3_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P3_V_0 \
    op interface \
    ports { P3_V_0_address0 { O 13 vector } P3_V_0_ce0 { O 1 bit } P3_V_0_we0 { O 1 bit } P3_V_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name P1_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P1_V_1 \
    op interface \
    ports { P1_V_1_address0 { O 13 vector } P1_V_1_ce0 { O 1 bit } P1_V_1_we0 { O 1 bit } P1_V_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name P2_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P2_V_1 \
    op interface \
    ports { P2_V_1_address0 { O 13 vector } P2_V_1_ce0 { O 1 bit } P2_V_1_we0 { O 1 bit } P2_V_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P2_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name P3_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P3_V_1 \
    op interface \
    ports { P3_V_1_address0 { O 13 vector } P3_V_1_ce0 { O 1 bit } P3_V_1_we0 { O 1 bit } P3_V_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name P1_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P1_V_2 \
    op interface \
    ports { P1_V_2_address0 { O 13 vector } P1_V_2_ce0 { O 1 bit } P1_V_2_we0 { O 1 bit } P1_V_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name P2_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P2_V_2 \
    op interface \
    ports { P2_V_2_address0 { O 13 vector } P2_V_2_ce0 { O 1 bit } P2_V_2_we0 { O 1 bit } P2_V_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P2_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name P3_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename P3_V_2 \
    op interface \
    ports { P3_V_2_address0 { O 13 vector } P3_V_2_ce0 { O 1 bit } P3_V_2_we0 { O 1 bit } P3_V_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3_V_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name P3_DRAM \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P3_DRAM \
    op interface \
    ports { m_axi_P3_DRAM_AWVALID { O 1 bit } m_axi_P3_DRAM_AWREADY { I 1 bit } m_axi_P3_DRAM_AWADDR { O 64 vector } m_axi_P3_DRAM_AWID { O 1 vector } m_axi_P3_DRAM_AWLEN { O 32 vector } m_axi_P3_DRAM_AWSIZE { O 3 vector } m_axi_P3_DRAM_AWBURST { O 2 vector } m_axi_P3_DRAM_AWLOCK { O 2 vector } m_axi_P3_DRAM_AWCACHE { O 4 vector } m_axi_P3_DRAM_AWPROT { O 3 vector } m_axi_P3_DRAM_AWQOS { O 4 vector } m_axi_P3_DRAM_AWREGION { O 4 vector } m_axi_P3_DRAM_AWUSER { O 1 vector } m_axi_P3_DRAM_WVALID { O 1 bit } m_axi_P3_DRAM_WREADY { I 1 bit } m_axi_P3_DRAM_WDATA { O 32 vector } m_axi_P3_DRAM_WSTRB { O 4 vector } m_axi_P3_DRAM_WLAST { O 1 bit } m_axi_P3_DRAM_WID { O 1 vector } m_axi_P3_DRAM_WUSER { O 1 vector } m_axi_P3_DRAM_ARVALID { O 1 bit } m_axi_P3_DRAM_ARREADY { I 1 bit } m_axi_P3_DRAM_ARADDR { O 64 vector } m_axi_P3_DRAM_ARID { O 1 vector } m_axi_P3_DRAM_ARLEN { O 32 vector } m_axi_P3_DRAM_ARSIZE { O 3 vector } m_axi_P3_DRAM_ARBURST { O 2 vector } m_axi_P3_DRAM_ARLOCK { O 2 vector } m_axi_P3_DRAM_ARCACHE { O 4 vector } m_axi_P3_DRAM_ARPROT { O 3 vector } m_axi_P3_DRAM_ARQOS { O 4 vector } m_axi_P3_DRAM_ARREGION { O 4 vector } m_axi_P3_DRAM_ARUSER { O 1 vector } m_axi_P3_DRAM_RVALID { I 1 bit } m_axi_P3_DRAM_RREADY { O 1 bit } m_axi_P3_DRAM_RDATA { I 32 vector } m_axi_P3_DRAM_RLAST { I 1 bit } m_axi_P3_DRAM_RID { I 1 vector } m_axi_P3_DRAM_RUSER { I 1 vector } m_axi_P3_DRAM_RRESP { I 2 vector } m_axi_P3_DRAM_BVALID { I 1 bit } m_axi_P3_DRAM_BREADY { O 1 bit } m_axi_P3_DRAM_BRESP { I 2 vector } m_axi_P3_DRAM_BID { I 1 vector } m_axi_P3_DRAM_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name sext_ln20_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln20_2 \
    op interface \
    ports { sext_ln20_2 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name P2_DRAM \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2_DRAM \
    op interface \
    ports { m_axi_P2_DRAM_AWVALID { O 1 bit } m_axi_P2_DRAM_AWREADY { I 1 bit } m_axi_P2_DRAM_AWADDR { O 64 vector } m_axi_P2_DRAM_AWID { O 1 vector } m_axi_P2_DRAM_AWLEN { O 32 vector } m_axi_P2_DRAM_AWSIZE { O 3 vector } m_axi_P2_DRAM_AWBURST { O 2 vector } m_axi_P2_DRAM_AWLOCK { O 2 vector } m_axi_P2_DRAM_AWCACHE { O 4 vector } m_axi_P2_DRAM_AWPROT { O 3 vector } m_axi_P2_DRAM_AWQOS { O 4 vector } m_axi_P2_DRAM_AWREGION { O 4 vector } m_axi_P2_DRAM_AWUSER { O 1 vector } m_axi_P2_DRAM_WVALID { O 1 bit } m_axi_P2_DRAM_WREADY { I 1 bit } m_axi_P2_DRAM_WDATA { O 32 vector } m_axi_P2_DRAM_WSTRB { O 4 vector } m_axi_P2_DRAM_WLAST { O 1 bit } m_axi_P2_DRAM_WID { O 1 vector } m_axi_P2_DRAM_WUSER { O 1 vector } m_axi_P2_DRAM_ARVALID { O 1 bit } m_axi_P2_DRAM_ARREADY { I 1 bit } m_axi_P2_DRAM_ARADDR { O 64 vector } m_axi_P2_DRAM_ARID { O 1 vector } m_axi_P2_DRAM_ARLEN { O 32 vector } m_axi_P2_DRAM_ARSIZE { O 3 vector } m_axi_P2_DRAM_ARBURST { O 2 vector } m_axi_P2_DRAM_ARLOCK { O 2 vector } m_axi_P2_DRAM_ARCACHE { O 4 vector } m_axi_P2_DRAM_ARPROT { O 3 vector } m_axi_P2_DRAM_ARQOS { O 4 vector } m_axi_P2_DRAM_ARREGION { O 4 vector } m_axi_P2_DRAM_ARUSER { O 1 vector } m_axi_P2_DRAM_RVALID { I 1 bit } m_axi_P2_DRAM_RREADY { O 1 bit } m_axi_P2_DRAM_RDATA { I 32 vector } m_axi_P2_DRAM_RLAST { I 1 bit } m_axi_P2_DRAM_RID { I 1 vector } m_axi_P2_DRAM_RUSER { I 1 vector } m_axi_P2_DRAM_RRESP { I 2 vector } m_axi_P2_DRAM_BVALID { I 1 bit } m_axi_P2_DRAM_BREADY { O 1 bit } m_axi_P2_DRAM_BRESP { I 2 vector } m_axi_P2_DRAM_BID { I 1 vector } m_axi_P2_DRAM_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name sext_ln20_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln20_1 \
    op interface \
    ports { sext_ln20_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name P1_DRAM \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P1_DRAM \
    op interface \
    ports { m_axi_P1_DRAM_AWVALID { O 1 bit } m_axi_P1_DRAM_AWREADY { I 1 bit } m_axi_P1_DRAM_AWADDR { O 64 vector } m_axi_P1_DRAM_AWID { O 1 vector } m_axi_P1_DRAM_AWLEN { O 32 vector } m_axi_P1_DRAM_AWSIZE { O 3 vector } m_axi_P1_DRAM_AWBURST { O 2 vector } m_axi_P1_DRAM_AWLOCK { O 2 vector } m_axi_P1_DRAM_AWCACHE { O 4 vector } m_axi_P1_DRAM_AWPROT { O 3 vector } m_axi_P1_DRAM_AWQOS { O 4 vector } m_axi_P1_DRAM_AWREGION { O 4 vector } m_axi_P1_DRAM_AWUSER { O 1 vector } m_axi_P1_DRAM_WVALID { O 1 bit } m_axi_P1_DRAM_WREADY { I 1 bit } m_axi_P1_DRAM_WDATA { O 32 vector } m_axi_P1_DRAM_WSTRB { O 4 vector } m_axi_P1_DRAM_WLAST { O 1 bit } m_axi_P1_DRAM_WID { O 1 vector } m_axi_P1_DRAM_WUSER { O 1 vector } m_axi_P1_DRAM_ARVALID { O 1 bit } m_axi_P1_DRAM_ARREADY { I 1 bit } m_axi_P1_DRAM_ARADDR { O 64 vector } m_axi_P1_DRAM_ARID { O 1 vector } m_axi_P1_DRAM_ARLEN { O 32 vector } m_axi_P1_DRAM_ARSIZE { O 3 vector } m_axi_P1_DRAM_ARBURST { O 2 vector } m_axi_P1_DRAM_ARLOCK { O 2 vector } m_axi_P1_DRAM_ARCACHE { O 4 vector } m_axi_P1_DRAM_ARPROT { O 3 vector } m_axi_P1_DRAM_ARQOS { O 4 vector } m_axi_P1_DRAM_ARREGION { O 4 vector } m_axi_P1_DRAM_ARUSER { O 1 vector } m_axi_P1_DRAM_RVALID { I 1 bit } m_axi_P1_DRAM_RREADY { O 1 bit } m_axi_P1_DRAM_RDATA { I 32 vector } m_axi_P1_DRAM_RLAST { I 1 bit } m_axi_P1_DRAM_RID { I 1 vector } m_axi_P1_DRAM_RUSER { I 1 vector } m_axi_P1_DRAM_RRESP { I 2 vector } m_axi_P1_DRAM_BVALID { I 1 bit } m_axi_P1_DRAM_BREADY { O 1 bit } m_axi_P1_DRAM_BRESP { I 2 vector } m_axi_P1_DRAM_BID { I 1 vector } m_axi_P1_DRAM_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name sext_ln20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln20 \
    op interface \
    ports { sext_ln20 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName rayTriangleIntersect_flow_control_loop_pipe_sequential_init_U
set CompName rayTriangleIntersect_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix rayTriangleIntersect_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


