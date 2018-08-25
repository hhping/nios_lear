	component kernel is
		port (
			clk_clk          : in    std_logic                     := 'X';             -- clk
			epcs_flash_dclk  : out   std_logic;                                        -- dclk
			epcs_flash_sce   : out   std_logic;                                        -- sce
			epcs_flash_sdo   : out   std_logic;                                        -- sdo
			epcs_flash_data0 : in    std_logic                     := 'X';             -- data0
			reset_reset_n    : in    std_logic                     := 'X';             -- reset_n
			sdram_ctrl_addr  : out   std_logic_vector(13 downto 0);                    -- addr
			sdram_ctrl_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_ctrl_cas_n : out   std_logic;                                        -- cas_n
			sdram_ctrl_cke   : out   std_logic;                                        -- cke
			sdram_ctrl_cs_n  : out   std_logic;                                        -- cs_n
			sdram_ctrl_dq    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_ctrl_dqm   : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_ctrl_ras_n : out   std_logic;                                        -- ras_n
			sdram_ctrl_we_n  : out   std_logic;                                        -- we_n
			uart_rxd         : in    std_logic                     := 'X';             -- rxd
			uart_txd         : out   std_logic                                         -- txd
		);
	end component kernel;

	u0 : component kernel
		port map (
			clk_clk          => CONNECTED_TO_clk_clk,          --        clk.clk
			epcs_flash_dclk  => CONNECTED_TO_epcs_flash_dclk,  -- epcs_flash.dclk
			epcs_flash_sce   => CONNECTED_TO_epcs_flash_sce,   --           .sce
			epcs_flash_sdo   => CONNECTED_TO_epcs_flash_sdo,   --           .sdo
			epcs_flash_data0 => CONNECTED_TO_epcs_flash_data0, --           .data0
			reset_reset_n    => CONNECTED_TO_reset_reset_n,    --      reset.reset_n
			sdram_ctrl_addr  => CONNECTED_TO_sdram_ctrl_addr,  -- sdram_ctrl.addr
			sdram_ctrl_ba    => CONNECTED_TO_sdram_ctrl_ba,    --           .ba
			sdram_ctrl_cas_n => CONNECTED_TO_sdram_ctrl_cas_n, --           .cas_n
			sdram_ctrl_cke   => CONNECTED_TO_sdram_ctrl_cke,   --           .cke
			sdram_ctrl_cs_n  => CONNECTED_TO_sdram_ctrl_cs_n,  --           .cs_n
			sdram_ctrl_dq    => CONNECTED_TO_sdram_ctrl_dq,    --           .dq
			sdram_ctrl_dqm   => CONNECTED_TO_sdram_ctrl_dqm,   --           .dqm
			sdram_ctrl_ras_n => CONNECTED_TO_sdram_ctrl_ras_n, --           .ras_n
			sdram_ctrl_we_n  => CONNECTED_TO_sdram_ctrl_we_n,  --           .we_n
			uart_rxd         => CONNECTED_TO_uart_rxd,         --       uart.rxd
			uart_txd         => CONNECTED_TO_uart_txd          --           .txd
		);

