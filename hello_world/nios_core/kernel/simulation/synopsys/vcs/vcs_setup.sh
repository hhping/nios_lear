
# (C) 2001-2018 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 14.1 186 win32 2018.08.23.22:29:22

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="kernel"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="D:/altera/14.1/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/submodules/kernel_onchip_memory.hex ./
  cp -f $QSYS_SIMDIR/submodules/kernel_epcs_boot_rom.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.v \
  $QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_mux_001.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_mux.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_demux_001.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_demux.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_mux_001.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_mux.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_demux_001.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_demux.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv \
  $QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_default_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_010.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_003.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_002.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_001.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/submodules/kernel_cpu_cpu.vo \
  $QSYS_SIMDIR/submodules/kernel_cpu_cpu_debug_slave_sysclk.v \
  $QSYS_SIMDIR/submodules/kernel_cpu_cpu_debug_slave_tck.v \
  $QSYS_SIMDIR/submodules/kernel_cpu_cpu_debug_slave_wrapper.v \
  $QSYS_SIMDIR/submodules/kernel_cpu_cpu_mult_cell.v \
  $QSYS_SIMDIR/submodules/kernel_cpu_cpu_oci_test_bench.v \
  $QSYS_SIMDIR/submodules/kernel_cpu_cpu_test_bench.v \
  $QSYS_SIMDIR/submodules/altera_reset_controller.v \
  $QSYS_SIMDIR/submodules/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/submodules/kernel_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/kernel_mm_interconnect_0.v \
  $QSYS_SIMDIR/submodules/kernel_uart.v \
  $QSYS_SIMDIR/submodules/kernel_sysid.vo \
  $QSYS_SIMDIR/submodules/kernel_sdram_ctrl.v \
  $QSYS_SIMDIR/submodules/kernel_onchip_memory.v \
  $QSYS_SIMDIR/submodules/kernel_jtag_uart.v \
  $QSYS_SIMDIR/submodules/kernel_epcs.v \
  $QSYS_SIMDIR/submodules/kernel_cpu.v \
  $QSYS_SIMDIR/submodules/kernel_cf_0.v \
  $QSYS_SIMDIR/kernel.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
