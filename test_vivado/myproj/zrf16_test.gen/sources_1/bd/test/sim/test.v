//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Mar 15 13:04:57 2024
//Host        : ubuntu running 64-bit Ubuntu 20.04 LTS
//Command     : generate_target test.bd
//Design      : test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module s00_couplers_imp_13XD8K1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  test_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "test.hwdef" *) 
module test
   (led_tri_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led " *) output [3:0]led_tri_o;

  wire [3:0]axi_gpio_0_GPIO_TRI_O;
  wire [39:0]mpsoc_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]mpsoc_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]mpsoc_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]mpsoc_M_AXI_HPM0_FPD_ARID;
  wire [7:0]mpsoc_M_AXI_HPM0_FPD_ARLEN;
  wire mpsoc_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]mpsoc_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]mpsoc_M_AXI_HPM0_FPD_ARQOS;
  wire mpsoc_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]mpsoc_M_AXI_HPM0_FPD_ARSIZE;
  wire mpsoc_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]mpsoc_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]mpsoc_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]mpsoc_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]mpsoc_M_AXI_HPM0_FPD_AWID;
  wire [7:0]mpsoc_M_AXI_HPM0_FPD_AWLEN;
  wire mpsoc_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]mpsoc_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]mpsoc_M_AXI_HPM0_FPD_AWQOS;
  wire mpsoc_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]mpsoc_M_AXI_HPM0_FPD_AWSIZE;
  wire mpsoc_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]mpsoc_M_AXI_HPM0_FPD_BID;
  wire mpsoc_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]mpsoc_M_AXI_HPM0_FPD_BRESP;
  wire mpsoc_M_AXI_HPM0_FPD_BVALID;
  wire [31:0]mpsoc_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]mpsoc_M_AXI_HPM0_FPD_RID;
  wire mpsoc_M_AXI_HPM0_FPD_RLAST;
  wire mpsoc_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]mpsoc_M_AXI_HPM0_FPD_RRESP;
  wire mpsoc_M_AXI_HPM0_FPD_RVALID;
  wire [31:0]mpsoc_M_AXI_HPM0_FPD_WDATA;
  wire mpsoc_M_AXI_HPM0_FPD_WLAST;
  wire mpsoc_M_AXI_HPM0_FPD_WREADY;
  wire [3:0]mpsoc_M_AXI_HPM0_FPD_WSTRB;
  wire mpsoc_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]mpsoc_axi_periph_M00_AXI_ARADDR;
  wire mpsoc_axi_periph_M00_AXI_ARREADY;
  wire mpsoc_axi_periph_M00_AXI_ARVALID;
  wire [39:0]mpsoc_axi_periph_M00_AXI_AWADDR;
  wire mpsoc_axi_periph_M00_AXI_AWREADY;
  wire mpsoc_axi_periph_M00_AXI_AWVALID;
  wire mpsoc_axi_periph_M00_AXI_BREADY;
  wire [1:0]mpsoc_axi_periph_M00_AXI_BRESP;
  wire mpsoc_axi_periph_M00_AXI_BVALID;
  wire [31:0]mpsoc_axi_periph_M00_AXI_RDATA;
  wire mpsoc_axi_periph_M00_AXI_RREADY;
  wire [1:0]mpsoc_axi_periph_M00_AXI_RRESP;
  wire mpsoc_axi_periph_M00_AXI_RVALID;
  wire [31:0]mpsoc_axi_periph_M00_AXI_WDATA;
  wire mpsoc_axi_periph_M00_AXI_WREADY;
  wire [3:0]mpsoc_axi_periph_M00_AXI_WSTRB;
  wire mpsoc_axi_periph_M00_AXI_WVALID;
  wire mpsoc_pl_resetn0;
  wire pl_sys_clk;
  wire [0:0]rst_mpsoc_99M_peripheral_aresetn;

  assign led_tri_o[3:0] = axi_gpio_0_GPIO_TRI_O;
  test_rst_mpsoc_99M_0 PSreset_control
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(mpsoc_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_mpsoc_99M_peripheral_aresetn),
        .slowest_sync_clk(pl_sys_clk));
  test_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .s_axi_aclk(pl_sys_clk),
        .s_axi_araddr(mpsoc_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_mpsoc_99M_peripheral_aresetn),
        .s_axi_arready(mpsoc_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(mpsoc_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(mpsoc_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(mpsoc_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(mpsoc_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(mpsoc_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(mpsoc_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(mpsoc_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(mpsoc_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(mpsoc_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(mpsoc_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(mpsoc_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(mpsoc_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(mpsoc_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(mpsoc_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(mpsoc_axi_periph_M00_AXI_WVALID));
  test_mpsoc_0 mpsoc
       (.maxigp0_araddr(mpsoc_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(mpsoc_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(mpsoc_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(mpsoc_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(mpsoc_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(mpsoc_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(mpsoc_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(mpsoc_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(mpsoc_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(mpsoc_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_arvalid(mpsoc_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(mpsoc_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(mpsoc_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(mpsoc_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(mpsoc_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(mpsoc_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(mpsoc_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(mpsoc_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(mpsoc_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(mpsoc_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(mpsoc_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awvalid(mpsoc_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(mpsoc_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(mpsoc_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(mpsoc_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(mpsoc_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(mpsoc_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(mpsoc_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(mpsoc_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(mpsoc_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(mpsoc_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(mpsoc_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(mpsoc_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(mpsoc_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(mpsoc_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(mpsoc_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(mpsoc_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(pl_sys_clk),
        .pl_clk0(pl_sys_clk),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(mpsoc_pl_resetn0));
  test_mpsoc_axi_periph_1 mpsoc_axi_periph
       (.ACLK(pl_sys_clk),
        .ARESETN(rst_mpsoc_99M_peripheral_aresetn),
        .M00_ACLK(pl_sys_clk),
        .M00_ARESETN(rst_mpsoc_99M_peripheral_aresetn),
        .M00_AXI_araddr(mpsoc_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(mpsoc_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(mpsoc_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(mpsoc_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(mpsoc_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(mpsoc_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(mpsoc_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(mpsoc_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(mpsoc_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(mpsoc_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(mpsoc_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(mpsoc_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(mpsoc_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(mpsoc_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(mpsoc_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(mpsoc_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(mpsoc_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(pl_sys_clk),
        .S00_ARESETN(rst_mpsoc_99M_peripheral_aresetn),
        .S00_AXI_araddr(mpsoc_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(mpsoc_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(mpsoc_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(mpsoc_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(mpsoc_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(mpsoc_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(mpsoc_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(mpsoc_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(mpsoc_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(mpsoc_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_arvalid(mpsoc_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(mpsoc_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(mpsoc_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(mpsoc_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(mpsoc_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(mpsoc_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(mpsoc_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(mpsoc_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(mpsoc_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(mpsoc_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(mpsoc_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awvalid(mpsoc_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(mpsoc_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(mpsoc_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(mpsoc_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(mpsoc_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(mpsoc_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(mpsoc_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(mpsoc_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(mpsoc_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(mpsoc_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(mpsoc_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(mpsoc_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(mpsoc_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(mpsoc_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(mpsoc_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(mpsoc_M_AXI_HPM0_FPD_WVALID));
endmodule

module test_mpsoc_axi_periph_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire mpsoc_axi_periph_ACLK_net;
  wire mpsoc_axi_periph_ARESETN_net;
  wire [39:0]mpsoc_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]mpsoc_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]mpsoc_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]mpsoc_axi_periph_to_s00_couplers_ARID;
  wire [7:0]mpsoc_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]mpsoc_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]mpsoc_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]mpsoc_axi_periph_to_s00_couplers_ARQOS;
  wire mpsoc_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]mpsoc_axi_periph_to_s00_couplers_ARSIZE;
  wire mpsoc_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]mpsoc_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]mpsoc_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]mpsoc_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]mpsoc_axi_periph_to_s00_couplers_AWID;
  wire [7:0]mpsoc_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]mpsoc_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]mpsoc_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]mpsoc_axi_periph_to_s00_couplers_AWQOS;
  wire mpsoc_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]mpsoc_axi_periph_to_s00_couplers_AWSIZE;
  wire mpsoc_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]mpsoc_axi_periph_to_s00_couplers_BID;
  wire mpsoc_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]mpsoc_axi_periph_to_s00_couplers_BRESP;
  wire mpsoc_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]mpsoc_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]mpsoc_axi_periph_to_s00_couplers_RID;
  wire mpsoc_axi_periph_to_s00_couplers_RLAST;
  wire mpsoc_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]mpsoc_axi_periph_to_s00_couplers_RRESP;
  wire mpsoc_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]mpsoc_axi_periph_to_s00_couplers_WDATA;
  wire mpsoc_axi_periph_to_s00_couplers_WLAST;
  wire mpsoc_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]mpsoc_axi_periph_to_s00_couplers_WSTRB;
  wire mpsoc_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_mpsoc_axi_periph_ARADDR;
  wire s00_couplers_to_mpsoc_axi_periph_ARREADY;
  wire s00_couplers_to_mpsoc_axi_periph_ARVALID;
  wire [39:0]s00_couplers_to_mpsoc_axi_periph_AWADDR;
  wire s00_couplers_to_mpsoc_axi_periph_AWREADY;
  wire s00_couplers_to_mpsoc_axi_periph_AWVALID;
  wire s00_couplers_to_mpsoc_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_mpsoc_axi_periph_BRESP;
  wire s00_couplers_to_mpsoc_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_mpsoc_axi_periph_RDATA;
  wire s00_couplers_to_mpsoc_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_mpsoc_axi_periph_RRESP;
  wire s00_couplers_to_mpsoc_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_mpsoc_axi_periph_WDATA;
  wire s00_couplers_to_mpsoc_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_mpsoc_axi_periph_WSTRB;
  wire s00_couplers_to_mpsoc_axi_periph_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_mpsoc_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_mpsoc_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_mpsoc_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_mpsoc_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_mpsoc_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_mpsoc_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_mpsoc_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_mpsoc_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_mpsoc_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = mpsoc_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = mpsoc_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = mpsoc_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = mpsoc_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = mpsoc_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = mpsoc_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = mpsoc_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = mpsoc_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = mpsoc_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = mpsoc_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = mpsoc_axi_periph_to_s00_couplers_WREADY;
  assign mpsoc_axi_periph_ACLK_net = M00_ACLK;
  assign mpsoc_axi_periph_ARESETN_net = M00_ARESETN;
  assign mpsoc_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign mpsoc_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign mpsoc_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign mpsoc_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign mpsoc_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign mpsoc_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign mpsoc_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign mpsoc_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign mpsoc_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign mpsoc_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign mpsoc_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign mpsoc_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_mpsoc_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_mpsoc_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_mpsoc_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_mpsoc_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_mpsoc_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_mpsoc_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_mpsoc_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_mpsoc_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_13XD8K1 s00_couplers
       (.M_ACLK(mpsoc_axi_periph_ACLK_net),
        .M_ARESETN(mpsoc_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_mpsoc_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_mpsoc_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_mpsoc_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_mpsoc_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_mpsoc_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_mpsoc_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_mpsoc_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_mpsoc_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_mpsoc_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_mpsoc_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_mpsoc_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_mpsoc_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_mpsoc_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_mpsoc_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_mpsoc_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_mpsoc_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_mpsoc_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(mpsoc_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(mpsoc_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(mpsoc_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(mpsoc_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(mpsoc_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(mpsoc_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(mpsoc_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(mpsoc_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(mpsoc_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(mpsoc_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(mpsoc_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(mpsoc_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(mpsoc_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(mpsoc_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(mpsoc_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(mpsoc_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(mpsoc_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(mpsoc_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(mpsoc_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(mpsoc_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(mpsoc_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(mpsoc_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(mpsoc_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(mpsoc_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(mpsoc_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(mpsoc_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(mpsoc_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(mpsoc_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(mpsoc_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(mpsoc_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(mpsoc_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(mpsoc_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(mpsoc_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(mpsoc_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(mpsoc_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(mpsoc_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(mpsoc_axi_periph_to_s00_couplers_WVALID));
endmodule
