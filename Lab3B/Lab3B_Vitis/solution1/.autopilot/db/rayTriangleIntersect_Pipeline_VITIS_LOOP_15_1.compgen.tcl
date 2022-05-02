# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name dir \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dir \
    op interface \
    ports { m_axi_dir_AWVALID { O 1 bit } m_axi_dir_AWREADY { I 1 bit } m_axi_dir_AWADDR { O 64 vector } m_axi_dir_AWID { O 1 vector } m_axi_dir_AWLEN { O 32 vector } m_axi_dir_AWSIZE { O 3 vector } m_axi_dir_AWBURST { O 2 vector } m_axi_dir_AWLOCK { O 2 vector } m_axi_dir_AWCACHE { O 4 vector } m_axi_dir_AWPROT { O 3 vector } m_axi_dir_AWQOS { O 4 vector } m_axi_dir_AWREGION { O 4 vector } m_axi_dir_AWUSER { O 1 vector } m_axi_dir_WVALID { O 1 bit } m_axi_dir_WREADY { I 1 bit } m_axi_dir_WDATA { O 32 vector } m_axi_dir_WSTRB { O 4 vector } m_axi_dir_WLAST { O 1 bit } m_axi_dir_WID { O 1 vector } m_axi_dir_WUSER { O 1 vector } m_axi_dir_ARVALID { O 1 bit } m_axi_dir_ARREADY { I 1 bit } m_axi_dir_ARADDR { O 64 vector } m_axi_dir_ARID { O 1 vector } m_axi_dir_ARLEN { O 32 vector } m_axi_dir_ARSIZE { O 3 vector } m_axi_dir_ARBURST { O 2 vector } m_axi_dir_ARLOCK { O 2 vector } m_axi_dir_ARCACHE { O 4 vector } m_axi_dir_ARPROT { O 3 vector } m_axi_dir_ARQOS { O 4 vector } m_axi_dir_ARREGION { O 4 vector } m_axi_dir_ARUSER { O 1 vector } m_axi_dir_RVALID { I 1 bit } m_axi_dir_RREADY { O 1 bit } m_axi_dir_RDATA { I 32 vector } m_axi_dir_RLAST { I 1 bit } m_axi_dir_RID { I 1 vector } m_axi_dir_RUSER { I 1 vector } m_axi_dir_RRESP { I 2 vector } m_axi_dir_BVALID { I 1 bit } m_axi_dir_BREADY { O 1 bit } m_axi_dir_BRESP { I 2 vector } m_axi_dir_BID { I 1 vector } m_axi_dir_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name sext_ln15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln15 \
    op interface \
    ports { sext_ln15 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name r_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_2_out \
    op interface \
    ports { r_V_2_out { O 32 vector } r_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name r_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_out \
    op interface \
    ports { r_V_out { O 32 vector } r_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name r_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_5_out \
    op interface \
    ports { r_V_5_out { O 32 vector } r_V_5_out_ap_vld { O 1 bit } } \
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


