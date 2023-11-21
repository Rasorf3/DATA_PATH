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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/21/2023 10:22:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Shifter IS
    PORT (
	S : IN std_logic_vector(2 DOWNTO 0);
	D_IN : IN std_logic_vector(31 DOWNTO 0);
	D_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END Shifter;

-- Design Ports Information
-- D_OUT[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[4]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[6]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[7]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[8]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[9]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[10]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[11]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[12]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[13]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[14]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[15]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[16]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[17]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[18]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[19]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[20]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[21]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[23]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[24]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[25]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[26]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[27]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[28]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[29]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[31]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[7]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[8]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[9]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[10]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[11]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[12]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[13]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[14]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[15]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[16]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[17]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[18]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[21]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[22]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[23]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[24]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[25]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[26]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[27]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[28]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[30]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[31]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Shifter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_D_IN : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \D_OUT[0]~output_o\ : std_logic;
SIGNAL \D_OUT[1]~output_o\ : std_logic;
SIGNAL \D_OUT[2]~output_o\ : std_logic;
SIGNAL \D_OUT[3]~output_o\ : std_logic;
SIGNAL \D_OUT[4]~output_o\ : std_logic;
SIGNAL \D_OUT[5]~output_o\ : std_logic;
SIGNAL \D_OUT[6]~output_o\ : std_logic;
SIGNAL \D_OUT[7]~output_o\ : std_logic;
SIGNAL \D_OUT[8]~output_o\ : std_logic;
SIGNAL \D_OUT[9]~output_o\ : std_logic;
SIGNAL \D_OUT[10]~output_o\ : std_logic;
SIGNAL \D_OUT[11]~output_o\ : std_logic;
SIGNAL \D_OUT[12]~output_o\ : std_logic;
SIGNAL \D_OUT[13]~output_o\ : std_logic;
SIGNAL \D_OUT[14]~output_o\ : std_logic;
SIGNAL \D_OUT[15]~output_o\ : std_logic;
SIGNAL \D_OUT[16]~output_o\ : std_logic;
SIGNAL \D_OUT[17]~output_o\ : std_logic;
SIGNAL \D_OUT[18]~output_o\ : std_logic;
SIGNAL \D_OUT[19]~output_o\ : std_logic;
SIGNAL \D_OUT[20]~output_o\ : std_logic;
SIGNAL \D_OUT[21]~output_o\ : std_logic;
SIGNAL \D_OUT[22]~output_o\ : std_logic;
SIGNAL \D_OUT[23]~output_o\ : std_logic;
SIGNAL \D_OUT[24]~output_o\ : std_logic;
SIGNAL \D_OUT[25]~output_o\ : std_logic;
SIGNAL \D_OUT[26]~output_o\ : std_logic;
SIGNAL \D_OUT[27]~output_o\ : std_logic;
SIGNAL \D_OUT[28]~output_o\ : std_logic;
SIGNAL \D_OUT[29]~output_o\ : std_logic;
SIGNAL \D_OUT[30]~output_o\ : std_logic;
SIGNAL \D_OUT[31]~output_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \D_IN[0]~input_o\ : std_logic;
SIGNAL \D_out_aux~0_combout\ : std_logic;
SIGNAL \D_IN[1]~input_o\ : std_logic;
SIGNAL \D_out_aux~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \D_IN[2]~input_o\ : std_logic;
SIGNAL \D_out_aux~2_combout\ : std_logic;
SIGNAL \D_out_aux~3_combout\ : std_logic;
SIGNAL \D_IN[3]~input_o\ : std_logic;
SIGNAL \D_out_aux~4_combout\ : std_logic;
SIGNAL \D_out_aux~5_combout\ : std_logic;
SIGNAL \D_IN[4]~input_o\ : std_logic;
SIGNAL \D_out_aux~6_combout\ : std_logic;
SIGNAL \D_out_aux~7_combout\ : std_logic;
SIGNAL \D_IN[5]~input_o\ : std_logic;
SIGNAL \D_out_aux~8_combout\ : std_logic;
SIGNAL \D_out_aux~9_combout\ : std_logic;
SIGNAL \D_IN[6]~input_o\ : std_logic;
SIGNAL \D_out_aux~10_combout\ : std_logic;
SIGNAL \D_out_aux~11_combout\ : std_logic;
SIGNAL \D_IN[7]~input_o\ : std_logic;
SIGNAL \D_out_aux~12_combout\ : std_logic;
SIGNAL \D_out_aux~13_combout\ : std_logic;
SIGNAL \D_IN[8]~input_o\ : std_logic;
SIGNAL \D_out_aux~14_combout\ : std_logic;
SIGNAL \D_out_aux~15_combout\ : std_logic;
SIGNAL \D_IN[9]~input_o\ : std_logic;
SIGNAL \D_out_aux~16_combout\ : std_logic;
SIGNAL \D_out_aux~17_combout\ : std_logic;
SIGNAL \D_IN[10]~input_o\ : std_logic;
SIGNAL \D_out_aux~18_combout\ : std_logic;
SIGNAL \D_out_aux~19_combout\ : std_logic;
SIGNAL \D_IN[11]~input_o\ : std_logic;
SIGNAL \D_out_aux~20_combout\ : std_logic;
SIGNAL \D_out_aux~21_combout\ : std_logic;
SIGNAL \D_IN[12]~input_o\ : std_logic;
SIGNAL \D_out_aux~22_combout\ : std_logic;
SIGNAL \D_out_aux~23_combout\ : std_logic;
SIGNAL \D_IN[13]~input_o\ : std_logic;
SIGNAL \D_out_aux~24_combout\ : std_logic;
SIGNAL \D_out_aux~25_combout\ : std_logic;
SIGNAL \D_IN[14]~input_o\ : std_logic;
SIGNAL \D_out_aux~26_combout\ : std_logic;
SIGNAL \D_out_aux~27_combout\ : std_logic;
SIGNAL \D_IN[15]~input_o\ : std_logic;
SIGNAL \D_out_aux~28_combout\ : std_logic;
SIGNAL \D_out_aux~29_combout\ : std_logic;
SIGNAL \D_IN[16]~input_o\ : std_logic;
SIGNAL \D_out_aux~30_combout\ : std_logic;
SIGNAL \D_out_aux~31_combout\ : std_logic;
SIGNAL \D_IN[17]~input_o\ : std_logic;
SIGNAL \D_out_aux~32_combout\ : std_logic;
SIGNAL \D_out_aux~33_combout\ : std_logic;
SIGNAL \D_IN[18]~input_o\ : std_logic;
SIGNAL \D_out_aux~34_combout\ : std_logic;
SIGNAL \D_out_aux~35_combout\ : std_logic;
SIGNAL \D_IN[19]~input_o\ : std_logic;
SIGNAL \D_out_aux~36_combout\ : std_logic;
SIGNAL \D_out_aux~37_combout\ : std_logic;
SIGNAL \D_IN[20]~input_o\ : std_logic;
SIGNAL \D_out_aux~38_combout\ : std_logic;
SIGNAL \D_out_aux~39_combout\ : std_logic;
SIGNAL \D_IN[21]~input_o\ : std_logic;
SIGNAL \D_out_aux~40_combout\ : std_logic;
SIGNAL \D_out_aux~41_combout\ : std_logic;
SIGNAL \D_IN[22]~input_o\ : std_logic;
SIGNAL \D_out_aux~42_combout\ : std_logic;
SIGNAL \D_out_aux~43_combout\ : std_logic;
SIGNAL \D_IN[23]~input_o\ : std_logic;
SIGNAL \D_out_aux~44_combout\ : std_logic;
SIGNAL \D_out_aux~45_combout\ : std_logic;
SIGNAL \D_IN[24]~input_o\ : std_logic;
SIGNAL \D_out_aux~46_combout\ : std_logic;
SIGNAL \D_out_aux~47_combout\ : std_logic;
SIGNAL \D_IN[25]~input_o\ : std_logic;
SIGNAL \D_out_aux~48_combout\ : std_logic;
SIGNAL \D_out_aux~49_combout\ : std_logic;
SIGNAL \D_IN[26]~input_o\ : std_logic;
SIGNAL \D_out_aux~50_combout\ : std_logic;
SIGNAL \D_out_aux~51_combout\ : std_logic;
SIGNAL \D_IN[27]~input_o\ : std_logic;
SIGNAL \D_out_aux~52_combout\ : std_logic;
SIGNAL \D_out_aux~53_combout\ : std_logic;
SIGNAL \D_IN[28]~input_o\ : std_logic;
SIGNAL \D_out_aux~54_combout\ : std_logic;
SIGNAL \D_out_aux~55_combout\ : std_logic;
SIGNAL \D_IN[29]~input_o\ : std_logic;
SIGNAL \D_out_aux~56_combout\ : std_logic;
SIGNAL \D_out_aux~57_combout\ : std_logic;
SIGNAL \D_IN[30]~input_o\ : std_logic;
SIGNAL \D_out_aux~58_combout\ : std_logic;
SIGNAL \D_out_aux~59_combout\ : std_logic;
SIGNAL \D_IN[31]~input_o\ : std_logic;
SIGNAL \D_out_aux~60_combout\ : std_logic;
SIGNAL \D_out_aux~61_combout\ : std_logic;
SIGNAL \D_out_aux~62_combout\ : std_logic;
SIGNAL \D_out_aux~63_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_S <= S;
ww_D_IN <= D_IN;
D_OUT <= ww_D_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X56_Y0_N23
\D_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~1_combout\,
	devoe => ww_devoe,
	o => \D_OUT[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\D_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~3_combout\,
	devoe => ww_devoe,
	o => \D_OUT[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\D_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~5_combout\,
	devoe => ww_devoe,
	o => \D_OUT[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\D_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~7_combout\,
	devoe => ww_devoe,
	o => \D_OUT[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\D_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~9_combout\,
	devoe => ww_devoe,
	o => \D_OUT[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\D_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~11_combout\,
	devoe => ww_devoe,
	o => \D_OUT[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\D_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~13_combout\,
	devoe => ww_devoe,
	o => \D_OUT[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\D_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~15_combout\,
	devoe => ww_devoe,
	o => \D_OUT[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\D_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~17_combout\,
	devoe => ww_devoe,
	o => \D_OUT[8]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\D_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~19_combout\,
	devoe => ww_devoe,
	o => \D_OUT[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\D_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~21_combout\,
	devoe => ww_devoe,
	o => \D_OUT[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\D_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~23_combout\,
	devoe => ww_devoe,
	o => \D_OUT[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\D_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~25_combout\,
	devoe => ww_devoe,
	o => \D_OUT[12]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\D_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~27_combout\,
	devoe => ww_devoe,
	o => \D_OUT[13]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\D_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~29_combout\,
	devoe => ww_devoe,
	o => \D_OUT[14]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\D_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~31_combout\,
	devoe => ww_devoe,
	o => \D_OUT[15]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\D_OUT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~33_combout\,
	devoe => ww_devoe,
	o => \D_OUT[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\D_OUT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~35_combout\,
	devoe => ww_devoe,
	o => \D_OUT[17]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\D_OUT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~37_combout\,
	devoe => ww_devoe,
	o => \D_OUT[18]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\D_OUT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~39_combout\,
	devoe => ww_devoe,
	o => \D_OUT[19]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\D_OUT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~41_combout\,
	devoe => ww_devoe,
	o => \D_OUT[20]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\D_OUT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~43_combout\,
	devoe => ww_devoe,
	o => \D_OUT[21]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\D_OUT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~45_combout\,
	devoe => ww_devoe,
	o => \D_OUT[22]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\D_OUT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~47_combout\,
	devoe => ww_devoe,
	o => \D_OUT[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\D_OUT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~49_combout\,
	devoe => ww_devoe,
	o => \D_OUT[24]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\D_OUT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~51_combout\,
	devoe => ww_devoe,
	o => \D_OUT[25]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\D_OUT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~53_combout\,
	devoe => ww_devoe,
	o => \D_OUT[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\D_OUT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~55_combout\,
	devoe => ww_devoe,
	o => \D_OUT[27]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\D_OUT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~57_combout\,
	devoe => ww_devoe,
	o => \D_OUT[28]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\D_OUT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~59_combout\,
	devoe => ww_devoe,
	o => \D_OUT[29]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\D_OUT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~61_combout\,
	devoe => ww_devoe,
	o => \D_OUT[30]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\D_OUT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_out_aux~63_combout\,
	devoe => ww_devoe,
	o => \D_OUT[31]~output_o\);

-- Location: IOIBUF_X29_Y73_N8
\S[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\S[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\S[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\D_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(0),
	o => \D_IN[0]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\D_out_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~0_combout\ = (\S[2]~input_o\ & ((\S[0]~input_o\) # (\D_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \S[0]~input_o\,
	datad => \D_IN[0]~input_o\,
	combout => \D_out_aux~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\D_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(1),
	o => \D_IN[1]~input_o\);

-- Location: LCCOMB_X55_Y1_N18
\D_out_aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~1_combout\ = (\S[1]~input_o\ & (((\D_IN[1]~input_o\)))) # (!\S[1]~input_o\ & ((\D_out_aux~0_combout\ & ((\D_IN[1]~input_o\) # (!\S[0]~input_o\))) # (!\D_out_aux~0_combout\ & (\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \D_out_aux~0_combout\,
	datac => \S[0]~input_o\,
	datad => \D_IN[1]~input_o\,
	combout => \D_out_aux~1_combout\);

-- Location: LCCOMB_X46_Y4_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\S[2]~input_o\ & (!\S[1]~input_o\ & !\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X60_Y0_N1
\D_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(2),
	o => \D_IN[2]~input_o\);

-- Location: LCCOMB_X55_Y1_N20
\D_out_aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~2_combout\ = (\S[1]~input_o\ & (((\D_IN[2]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & (\D_IN[2]~input_o\)) # (!\S[2]~input_o\ & ((\D_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datac => \D_IN[2]~input_o\,
	datad => \D_IN[0]~input_o\,
	combout => \D_out_aux~2_combout\);

-- Location: LCCOMB_X55_Y1_N14
\D_out_aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~3_combout\ = (\Equal0~0_combout\ & (\D_IN[1]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \D_out_aux~2_combout\,
	combout => \D_out_aux~3_combout\);

-- Location: IOIBUF_X52_Y0_N1
\D_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(3),
	o => \D_IN[3]~input_o\);

-- Location: LCCOMB_X55_Y1_N16
\D_out_aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~4_combout\ = (\S[1]~input_o\ & (((\D_IN[3]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & (\D_IN[3]~input_o\)) # (!\S[2]~input_o\ & ((\D_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datac => \D_IN[3]~input_o\,
	datad => \D_IN[1]~input_o\,
	combout => \D_out_aux~4_combout\);

-- Location: LCCOMB_X55_Y1_N26
\D_out_aux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~5_combout\ = (\Equal0~0_combout\ & (\D_IN[2]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \D_IN[2]~input_o\,
	datad => \D_out_aux~4_combout\,
	combout => \D_out_aux~5_combout\);

-- Location: IOIBUF_X54_Y0_N22
\D_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(4),
	o => \D_IN[4]~input_o\);

-- Location: LCCOMB_X55_Y1_N28
\D_out_aux~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~6_combout\ = (\S[1]~input_o\ & (((\D_IN[4]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & ((\D_IN[4]~input_o\))) # (!\S[2]~input_o\ & (\D_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datac => \D_IN[2]~input_o\,
	datad => \D_IN[4]~input_o\,
	combout => \D_out_aux~6_combout\);

-- Location: LCCOMB_X55_Y1_N30
\D_out_aux~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~7_combout\ = (\Equal0~0_combout\ & (\D_IN[3]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \D_IN[3]~input_o\,
	datad => \D_out_aux~6_combout\,
	combout => \D_out_aux~7_combout\);

-- Location: IOIBUF_X56_Y0_N8
\D_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(5),
	o => \D_IN[5]~input_o\);

-- Location: LCCOMB_X55_Y1_N24
\D_out_aux~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~8_combout\ = (\S[2]~input_o\ & (((\D_IN[5]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[5]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[3]~input_o\,
	datab => \S[2]~input_o\,
	datac => \D_IN[5]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux~8_combout\);

-- Location: LCCOMB_X55_Y1_N10
\D_out_aux~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~9_combout\ = (\Equal0~0_combout\ & (\D_IN[4]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_IN[4]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \D_out_aux~8_combout\,
	combout => \D_out_aux~9_combout\);

-- Location: IOIBUF_X52_Y0_N15
\D_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(6),
	o => \D_IN[6]~input_o\);

-- Location: LCCOMB_X55_Y1_N4
\D_out_aux~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~10_combout\ = (\S[1]~input_o\ & (((\D_IN[6]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & (\D_IN[6]~input_o\)) # (!\S[2]~input_o\ & ((\D_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datac => \D_IN[6]~input_o\,
	datad => \D_IN[4]~input_o\,
	combout => \D_out_aux~10_combout\);

-- Location: LCCOMB_X55_Y1_N22
\D_out_aux~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~11_combout\ = (\Equal0~0_combout\ & ((\D_IN[5]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \D_out_aux~10_combout\,
	datac => \D_IN[5]~input_o\,
	combout => \D_out_aux~11_combout\);

-- Location: IOIBUF_X40_Y0_N15
\D_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(7),
	o => \D_IN[7]~input_o\);

-- Location: LCCOMB_X55_Y1_N0
\D_out_aux~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~12_combout\ = (\S[1]~input_o\ & (((\D_IN[7]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & ((\D_IN[7]~input_o\))) # (!\S[2]~input_o\ & (\D_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datac => \D_IN[5]~input_o\,
	datad => \D_IN[7]~input_o\,
	combout => \D_out_aux~12_combout\);

-- Location: LCCOMB_X55_Y1_N2
\D_out_aux~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~13_combout\ = (\Equal0~0_combout\ & (\D_IN[6]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \D_IN[6]~input_o\,
	datad => \D_out_aux~12_combout\,
	combout => \D_out_aux~13_combout\);

-- Location: IOIBUF_X20_Y0_N22
\D_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(8),
	o => \D_IN[8]~input_o\);

-- Location: LCCOMB_X29_Y1_N0
\D_out_aux~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~14_combout\ = (\S[2]~input_o\ & (\D_IN[8]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[8]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \D_IN[8]~input_o\,
	datac => \D_IN[6]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux~14_combout\);

-- Location: LCCOMB_X29_Y1_N26
\D_out_aux~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~15_combout\ = (\Equal0~0_combout\ & ((\D_IN[7]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~14_combout\,
	datac => \D_IN[7]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~15_combout\);

-- Location: IOIBUF_X33_Y0_N1
\D_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(9),
	o => \D_IN[9]~input_o\);

-- Location: LCCOMB_X29_Y1_N4
\D_out_aux~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~16_combout\ = (\S[1]~input_o\ & (\D_IN[9]~input_o\)) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & (\D_IN[9]~input_o\)) # (!\S[2]~input_o\ & ((\D_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \D_IN[9]~input_o\,
	datac => \D_IN[7]~input_o\,
	datad => \S[2]~input_o\,
	combout => \D_out_aux~16_combout\);

-- Location: LCCOMB_X29_Y1_N30
\D_out_aux~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~17_combout\ = (\Equal0~0_combout\ & (\D_IN[8]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[8]~input_o\,
	datac => \D_out_aux~16_combout\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~17_combout\);

-- Location: IOIBUF_X29_Y0_N22
\D_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(10),
	o => \D_IN[10]~input_o\);

-- Location: LCCOMB_X29_Y1_N16
\D_out_aux~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~18_combout\ = (\S[2]~input_o\ & (\D_IN[10]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[10]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[10]~input_o\,
	datab => \S[2]~input_o\,
	datac => \D_IN[8]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux~18_combout\);

-- Location: LCCOMB_X29_Y1_N10
\D_out_aux~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~19_combout\ = (\Equal0~0_combout\ & (\D_IN[9]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_IN[9]~input_o\,
	datac => \D_out_aux~18_combout\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~19_combout\);

-- Location: IOIBUF_X20_Y0_N15
\D_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(11),
	o => \D_IN[11]~input_o\);

-- Location: LCCOMB_X29_Y1_N20
\D_out_aux~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~20_combout\ = (\S[2]~input_o\ & (((\D_IN[11]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[11]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \D_IN[9]~input_o\,
	datac => \D_IN[11]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux~20_combout\);

-- Location: LCCOMB_X29_Y1_N22
\D_out_aux~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~21_combout\ = (\Equal0~0_combout\ & (\D_IN[10]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[10]~input_o\,
	datab => \D_out_aux~20_combout\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~21_combout\);

-- Location: IOIBUF_X33_Y0_N8
\D_IN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(12),
	o => \D_IN[12]~input_o\);

-- Location: LCCOMB_X29_Y1_N8
\D_out_aux~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~22_combout\ = (\S[2]~input_o\ & (((\D_IN[12]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[12]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \D_IN[10]~input_o\,
	datac => \D_IN[12]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux~22_combout\);

-- Location: LCCOMB_X29_Y1_N2
\D_out_aux~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~23_combout\ = (\Equal0~0_combout\ & ((\D_IN[11]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~22_combout\,
	datac => \D_IN[11]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~23_combout\);

-- Location: IOIBUF_X29_Y0_N15
\D_IN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(13),
	o => \D_IN[13]~input_o\);

-- Location: LCCOMB_X29_Y1_N12
\D_out_aux~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~24_combout\ = (\S[2]~input_o\ & (\D_IN[13]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[13]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \D_IN[13]~input_o\,
	datac => \D_IN[11]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux~24_combout\);

-- Location: LCCOMB_X29_Y1_N6
\D_out_aux~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~25_combout\ = (\Equal0~0_combout\ & ((\D_IN[12]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux~24_combout\,
	datac => \D_IN[12]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~25_combout\);

-- Location: IOIBUF_X35_Y0_N22
\D_IN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(14),
	o => \D_IN[14]~input_o\);

-- Location: LCCOMB_X29_Y1_N24
\D_out_aux~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~26_combout\ = (\S[1]~input_o\ & (((\D_IN[14]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & ((\D_IN[14]~input_o\))) # (!\S[2]~input_o\ & (\D_IN[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \D_IN[12]~input_o\,
	datac => \D_IN[14]~input_o\,
	datad => \S[2]~input_o\,
	combout => \D_out_aux~26_combout\);

-- Location: LCCOMB_X29_Y1_N18
\D_out_aux~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~27_combout\ = (\Equal0~0_combout\ & ((\D_IN[13]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~26_combout\,
	datac => \D_IN[13]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~27_combout\);

-- Location: IOIBUF_X35_Y0_N15
\D_IN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(15),
	o => \D_IN[15]~input_o\);

-- Location: LCCOMB_X29_Y1_N28
\D_out_aux~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~28_combout\ = (\S[2]~input_o\ & (((\D_IN[15]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[15]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \D_IN[13]~input_o\,
	datac => \D_IN[15]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux~28_combout\);

-- Location: LCCOMB_X29_Y1_N14
\D_out_aux~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~29_combout\ = (\Equal0~0_combout\ & ((\D_IN[14]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~28_combout\,
	datac => \D_IN[14]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~29_combout\);

-- Location: IOIBUF_X47_Y0_N1
\D_IN[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(16),
	o => \D_IN[16]~input_o\);

-- Location: LCCOMB_X46_Y4_N10
\D_out_aux~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~30_combout\ = (\S[1]~input_o\ & (((\D_IN[16]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & ((\D_IN[16]~input_o\))) # (!\S[2]~input_o\ & (\D_IN[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[14]~input_o\,
	datab => \S[1]~input_o\,
	datac => \D_IN[16]~input_o\,
	datad => \S[2]~input_o\,
	combout => \D_out_aux~30_combout\);

-- Location: LCCOMB_X46_Y4_N4
\D_out_aux~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~31_combout\ = (\Equal0~0_combout\ & ((\D_IN[15]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux~30_combout\,
	datac => \D_IN[15]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~31_combout\);

-- Location: IOIBUF_X45_Y0_N22
\D_IN[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(17),
	o => \D_IN[17]~input_o\);

-- Location: LCCOMB_X46_Y4_N22
\D_out_aux~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~32_combout\ = (\S[2]~input_o\ & (((\D_IN[17]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[17]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[1]~input_o\,
	datac => \D_IN[15]~input_o\,
	datad => \D_IN[17]~input_o\,
	combout => \D_out_aux~32_combout\);

-- Location: LCCOMB_X46_Y4_N24
\D_out_aux~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~33_combout\ = (\Equal0~0_combout\ & (\D_IN[16]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[16]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \D_out_aux~32_combout\,
	combout => \D_out_aux~33_combout\);

-- Location: IOIBUF_X49_Y0_N8
\D_IN[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(18),
	o => \D_IN[18]~input_o\);

-- Location: LCCOMB_X46_Y4_N18
\D_out_aux~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~34_combout\ = (\S[2]~input_o\ & (((\D_IN[18]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[18]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[16]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[18]~input_o\,
	combout => \D_out_aux~34_combout\);

-- Location: LCCOMB_X45_Y4_N16
\D_out_aux~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~35_combout\ = (\Equal0~0_combout\ & (\D_IN[17]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_IN[17]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \D_out_aux~34_combout\,
	combout => \D_out_aux~35_combout\);

-- Location: IOIBUF_X47_Y0_N8
\D_IN[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(19),
	o => \D_IN[19]~input_o\);

-- Location: LCCOMB_X46_Y4_N20
\D_out_aux~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~36_combout\ = (\S[2]~input_o\ & (((\D_IN[19]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[19]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \D_IN[17]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[19]~input_o\,
	combout => \D_out_aux~36_combout\);

-- Location: LCCOMB_X46_Y4_N30
\D_out_aux~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~37_combout\ = (\Equal0~0_combout\ & ((\D_IN[18]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~36_combout\,
	datac => \Equal0~0_combout\,
	datad => \D_IN[18]~input_o\,
	combout => \D_out_aux~37_combout\);

-- Location: IOIBUF_X42_Y73_N1
\D_IN[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(20),
	o => \D_IN[20]~input_o\);

-- Location: LCCOMB_X46_Y4_N16
\D_out_aux~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~38_combout\ = (\S[2]~input_o\ & (\D_IN[20]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[20]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[20]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[18]~input_o\,
	combout => \D_out_aux~38_combout\);

-- Location: LCCOMB_X46_Y4_N26
\D_out_aux~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~39_combout\ = (\Equal0~0_combout\ & ((\D_IN[19]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~38_combout\,
	datac => \Equal0~0_combout\,
	datad => \D_IN[19]~input_o\,
	combout => \D_out_aux~39_combout\);

-- Location: IOIBUF_X45_Y73_N8
\D_IN[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(21),
	o => \D_IN[21]~input_o\);

-- Location: LCCOMB_X46_Y4_N12
\D_out_aux~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~40_combout\ = (\S[2]~input_o\ & (\D_IN[21]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[21]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[21]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[19]~input_o\,
	combout => \D_out_aux~40_combout\);

-- Location: LCCOMB_X46_Y4_N6
\D_out_aux~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~41_combout\ = (\Equal0~0_combout\ & (\D_IN[20]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[20]~input_o\,
	datab => \Equal0~0_combout\,
	datad => \D_out_aux~40_combout\,
	combout => \D_out_aux~41_combout\);

-- Location: IOIBUF_X54_Y73_N1
\D_IN[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(22),
	o => \D_IN[22]~input_o\);

-- Location: LCCOMB_X52_Y72_N24
\D_out_aux~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~42_combout\ = (\S[2]~input_o\ & (((\D_IN[22]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[22]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[20]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[22]~input_o\,
	combout => \D_out_aux~42_combout\);

-- Location: LCCOMB_X52_Y72_N18
\D_out_aux~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~43_combout\ = (\Equal0~0_combout\ & (\D_IN[21]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[21]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \D_out_aux~42_combout\,
	combout => \D_out_aux~43_combout\);

-- Location: IOIBUF_X52_Y73_N1
\D_IN[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(23),
	o => \D_IN[23]~input_o\);

-- Location: LCCOMB_X52_Y72_N12
\D_out_aux~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~44_combout\ = (\S[2]~input_o\ & (((\D_IN[23]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[23]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[21]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[23]~input_o\,
	combout => \D_out_aux~44_combout\);

-- Location: LCCOMB_X52_Y72_N30
\D_out_aux~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~45_combout\ = (\Equal0~0_combout\ & ((\D_IN[22]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux~44_combout\,
	datac => \Equal0~0_combout\,
	datad => \D_IN[22]~input_o\,
	combout => \D_out_aux~45_combout\);

-- Location: IOIBUF_X52_Y73_N8
\D_IN[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(24),
	o => \D_IN[24]~input_o\);

-- Location: LCCOMB_X52_Y72_N0
\D_out_aux~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~46_combout\ = (\S[2]~input_o\ & (\D_IN[24]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[24]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[24]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[22]~input_o\,
	combout => \D_out_aux~46_combout\);

-- Location: LCCOMB_X52_Y72_N10
\D_out_aux~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~47_combout\ = (\Equal0~0_combout\ & ((\D_IN[23]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~46_combout\,
	datac => \Equal0~0_combout\,
	datad => \D_IN[23]~input_o\,
	combout => \D_out_aux~47_combout\);

-- Location: IOIBUF_X58_Y73_N8
\D_IN[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(25),
	o => \D_IN[25]~input_o\);

-- Location: LCCOMB_X52_Y72_N4
\D_out_aux~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~48_combout\ = (\S[2]~input_o\ & (((\D_IN[25]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[25]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[23]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[25]~input_o\,
	combout => \D_out_aux~48_combout\);

-- Location: LCCOMB_X52_Y72_N14
\D_out_aux~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~49_combout\ = (\Equal0~0_combout\ & (\D_IN[24]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[24]~input_o\,
	datab => \D_out_aux~48_combout\,
	datac => \Equal0~0_combout\,
	combout => \D_out_aux~49_combout\);

-- Location: IOIBUF_X60_Y0_N8
\D_IN[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(26),
	o => \D_IN[26]~input_o\);

-- Location: LCCOMB_X52_Y72_N16
\D_out_aux~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~50_combout\ = (\S[2]~input_o\ & (((\D_IN[26]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\D_IN[26]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[24]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[26]~input_o\,
	combout => \D_out_aux~50_combout\);

-- Location: LCCOMB_X57_Y72_N0
\D_out_aux~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~51_combout\ = (\Equal0~0_combout\ & ((\D_IN[25]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux~50_combout\,
	datab => \Equal0~0_combout\,
	datac => \D_IN[25]~input_o\,
	combout => \D_out_aux~51_combout\);

-- Location: IOIBUF_X58_Y73_N1
\D_IN[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(27),
	o => \D_IN[27]~input_o\);

-- Location: LCCOMB_X52_Y72_N26
\D_out_aux~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~52_combout\ = (\S[1]~input_o\ & (((\D_IN[27]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & ((\D_IN[27]~input_o\))) # (!\S[2]~input_o\ & (\D_IN[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[25]~input_o\,
	datab => \D_IN[27]~input_o\,
	datac => \S[1]~input_o\,
	datad => \S[2]~input_o\,
	combout => \D_out_aux~52_combout\);

-- Location: LCCOMB_X55_Y1_N12
\D_out_aux~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~53_combout\ = (\Equal0~0_combout\ & (\D_IN[26]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[26]~input_o\,
	datab => \D_out_aux~52_combout\,
	datac => \Equal0~0_combout\,
	combout => \D_out_aux~53_combout\);

-- Location: IOIBUF_X58_Y73_N22
\D_IN[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(28),
	o => \D_IN[28]~input_o\);

-- Location: LCCOMB_X52_Y72_N20
\D_out_aux~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~54_combout\ = (\S[2]~input_o\ & (\D_IN[28]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[28]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[28]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[26]~input_o\,
	combout => \D_out_aux~54_combout\);

-- Location: LCCOMB_X52_Y72_N6
\D_out_aux~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~55_combout\ = (\Equal0~0_combout\ & ((\D_IN[27]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~54_combout\,
	datac => \Equal0~0_combout\,
	datad => \D_IN[27]~input_o\,
	combout => \D_out_aux~55_combout\);

-- Location: IOIBUF_X42_Y73_N8
\D_IN[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(29),
	o => \D_IN[29]~input_o\);

-- Location: LCCOMB_X52_Y72_N8
\D_out_aux~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~56_combout\ = (\S[2]~input_o\ & (\D_IN[29]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[29]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[29]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[27]~input_o\,
	combout => \D_out_aux~56_combout\);

-- Location: LCCOMB_X52_Y72_N2
\D_out_aux~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~57_combout\ = (\Equal0~0_combout\ & ((\D_IN[28]~input_o\))) # (!\Equal0~0_combout\ & (\D_out_aux~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~56_combout\,
	datac => \Equal0~0_combout\,
	datad => \D_IN[28]~input_o\,
	combout => \D_out_aux~57_combout\);

-- Location: IOIBUF_X45_Y73_N1
\D_IN[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(30),
	o => \D_IN[30]~input_o\);

-- Location: LCCOMB_X52_Y72_N28
\D_out_aux~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~58_combout\ = (\S[2]~input_o\ & (\D_IN[30]~input_o\)) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\D_IN[30]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[30]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[28]~input_o\,
	combout => \D_out_aux~58_combout\);

-- Location: LCCOMB_X52_Y72_N22
\D_out_aux~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~59_combout\ = (\Equal0~0_combout\ & (\D_IN[29]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[29]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \D_out_aux~58_combout\,
	combout => \D_out_aux~59_combout\);

-- Location: IOIBUF_X49_Y0_N1
\D_IN[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(31),
	o => \D_IN[31]~input_o\);

-- Location: LCCOMB_X46_Y4_N8
\D_out_aux~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~60_combout\ = (\S[1]~input_o\ & (((\D_IN[31]~input_o\)))) # (!\S[1]~input_o\ & ((\S[2]~input_o\ & ((\D_IN[31]~input_o\))) # (!\S[2]~input_o\ & (\D_IN[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[29]~input_o\,
	datab => \S[1]~input_o\,
	datac => \D_IN[31]~input_o\,
	datad => \S[2]~input_o\,
	combout => \D_out_aux~60_combout\);

-- Location: LCCOMB_X46_Y4_N2
\D_out_aux~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~61_combout\ = (\Equal0~0_combout\ & (\D_IN[30]~input_o\)) # (!\Equal0~0_combout\ & ((\D_out_aux~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_IN[30]~input_o\,
	datac => \D_out_aux~60_combout\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~61_combout\);

-- Location: LCCOMB_X46_Y4_N28
\D_out_aux~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~62_combout\ = (\S[2]~input_o\ & ((\S[0]~input_o\) # ((\S[1]~input_o\)))) # (!\S[2]~input_o\ & ((\S[1]~input_o\ & (\S[0]~input_o\)) # (!\S[1]~input_o\ & ((\D_IN[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[30]~input_o\,
	combout => \D_out_aux~62_combout\);

-- Location: LCCOMB_X46_Y4_N14
\D_out_aux~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux~63_combout\ = (\D_out_aux~62_combout\) # ((\D_IN[31]~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux~62_combout\,
	datac => \D_IN[31]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \D_out_aux~63_combout\);

ww_D_OUT(0) <= \D_OUT[0]~output_o\;

ww_D_OUT(1) <= \D_OUT[1]~output_o\;

ww_D_OUT(2) <= \D_OUT[2]~output_o\;

ww_D_OUT(3) <= \D_OUT[3]~output_o\;

ww_D_OUT(4) <= \D_OUT[4]~output_o\;

ww_D_OUT(5) <= \D_OUT[5]~output_o\;

ww_D_OUT(6) <= \D_OUT[6]~output_o\;

ww_D_OUT(7) <= \D_OUT[7]~output_o\;

ww_D_OUT(8) <= \D_OUT[8]~output_o\;

ww_D_OUT(9) <= \D_OUT[9]~output_o\;

ww_D_OUT(10) <= \D_OUT[10]~output_o\;

ww_D_OUT(11) <= \D_OUT[11]~output_o\;

ww_D_OUT(12) <= \D_OUT[12]~output_o\;

ww_D_OUT(13) <= \D_OUT[13]~output_o\;

ww_D_OUT(14) <= \D_OUT[14]~output_o\;

ww_D_OUT(15) <= \D_OUT[15]~output_o\;

ww_D_OUT(16) <= \D_OUT[16]~output_o\;

ww_D_OUT(17) <= \D_OUT[17]~output_o\;

ww_D_OUT(18) <= \D_OUT[18]~output_o\;

ww_D_OUT(19) <= \D_OUT[19]~output_o\;

ww_D_OUT(20) <= \D_OUT[20]~output_o\;

ww_D_OUT(21) <= \D_OUT[21]~output_o\;

ww_D_OUT(22) <= \D_OUT[22]~output_o\;

ww_D_OUT(23) <= \D_OUT[23]~output_o\;

ww_D_OUT(24) <= \D_OUT[24]~output_o\;

ww_D_OUT(25) <= \D_OUT[25]~output_o\;

ww_D_OUT(26) <= \D_OUT[26]~output_o\;

ww_D_OUT(27) <= \D_OUT[27]~output_o\;

ww_D_OUT(28) <= \D_OUT[28]~output_o\;

ww_D_OUT(29) <= \D_OUT[29]~output_o\;

ww_D_OUT(30) <= \D_OUT[30]~output_o\;

ww_D_OUT(31) <= \D_OUT[31]~output_o\;
END structure;


