set SynModuleInfo {
  {SRCNAME rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1 MODELNAME rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1 RTLNAME rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_15_1
    SUBMODULES {
      {MODELNAME rayTriangleIntersect_flow_control_loop_pipe_sequential_init RTLNAME rayTriangleIntersect_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME rayTriangleIntersect_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3 MODELNAME rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3 RTLNAME rayTriangleIntersect_rayTriangleIntersect_Pipeline_VITIS_LOOP_20_2_VITIS_LOOP_22_3}
  {SRCNAME rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP MODELNAME rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP RTLNAME rayTriangleIntersect_rayTriangleIntersect_Pipeline_NUM_TRIS_LOOP
    SUBMODULES {
      {MODELNAME rayTriangleIntersect_mul_32s_32s_48_1_1 RTLNAME rayTriangleIntersect_mul_32s_32s_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME rayTriangleIntersect_sdiv_34ns_32s_32_38_1 RTLNAME rayTriangleIntersect_sdiv_34ns_32s_32_38_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 37 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rayTriangleIntersect MODELNAME rayTriangleIntersect RTLNAME rayTriangleIntersect IS_TOP 1
    SUBMODULES {
      {MODELNAME rayTriangleIntersect_P1_V_0 RTLNAME rayTriangleIntersect_P1_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rayTriangleIntersect_control_s_axi RTLNAME rayTriangleIntersect_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME rayTriangleIntersect_dir_m_axi RTLNAME rayTriangleIntersect_dir_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME rayTriangleIntersect_P1_DRAM_m_axi RTLNAME rayTriangleIntersect_P1_DRAM_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME rayTriangleIntersect_P2_DRAM_m_axi RTLNAME rayTriangleIntersect_P2_DRAM_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME rayTriangleIntersect_P3_DRAM_m_axi RTLNAME rayTriangleIntersect_P3_DRAM_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME rayTriangleIntersect_intersectIndex_m_axi RTLNAME rayTriangleIntersect_intersectIndex_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
