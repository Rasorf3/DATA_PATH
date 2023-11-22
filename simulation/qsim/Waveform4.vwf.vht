-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/21/2023 17:32:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Shifter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Shifter_vhd_vec_tst IS
END Shifter_vhd_vec_tst;
ARCHITECTURE Shifter_arch OF Shifter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL D_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Shifter
	PORT (
	D_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	D_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Shifter
	PORT MAP (
-- list connections between master ports and signals
	D_IN => D_IN,
	D_OUT => D_OUT,
	S => S
	);
-- D_IN[7]
t_prcs_D_IN_7: PROCESS
BEGIN
	D_IN(7) <= '1';
WAIT;
END PROCESS t_prcs_D_IN_7;
-- D_IN[6]
t_prcs_D_IN_6: PROCESS
BEGIN
	D_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_D_IN_6;
-- D_IN[5]
t_prcs_D_IN_5: PROCESS
BEGIN
	D_IN(5) <= '1';
WAIT;
END PROCESS t_prcs_D_IN_5;
-- D_IN[4]
t_prcs_D_IN_4: PROCESS
BEGIN
	D_IN(4) <= '1';
WAIT;
END PROCESS t_prcs_D_IN_4;
-- D_IN[3]
t_prcs_D_IN_3: PROCESS
BEGIN
	D_IN(3) <= '1';
WAIT;
END PROCESS t_prcs_D_IN_3;
-- D_IN[2]
t_prcs_D_IN_2: PROCESS
BEGIN
	D_IN(2) <= '1';
WAIT;
END PROCESS t_prcs_D_IN_2;
-- D_IN[1]
t_prcs_D_IN_1: PROCESS
BEGIN
	D_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_D_IN_1;
-- D_IN[0]
t_prcs_D_IN_0: PROCESS
BEGIN
	D_IN(0) <= '1';
WAIT;
END PROCESS t_prcs_D_IN_0;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '1';
	WAIT FOR 780000 ps;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '1';
	WAIT FOR 400000 ps;
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '0';
	WAIT FOR 400000 ps;
	S(0) <= '1';
	WAIT FOR 380000 ps;
	S(0) <= '0';
WAIT;
END PROCESS t_prcs_S_0;
END Shifter_arch;
