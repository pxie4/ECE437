
�
Command: %s
1870*	planAhead2�
xread_checkpoint -auto_incremental -incremental U:/Desktop/ECE437/Midterm/Midterm.srcs/utils_1/imports/synth_1/okHost.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2]
IU:/Desktop/ECE437/Midterm/Midterm.srcs/utils_1/imports/synth_1/okHost.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
{
Command: %s
53*	vivadotcl2J
6synth_design -top JTEG_Test_File -part xc7a75tfgg484-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a75t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a75t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a75tfgg484-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
45162default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1861.578 ; gain = 409.391
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2"
JTEG_Test_File2default:default2
 2default:default2i
SU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/JTEG_Test_File.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
I2C_Transmit2default:default2
 2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/I2C_Transmit.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
ClockGenerator2default:default2
 2default:default2i
SU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/ClockGenerator.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFGDS2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
718342default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFGDS2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
718342default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
ClockGenerator2default:default2
 2default:default2
02default:default2
12default:default2i
SU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/ClockGenerator.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
I2C_Read2default:default2
 2default:default2U
?U:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/new/I2C_Read.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
I2C_Read2default:default2
 2default:default2
02default:default2
12default:default2U
?U:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/new/I2C_Read.v2default:default2
32default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2"
data_state_ila2default:default2
322default:default2
I2C_Read2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/I2C_Transmit.v2default:default2
922default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
okHost2default:default2
 2default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
102default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IOBUF2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
759022default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IOBUF2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
759022default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
FDRE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
387082default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDRE2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
387082default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFG2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
718202default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFG2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
718202default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MMCME2_BASE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
799722default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKIN1_PERIOD bound to: 9.920000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKOUT0_DIVIDE_F bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKOUT0_PHASE bound to: 54.000000 - type: double 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MMCME2_BASE2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
799722default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	CLKFBOUTB2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT0B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT12default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT1B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT22default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT2B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT32default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT3B2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT42default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT52default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CLKOUT62default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
PWRDWN2default:default2
MMCME2_BASE2default:default2
mmcm02default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mmcm02default:default2
MMCME2_BASE2default:default2
182default:default2
62default:default2f
PU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Vivado-2021/okLibrary.v2default:default2
532default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
GND2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
396872default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GND2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
396872default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
VCC2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
1353352default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VCC2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
1353352default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT62default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT62default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized22default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized32default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized42default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT52default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized52default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT42default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized62default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized62default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized72default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized72default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized82default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized82default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT6__parameterized92default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT6__parameterized92default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized102default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized102default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized22default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized112default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized112default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized32default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized42default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized122default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized122default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized132default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized132default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT22default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT2__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT2__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized22default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized142default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized142default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized152default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized152default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized162default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized162default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized172default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized172default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized32default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized52default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized182default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized182default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized192default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized192default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized202default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized202default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized212default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized212default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized62default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized62default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized42default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized222default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized222default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized72default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized72default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized232default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized232default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized82default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized82default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized242default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized242default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized252default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized252default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT5__parameterized92default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT5__parameterized92default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized262default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized262default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized272default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized272default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized282default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized282default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized292default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized292default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized302default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized302default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
FDCE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
384922default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDCE2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
384922default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT5__parameterized102default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT5__parameterized102default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized312default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized312default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized322default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized322default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT32default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT2__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT2__parameterized12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT5__parameterized112default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT5__parameterized112default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT5__parameterized122default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT5__parameterized122default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized332default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized332default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT3__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT3__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT3__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT3__parameterized12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT3__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT3__parameterized22default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT5__parameterized132default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT5__parameterized132default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized342default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized342default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LUT12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
789712default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LUT12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
789712default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
FDSE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
388442default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDSE2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
388442default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CARRY42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
14972default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CARRY42default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
14972default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT3__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT3__parameterized32default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT2__parameterized22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT2__parameterized22default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT2__parameterized32default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT2__parameterized32default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790052default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT3__parameterized42default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT3__parameterized42default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790432default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized52default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized52default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT5__parameterized142default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT5__parameterized142default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized352default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized352default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT1__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
789712default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT1__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
789712default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
FDRE__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
387082default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FDRE__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
387082default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
FDRE__parameterized12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
387082default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FDRE__parameterized12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
387082default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
FDSE__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
388442default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
FDSE__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
388442default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
RAMB18E12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
1284982default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAMB18E12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
1284982default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized362default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized362default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized372default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized372default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized382default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized382default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized62default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized62default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized72default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized72default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
LUT4__parameterized82default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
LUT4__parameterized82default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
790852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
LUT6__parameterized392default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6157h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61572default:default2
1002default:defaultZ17-14h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized392default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized402default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized412default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
LUT6__parameterized422default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
791812default:default8@Z8-6155h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61552default:default2
1002default:defaultZ17-14h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dna2default:default2
okHost2default:default2
hostIF2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/I2C_Transmit.v2default:default2
1662default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	dna_valid2default:default2
okHost2default:default2
hostIF2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/I2C_Transmit.v2default:default2
1662default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
hostIF2default:default2
okHost2default:default2
92default:default2
72default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/I2C_Transmit.v2default:default2
1662default:default8@Z8-7023h px� 
V
%s
*synth2>
*	Parameter N bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2i
SU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/JTEG_Test_File.v2default:default2
692default:default8@Z8-4446h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
	I2C_Test12default:default2i
SU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/JTEG_Test_File.v2default:default2
352default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2 
ila_sample122default:default2i
SU:/Desktop/ECE437/Midterm/Midterm.srcs/sources_1/imports/Downloads/JTEG_Test_File.v2default:default2
692default:default8@Z8-6071h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[112]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[111]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[110]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[109]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[108]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[107]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[106]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[105]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[104]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[103]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[102]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[101]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	okHE[100]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[99]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[98]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[97]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[96]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[95]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[94]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[93]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[92]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[91]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[90]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[89]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[88]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[87]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[86]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[85]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[84]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[83]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[82]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[81]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[80]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[79]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[78]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[77]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[76]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[75]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[74]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[73]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[72]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[71]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[70]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[69]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[68]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[67]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[66]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[65]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[64]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[63]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[62]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[61]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[60]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[59]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[58]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[57]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[56]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[55]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[54]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[53]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[52]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[51]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[50]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[49]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[48]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[47]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[46]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[45]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[43]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[42]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[31]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[30]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[29]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[28]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[27]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[26]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[25]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[24]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[23]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[22]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[21]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[20]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[19]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[18]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[17]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[16]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[15]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[14]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[13]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[12]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[11]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[10]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[9]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[8]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[7]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[6]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[5]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[4]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[3]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
okHE[2]2default:default2
	okWireOut2default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1989.777 ; gain = 537.590
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1989.777 ; gain = 537.590
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1989.777 ; gain = 537.590
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0502default:default2
1989.7772default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1472default:defaultZ29-17h px� 
�
�The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist20
I2C_Test1/hostIF/hi_clk_bufg2default:defaultZ29-432h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2i
Su:/Desktop/ECE437/Midterm/Midterm.gen/sources_1/ip/ila_0/ila_0/ila_0_in_context.xdc2default:default2"
ila_sample12	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2i
Su:/Desktop/ECE437/Midterm/Midterm.gen/sources_1/ip/ila_0/ila_0/ila_0_in_context.xdc2default:default2"
ila_sample12	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default8Z20-179h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
722default:default8@Z18-6211h px�
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
732default:default8@Z18-6211h px�
�
Deriving generated clocks
2*timing2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
972default:default8@Z38-2h px�
�
No ports matched '%s'.
584*	planAhead2
reset2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1022default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
reset2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1032default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
reset2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1042default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300_LVDS_CLK_P2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1082default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300-LVDS_CLK_P2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1092default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300_LVDS_CLK_N2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1112default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300_LVDS_CLK_N2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1122default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2!
CVM300_CLK_IN2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1152default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2!
CVM300_CLK_IN2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1162default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2"
CVM300_CLK_OUT2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1192default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2"
CVM300_CLK_OUT2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1202default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2$
CVM300_SYS_RES_N2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1242default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2$
CVM300_SYS_RES_N2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1252default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2&
CVM300_Enable_LVDS2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1272default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2&
CVM300_Enable_LVDS2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1282default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2!
CVM300_SPI_EN2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1312default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2!
CVM300_SPI_EN2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1322default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2!
CVM300_SPI_IN2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1342default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2!
CVM300_SPI_IN2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1352default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2"
CVM300_SPI_OUT2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1372default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2"
CVM300_SPI_OUT2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1382default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2"
CVM300_SPI_CLK2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1402default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2"
CVM300_SPI_CLK2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1412default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2$
CVM300_FRAME_REQ2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1522default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2$
CVM300_FRAME_REQ2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1532default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[0]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1982default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[0]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
1992default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[1]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2012default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[1]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2022default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[2]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2042default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[2]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2052default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[3]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2072default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[3]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2082default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[4]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2102default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[4]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2112default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[5]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2132default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[5]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2142default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[6]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2162default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[6]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2172default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[7]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2192default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[7]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2202default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[8]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2222default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[8]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2232default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[9]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2252default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
CVM300_D[9]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2262default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300_Line_valid2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2292default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300_Line_valid2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2302default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300_Data_valid2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2322default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2%
CVM300_Data_valid2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2332default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[0]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2392default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[0]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2402default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[1]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2422default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[1]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2432default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[2]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2452default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[2]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2462default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[3]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2482default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[3]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2492default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[4]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2512default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[4]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2522default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[5]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2542default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[5]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2552default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[6]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2572default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[6]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2582default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[7]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2602default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_33[7]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2612default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
USER_SRCC_P2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2642default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
USER_SRCC_P2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2652default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
USER_SRCC_N2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2672default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
USER_SRCC_N2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2682default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[0]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2732default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[0]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2742default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[1]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2762default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[1]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2772default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[2]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2792default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[2]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2802default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[3]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2822default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[3]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2832default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[4]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2852default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[4]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2862default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[5]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2882default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[5]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2892default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[6]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2912default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[6]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2922default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[7]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2942default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2

USER_25[7]2default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
2952default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A12default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3002default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A12default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3012default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A22default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3032default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A22default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3042default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A32default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3062default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A32default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3072default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A42default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3092default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A42default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3102default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A72default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3122default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A72default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3132default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A82default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3152default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A82default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3162default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A92default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3182default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A92default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3192default:default8@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
PMOD_A102default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3212default:default8@Z12-584h px�
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2!
Vivado 12-5842default:default2
1002default:default2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default2
3212default:default8@Z17-14h px�
�
Finished Parsing XDC File [%s]
178*designutils2g
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2e
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default24
 .Xil/JTEG_Test_File_propImpl.xdc2default:defaultZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2e
QU:/Desktop/ECE437/Midterm/Midterm.srcs/constrs_1/imports/Downloads/xem7310_v1.xdc2default:default24
 .Xil/JTEG_Test_File_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2S
=U:/Desktop/ECE437/Midterm/Midterm.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2S
=U:/Desktop/ECE437/Midterm/Midterm.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2070.5352default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 98 instances were transformed.
  IBUFG => IBUF: 1 instance 
  IBUFGDS => IBUFDS: 1 instance 
  IOBUF => IOBUF (IBUF, OBUFT): 33 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 50 instances
  MMCME2_BASE => MMCME2_ADV: 1 instance 
  RAM128X1S => RAM128X1S (MUXF7, RAMS64E(x2)): 8 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 4 instances
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0312default:default2
2070.5352default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:17 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a75tfgg484-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:17 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:17 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 180 (col length:80)
BRAMs: 210 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%l008c72ad3b3ec61be52cde84a395c4fa_reg2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%l317e0a6720f17cacca076a392154f6ab_reg2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%la85eaf42c58af45585f858cdefb86492_reg2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[0]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[10]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[11]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[12]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[13]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[14]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[15]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[16]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[17]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[18]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[19]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[1]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[20]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[21]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[22]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[23]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[24]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[25]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[26]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[27]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[28]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[29]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[2]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[30]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[31]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[3]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[4]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[5]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[6]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[7]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[8]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(lbb5e4c7a1ee012efa72f8a060e42e0e9_reg[9]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[0]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[10]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[11]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[12]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[13]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[14]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[15]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[16]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[17]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[18]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[19]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[1]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[20]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[21]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[22]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[23]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[24]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[25]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[26]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[27]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[28]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[29]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[2]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[30]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)ld53bc82cafe43594f651cb14d090c4f9_reg[31]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[3]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[4]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[5]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[6]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[7]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[8]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(ld53bc82cafe43594f651cb14d090c4f9_reg[9]2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%lf38b0951701b1c1d5bc7a746e996b3c6_reg2default:default2
okCore2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
hostIF/regctrlout12default:default2 
I2C_Transmit2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[10]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[11]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[12]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[13]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[14]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[15]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[16]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[17]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[18]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[19]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[20]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[21]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[22]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[23]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[24]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[25]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[26]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[27]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[28]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[29]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[30]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
ep_datahold_reg[31]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[7]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[8]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_datahold_reg[9]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[10]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[11]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[12]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[13]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[14]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
ep_dataout_reg[15]2default:default2
okWireIn__42default:defaultZ8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:24 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:29 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:29 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:29 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |ila_0         |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|1     |ila         |     1|
2default:defaulth px� 
I
%s*synth21
|2     |BUFG        |     4|
2default:defaulth px� 
I
%s*synth21
|3     |CARRY4      |   176|
2default:defaulth px� 
I
%s*synth21
|4     |DNA_PORT    |     1|
2default:defaulth px� 
I
%s*synth21
|5     |LUT1        |   295|
2default:defaulth px� 
I
%s*synth21
|6     |LUT2        |   112|
2default:defaulth px� 
I
%s*synth21
|7     |LUT3        |    56|
2default:defaulth px� 
I
%s*synth21
|8     |LUT4        |   352|
2default:defaulth px� 
I
%s*synth21
|9     |LUT5        |   175|
2default:defaulth px� 
I
%s*synth21
|10    |LUT6        |   515|
2default:defaulth px� 
I
%s*synth21
|12    |MMCME2_BASE |     1|
2default:defaulth px� 
I
%s*synth21
|13    |RAM128X1S   |     8|
2default:defaulth px� 
I
%s*synth21
|14    |RAM32M      |     4|
2default:defaulth px� 
I
%s*synth21
|15    |RAMB18E1    |     2|
2default:defaulth px� 
I
%s*synth21
|17    |RAMB36E1    |     1|
2default:defaulth px� 
I
%s*synth21
|18    |FDCE        |   134|
2default:defaulth px� 
I
%s*synth21
|19    |FDPE        |    27|
2default:defaulth px� 
I
%s*synth21
|20    |FDRE        |   952|
2default:defaulth px� 
I
%s*synth21
|21    |FDSE        |    24|
2default:defaulth px� 
I
%s*synth21
|22    |IBUF        |     4|
2default:defaulth px� 
I
%s*synth21
|23    |IBUFG       |     1|
2default:defaulth px� 
I
%s*synth21
|24    |IBUFGDS     |     1|
2default:defaulth px� 
I
%s*synth21
|25    |IOBUF       |    34|
2default:defaulth px� 
I
%s*synth21
|26    |OBUF        |     5|
2default:defaulth px� 
I
%s*synth21
|27    |OBUFT       |     7|
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 939 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:31 . Memory (MB): peak = 2070.535 ; gain = 537.590
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 2070.535 ; gain = 618.348
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0372default:default2
2070.5352default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2782default:defaultZ29-17h px� 
�
�The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist20
I2C_Test1/hostIF/hi_clk_bufg2default:defaultZ29-432h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2070.5352default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 99 instances were transformed.
  IBUFG => IBUF: 1 instance 
  IBUFGDS => IBUFDS: 1 instance 
  IOBUF => IOBUF (IBUF, OBUFT): 34 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 50 instances
  MMCME2_BASE => MMCME2_ADV: 1 instance 
  RAM128X1S => RAM128X1S (MUXF7, RAMS64E(x2)): 8 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 4 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
efdef9c42default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2332default:default2
3242default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:302default:default2
00:00:392default:default2
2070.5352default:default2
1003.7892default:defaultZ17-268h px� 
�
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2U
AU:/Desktop/ECE437/Midterm/Midterm.runs/synth_1/JTEG_Test_File.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
rExecuting : report_utilization -file JTEG_Test_File_utilization_synth.rpt -pb JTEG_Test_File_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Oct 10 13:23:47 20242default:defaultZ17-206h px� 


End Record