# Copyright 2024 Tampere University 
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51
#
# Abdesattar Kalache <abdesattar.kalache@tuni.fi>

#############
# Sys Clock #
#############

# 125 MHz input clock
set SYS_TCK 8
create_clock -period $SYS_TCK -name sys_clk [get_ports sys_clk_p]

# SoC clock is generated by clock wizard and its constraints
set SOC_TCK 20.0
set soc_clk [get_clocks -of_objects [get_pins i_clkwiz/clk_50]]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets soc_clk]

#######
# MIG #
#######

# Dram axi clock : 333 MHz (defined by MIG constraints)
set MIG_TCK 3

# False-path incoming reset
set MIG_RST_I [get_pin i_dram_wrapper/i_dram/c0_ddr4_aresetn]
set_false_path -hold -setup -through $MIG_RST_I


# Do not time asynchrous IO paths
set_false_path -from [get_ports sys_reset];
set_false_path -from [get_ports sys_resetn];
set_false_path -from [get_ports jtag_trst_ni];
set_false_path -from [get_ports uart_rx_i];
set_false_path -to   [get_ports uart_tx_o];



# Constrain outgoing reset
set MIG_RST_O [get_pins i_dram_wrapper/i_dram/c0_ddr4_ui_clk_sync_rst]
set_false_path -hold -through $MIG_RST_O
set_max_delay -through $MIG_RST_O $MIG_TCK


# Limit delay across DRAM CDC (hold already false-pathed)
# tclint-disable line-length
set_max_delay -datapath_only \
    -from [get_pins i_dram_wrapper/gen_cdc.i_axi_cdc_mig/i_axi_cdc_*/i_cdc_fifo_gray_*/*reg*/C] \
    -to [get_pins i_dram_wrapper/gen_cdc.i_axi_cdc_mig/i_axi_cdc_*/i_cdc_fifo_gray_*/*i_sync/reg*/D] $MIG_TCK
set_max_delay -datapath_only \
    -from [get_pins i_dram_wrapper/gen_cdc.i_axi_cdc_mig/i_axi_cdc_*/i_cdc_fifo_gray_*/*reg*/C] \
    -to [get_pins i_dram_wrapper/gen_cdc.i_axi_cdc_mig/i_axi_cdc_*/i_cdc_fifo_gray_*/i_spill_register/spill_register_flushable_i/*reg*/D] $MIG_TCK
# tclint-enable line-length

###############
# Assign Pins #
###############

# tclint-disable line-length, spacing

set_property -dict { PACKAGE_PIN AW25   IOSTANDARD LVCMOS18 } [get_ports uart_rx_i ]; # "USB UART Rx"
set_property -dict { PACKAGE_PIN BB21   IOSTANDARD LVCMOS18 } [get_ports uart_tx_o ]; # "USB UART Tx"

# Jtag GPIOs goes to the FMC XM105 where the debug cable is connected (example Digilent HS2)
set_property -dict {PACKAGE_PIN A23 IOSTANDARD LVCMOS18}  [get_ports jtag_gnd_o] ;# A23 - C15 (FMCP_HSPC_LA10_N) - J1.04 - GND


set_property PACKAGE_PIN B23     [get_ports jtag_vdd_o] ;# B23 - C14 (FMCP_HSPC_LA10_P) - J1.02 - VDD
set_property -dict {PACKAGE_PIN B23 IOSTANDARD LVCMOS18}  [get_ports jtag_vdd_o] ;# B23 - C14 (FMCP_HSPC_LA10_P) - J1.02 - VDD


set_property -dict {PACKAGE_PIN AU16 IOSTANDARD LVCMOS18} [get_ports jtag_tck_i  ]; # "PMOD0 - PIN4"
set_property -dict {PACKAGE_PIN AV16 IOSTANDARD LVCMOS18} [get_ports jtag_tdi_i   ]; # "PMOD0 - PIN2"
set_property -dict {PACKAGE_PIN AT15 IOSTANDARD LVCMOS18} [get_ports jtag_tdo_o   ]; # "PMOD0 - PIN6"
set_property -dict {PACKAGE_PIN AT16 IOSTANDARD LVCMOS18} [get_ports jtag_tms_i  ]; # "PMOD0 - PIN8"
set_property -dict {PACKAGE_PIN BB24 IOSTANDARD LVCMOS18} [get_ports jtag_trst_ni ]; # "PUSH_BTN SW10 - NORTH"

# Clock diff @ 125MHz
set_property -dict {PACKAGE_PIN AY24 IOSTANDARD LVDS} [get_ports sys_clk_p]; # "CLK_125MHZ_P"
set_property -dict {PACKAGE_PIN AY23 IOSTANDARD LVDS} [get_ports sys_clk_n]; # "CLK_125MHZ_N"


set_property -dict {PACKAGE_PIN BF22 IOSTANDARD LVCMOS12} [get_ports boot_mode_i[0]]; # SW 9
set_property -dict {PACKAGE_PIN BE23 IOSTANDARD LVCMOS12} [get_ports boot_mode_i[1]]; # SW 6


# Active high reset
set_property -dict {PACKAGE_PIN BE22 IOSTANDARD LVCMOS12} [get_ports sys_resetn]; # SW 17

## SCALAR SIGNALS
set_property -dict {PACKAGE_PIN AY14 IOSTANDARD LVCMOS18} [get_ports pmod_o ]; # "PMOD0 - PIN1"


# tclint-enable line-length, spacing



