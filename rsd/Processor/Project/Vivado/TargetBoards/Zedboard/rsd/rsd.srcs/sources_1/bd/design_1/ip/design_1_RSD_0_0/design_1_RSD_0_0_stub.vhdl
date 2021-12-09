-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Dec  6 21:36:29 2021
-- Host        : jrmerkel-MS-7C02 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jrmerkel/Documents/School/581/proj/rsd/Processor/Project/Vivado/TargetBoards/Zedboard/rsd/rsd.srcs/sources_1/bd/design_1/ip/design_1_RSD_0_0/design_1_RSD_0_0_stub.vhdl
-- Design      : design_1_RSD_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_RSD_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    negResetIn : in STD_LOGIC;
    ledOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi4MemoryIF_M_AXI_ACLK : in STD_LOGIC;
    axi4MemoryIF_M_AXI_ARESETN : in STD_LOGIC;
    axi4MemoryIF_M_AXI_AWID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi4MemoryIF_M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi4MemoryIF_M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi4MemoryIF_M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_AWLOCK : out STD_LOGIC;
    axi4MemoryIF_M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi4MemoryIF_M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi4MemoryIF_M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi4MemoryIF_M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 0 to 1 );
    axi4MemoryIF_M_AXI_AWVALID : out STD_LOGIC;
    axi4MemoryIF_M_AXI_AWREADY : in STD_LOGIC;
    axi4MemoryIF_M_AXI_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    axi4MemoryIF_M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi4MemoryIF_M_AXI_WLAST : out STD_LOGIC;
    axi4MemoryIF_M_AXI_WUSER : out STD_LOGIC_VECTOR ( 0 to 1 );
    axi4MemoryIF_M_AXI_WVALID : out STD_LOGIC;
    axi4MemoryIF_M_AXI_WREADY : in STD_LOGIC;
    axi4MemoryIF_M_AXI_BID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_BUSER : in STD_LOGIC_VECTOR ( 0 to 1 );
    axi4MemoryIF_M_AXI_BVALID : in STD_LOGIC;
    axi4MemoryIF_M_AXI_BREADY : out STD_LOGIC;
    axi4MemoryIF_M_AXI_ARID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi4MemoryIF_M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi4MemoryIF_M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi4MemoryIF_M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_ARLOCK : out STD_LOGIC;
    axi4MemoryIF_M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi4MemoryIF_M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi4MemoryIF_M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi4MemoryIF_M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 0 to 1 );
    axi4MemoryIF_M_AXI_ARVALID : out STD_LOGIC;
    axi4MemoryIF_M_AXI_ARREADY : in STD_LOGIC;
    axi4MemoryIF_M_AXI_RID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    axi4MemoryIF_M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4MemoryIF_M_AXI_RLAST : in STD_LOGIC;
    axi4MemoryIF_M_AXI_RUSER : in STD_LOGIC_VECTOR ( 0 to 1 );
    axi4MemoryIF_M_AXI_RVALID : in STD_LOGIC;
    axi4MemoryIF_M_AXI_RREADY : out STD_LOGIC;
    axi4LitePlToPsControlRegisterIF_S_AXI_ACLK : in STD_LOGIC;
    axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN : in STD_LOGIC;
    axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID : in STD_LOGIC;
    axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY : out STD_LOGIC;
    axi4LitePlToPsControlRegisterIF_S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi4LitePlToPsControlRegisterIF_S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4LitePlToPsControlRegisterIF_S_AXI_RVALID : out STD_LOGIC;
    axi4LitePlToPsControlRegisterIF_S_AXI_RREADY : in STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_ACLK : in STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN : in STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID : in STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY : out STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_WVALID : in STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_WREADY : out STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_BVALID : out STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_BREADY : in STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID : in STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY : out STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi4LitePsToPlControlRegisterIF_S_AXI_RVALID : out STD_LOGIC;
    axi4LitePsToPlControlRegisterIF_S_AXI_RREADY : in STD_LOGIC
  );

end design_1_RSD_0_0;

architecture stub of design_1_RSD_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,negResetIn,ledOut[7:0],axi4MemoryIF_M_AXI_ACLK,axi4MemoryIF_M_AXI_ARESETN,axi4MemoryIF_M_AXI_AWID[1:0],axi4MemoryIF_M_AXI_AWADDR[31:0],axi4MemoryIF_M_AXI_AWLEN[7:0],axi4MemoryIF_M_AXI_AWSIZE[2:0],axi4MemoryIF_M_AXI_AWBURST[1:0],axi4MemoryIF_M_AXI_AWLOCK,axi4MemoryIF_M_AXI_AWCACHE[3:0],axi4MemoryIF_M_AXI_AWPROT[2:0],axi4MemoryIF_M_AXI_AWQOS[3:0],axi4MemoryIF_M_AXI_AWUSER[0:1],axi4MemoryIF_M_AXI_AWVALID,axi4MemoryIF_M_AXI_AWREADY,axi4MemoryIF_M_AXI_WDATA[63:0],axi4MemoryIF_M_AXI_WSTRB[7:0],axi4MemoryIF_M_AXI_WLAST,axi4MemoryIF_M_AXI_WUSER[0:1],axi4MemoryIF_M_AXI_WVALID,axi4MemoryIF_M_AXI_WREADY,axi4MemoryIF_M_AXI_BID[1:0],axi4MemoryIF_M_AXI_BRESP[1:0],axi4MemoryIF_M_AXI_BUSER[0:1],axi4MemoryIF_M_AXI_BVALID,axi4MemoryIF_M_AXI_BREADY,axi4MemoryIF_M_AXI_ARID[1:0],axi4MemoryIF_M_AXI_ARADDR[31:0],axi4MemoryIF_M_AXI_ARLEN[7:0],axi4MemoryIF_M_AXI_ARSIZE[2:0],axi4MemoryIF_M_AXI_ARBURST[1:0],axi4MemoryIF_M_AXI_ARLOCK,axi4MemoryIF_M_AXI_ARCACHE[3:0],axi4MemoryIF_M_AXI_ARPROT[2:0],axi4MemoryIF_M_AXI_ARQOS[3:0],axi4MemoryIF_M_AXI_ARUSER[0:1],axi4MemoryIF_M_AXI_ARVALID,axi4MemoryIF_M_AXI_ARREADY,axi4MemoryIF_M_AXI_RID[1:0],axi4MemoryIF_M_AXI_RDATA[63:0],axi4MemoryIF_M_AXI_RRESP[1:0],axi4MemoryIF_M_AXI_RLAST,axi4MemoryIF_M_AXI_RUSER[0:1],axi4MemoryIF_M_AXI_RVALID,axi4MemoryIF_M_AXI_RREADY,axi4LitePlToPsControlRegisterIF_S_AXI_ACLK,axi4LitePlToPsControlRegisterIF_S_AXI_ARESETN,axi4LitePlToPsControlRegisterIF_S_AXI_ARADDR[6:0],axi4LitePlToPsControlRegisterIF_S_AXI_ARPROT[2:0],axi4LitePlToPsControlRegisterIF_S_AXI_ARVALID,axi4LitePlToPsControlRegisterIF_S_AXI_ARREADY,axi4LitePlToPsControlRegisterIF_S_AXI_RDATA[31:0],axi4LitePlToPsControlRegisterIF_S_AXI_RRESP[1:0],axi4LitePlToPsControlRegisterIF_S_AXI_RVALID,axi4LitePlToPsControlRegisterIF_S_AXI_RREADY,axi4LitePsToPlControlRegisterIF_S_AXI_ACLK,axi4LitePsToPlControlRegisterIF_S_AXI_ARESETN,axi4LitePsToPlControlRegisterIF_S_AXI_AWADDR[6:0],axi4LitePsToPlControlRegisterIF_S_AXI_AWPROT[2:0],axi4LitePsToPlControlRegisterIF_S_AXI_AWVALID,axi4LitePsToPlControlRegisterIF_S_AXI_AWREADY,axi4LitePsToPlControlRegisterIF_S_AXI_WDATA[31:0],axi4LitePsToPlControlRegisterIF_S_AXI_WSTRB[3:0],axi4LitePsToPlControlRegisterIF_S_AXI_WVALID,axi4LitePsToPlControlRegisterIF_S_AXI_WREADY,axi4LitePsToPlControlRegisterIF_S_AXI_BRESP[1:0],axi4LitePsToPlControlRegisterIF_S_AXI_BVALID,axi4LitePsToPlControlRegisterIF_S_AXI_BREADY,axi4LitePsToPlControlRegisterIF_S_AXI_ARADDR[6:0],axi4LitePsToPlControlRegisterIF_S_AXI_ARPROT[2:0],axi4LitePsToPlControlRegisterIF_S_AXI_ARVALID,axi4LitePsToPlControlRegisterIF_S_AXI_ARREADY,axi4LitePsToPlControlRegisterIF_S_AXI_RDATA[31:0],axi4LitePsToPlControlRegisterIF_S_AXI_RRESP[1:0],axi4LitePsToPlControlRegisterIF_S_AXI_RVALID,axi4LitePsToPlControlRegisterIF_S_AXI_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "RSD,Vivado 2020.1";
begin
end;
