# The ram used to store the quanta information also needs the timing from write to read to be ignored
set_false_path -from [get_clocks -of_objects [get_ports s_axi_aclk]] -to [get_cells {ten_gig_eth_mac_0_core/tx/tx_cntl/pause_tdata_reg[*]}]
# need to get the name of the capture rx clock to allow timing edges to be controlled
set rx_clk_name   [get_clocks -of [get_pins xgmac_xgmii_if/rx_mmcm/CLKOUT0]]

#add a false path to prevent incorrect edges being timed
# for setup we want to ensure only data launched on the rising edge is timed against the rising edge etc
set_false_path -rise_from xgmii_rx_clk -fall_to $rx_clk_name -setup
set_false_path -fall_from xgmii_rx_clk -rise_to $rx_clk_name -setup
# for hold we want to ensure data launched on a clock edge is timed against the previous edge
set_false_path -rise_from xgmii_rx_clk -rise_to $rx_clk_name -hold
set_false_path -fall_from xgmii_rx_clk -fall_to $rx_clk_name -hold

