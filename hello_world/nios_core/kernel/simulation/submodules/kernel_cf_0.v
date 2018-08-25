//Legal Notice: (C)2018 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module kernel_cf_0 (
                     // inputs:
                      av_ctl_address,
                      av_ctl_chipselect_n,
                      av_ctl_read_n,
                      av_ctl_write_n,
                      av_ctl_writedata,
                      av_ide_address,
                      av_ide_chipselect_n,
                      av_ide_read_n,
                      av_ide_write_n,
                      av_ide_writedata,
                      av_reset_n,
                      clk,
                      detect_n,
                      intrq,
                      iordy,

                     // outputs:
                      addr,
                      atasel_n,
                      av_ctl_irq,
                      av_ctl_readdata,
                      av_ide_irq,
                      av_ide_readdata,
                      cs_n,
                      data_cf,
                      iord_n,
                      iowr_n,
                      power,
                      reset_n_cf,
                      rfu,
                      we_n
                   )
;

  output  [ 10: 0] addr;
  output           atasel_n;
  output           av_ctl_irq;
  output  [  3: 0] av_ctl_readdata;
  output           av_ide_irq;
  output  [ 15: 0] av_ide_readdata;
  output  [  1: 0] cs_n;
  inout   [ 15: 0] data_cf;
  output           iord_n;
  output           iowr_n;
  output           power;
  output           reset_n_cf;
  output           rfu;
  output           we_n;
  input   [  1: 0] av_ctl_address;
  input            av_ctl_chipselect_n;
  input            av_ctl_read_n;
  input            av_ctl_write_n;
  input   [  3: 0] av_ctl_writedata;
  input   [  3: 0] av_ide_address;
  input            av_ide_chipselect_n;
  input            av_ide_read_n;
  input            av_ide_write_n;
  input   [ 15: 0] av_ide_writedata;
  input            av_reset_n;
  input            clk;
  input            detect_n;
  input            intrq;
  input            iordy;

  wire    [ 10: 0] addr;
  wire             atasel_n;
  reg              av_ctl_irq;
  reg     [  3: 0] av_ctl_readdata;
  wire             av_ide_irq;
  wire    [ 15: 0] av_ide_readdata;
  wire    [  1: 0] cs_n;
  wire             ctl_hi_write_strobe;
  reg              ctl_irq_en_reg;
  wire             ctl_lo_read_strobe;
  wire             ctl_lo_write_strobe;
  wire    [  3: 0] ctl_read_mux;
  reg              d1_present_reg;
  wire    [ 15: 0] data_cf;
  reg              ide_irq_en_reg;
  wire             iord_n;
  wire             iowr_n;
  wire             power;
  reg              power_reg;
  reg     [ 15: 0] present_counter;
  reg              present_reg;
  wire             reset_n;
  wire             reset_n_cf;
  reg              reset_reg;
  wire             rfu;
  wire             we_n;
  //ctl, which is an e_avalon_slave
  //ide, which is an e_avalon_slave
  assign atasel_n = 1'b0;
  assign we_n = 1'b1;
  assign rfu = 1'b1;
  assign addr[10 : 3] = 8'h00;
  assign addr[2 : 0] = av_ide_address[2 : 0];
  assign iord_n = av_ide_read_n;
  assign iowr_n = av_ide_write_n;
  assign cs_n[0] = ~av_ide_chipselect_n ? (~av_ide_address[3] ? 1'b0 : 1'b1) : 1'b1;
  assign cs_n[1] = ~av_ide_chipselect_n ? ( av_ide_address[3] ? 1'b0 : 1'b1) : 1'b1;
  assign av_ide_readdata = present_reg ? data_cf : 16'hFFFF;
  assign data_cf = (~av_ide_write_n && present_reg) ? av_ide_writedata :16'hZZZZ;
  assign power = (power_reg && present_reg) ? 1'b1 : 1'b0;
  assign reset_n_cf = (reset_reg || ~av_reset_n || ~present_reg) ? 1'b0 : 1'b1;
  assign av_ide_irq = (ide_irq_en_reg && present_reg) ? intrq : 1'b0;
  assign ctl_lo_write_strobe = ~av_ctl_chipselect_n && ~av_ctl_write_n && 
    (av_ctl_address == 4'h0);

  assign ctl_hi_write_strobe = ~av_ctl_chipselect_n && ~av_ctl_write_n &&
    (av_ctl_address == 4'h1);

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ctl_irq_en_reg <= 0;
      else if (ctl_lo_write_strobe)
          ctl_irq_en_reg <= av_ctl_writedata[3];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          reset_reg <= 0;
      else if (ctl_lo_write_strobe)
          reset_reg <= av_ctl_writedata[2];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          power_reg <= 0;
      else if (ctl_lo_write_strobe)
          power_reg <= av_ctl_writedata[1];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ide_irq_en_reg <= 0;
      else if (ctl_hi_write_strobe)
          ide_irq_en_reg <= av_ctl_writedata[0];
    end


  assign ctl_read_mux = (av_ctl_address == 2'b00)? {ctl_irq_en_reg,
    reset_reg,
    power_reg,
    present_reg} :
    (av_ctl_address == 2'b01)? {3'h0,
    ide_irq_en_reg} :
    (av_ctl_address == 2'b10)? 4'h0 :
    4'h0;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_ctl_readdata <= 0;
      else 
        av_ctl_readdata <= ctl_read_mux;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          present_counter <= 0;
      else if (detect_n)
          present_counter <= 0;
      else 
        present_counter <= present_counter + 1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          present_reg <= 0;
      else if (detect_n)
          present_reg <= 0;
      else if (present_counter == 50000)
          present_reg <= -1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_present_reg <= 0;
      else 
        d1_present_reg <= present_reg;
    end


  assign ctl_lo_read_strobe = ~av_ctl_chipselect_n && ~av_ctl_read_n && 
    (av_ctl_address == 4'h0);

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_ctl_irq <= 0;
      else if (ctl_irq_en_reg)
          if (ctl_lo_read_strobe)
              av_ctl_irq <= 0;
          else if (d1_present_reg ^ present_reg)
              av_ctl_irq <= -1;
    end


  assign reset_n = av_reset_n;

endmodule

