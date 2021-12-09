// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec  6 20:57:23 2021
// Host        : jrmerkel-MS-7C02 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_RSD_0_0_stub.v
// Design      : design_1_RSD_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RSD,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, negResetIn, ledOut, 
  axi4MemoryIF_M_AXI_ACLK, axi4MemoryIF_M_AXI_ARESETN, axi4MemoryIF_M_AXI_AWID, 
  axi4MemoryIF_M_AXI_AWADDR, axi4MemoryIF_M_AXI_AWLEN, axi4MemoryIF_M_AXI_AWSIZE, 
  axi4MemoryIF_M_AXI_AWBURST, axi4MemoryIF_M_AXI_AWLOCK, axi4MemoryIF_M_AXI_AWCACHE, 
  axi4MemoryIF_M_AXI_AWPROT, axi4MemoryIF_M_AXI_AWQOS, axi4MemoryIF_M_AXI_AWUSER, 
  axi4MemoryIF_M_AXI_AWVALID, axi4MemoryIF_M_AXI_AWREADY, axi4MemoryIF_M_AXI_WDATA, 
  axi4MemoryIF_M_AXI_WSTRB, axi4MemoryIF_M_AXI_WLAST, axi4MemoryIF_M_AXI_WUSER, 
  axi4MemoryIF_M_AXI_WVALID, axi4MemoryIF_M_AXI_WREADY, axi4MemoryIF_M_AXI_BID, 
  axi4MemoryIF_M_AXI_BRESP, axi4MemoryIF_M_AXI_BUSER, axi4MemoryIF_M_AXI_BVALID, 
  axi4MemoryIF_M_AXI_BREADY, axi4MemoryIF_M_AXI_ARID, axi4MemoryIF_M_AXI_ARADDR, 
  axi4MemoryIF_M_AXI_ARLEN, axi4MemoryIF_M_AXI_ARSIZE, axi4MemoryIF_M_AXI_ARBURST, 
  axi4MemoryIF_M_AXI_ARLOCK, axi4MemoryIF_M_AXI_ARCACHE, axi4MemoryIF_M_AXI_ARPROT, 
  axi4MemoryIF_M_AXI_ARQOS, axi4MemoryIF_M_AXI_ARUSER, axi4MemoryIF_M_AXI_ARVALID, 
  axi4MemoryIF_M_AXI_ARREADY, axi4MemoryIF_M_AXI_RID, axi4MemoryIF_M_AXI_RDATA, 
  axi4MemoryIF_M_AXI_RRESP, axi4MemoryIF_M_AXI_RLAST, axi4MemoryIF_M_AXI_RUSER, 
  axi4MemoryIF_M_AXI_RVALID, axi4MemoryIF_M_AXI_RREADY, 
  axi4LitePlToPsControlRegisterIF_S_AXI_ACLK, 
  axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN, 
  axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR, 
  axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT, 
  axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID, 
  axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY, 
  axi4LitePlToPsControlRegisterIF_S_AXI_RDATA, 
  axi4LitePlToPsControlRegisterIF_S_AXI_RRESP, 
  axi4LitePlToPsControlRegisterIF_S_AXI_RVALID, 
  axi4LitePlToPsControlRegisterIF_S_AXI_RREADY, 
  axi4LitePsToPlControlRegisterIF_S_AXI_ACLK, 
  axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN, 
  axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR, 
  axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT, 
  axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID, 
  axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY, 
  axi4LitePsToPlControlRegisterIF_S_AXI_WDATA, 
  axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB, 
  axi4LitePsToPlControlRegisterIF_S_AXI_WVALID, 
  axi4LitePsToPlControlRegisterIF_S_AXI_WREADY, 
  axi4LitePsToPlControlRegisterIF_S_AXI_BRESP, 
  axi4LitePsToPlControlRegisterIF_S_AXI_BVALID, 
  axi4LitePsToPlControlRegisterIF_S_AXI_BREADY, 
  axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR, 
  axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT, 
  axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID, 
  axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY, 
  axi4LitePsToPlControlRegisterIF_S_AXI_RDATA, 
  axi4LitePsToPlControlRegisterIF_S_AXI_RRESP, 
  axi4LitePsToPlControlRegisterIF_S_AXI_RVALID, 
  axi4LitePsToPlControlRegisterIF_S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="clk,negResetIn,ledOut[7:0],axi4MemoryIF_M_AXI_ACLK,axi4MemoryIF_M_AXI_ARESETN,axi4MemoryIF_M_AXI_AWID[1:0],axi4MemoryIF_M_AXI_AWADDR[31:0],axi4MemoryIF_M_AXI_AWLEN[7:0],axi4MemoryIF_M_AXI_AWSIZE[2:0],axi4MemoryIF_M_AXI_AWBURST[1:0],axi4MemoryIF_M_AXI_AWLOCK,axi4MemoryIF_M_AXI_AWCACHE[3:0],axi4MemoryIF_M_AXI_AWPROT[2:0],axi4MemoryIF_M_AXI_AWQOS[3:0],axi4MemoryIF_M_AXI_AWUSER[0:1],axi4MemoryIF_M_AXI_AWVALID,axi4MemoryIF_M_AXI_AWREADY,axi4MemoryIF_M_AXI_WDATA[63:0],axi4MemoryIF_M_AXI_WSTRB[7:0],axi4MemoryIF_M_AXI_WLAST,axi4MemoryIF_M_AXI_WUSER[0:1],axi4MemoryIF_M_AXI_WVALID,axi4MemoryIF_M_AXI_WREADY,axi4MemoryIF_M_AXI_BID[1:0],axi4MemoryIF_M_AXI_BRESP[1:0],axi4MemoryIF_M_AXI_BUSER[0:1],axi4MemoryIF_M_AXI_BVALID,axi4MemoryIF_M_AXI_BREADY,axi4MemoryIF_M_AXI_ARID[1:0],axi4MemoryIF_M_AXI_ARADDR[31:0],axi4MemoryIF_M_AXI_ARLEN[7:0],axi4MemoryIF_M_AXI_ARSIZE[2:0],axi4MemoryIF_M_AXI_ARBURST[1:0],axi4MemoryIF_M_AXI_ARLOCK,axi4MemoryIF_M_AXI_ARCACHE[3:0],axi4MemoryIF_M_AXI_ARPROT[2:0],axi4MemoryIF_M_AXI_ARQOS[3:0],axi4MemoryIF_M_AXI_ARUSER[0:1],axi4MemoryIF_M_AXI_ARVALID,axi4MemoryIF_M_AXI_ARREADY,axi4MemoryIF_M_AXI_RID[1:0],axi4MemoryIF_M_AXI_RDATA[63:0],axi4MemoryIF_M_AXI_RRESP[1:0],axi4MemoryIF_M_AXI_RLAST,axi4MemoryIF_M_AXI_RUSER[0:1],axi4MemoryIF_M_AXI_RVALID,axi4MemoryIF_M_AXI_RREADY,axi4LitePlToPsControlRegisterIF_S_AXI_ACLK,axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN,axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR[6:0],axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT[2:0],axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID,axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY,axi4LitePlToPsControlRegisterIF_S_AXI_RDATA[31:0],axi4LitePlToPsControlRegisterIF_S_AXI_RRESP[1:0],axi4LitePlToPsControlRegisterIF_S_AXI_RVALID,axi4LitePlToPsControlRegisterIF_S_AXI_RREADY,axi4LitePsToPlControlRegisterIF_S_AXI_ACLK,axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN,axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR[6:0],axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT[2:0],axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID,axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY,axi4LitePsToPlControlRegisterIF_S_AXI_WDATA[31:0],axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB[3:0],axi4LitePsToPlControlRegisterIF_S_AXI_WVALID,axi4LitePsToPlControlRegisterIF_S_AXI_WREADY,axi4LitePsToPlControlRegisterIF_S_AXI_BRESP[1:0],axi4LitePsToPlControlRegisterIF_S_AXI_BVALID,axi4LitePsToPlControlRegisterIF_S_AXI_BREADY,axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR[6:0],axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT[2:0],axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID,axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY,axi4LitePsToPlControlRegisterIF_S_AXI_RDATA[31:0],axi4LitePsToPlControlRegisterIF_S_AXI_RRESP[1:0],axi4LitePsToPlControlRegisterIF_S_AXI_RVALID,axi4LitePsToPlControlRegisterIF_S_AXI_RREADY" */;
  input clk;
  input negResetIn;
  output [7:0]ledOut;
  input axi4MemoryIF_M_AXI_ACLK;
  input axi4MemoryIF_M_AXI_ARESETN;
  output [1:0]axi4MemoryIF_M_AXI_AWID;
  output [31:0]axi4MemoryIF_M_AXI_AWADDR;
  output [7:0]axi4MemoryIF_M_AXI_AWLEN;
  output [2:0]axi4MemoryIF_M_AXI_AWSIZE;
  output [1:0]axi4MemoryIF_M_AXI_AWBURST;
  output axi4MemoryIF_M_AXI_AWLOCK;
  output [3:0]axi4MemoryIF_M_AXI_AWCACHE;
  output [2:0]axi4MemoryIF_M_AXI_AWPROT;
  output [3:0]axi4MemoryIF_M_AXI_AWQOS;
  output [0:1]axi4MemoryIF_M_AXI_AWUSER;
  output axi4MemoryIF_M_AXI_AWVALID;
  input axi4MemoryIF_M_AXI_AWREADY;
  output [63:0]axi4MemoryIF_M_AXI_WDATA;
  output [7:0]axi4MemoryIF_M_AXI_WSTRB;
  output axi4MemoryIF_M_AXI_WLAST;
  output [0:1]axi4MemoryIF_M_AXI_WUSER;
  output axi4MemoryIF_M_AXI_WVALID;
  input axi4MemoryIF_M_AXI_WREADY;
  input [1:0]axi4MemoryIF_M_AXI_BID;
  input [1:0]axi4MemoryIF_M_AXI_BRESP;
  input [0:1]axi4MemoryIF_M_AXI_BUSER;
  input axi4MemoryIF_M_AXI_BVALID;
  output axi4MemoryIF_M_AXI_BREADY;
  output [1:0]axi4MemoryIF_M_AXI_ARID;
  output [31:0]axi4MemoryIF_M_AXI_ARADDR;
  output [7:0]axi4MemoryIF_M_AXI_ARLEN;
  output [2:0]axi4MemoryIF_M_AXI_ARSIZE;
  output [1:0]axi4MemoryIF_M_AXI_ARBURST;
  output axi4MemoryIF_M_AXI_ARLOCK;
  output [3:0]axi4MemoryIF_M_AXI_ARCACHE;
  output [2:0]axi4MemoryIF_M_AXI_ARPROT;
  output [3:0]axi4MemoryIF_M_AXI_ARQOS;
  output [0:1]axi4MemoryIF_M_AXI_ARUSER;
  output axi4MemoryIF_M_AXI_ARVALID;
  input axi4MemoryIF_M_AXI_ARREADY;
  input [1:0]axi4MemoryIF_M_AXI_RID;
  input [63:0]axi4MemoryIF_M_AXI_RDATA;
  input [1:0]axi4MemoryIF_M_AXI_RRESP;
  input axi4MemoryIF_M_AXI_RLAST;
  input [0:1]axi4MemoryIF_M_AXI_RUSER;
  input axi4MemoryIF_M_AXI_RVALID;
  output axi4MemoryIF_M_AXI_RREADY;
  input axi4LitePlToPsControlRegisterIF_S_AXI_ACLK;
  input axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN;
  input [6:0]axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR;
  input [2:0]axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT;
  input axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID;
  output axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY;
  output [31:0]axi4LitePlToPsControlRegisterIF_S_AXI_RDATA;
  output [1:0]axi4LitePlToPsControlRegisterIF_S_AXI_RRESP;
  output axi4LitePlToPsControlRegisterIF_S_AXI_RVALID;
  input axi4LitePlToPsControlRegisterIF_S_AXI_RREADY;
  input axi4LitePsToPlControlRegisterIF_S_AXI_ACLK;
  input axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN;
  input [6:0]axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR;
  input [2:0]axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT;
  input axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID;
  output axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY;
  input [31:0]axi4LitePsToPlControlRegisterIF_S_AXI_WDATA;
  input [3:0]axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB;
  input axi4LitePsToPlControlRegisterIF_S_AXI_WVALID;
  output axi4LitePsToPlControlRegisterIF_S_AXI_WREADY;
  output [1:0]axi4LitePsToPlControlRegisterIF_S_AXI_BRESP;
  output axi4LitePsToPlControlRegisterIF_S_AXI_BVALID;
  input axi4LitePsToPlControlRegisterIF_S_AXI_BREADY;
  input [6:0]axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR;
  input [2:0]axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT;
  input axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID;
  output axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY;
  output [31:0]axi4LitePsToPlControlRegisterIF_S_AXI_RDATA;
  output [1:0]axi4LitePsToPlControlRegisterIF_S_AXI_RRESP;
  output axi4LitePsToPlControlRegisterIF_S_AXI_RVALID;
  input axi4LitePsToPlControlRegisterIF_S_AXI_RREADY;
endmodule
