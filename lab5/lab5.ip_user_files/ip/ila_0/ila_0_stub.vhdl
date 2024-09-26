-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Sep 26 15:57:27 2024
-- Host        : ECEB-4022-01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub u:/Desktop/ECE437/lab5/lab5.gen/sources_1/ip/ila_0/ila_0_stub.vhdl
-- Design      : ila_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end ila_0;

architecture stub of ila_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[27:0],probe1[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2022.2";
begin
end;
