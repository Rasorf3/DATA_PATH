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
-- Generated on "11/17/2023 14:56:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter_32
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_32_vhd_vec_tst IS
END counter_32_vhd_vec_tst;
ARCHITECTURE counter_32_arch OF counter_32_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL EN : STD_LOGIC;
SIGNAL numero : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
COMPONENT counter_32
	PORT (
	CLK : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	numero : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counter_32
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	EN => EN,
	numero => numero,
	RST => RST
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
WAIT;
END PROCESS t_prcs_EN;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;
END counter_32_arch;
