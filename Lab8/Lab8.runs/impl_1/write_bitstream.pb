
n
Command: %s
53*	vivadotcl2=
)write_bitstream -force JTEG_Test_File.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a75t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a75t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
�LUT equation term check: Used physical LUT pin 'A1' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3*A2)+(A3*(~A2)*(~A4))+((~A3))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1	Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_12default:default2default:default2�
 "�
Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I1Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A3' of cell %s (pin %s) is not included in the LUT equation: 'O6=(A6+~A6)*((A4))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Bdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1	Bdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_12default:default2default:default2�
 "�
Edbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1/I0Edbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1/I02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3*A2)+(A3*(~A2)*(~A4))+((~A3))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1	Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_12default:default2default:default2�
 "�
Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I0Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[10].CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[10]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[5]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[5]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[5]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[11].CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[11]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[6]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[6]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[6]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[12].CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[12]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[7]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[7]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[7]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[13].CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[13]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[8]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[8]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[8]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[5]-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[5]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[0]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[0]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[0]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[6]-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[6]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[1]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[1]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[1]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[7]-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[7]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[2]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[2]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[2]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[8]-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[8]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[3]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[3]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[3]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[9]-CMV300_1/hostIF/core0/core0/r0/ADDRARDADDR[9]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[4]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[4]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[4]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[10].CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[10]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[5]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[5]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[5]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[11].CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[11]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[6]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[6]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[6]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[12].CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[12]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[7]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[7]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[7]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "t
.CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[13].CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[13]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[8]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[8]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[8]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[5]-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[5]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[0]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[0]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[0]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[6]-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[6]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[1]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[1]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[1]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[7]-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[7]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[2]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[2]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[2]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[8]-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[8]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[3]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[3]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[3]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2�
 "r
-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[9]-CMV300_1/hostIF/core0/core0/r0/ADDRBWRADDR[9]2default:default2default:default2�
 "�
ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[4]ICMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg_n_0_[4]2default:default2default:default2�
 "�
DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[4]	DCMV300_1/hostIF/core0/core0/l287f1d33aab074157010cd04cb03cd77_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2z
 "d
&CMV300_1/hostIF/core0/core0/r0/ENBWREN&CMV300_1/hostIF/core0/core0/r0/ENBWREN2default:default2default:default2�
 "�
=CMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b7878=CMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b78782default:default2default:default2�
 "�
ACMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b7878_reg	ACMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b7878_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2j
 "T
CMV300_1/hostIF/core0/core0/r0	CMV300_1/hostIF/core0/core0/r02default:default2default:default2|
 "f
'CMV300_1/hostIF/core0/core0/r0/WEBWE[2]'CMV300_1/hostIF/core0/core0/r0/WEBWE[2]2default:default2default:default2�
 "�
=CMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b7878=CMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b78782default:default2default:default2�
 "�
ACMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b7878_reg	ACMV300_1/hostIF/core0/core0/l2fd7e1a4c1a262bf4062db5f061b7878_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�%
`No routable loads: 23 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�#
 "�
Adbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/TMSAdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/TMS2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
]dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg[2:0]Xdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg2default:default"�
\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]2default:default"�
`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]2default:default"�
wCMV300_1/hostIF/core0/core0/a0/cb0/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fbwCMV300_1/hostIF/core0/core0/a0/cb0/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb2default:default"�
vCMV300_1/hostIF/core0/core0/a0/cb0/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_ivCMV300_1/hostIF/core0/core0/a0/cb0/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i2default:default"�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture2default:default"�
Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck[0]Ldbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck2default:default"�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[0]�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[0]2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2]2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow2default:..."/
(the first 15 of 21 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 25 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
f
%Bitstream compression saved %s bits.
26*	bitstream2
169170562default:defaultZ40-26h px� 
e
Writing bitstream %s...
11*	bitstream2(
./JTEG_Test_File.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
252default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:202default:default2
00:00:162default:default2
3328.8872default:default2
448.1602default:defaultZ17-268h px� 


End Record