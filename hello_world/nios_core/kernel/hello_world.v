module hello_world
(
    input           clk,
    input           rst_n,

    input           uart_rx,
    output          uart_tx,

	output		    epcs_flash_dclk,
	output		    epcs_flash_sce,
	output		    epcs_flash_sdo,
	input		    epcs_flash_data0
);
wire nios_clk,locked;
alt_pll	alt_pll_inst (
	.inclk0 ( clk ),
	.c0     ( nios_clk ),
	.locked ( locked )
	);

	kernel u0 (
		.clk_clk            (nios_clk),           //          clk.clk
		.epcs_flash_dclk    (epcs_flash_dclk),    //   epcs_flash.dclk
		.epcs_flash_sce     (epcs_flash_sce),     //             .sce
		.epcs_flash_sdo     (epcs_flash_sdo),     //             .sdo
		.epcs_flash_data0   (epcs_flash_data0),   //             .data0
		.reset_reset_n      (rst_n        ),      //        reset.reset_n

		.uart_rxd           (uart_rx),           //         uart.rxd
		.uart_txd           (uart_tx)            //             .txd
	);
endmodule