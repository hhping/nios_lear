
module kernel (
	clk_clk,
	epcs_flash_dclk,
	epcs_flash_sce,
	epcs_flash_sdo,
	epcs_flash_data0,
	reset_reset_n,
	sdram_ctrl_addr,
	sdram_ctrl_ba,
	sdram_ctrl_cas_n,
	sdram_ctrl_cke,
	sdram_ctrl_cs_n,
	sdram_ctrl_dq,
	sdram_ctrl_dqm,
	sdram_ctrl_ras_n,
	sdram_ctrl_we_n,
	uart_rxd,
	uart_txd);	

	input		clk_clk;
	output		epcs_flash_dclk;
	output		epcs_flash_sce;
	output		epcs_flash_sdo;
	input		epcs_flash_data0;
	input		reset_reset_n;
	output	[13:0]	sdram_ctrl_addr;
	output	[1:0]	sdram_ctrl_ba;
	output		sdram_ctrl_cas_n;
	output		sdram_ctrl_cke;
	output		sdram_ctrl_cs_n;
	inout	[15:0]	sdram_ctrl_dq;
	output	[1:0]	sdram_ctrl_dqm;
	output		sdram_ctrl_ras_n;
	output		sdram_ctrl_we_n;
	input		uart_rxd;
	output		uart_txd;
endmodule
