
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

# ACDS 14.1 186 win32 2018.08.23.22:29:23

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "kernel"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "D:/altera/14.1/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_cpu_cpu_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_onchip_memory.hex ./
  file copy -force $QSYS_SIMDIR/submodules/kernel_epcs_boot_rom.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                        ./libraries/altera_ver            
vmap       altera_ver             ./libraries/altera_ver            
ensure_lib                        ./libraries/lpm_ver               
vmap       lpm_ver                ./libraries/lpm_ver               
ensure_lib                        ./libraries/sgate_ver             
vmap       sgate_ver              ./libraries/sgate_ver             
ensure_lib                        ./libraries/altera_mf_ver         
vmap       altera_mf_ver          ./libraries/altera_mf_ver         
ensure_lib                        ./libraries/altera_lnsim_ver      
vmap       altera_lnsim_ver       ./libraries/altera_lnsim_ver      
ensure_lib                        ./libraries/cycloneiv_hssi_ver    
vmap       cycloneiv_hssi_ver     ./libraries/cycloneiv_hssi_ver    
ensure_lib                        ./libraries/cycloneiv_pcie_hip_ver
vmap       cycloneiv_pcie_hip_ver ./libraries/cycloneiv_pcie_hip_ver
ensure_lib                        ./libraries/cycloneiv_ver         
vmap       cycloneiv_ver          ./libraries/cycloneiv_ver         
ensure_lib                                            ./libraries/sdram_ctrl_s1_rsp_width_adapter           
vmap       sdram_ctrl_s1_rsp_width_adapter            ./libraries/sdram_ctrl_s1_rsp_width_adapter           
ensure_lib                                            ./libraries/rsp_mux_001                               
vmap       rsp_mux_001                                ./libraries/rsp_mux_001                               
ensure_lib                                            ./libraries/rsp_mux                                   
vmap       rsp_mux                                    ./libraries/rsp_mux                                   
ensure_lib                                            ./libraries/rsp_demux_001                             
vmap       rsp_demux_001                              ./libraries/rsp_demux_001                             
ensure_lib                                            ./libraries/rsp_demux                                 
vmap       rsp_demux                                  ./libraries/rsp_demux                                 
ensure_lib                                            ./libraries/cmd_mux_001                               
vmap       cmd_mux_001                                ./libraries/cmd_mux_001                               
ensure_lib                                            ./libraries/cmd_mux                                   
vmap       cmd_mux                                    ./libraries/cmd_mux                                   
ensure_lib                                            ./libraries/cmd_demux_001                             
vmap       cmd_demux_001                              ./libraries/cmd_demux_001                             
ensure_lib                                            ./libraries/cmd_demux                                 
vmap       cmd_demux                                  ./libraries/cmd_demux                                 
ensure_lib                                            ./libraries/sdram_ctrl_s1_burst_adapter               
vmap       sdram_ctrl_s1_burst_adapter                ./libraries/sdram_ctrl_s1_burst_adapter               
ensure_lib                                            ./libraries/cpu_data_master_limiter                   
vmap       cpu_data_master_limiter                    ./libraries/cpu_data_master_limiter                   
ensure_lib                                            ./libraries/router_010                                
vmap       router_010                                 ./libraries/router_010                                
ensure_lib                                            ./libraries/router_003                                
vmap       router_003                                 ./libraries/router_003                                
ensure_lib                                            ./libraries/router_002                                
vmap       router_002                                 ./libraries/router_002                                
ensure_lib                                            ./libraries/router_001                                
vmap       router_001                                 ./libraries/router_001                                
ensure_lib                                            ./libraries/router                                    
vmap       router                                     ./libraries/router                                    
ensure_lib                                            ./libraries/jtag_uart_avalon_jtag_slave_agent_rsp_fifo
vmap       jtag_uart_avalon_jtag_slave_agent_rsp_fifo ./libraries/jtag_uart_avalon_jtag_slave_agent_rsp_fifo
ensure_lib                                            ./libraries/jtag_uart_avalon_jtag_slave_agent         
vmap       jtag_uart_avalon_jtag_slave_agent          ./libraries/jtag_uart_avalon_jtag_slave_agent         
ensure_lib                                            ./libraries/cpu_data_master_agent                     
vmap       cpu_data_master_agent                      ./libraries/cpu_data_master_agent                     
ensure_lib                                            ./libraries/jtag_uart_avalon_jtag_slave_translator    
vmap       jtag_uart_avalon_jtag_slave_translator     ./libraries/jtag_uart_avalon_jtag_slave_translator    
ensure_lib                                            ./libraries/cpu_data_master_translator                
vmap       cpu_data_master_translator                 ./libraries/cpu_data_master_translator                
ensure_lib                                            ./libraries/cpu                                       
vmap       cpu                                        ./libraries/cpu                                       
ensure_lib                                            ./libraries/rst_controller                            
vmap       rst_controller                             ./libraries/rst_controller                            
ensure_lib                                            ./libraries/irq_mapper                                
vmap       irq_mapper                                 ./libraries/irq_mapper                                
ensure_lib                                            ./libraries/mm_interconnect_0                         
vmap       mm_interconnect_0                          ./libraries/mm_interconnect_0                         
ensure_lib                                            ./libraries/uart                                      
vmap       uart                                       ./libraries/uart                                      
ensure_lib                                            ./libraries/sysid                                     
vmap       sysid                                      ./libraries/sysid                                     
ensure_lib                                            ./libraries/sdram_ctrl                                
vmap       sdram_ctrl                                 ./libraries/sdram_ctrl                                
ensure_lib                                            ./libraries/onchip_memory                             
vmap       onchip_memory                              ./libraries/onchip_memory                             
ensure_lib                                            ./libraries/jtag_uart                                 
vmap       jtag_uart                                  ./libraries/jtag_uart                                 
ensure_lib                                            ./libraries/epcs                                      
vmap       epcs                                       ./libraries/epcs                                      
ensure_lib                                            ./libraries/cf_0                                      
vmap       cf_0                                       ./libraries/cf_0                                      

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"        -work altera_ver            
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                 -work lpm_ver               
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                    -work sgate_ver             
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                -work altera_mf_ver         
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"            -work altera_lnsim_ver      
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.v"     -work cycloneiv_hssi_ver    
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.v" -work cycloneiv_pcie_hip_ver
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.v"          -work cycloneiv_ver         
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"            -work sdram_ctrl_s1_rsp_width_adapter           
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"        -work sdram_ctrl_s1_rsp_width_adapter           
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"       -work sdram_ctrl_s1_rsp_width_adapter           
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"               -work rsp_mux_001                               
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_mux_001.sv"   -work rsp_mux_001                               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"               -work rsp_mux                                   
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_mux.sv"       -work rsp_mux                                   
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_demux_001.sv" -work rsp_demux_001                             
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_rsp_demux.sv"     -work rsp_demux                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"               -work cmd_mux_001                               
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_mux_001.sv"   -work cmd_mux_001                               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"               -work cmd_mux                                   
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_mux.sv"       -work cmd_mux                                   
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_demux_001.sv" -work cmd_demux_001                             
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_cmd_demux.sv"     -work cmd_demux                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"            -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"     -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"       -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"        -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"            -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"            -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"         -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"        -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"        -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"          -work sdram_ctrl_s1_burst_adapter               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"          -work cpu_data_master_limiter                   
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"           -work cpu_data_master_limiter                   
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                   -work cpu_data_master_limiter                   
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"          -work cpu_data_master_limiter                   
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_010.sv"    -work router_010                                
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_003.sv"    -work router_003                                
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_002.sv"    -work router_002                                
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router_001.sv"    -work router_001                                
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0_router.sv"        -work router                                    
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                   -work jtag_uart_avalon_jtag_slave_agent_rsp_fifo
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"              -work jtag_uart_avalon_jtag_slave_agent         
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"       -work jtag_uart_avalon_jtag_slave_agent         
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"             -work cpu_data_master_agent                     
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"         -work jtag_uart_avalon_jtag_slave_translator    
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"        -work cpu_data_master_translator                
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu_cpu.vo"                         -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu_cpu_debug_slave_sysclk.v"       -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu_cpu_debug_slave_tck.v"          -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu_cpu_debug_slave_wrapper.v"      -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu_cpu_mult_cell.v"                -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu_cpu_oci_test_bench.v"           -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu_cpu_test_bench.v"               -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                 -work rst_controller                            
  vlog  "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"               -work rst_controller                            
  vlog  "$QSYS_SIMDIR/submodules/kernel_irq_mapper.sv"                      -work irq_mapper                                
  vlog  "$QSYS_SIMDIR/submodules/kernel_mm_interconnect_0.v"                -work mm_interconnect_0                         
  vlog  "$QSYS_SIMDIR/submodules/kernel_uart.v"                             -work uart                                      
  vlog  "$QSYS_SIMDIR/submodules/kernel_sysid.vo"                           -work sysid                                     
  vlog  "$QSYS_SIMDIR/submodules/kernel_sdram_ctrl.v"                       -work sdram_ctrl                                
  vlog  "$QSYS_SIMDIR/submodules/kernel_onchip_memory.v"                    -work onchip_memory                             
  vlog  "$QSYS_SIMDIR/submodules/kernel_jtag_uart.v"                        -work jtag_uart                                 
  vlog  "$QSYS_SIMDIR/submodules/kernel_epcs.v"                             -work epcs                                      
  vlog  "$QSYS_SIMDIR/submodules/kernel_cpu.v"                              -work cpu                                       
  vlog  "$QSYS_SIMDIR/submodules/kernel_cf_0.v"                             -work cf_0                                      
  vlog  "$QSYS_SIMDIR/kernel.v"                                                                                             
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L sdram_ctrl_s1_rsp_width_adapter -L rsp_mux_001 -L rsp_mux -L rsp_demux_001 -L rsp_demux -L cmd_mux_001 -L cmd_mux -L cmd_demux_001 -L cmd_demux -L sdram_ctrl_s1_burst_adapter -L cpu_data_master_limiter -L router_010 -L router_003 -L router_002 -L router_001 -L router -L jtag_uart_avalon_jtag_slave_agent_rsp_fifo -L jtag_uart_avalon_jtag_slave_agent -L cpu_data_master_agent -L jtag_uart_avalon_jtag_slave_translator -L cpu_data_master_translator -L cpu -L rst_controller -L irq_mapper -L mm_interconnect_0 -L uart -L sysid -L sdram_ctrl -L onchip_memory -L jtag_uart -L epcs -L cf_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L sdram_ctrl_s1_rsp_width_adapter -L rsp_mux_001 -L rsp_mux -L rsp_demux_001 -L rsp_demux -L cmd_mux_001 -L cmd_mux -L cmd_demux_001 -L cmd_demux -L sdram_ctrl_s1_burst_adapter -L cpu_data_master_limiter -L router_010 -L router_003 -L router_002 -L router_001 -L router -L jtag_uart_avalon_jtag_slave_agent_rsp_fifo -L jtag_uart_avalon_jtag_slave_agent -L cpu_data_master_agent -L jtag_uart_avalon_jtag_slave_translator -L cpu_data_master_translator -L cpu -L rst_controller -L irq_mapper -L mm_interconnect_0 -L uart -L sysid -L sdram_ctrl -L onchip_memory -L jtag_uart -L epcs -L cf_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
