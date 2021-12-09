// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:RSD:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_RSD_0_0 (
  clk,
  negResetIn,
  ledOut,
  axi4MemoryIF_M_AXI_ACLK,
  axi4MemoryIF_M_AXI_ARESETN,
  axi4MemoryIF_M_AXI_AWID,
  axi4MemoryIF_M_AXI_AWADDR,
  axi4MemoryIF_M_AXI_AWLEN,
  axi4MemoryIF_M_AXI_AWSIZE,
  axi4MemoryIF_M_AXI_AWBURST,
  axi4MemoryIF_M_AXI_AWLOCK,
  axi4MemoryIF_M_AXI_AWCACHE,
  axi4MemoryIF_M_AXI_AWPROT,
  axi4MemoryIF_M_AXI_AWQOS,
  axi4MemoryIF_M_AXI_AWUSER,
  axi4MemoryIF_M_AXI_AWVALID,
  axi4MemoryIF_M_AXI_AWREADY,
  axi4MemoryIF_M_AXI_WDATA,
  axi4MemoryIF_M_AXI_WSTRB,
  axi4MemoryIF_M_AXI_WLAST,
  axi4MemoryIF_M_AXI_WUSER,
  axi4MemoryIF_M_AXI_WVALID,
  axi4MemoryIF_M_AXI_WREADY,
  axi4MemoryIF_M_AXI_BID,
  axi4MemoryIF_M_AXI_BRESP,
  axi4MemoryIF_M_AXI_BUSER,
  axi4MemoryIF_M_AXI_BVALID,
  axi4MemoryIF_M_AXI_BREADY,
  axi4MemoryIF_M_AXI_ARID,
  axi4MemoryIF_M_AXI_ARADDR,
  axi4MemoryIF_M_AXI_ARLEN,
  axi4MemoryIF_M_AXI_ARSIZE,
  axi4MemoryIF_M_AXI_ARBURST,
  axi4MemoryIF_M_AXI_ARLOCK,
  axi4MemoryIF_M_AXI_ARCACHE,
  axi4MemoryIF_M_AXI_ARPROT,
  axi4MemoryIF_M_AXI_ARQOS,
  axi4MemoryIF_M_AXI_ARUSER,
  axi4MemoryIF_M_AXI_ARVALID,
  axi4MemoryIF_M_AXI_ARREADY,
  axi4MemoryIF_M_AXI_RID,
  axi4MemoryIF_M_AXI_RDATA,
  axi4MemoryIF_M_AXI_RRESP,
  axi4MemoryIF_M_AXI_RLAST,
  axi4MemoryIF_M_AXI_RUSER,
  axi4MemoryIF_M_AXI_RVALID,
  axi4MemoryIF_M_AXI_RREADY,
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
  axi4LitePsToPlControlRegisterIF_S_AXI_RREADY
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET negResetIn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME negResetIn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 negResetIn RST" *)
input wire negResetIn;
output wire [7 : 0] ledOut;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4MemoryIF_M_AXI_ACLK, ASSOCIATED_BUSIF axi4MemoryIF_M_AXI, ASSOCIATED_RESET axi4MemoryIF_M_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi4MemoryIF_M_AXI_ACLK CLK" *)
input wire axi4MemoryIF_M_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4MemoryIF_M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi4MemoryIF_M_AXI_ARESETN RST" *)
input wire axi4MemoryIF_M_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWID" *)
output wire [1 : 0] axi4MemoryIF_M_AXI_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWADDR" *)
output wire [31 : 0] axi4MemoryIF_M_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWLEN" *)
output wire [7 : 0] axi4MemoryIF_M_AXI_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWSIZE" *)
output wire [2 : 0] axi4MemoryIF_M_AXI_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWBURST" *)
output wire [1 : 0] axi4MemoryIF_M_AXI_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWLOCK" *)
output wire axi4MemoryIF_M_AXI_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWCACHE" *)
output wire [3 : 0] axi4MemoryIF_M_AXI_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWPROT" *)
output wire [2 : 0] axi4MemoryIF_M_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWQOS" *)
output wire [3 : 0] axi4MemoryIF_M_AXI_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWUSER" *)
output wire [0 : 1] axi4MemoryIF_M_AXI_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWVALID" *)
output wire axi4MemoryIF_M_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI AWREADY" *)
input wire axi4MemoryIF_M_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI WDATA" *)
output wire [63 : 0] axi4MemoryIF_M_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI WSTRB" *)
output wire [7 : 0] axi4MemoryIF_M_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI WLAST" *)
output wire axi4MemoryIF_M_AXI_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI WUSER" *)
output wire [0 : 1] axi4MemoryIF_M_AXI_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI WVALID" *)
output wire axi4MemoryIF_M_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI WREADY" *)
input wire axi4MemoryIF_M_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI BID" *)
input wire [1 : 0] axi4MemoryIF_M_AXI_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI BRESP" *)
input wire [1 : 0] axi4MemoryIF_M_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI BUSER" *)
input wire [0 : 1] axi4MemoryIF_M_AXI_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI BVALID" *)
input wire axi4MemoryIF_M_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI BREADY" *)
output wire axi4MemoryIF_M_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARID" *)
output wire [1 : 0] axi4MemoryIF_M_AXI_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARADDR" *)
output wire [31 : 0] axi4MemoryIF_M_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARLEN" *)
output wire [7 : 0] axi4MemoryIF_M_AXI_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARSIZE" *)
output wire [2 : 0] axi4MemoryIF_M_AXI_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARBURST" *)
output wire [1 : 0] axi4MemoryIF_M_AXI_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARLOCK" *)
output wire axi4MemoryIF_M_AXI_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARCACHE" *)
output wire [3 : 0] axi4MemoryIF_M_AXI_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARPROT" *)
output wire [2 : 0] axi4MemoryIF_M_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARQOS" *)
output wire [3 : 0] axi4MemoryIF_M_AXI_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARUSER" *)
output wire [0 : 1] axi4MemoryIF_M_AXI_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARVALID" *)
output wire axi4MemoryIF_M_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI ARREADY" *)
input wire axi4MemoryIF_M_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI RID" *)
input wire [1 : 0] axi4MemoryIF_M_AXI_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI RDATA" *)
input wire [63 : 0] axi4MemoryIF_M_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI RRESP" *)
input wire [1 : 0] axi4MemoryIF_M_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI RLAST" *)
input wire axi4MemoryIF_M_AXI_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI RUSER" *)
input wire [0 : 1] axi4MemoryIF_M_AXI_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI RVALID" *)
input wire axi4MemoryIF_M_AXI_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4MemoryIF_M_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 2, ARUSER_WIDTH 2, WUSER_WIDTH 2, RUSER_WIDTH 2, BUSER_WIDTH 2, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_R\
EAD_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4MemoryIF_M_AXI RREADY" *)
output wire axi4MemoryIF_M_AXI_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4LitePlToPsControlRegisterIF_S_AXI_ACLK, ASSOCIATED_RESET axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN, ASSOCIATED_BUSIF axi4LitePlToPsControlRegisterIF_S_AXI, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi4LitePlToPsControlRegisterIF_S_AXI_ACLK CLK" *)
input wire axi4LitePlToPsControlRegisterIF_S_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN RST" *)
input wire axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI ARADDR" *)
input wire [6 : 0] axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI ARPROT" *)
input wire [2 : 0] axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI ARVALID" *)
input wire axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI ARREADY" *)
output wire axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI RDATA" *)
output wire [31 : 0] axi4LitePlToPsControlRegisterIF_S_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI RRESP" *)
output wire [1 : 0] axi4LitePlToPsControlRegisterIF_S_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI RVALID" *)
output wire axi4LitePlToPsControlRegisterIF_S_AXI_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4LitePlToPsControlRegisterIF_S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0\
_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePlToPsControlRegisterIF_S_AXI RREADY" *)
input wire axi4LitePlToPsControlRegisterIF_S_AXI_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4LitePsToPlControlRegisterIF_S_AXI_ACLK, ASSOCIATED_BUSIF axi4LitePsToPlControlRegisterIF_S_AXI, ASSOCIATED_RESET axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi4LitePsToPlControlRegisterIF_S_AXI_ACLK CLK" *)
input wire axi4LitePsToPlControlRegisterIF_S_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN RST" *)
input wire axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI AWADDR" *)
input wire [6 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI AWPROT" *)
input wire [2 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI AWVALID" *)
input wire axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI AWREADY" *)
output wire axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI WDATA" *)
input wire [31 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI WSTRB" *)
input wire [3 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI WVALID" *)
input wire axi4LitePsToPlControlRegisterIF_S_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI WREADY" *)
output wire axi4LitePsToPlControlRegisterIF_S_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI BRESP" *)
output wire [1 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI BVALID" *)
output wire axi4LitePsToPlControlRegisterIF_S_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI BREADY" *)
input wire axi4LitePsToPlControlRegisterIF_S_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI ARADDR" *)
input wire [6 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI ARPROT" *)
input wire [2 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI ARVALID" *)
input wire axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI ARREADY" *)
output wire axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI RDATA" *)
output wire [31 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI RRESP" *)
output wire [1 : 0] axi4LitePsToPlControlRegisterIF_S_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI RVALID" *)
output wire axi4LitePsToPlControlRegisterIF_S_AXI_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi4LitePsToPlControlRegisterIF_S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_\
0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi4LitePsToPlControlRegisterIF_S_AXI RREADY" *)
input wire axi4LitePsToPlControlRegisterIF_S_AXI_RREADY;

  RSD inst (
    .clk(clk),
    .negResetIn(negResetIn),
    .ledOut(ledOut),
    .axi4MemoryIF_M_AXI_ACLK(axi4MemoryIF_M_AXI_ACLK),
    .axi4MemoryIF_M_AXI_ARESETN(axi4MemoryIF_M_AXI_ARESETN),
    .axi4MemoryIF_M_AXI_AWID(axi4MemoryIF_M_AXI_AWID),
    .axi4MemoryIF_M_AXI_AWADDR(axi4MemoryIF_M_AXI_AWADDR),
    .axi4MemoryIF_M_AXI_AWLEN(axi4MemoryIF_M_AXI_AWLEN),
    .axi4MemoryIF_M_AXI_AWSIZE(axi4MemoryIF_M_AXI_AWSIZE),
    .axi4MemoryIF_M_AXI_AWBURST(axi4MemoryIF_M_AXI_AWBURST),
    .axi4MemoryIF_M_AXI_AWLOCK(axi4MemoryIF_M_AXI_AWLOCK),
    .axi4MemoryIF_M_AXI_AWCACHE(axi4MemoryIF_M_AXI_AWCACHE),
    .axi4MemoryIF_M_AXI_AWPROT(axi4MemoryIF_M_AXI_AWPROT),
    .axi4MemoryIF_M_AXI_AWQOS(axi4MemoryIF_M_AXI_AWQOS),
    .axi4MemoryIF_M_AXI_AWUSER(axi4MemoryIF_M_AXI_AWUSER),
    .axi4MemoryIF_M_AXI_AWVALID(axi4MemoryIF_M_AXI_AWVALID),
    .axi4MemoryIF_M_AXI_AWREADY(axi4MemoryIF_M_AXI_AWREADY),
    .axi4MemoryIF_M_AXI_WDATA(axi4MemoryIF_M_AXI_WDATA),
    .axi4MemoryIF_M_AXI_WSTRB(axi4MemoryIF_M_AXI_WSTRB),
    .axi4MemoryIF_M_AXI_WLAST(axi4MemoryIF_M_AXI_WLAST),
    .axi4MemoryIF_M_AXI_WUSER(axi4MemoryIF_M_AXI_WUSER),
    .axi4MemoryIF_M_AXI_WVALID(axi4MemoryIF_M_AXI_WVALID),
    .axi4MemoryIF_M_AXI_WREADY(axi4MemoryIF_M_AXI_WREADY),
    .axi4MemoryIF_M_AXI_BID(axi4MemoryIF_M_AXI_BID),
    .axi4MemoryIF_M_AXI_BRESP(axi4MemoryIF_M_AXI_BRESP),
    .axi4MemoryIF_M_AXI_BUSER(axi4MemoryIF_M_AXI_BUSER),
    .axi4MemoryIF_M_AXI_BVALID(axi4MemoryIF_M_AXI_BVALID),
    .axi4MemoryIF_M_AXI_BREADY(axi4MemoryIF_M_AXI_BREADY),
    .axi4MemoryIF_M_AXI_ARID(axi4MemoryIF_M_AXI_ARID),
    .axi4MemoryIF_M_AXI_ARADDR(axi4MemoryIF_M_AXI_ARADDR),
    .axi4MemoryIF_M_AXI_ARLEN(axi4MemoryIF_M_AXI_ARLEN),
    .axi4MemoryIF_M_AXI_ARSIZE(axi4MemoryIF_M_AXI_ARSIZE),
    .axi4MemoryIF_M_AXI_ARBURST(axi4MemoryIF_M_AXI_ARBURST),
    .axi4MemoryIF_M_AXI_ARLOCK(axi4MemoryIF_M_AXI_ARLOCK),
    .axi4MemoryIF_M_AXI_ARCACHE(axi4MemoryIF_M_AXI_ARCACHE),
    .axi4MemoryIF_M_AXI_ARPROT(axi4MemoryIF_M_AXI_ARPROT),
    .axi4MemoryIF_M_AXI_ARQOS(axi4MemoryIF_M_AXI_ARQOS),
    .axi4MemoryIF_M_AXI_ARUSER(axi4MemoryIF_M_AXI_ARUSER),
    .axi4MemoryIF_M_AXI_ARVALID(axi4MemoryIF_M_AXI_ARVALID),
    .axi4MemoryIF_M_AXI_ARREADY(axi4MemoryIF_M_AXI_ARREADY),
    .axi4MemoryIF_M_AXI_RID(axi4MemoryIF_M_AXI_RID),
    .axi4MemoryIF_M_AXI_RDATA(axi4MemoryIF_M_AXI_RDATA),
    .axi4MemoryIF_M_AXI_RRESP(axi4MemoryIF_M_AXI_RRESP),
    .axi4MemoryIF_M_AXI_RLAST(axi4MemoryIF_M_AXI_RLAST),
    .axi4MemoryIF_M_AXI_RUSER(axi4MemoryIF_M_AXI_RUSER),
    .axi4MemoryIF_M_AXI_RVALID(axi4MemoryIF_M_AXI_RVALID),
    .axi4MemoryIF_M_AXI_RREADY(axi4MemoryIF_M_AXI_RREADY),
    .axi4LitePlToPsControlRegisterIF_S_AXI_ACLK(axi4LitePlToPsControlRegisterIF_S_AXI_ACLK),
    .axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN(axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN),
    .axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR(axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR),
    .axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT(axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT),
    .axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID(axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID),
    .axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY(axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY),
    .axi4LitePlToPsControlRegisterIF_S_AXI_RDATA(axi4LitePlToPsControlRegisterIF_S_AXI_RDATA),
    .axi4LitePlToPsControlRegisterIF_S_AXI_RRESP(axi4LitePlToPsControlRegisterIF_S_AXI_RRESP),
    .axi4LitePlToPsControlRegisterIF_S_AXI_RVALID(axi4LitePlToPsControlRegisterIF_S_AXI_RVALID),
    .axi4LitePlToPsControlRegisterIF_S_AXI_RREADY(axi4LitePlToPsControlRegisterIF_S_AXI_RREADY),
    .axi4LitePsToPlControlRegisterIF_S_AXI_ACLK(axi4LitePsToPlControlRegisterIF_S_AXI_ACLK),
    .axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN(axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN),
    .axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR(axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR),
    .axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT(axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT),
    .axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID(axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID),
    .axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY(axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY),
    .axi4LitePsToPlControlRegisterIF_S_AXI_WDATA(axi4LitePsToPlControlRegisterIF_S_AXI_WDATA),
    .axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB(axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB),
    .axi4LitePsToPlControlRegisterIF_S_AXI_WVALID(axi4LitePsToPlControlRegisterIF_S_AXI_WVALID),
    .axi4LitePsToPlControlRegisterIF_S_AXI_WREADY(axi4LitePsToPlControlRegisterIF_S_AXI_WREADY),
    .axi4LitePsToPlControlRegisterIF_S_AXI_BRESP(axi4LitePsToPlControlRegisterIF_S_AXI_BRESP),
    .axi4LitePsToPlControlRegisterIF_S_AXI_BVALID(axi4LitePsToPlControlRegisterIF_S_AXI_BVALID),
    .axi4LitePsToPlControlRegisterIF_S_AXI_BREADY(axi4LitePsToPlControlRegisterIF_S_AXI_BREADY),
    .axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR(axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR),
    .axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT(axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT),
    .axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID(axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID),
    .axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY(axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY),
    .axi4LitePsToPlControlRegisterIF_S_AXI_RDATA(axi4LitePsToPlControlRegisterIF_S_AXI_RDATA),
    .axi4LitePsToPlControlRegisterIF_S_AXI_RRESP(axi4LitePsToPlControlRegisterIF_S_AXI_RRESP),
    .axi4LitePsToPlControlRegisterIF_S_AXI_RVALID(axi4LitePsToPlControlRegisterIF_S_AXI_RVALID),
    .axi4LitePsToPlControlRegisterIF_S_AXI_RREADY(axi4LitePsToPlControlRegisterIF_S_AXI_RREADY)
  );
endmodule
