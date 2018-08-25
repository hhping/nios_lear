// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Mar 25 22:39:13 2018
// Host        : 9SX40FPNR3U7YZ4 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Administrator/Desktop/mac_ip/project_2/project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/ten_gig_eth_mac_0_stub.v
// Design      : ten_gig_eth_mac_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xq7k410trf900-2IL
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ten_gig_eth_mac_v15_1_4,Vivado 2017.4" *)
module ten_gig_eth_mac_0(tx_clk0, tx_clk90, reset, tx_axis_aresetn, 
  tx_axis_tdata, tx_axis_tkeep, tx_axis_tvalid, tx_axis_tlast, tx_axis_tuser, tx_ifg_delay, 
  tx_axis_tready, tx_statistics_vector, tx_statistics_valid, pause_val, pause_req, 
  rx_axis_aresetn, rx_axis_tdata, rx_axis_tkeep, rx_axis_tvalid, rx_axis_tuser, 
  rx_axis_tlast, rx_statistics_vector, rx_statistics_valid, s_axi_aclk, s_axi_aresetn, 
  s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, xgmacint, mdc, mdio_in, mdio_out, mdio_tri, 
  tx_dcm_locked, xgmii_txd, xgmii_txc, xgmii_tx_clk, rx_clk_out, rx_dcm_locked_out, 
  xgmii_rx_clk, xgmii_rxd, xgmii_rxc)
/* synthesis syn_black_box black_box_pad_pin="tx_clk0,tx_clk90,reset,tx_axis_aresetn,tx_axis_tdata[63:0],tx_axis_tkeep[7:0],tx_axis_tvalid,tx_axis_tlast,tx_axis_tuser,tx_ifg_delay[7:0],tx_axis_tready,tx_statistics_vector[25:0],tx_statistics_valid,pause_val[15:0],pause_req,rx_axis_aresetn,rx_axis_tdata[63:0],rx_axis_tkeep[7:0],rx_axis_tvalid,rx_axis_tuser,rx_axis_tlast,rx_statistics_vector[29:0],rx_statistics_valid,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[10:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[10:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,xgmacint,mdc,mdio_in,mdio_out,mdio_tri,tx_dcm_locked,xgmii_txd[31:0],xgmii_txc[3:0],xgmii_tx_clk,rx_clk_out,rx_dcm_locked_out,xgmii_rx_clk,xgmii_rxd[31:0],xgmii_rxc[3:0]" */;
  input tx_clk0;
  input tx_clk90;
  input reset;
  input tx_axis_aresetn;
  input [63:0]tx_axis_tdata;
  input [7:0]tx_axis_tkeep;
  input tx_axis_tvalid;
  input tx_axis_tlast;
  input tx_axis_tuser;
  input [7:0]tx_ifg_delay;
  output tx_axis_tready;
  output [25:0]tx_statistics_vector;
  output tx_statistics_valid;
  input [15:0]pause_val;
  input pause_req;
  input rx_axis_aresetn;
  output [63:0]rx_axis_tdata;
  output [7:0]rx_axis_tkeep;
  output rx_axis_tvalid;
  output rx_axis_tuser;
  output rx_axis_tlast;
  output [29:0]rx_statistics_vector;
  output rx_statistics_valid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output xgmacint;
  output mdc;
  input mdio_in;
  output mdio_out;
  output mdio_tri;
  input tx_dcm_locked;
  output [31:0]xgmii_txd;
  output [3:0]xgmii_txc;
  output xgmii_tx_clk;
  output rx_clk_out;
  output rx_dcm_locked_out;
  input xgmii_rx_clk;
  input [31:0]xgmii_rxd;
  input [3:0]xgmii_rxc;
endmodule
