vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/ten_gig_eth_mac_v15_1_4
vlib questa_lib/msim/xil_defaultlib

vmap ten_gig_eth_mac_v15_1_4 questa_lib/msim/ten_gig_eth_mac_v15_1_4
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work ten_gig_eth_mac_v15_1_4 -64 \
"../../../ipstatic/hdl/ten_gig_eth_mac_v15_1_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/ten_gig_eth_mac_v15_1_1/hdl/ten_gig_eth_mac_0_core.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0_xgmii_if.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0_sync_resetn.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0_block.v" \
"../../../../project_2.srcs/sources_1/ip/ten_gig_eth_mac_0/synth/ten_gig_eth_mac_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

