// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon May  8 16:22:36 2023
// Host        : F211-31 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               H:/Documents/ES3B2/230505-1.xpr/230505-1/230505-1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_106, clk_60, clk_8, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_106,clk_60,clk_8,clk_in1" */;
  output clk_106;
  output clk_60;
  output clk_8;
  input clk_in1;
endmodule
