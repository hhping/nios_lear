	kernel u0 (
		.clk_clk          (<connected-to-clk_clk>),          //        clk.clk
		.epcs_flash_dclk  (<connected-to-epcs_flash_dclk>),  // epcs_flash.dclk
		.epcs_flash_sce   (<connected-to-epcs_flash_sce>),   //           .sce
		.epcs_flash_sdo   (<connected-to-epcs_flash_sdo>),   //           .sdo
		.epcs_flash_data0 (<connected-to-epcs_flash_data0>), //           .data0
		.reset_reset_n    (<connected-to-reset_reset_n>),    //      reset.reset_n
		.sdram_ctrl_addr  (<connected-to-sdram_ctrl_addr>),  // sdram_ctrl.addr
		.sdram_ctrl_ba    (<connected-to-sdram_ctrl_ba>),    //           .ba
		.sdram_ctrl_cas_n (<connected-to-sdram_ctrl_cas_n>), //           .cas_n
		.sdram_ctrl_cke   (<connected-to-sdram_ctrl_cke>),   //           .cke
		.sdram_ctrl_cs_n  (<connected-to-sdram_ctrl_cs_n>),  //           .cs_n
		.sdram_ctrl_dq    (<connected-to-sdram_ctrl_dq>),    //           .dq
		.sdram_ctrl_dqm   (<connected-to-sdram_ctrl_dqm>),   //           .dqm
		.sdram_ctrl_ras_n (<connected-to-sdram_ctrl_ras_n>), //           .ras_n
		.sdram_ctrl_we_n  (<connected-to-sdram_ctrl_we_n>),  //           .we_n
		.uart_rxd         (<connected-to-uart_rxd>),         //       uart.rxd
		.uart_txd         (<connected-to-uart_txd>)          //           .txd
	);

