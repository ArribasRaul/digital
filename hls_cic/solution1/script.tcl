############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_cic
set_top cic
add_files fir_simple.cpp
add_files fir.h
add_files filtro.h
add_files coefPFIR.h
add_files coefCFIR.h
add_files cic.cpp
add_files -tb test.cpp
add_files -tb cic_input.txt
open_solution "solution1"
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
#source "./hls_cic/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port -rtl vhdl -tool xsim
export_design -format ip_catalog
