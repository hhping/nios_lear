vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/ten_gig_eth_mac_v15_1_4
vlib modelsim_lib/msim/xil_defaultlib

vmap ten_gig_eth_mac_v15_1_4 modelsim_lib/msim/ten_gig_eth_mac_v15_1_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work ten_gig_eth_mac_v15_1_4 -64 -incr \
"../../../ipstatic/hdl/ten_gig_eth_mac_v15_1_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/ten_gig_eth_mac_v15_1_1/hdl/ten_gig_eth_mac_0_core.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0_xgmii_if.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0_sync_resetn.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0_block.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

