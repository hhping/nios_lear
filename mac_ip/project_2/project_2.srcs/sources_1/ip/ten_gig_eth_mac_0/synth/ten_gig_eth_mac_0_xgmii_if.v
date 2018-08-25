//-------------------------------------------------------------------------------
// File       : ten_gig_eth_mac_0_xgmii_if.v
// Author     : Xilinx Inc.
//-------------------------------------------------------------------------------
// Description: This is the XGMII interface Verilog code for the
// Ten Gigabit Ethernet MAC.  It may also  contain the Receive
// clock generation depending on the configuration options selected
// when generated.
//-------------------------------------------------------------------------------
// (c) Copyright 2001-2014 Xilinx, Inc. All rights reserved.
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
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module ten_gig_eth_mac_0_xgmii_if
    (
   // Port declarations

   input reset,
   input rx_axis_rstn,
   input tx_clk0,
   input tx_clk90,
   input [63:0] xgmii_txd_core,
   input [7:0] xgmii_txc_core,
   output [31:0] xgmii_txd,
   output [3:0] xgmii_txc,
   output  xgmii_tx_clk,

    (* KEEP = "true" *)
    output wire rx_clk0,
    output wire rx_dcm_locked,
    input       xgmii_rx_clk,
    input       [31:0]xgmii_rxd,
    input       [3:0]xgmii_rxc,
    output wire [63:0]xgmii_rxd_core,
    output wire [7:0]xgmii_rxc_core);

   reg  rx_dcm_locked_reg;
   wire xgmii_rx_clk_dcm;
   wire rx_dcm_clk0;
   wire clkfbout_buf;
   wire clkfbout;
   wire rx_mmcm_locked;

   // Receiver clock management
   IBUF xgmii_rx_clk_ibuf
     (
      .I(xgmii_rx_clk),
      .O(xgmii_rx_clk_dcm)
      );

   MMCME2_BASE
  #(.DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (6.000),
    .CLKOUT0_DIVIDE_F     (6.000),
    .CLKIN1_PERIOD        (6.400),
    .CLKFBOUT_PHASE       (0.000),
    .CLKOUT0_PHASE        (180.000),
    .CLKOUT0_DUTY_CYCLE   (0.5),
    .REF_JITTER1          (0.010))
  rx_mmcm
    // Output clocks
   (.CLKFBOUT            (clkfbout),
    .CLKOUT0             (rx_dcm_clk0),
     // Input clock control
    .CLKFBIN             (clkfbout_buf),
    .CLKIN1              (xgmii_rx_clk_dcm),
    // Other control and status signals
    .LOCKED              (rx_mmcm_locked),
    .PWRDWN              (1'b0),
    .RST                 (reset),
    .CLKFBOUTB           (),
    .CLKOUT0B            (),
    .CLKOUT1             (),
    .CLKOUT1B            (),
    .CLKOUT2             (),
    .CLKOUT2B            (),
    .CLKOUT3             (),
    .CLKOUT3B            (),
    .CLKOUT4             (),
    .CLKOUT5             (),
    .CLKOUT6             ());

  BUFG clkf_buf
   (.O (clkfbout_buf),
    .I (clkfbout));

   assign rx_dcm_locked = rx_mmcm_locked;

   BUFG rx_bufg
     (
      .I(rx_dcm_clk0),
      .O(rx_clk0)
      );

   // register the dcm_locked signal into the system clock domain
   always @(posedge rx_clk0)
     begin
       rx_dcm_locked_reg <= rx_dcm_locked;
     end

   // Input Double Data Rate registers
  generate
   genvar i,j;
   for(i=0;i<32;i=i+1) begin:rxd_loop
     IDDR #(
     .DDR_CLK_EDGE("SAME_EDGE")) rxd_ddr (
       .Q1(xgmii_rxd_core[i+32]),
       .Q2(xgmii_rxd_core[i]),
       .C(rx_clk0),
       .CE(1'b1),
       .D(xgmii_rxd[i]),
       .R(1'b0),
       .S(1'b0));
   end

   for(j=0;j<4;j=j+1) begin:rxc_loop
     IDDR #(
     .DDR_CLK_EDGE("SAME_EDGE")) rxc_ddr (
       .Q1(xgmii_rxc_core[j+4]),
       .Q2(xgmii_rxc_core[j]),
       .C(rx_clk0),
       .CE(1'b1),
       .D(xgmii_rxc[j]),
       .R(1'b0),
       .S(1'b0));
   end


  endgenerate


   // Transmit output clock logic
   ODDR #(
     .DDR_CLK_EDGE("SAME_EDGE")) tx_clk_ddr
     (
      .Q(xgmii_tx_clk),
      .D1(1'b1),
      .D2(1'b0),
      .C(tx_clk90),
      .CE(1'b1),
      .R(1'b0),
      .S(1'b0)
     );

  generate
   genvar k,l;

   // Transmit output registers
   for(k=0;k<32;k=k+1) begin:txd_loop
     ODDR #(
     .DDR_CLK_EDGE("SAME_EDGE"),
     .INIT(1'b0)) txd_ddr
       (
        .Q(xgmii_txd[k]),
        .D1(xgmii_txd_core[k]),
        .D2(xgmii_txd_core[k+32]),
        .C(tx_clk0),
        .CE(1'b1),
        .R(1'b0),
        .S(1'b0)
       );
   end

   for(l=0;l<4;l=l+1) begin:txc_loop
     ODDR #(
       .DDR_CLK_EDGE("SAME_EDGE"),
       .INIT(1'b1)) txc_ddr
       (
        .Q(xgmii_txc[l]),
        .D1(xgmii_txc_core[l]),
        .D2(xgmii_txc_core[l+4]),
        .C(tx_clk0),
        .CE(1'b1),
        .R(1'b0),
        .S(1'b0)
       );
   end
  endgenerate


endmodule
