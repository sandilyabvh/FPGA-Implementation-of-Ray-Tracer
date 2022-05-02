############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Lab3B_Vitis
set_top rayTriangleIntersect
add_files raytriangleintersect.h
add_files raytriangleintersect.cpp
add_files fxp_sqrt.h
add_files common.h
add_files common.cpp
add_files -tb verts.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb geometry.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /nethome/sbn6/fpga/Lab3B/rayTriangleIntersect.zip -rtl verilog
source "./Lab3B_Vitis/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /nethome/sbn6/fpga/Lab3B/rayTriangleIntersect.zip
