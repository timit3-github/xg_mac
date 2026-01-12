# 200 MHz - System Clock
set_property -dict { LOC T24 IOSTANDARD DIFF_SSTL12 }            [ get_ports sys_clk_p ]
set_property -dict { LOC U24 IOSTANDARD DIFF_SSTL12 }            [ get_ports sys_clk_n ]
#create_clock -period 5.000 -name sys_clk -waveform {0.000 2.500} [ get_ports sys_clk_p ]

# 156.25 MHz QSFP Ref Clock
set_property -dict { LOC V7 } [ get_ports gt_ref_clk_p ]
set_property -dict { LOC V6 } [ get_ports gt_ref_clk_n ]
#create_clock -period 6.4 -name gt_ref_clk [ get_ports gt_ref_clk_p ]

# 100.00 MHz PCIE Ref Clock
#set_property PACKAGE_PIN AB7 [get_ports {pcie_clk_p}]
#set_property PACKAGE_PIN AB6 [get_ports {pcie_clk_n}]
##create_clock -period 10.000 -name pcie_clk -waveform {0.000 5.000} [get_ports {pcie_clk_p}]

# QSFP28
set_property -dict { LOC AA5 } [ get_ports gt_txp_out_0 ]
set_property -dict { LOC AA4 } [ get_ports gt_txn_out_0 ]
#set_property -dict { LOC W5  } [ get_ports gt_txp_out_1 ]
#set_property -dict { LOC W4  } [ get_ports gt_txn_out_1 ]
#set_property -dict { LOC U5  } [ get_ports gt_txp_out_2 ]
#set_property -dict { LOC U4  } [ get_ports gt_txn_out_2 ]
#set_property -dict { LOC R5  } [ get_ports gt_txp_out_3 ]
#set_property -dict { LOC R4  } [ get_ports gt_txn_out_3 ]
set_property -dict { LOC Y2  } [ get_ports gt_rxp_in_0 ]
set_property -dict { LOC Y1  } [ get_ports gt_rxn_in_0 ]
#set_property -dict { LOC V2  } [ get_ports gt_rxp_in_1 ]
#set_property -dict { LOC V1  } [ get_ports gt_rxn_in_1 ]
#set_property -dict { LOC T2  } [ get_ports gt_rxp_in_2 ]
#set_property -dict { LOC T1  } [ get_ports gt_rxn_in_2 ]
#set_property -dict { LOC P2  } [ get_ports gt_rxp_in_3 ]
#set_property -dict { LOC P1  } [ get_ports gt_rxn_in_3 ]

# Onboard LED
#set_property -dict { PACKAGE_PIN H9  IOSTANDARD LVCMOS33} [get_ports led[0]]
#set_property -dict { PACKAGE_PIN J9  IOSTANDARD LVCMOS33} [get_ports led[1]]
#set_property -dict { PACKAGE_PIN G11 IOSTANDARD LVCMOS33} [get_ports led[2]]
#set_property -dict { PACKAGE_PIN H11 IOSTANDARD LVCMOS33} [get_ports led[3]]

# Onboard Button
#set_property -dict { PACKAGE_PIN K9  IOSTANDARD} LVCMOS33 [get_ports key_n[0]]
#set_property -dict { PACKAGE_PIN K10 IOSTANDARD} LVCMOS33 [get_ports key_n[1]]
#set_property -dict { PACKAGE_PIN J10 IOSTANDARD} LVCMOS33 [get_ports key_n[2]]
#set_property -dict { PACKAGE_PIN J11 IOSTANDARD} LVCMOS33 [get_ports key_n[3]]
