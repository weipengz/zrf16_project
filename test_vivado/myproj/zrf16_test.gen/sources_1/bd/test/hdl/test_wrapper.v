//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Mar 15 13:04:57 2024
//Host        : ubuntu running 64-bit Ubuntu 20.04 LTS
//Command     : generate_target test_wrapper.bd
//Design      : test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module test_wrapper
   (led_tri_o);
  output [3:0]led_tri_o;

  wire [3:0]led_tri_o;

  test test_i
       (.led_tri_o(led_tri_o));
endmodule
