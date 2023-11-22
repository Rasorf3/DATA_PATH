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

-- DATE "11/21/2023 17:32:13"

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
	D_IN : IN std_logic_vector(7 DOWNTO 0);
	D_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Shifter;

-- Design Ports Information
-- D_OUT[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[4]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[6]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_OUT[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[7]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_D_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \D_out_aux[7]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D_OUT[0]~output_o\ : std_logic;
SIGNAL \D_OUT[1]~output_o\ : std_logic;
SIGNAL \D_OUT[2]~output_o\ : std_logic;
SIGNAL \D_OUT[3]~output_o\ : std_logic;
SIGNAL \D_OUT[4]~output_o\ : std_logic;
SIGNAL \D_OUT[5]~output_o\ : std_logic;
SIGNAL \D_OUT[6]~output_o\ : std_logic;
SIGNAL \D_OUT[7]~output_o\ : std_logic;
SIGNAL \D_IN[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \D_IN[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \D_out_aux[0]~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \D_out_aux[0]~1_combout\ : std_logic;
SIGNAL \D_out_aux[7]~2_combout\ : std_logic;
SIGNAL \D_out_aux[7]~2clkctrl_outclk\ : std_logic;
SIGNAL \D_IN[2]~input_o\ : std_logic;
SIGNAL \D_out_aux[1]~3_combout\ : std_logic;
SIGNAL \D_out_aux[1]~4_combout\ : std_logic;
SIGNAL \D_out_aux[1]~5_combout\ : std_logic;
SIGNAL \D_out_aux[2]~7_combout\ : std_logic;
SIGNAL \D_IN[3]~input_o\ : std_logic;
SIGNAL \D_out_aux[2]~6_combout\ : std_logic;
SIGNAL \D_out_aux[2]~8_combout\ : std_logic;
SIGNAL \D_IN[4]~input_o\ : std_logic;
SIGNAL \D_out_aux[3]~9_combout\ : std_logic;
SIGNAL \D_out_aux[3]~10_combout\ : std_logic;
SIGNAL \D_IN[5]~input_o\ : std_logic;
SIGNAL \D_out_aux[4]~11_combout\ : std_logic;
SIGNAL \D_out_aux[4]~12_combout\ : std_logic;
SIGNAL \D_IN[6]~input_o\ : std_logic;
SIGNAL \D_out_aux[5]~13_combout\ : std_logic;
SIGNAL \D_out_aux[5]~14_combout\ : std_logic;
SIGNAL \D_IN[7]~input_o\ : std_logic;
SIGNAL \D_out_aux[6]~15_combout\ : std_logic;
SIGNAL \D_out_aux[6]~16_combout\ : std_logic;
SIGNAL \D_out_aux[7]~17_combout\ : std_logic;
SIGNAL \D_out_aux[7]~18_combout\ : std_logic;
SIGNAL D_out_aux : std_logic_vector(7 DOWNTO 0);

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

\D_out_aux[7]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D_out_aux[7]~2_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y0_N16
\D_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(0),
	devoe => ww_devoe,
	o => \D_OUT[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\D_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(1),
	devoe => ww_devoe,
	o => \D_OUT[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\D_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(2),
	devoe => ww_devoe,
	o => \D_OUT[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\D_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(3),
	devoe => ww_devoe,
	o => \D_OUT[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\D_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(4),
	devoe => ww_devoe,
	o => \D_OUT[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\D_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(5),
	devoe => ww_devoe,
	o => \D_OUT[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\D_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(6),
	devoe => ww_devoe,
	o => \D_OUT[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\D_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D_out_aux(7),
	devoe => ww_devoe,
	o => \D_OUT[7]~output_o\);

-- Location: IOIBUF_X56_Y0_N15
\D_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(0),
	o => \D_IN[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\S[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\D_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(1),
	o => \D_IN[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\S[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\S[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: LCCOMB_X56_Y1_N16
\D_out_aux[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[0]~0_combout\ = (\S[1]~input_o\ & (\D_IN[1]~input_o\ & ((!\S[2]~input_o\)))) # (!\S[1]~input_o\ & (\S[0]~input_o\ & ((\D_IN[1]~input_o\) # (!\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \D_IN[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[2]~input_o\,
	combout => \D_out_aux[0]~0_combout\);

-- Location: LCCOMB_X56_Y1_N2
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\S[1]~input_o\ & (\S[2]~input_o\ & !\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datad => \S[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X56_Y1_N4
\D_out_aux[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[0]~1_combout\ = (\D_out_aux[0]~0_combout\) # ((\D_IN[0]~input_o\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[0]~input_o\,
	datac => \D_out_aux[0]~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \D_out_aux[0]~1_combout\);

-- Location: LCCOMB_X57_Y1_N22
\D_out_aux[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[7]~2_combout\ = ((!\S[0]~input_o\) # (!\S[2]~input_o\)) # (!\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \S[0]~input_o\,
	combout => \D_out_aux[7]~2_combout\);

-- Location: CLKCTRL_G18
\D_out_aux[7]~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D_out_aux[7]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D_out_aux[7]~2clkctrl_outclk\);

-- Location: LCCOMB_X56_Y1_N12
\D_out_aux[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(0) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((\D_out_aux[0]~1_combout\))) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (D_out_aux(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_out_aux(0),
	datab => \D_out_aux[0]~1_combout\,
	datad => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(0));

-- Location: IOIBUF_X54_Y0_N22
\D_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(2),
	o => \D_IN[2]~input_o\);

-- Location: LCCOMB_X57_Y1_N18
\D_out_aux[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[1]~3_combout\ = (\D_IN[2]~input_o\ & ((\D_IN[0]~input_o\) # (\S[1]~input_o\ $ (\S[2]~input_o\)))) # (!\D_IN[2]~input_o\ & (\D_IN[0]~input_o\ & (\S[1]~input_o\ $ (!\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[2]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \D_IN[0]~input_o\,
	combout => \D_out_aux[1]~3_combout\);

-- Location: LCCOMB_X56_Y1_N14
\D_out_aux[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[1]~4_combout\ = (\S[1]~input_o\) # ((\S[0]~input_o\) # (!\S[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[0]~input_o\,
	combout => \D_out_aux[1]~4_combout\);

-- Location: LCCOMB_X56_Y1_N8
\D_out_aux[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[1]~5_combout\ = (\D_out_aux[1]~3_combout\ & ((\D_out_aux[1]~4_combout\) # ((\Equal1~0_combout\ & \D_IN[1]~input_o\)))) # (!\D_out_aux[1]~3_combout\ & (\Equal1~0_combout\ & (\D_IN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux[1]~3_combout\,
	datab => \Equal1~0_combout\,
	datac => \D_IN[1]~input_o\,
	datad => \D_out_aux[1]~4_combout\,
	combout => \D_out_aux[1]~5_combout\);

-- Location: LCCOMB_X56_Y1_N22
\D_out_aux[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(1) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((\D_out_aux[1]~5_combout\))) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (D_out_aux(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_out_aux(1),
	datac => \D_out_aux[1]~5_combout\,
	datad => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(1));

-- Location: LCCOMB_X56_Y1_N10
\D_out_aux[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[2]~7_combout\ = (\S[1]~input_o\) # ((\S[0]~input_o\) # (!\S[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[0]~input_o\,
	combout => \D_out_aux[2]~7_combout\);

-- Location: IOIBUF_X56_Y0_N8
\D_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(3),
	o => \D_IN[3]~input_o\);

-- Location: LCCOMB_X57_Y1_N8
\D_out_aux[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[2]~6_combout\ = (\D_IN[1]~input_o\ & ((\D_IN[3]~input_o\) # (\S[1]~input_o\ $ (!\S[2]~input_o\)))) # (!\D_IN[1]~input_o\ & (\D_IN[3]~input_o\ & (\S[1]~input_o\ $ (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[1]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \D_IN[3]~input_o\,
	combout => \D_out_aux[2]~6_combout\);

-- Location: LCCOMB_X56_Y1_N20
\D_out_aux[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[2]~8_combout\ = (\D_IN[2]~input_o\ & ((\Equal1~0_combout\) # ((\D_out_aux[2]~7_combout\ & \D_out_aux[2]~6_combout\)))) # (!\D_IN[2]~input_o\ & (((\D_out_aux[2]~7_combout\ & \D_out_aux[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[2]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \D_out_aux[2]~7_combout\,
	datad => \D_out_aux[2]~6_combout\,
	combout => \D_out_aux[2]~8_combout\);

-- Location: LCCOMB_X56_Y1_N0
\D_out_aux[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(2) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (\D_out_aux[2]~8_combout\)) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((D_out_aux(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_out_aux[2]~8_combout\,
	datac => D_out_aux(2),
	datad => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(2));

-- Location: IOIBUF_X56_Y0_N22
\D_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(4),
	o => \D_IN[4]~input_o\);

-- Location: LCCOMB_X57_Y1_N12
\D_out_aux[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[3]~9_combout\ = (\D_IN[2]~input_o\ & ((\D_IN[4]~input_o\) # (\S[1]~input_o\ $ (!\S[2]~input_o\)))) # (!\D_IN[2]~input_o\ & (\D_IN[4]~input_o\ & (\S[1]~input_o\ $ (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[2]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \D_IN[4]~input_o\,
	combout => \D_out_aux[3]~9_combout\);

-- Location: LCCOMB_X56_Y1_N30
\D_out_aux[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[3]~10_combout\ = (\D_IN[3]~input_o\ & ((\Equal1~0_combout\) # ((\D_out_aux[3]~9_combout\ & \D_out_aux[1]~4_combout\)))) # (!\D_IN[3]~input_o\ & (((\D_out_aux[3]~9_combout\ & \D_out_aux[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[3]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \D_out_aux[3]~9_combout\,
	datad => \D_out_aux[1]~4_combout\,
	combout => \D_out_aux[3]~10_combout\);

-- Location: LCCOMB_X56_Y1_N18
\D_out_aux[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(3) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((\D_out_aux[3]~10_combout\))) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (D_out_aux(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_out_aux(3),
	datac => \D_out_aux[3]~10_combout\,
	datad => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(3));

-- Location: IOIBUF_X49_Y0_N8
\D_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(5),
	o => \D_IN[5]~input_o\);

-- Location: LCCOMB_X57_Y1_N30
\D_out_aux[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[4]~11_combout\ = (\D_IN[5]~input_o\ & ((\D_IN[3]~input_o\) # (\S[1]~input_o\ $ (\S[2]~input_o\)))) # (!\D_IN[5]~input_o\ & (\D_IN[3]~input_o\ & (\S[1]~input_o\ $ (!\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[5]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \D_IN[3]~input_o\,
	combout => \D_out_aux[4]~11_combout\);

-- Location: LCCOMB_X56_Y1_N24
\D_out_aux[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[4]~12_combout\ = (\D_out_aux[4]~11_combout\ & ((\D_out_aux[1]~4_combout\) # ((\Equal1~0_combout\ & \D_IN[4]~input_o\)))) # (!\D_out_aux[4]~11_combout\ & (\Equal1~0_combout\ & (\D_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux[4]~11_combout\,
	datab => \Equal1~0_combout\,
	datac => \D_IN[4]~input_o\,
	datad => \D_out_aux[1]~4_combout\,
	combout => \D_out_aux[4]~12_combout\);

-- Location: LCCOMB_X56_Y1_N28
\D_out_aux[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(4) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((\D_out_aux[4]~12_combout\))) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (D_out_aux(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_out_aux(4),
	datac => \D_out_aux[4]~12_combout\,
	datad => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(4));

-- Location: IOIBUF_X62_Y0_N15
\D_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(6),
	o => \D_IN[6]~input_o\);

-- Location: LCCOMB_X57_Y1_N24
\D_out_aux[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[5]~13_combout\ = (\D_IN[6]~input_o\ & ((\D_IN[4]~input_o\) # (\S[2]~input_o\ $ (\S[1]~input_o\)))) # (!\D_IN[6]~input_o\ & (\D_IN[4]~input_o\ & (\S[2]~input_o\ $ (!\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[6]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \D_IN[4]~input_o\,
	combout => \D_out_aux[5]~13_combout\);

-- Location: LCCOMB_X56_Y1_N26
\D_out_aux[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[5]~14_combout\ = (\D_IN[5]~input_o\ & ((\Equal1~0_combout\) # ((\D_out_aux[5]~13_combout\ & \D_out_aux[1]~4_combout\)))) # (!\D_IN[5]~input_o\ & (((\D_out_aux[5]~13_combout\ & \D_out_aux[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[5]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \D_out_aux[5]~13_combout\,
	datad => \D_out_aux[1]~4_combout\,
	combout => \D_out_aux[5]~14_combout\);

-- Location: LCCOMB_X56_Y1_N6
\D_out_aux[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(5) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((\D_out_aux[5]~14_combout\))) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (D_out_aux(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_out_aux(5),
	datac => \D_out_aux[5]~14_combout\,
	datad => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(5));

-- Location: IOIBUF_X60_Y0_N22
\D_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(7),
	o => \D_IN[7]~input_o\);

-- Location: LCCOMB_X57_Y1_N28
\D_out_aux[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[6]~15_combout\ = (\S[1]~input_o\ & (\D_IN[7]~input_o\)) # (!\S[1]~input_o\ & (((\D_IN[6]~input_o\ & !\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[7]~input_o\,
	datab => \S[1]~input_o\,
	datac => \D_IN[6]~input_o\,
	datad => \S[0]~input_o\,
	combout => \D_out_aux[6]~15_combout\);

-- Location: LCCOMB_X57_Y1_N10
\D_out_aux[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[6]~16_combout\ = (\D_IN[5]~input_o\ & ((\D_out_aux[6]~15_combout\) # (\S[1]~input_o\ $ (!\S[2]~input_o\)))) # (!\D_IN[5]~input_o\ & (\D_out_aux[6]~15_combout\ & (\S[1]~input_o\ $ (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[5]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \D_out_aux[6]~15_combout\,
	combout => \D_out_aux[6]~16_combout\);

-- Location: LCCOMB_X57_Y1_N26
\D_out_aux[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(6) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (\D_out_aux[6]~16_combout\)) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((D_out_aux(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux[6]~16_combout\,
	datac => D_out_aux(6),
	datad => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(6));

-- Location: LCCOMB_X57_Y1_N20
\D_out_aux[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[7]~17_combout\ = (!\S[2]~input_o\ & ((\S[1]~input_o\ & ((\S[0]~input_o\))) # (!\S[1]~input_o\ & (\D_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_IN[6]~input_o\,
	datab => \S[2]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \D_out_aux[7]~17_combout\);

-- Location: LCCOMB_X57_Y1_N16
\D_out_aux[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \D_out_aux[7]~18_combout\ = (\D_out_aux[7]~17_combout\) # ((\S[2]~input_o\ & \D_IN[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \D_IN[7]~input_o\,
	datad => \D_out_aux[7]~17_combout\,
	combout => \D_out_aux[7]~18_combout\);

-- Location: LCCOMB_X57_Y1_N4
\D_out_aux[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- D_out_aux(7) = (GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & (\D_out_aux[7]~18_combout\)) # (!GLOBAL(\D_out_aux[7]~2clkctrl_outclk\) & ((D_out_aux(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_out_aux[7]~18_combout\,
	datab => D_out_aux(7),
	datac => \D_out_aux[7]~2clkctrl_outclk\,
	combout => D_out_aux(7));

ww_D_OUT(0) <= \D_OUT[0]~output_o\;

ww_D_OUT(1) <= \D_OUT[1]~output_o\;

ww_D_OUT(2) <= \D_OUT[2]~output_o\;

ww_D_OUT(3) <= \D_OUT[3]~output_o\;

ww_D_OUT(4) <= \D_OUT[4]~output_o\;

ww_D_OUT(5) <= \D_OUT[5]~output_o\;

ww_D_OUT(6) <= \D_OUT[6]~output_o\;

ww_D_OUT(7) <= \D_OUT[7]~output_o\;
END structure;


