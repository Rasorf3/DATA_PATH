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

-- DATE "11/17/2023 14:56:38"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_32 IS
    PORT (
	CLK : IN std_logic;
	EN : IN std_logic;
	RST : IN std_logic;
	numero : OUT std_logic_vector(4 DOWNTO 0)
	);
END counter_32;

-- Design Ports Information
-- numero[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_numero : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \numero[0]~output_o\ : std_logic;
SIGNAL \numero[1]~output_o\ : std_logic;
SIGNAL \numero[2]~output_o\ : std_logic;
SIGNAL \numero[3]~output_o\ : std_logic;
SIGNAL \numero[4]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \PS.S27~q\ : std_logic;
SIGNAL \PS.S28~feeder_combout\ : std_logic;
SIGNAL \PS.S28~q\ : std_logic;
SIGNAL \PS.S29~q\ : std_logic;
SIGNAL \PS.S30~q\ : std_logic;
SIGNAL \PS.S31~feeder_combout\ : std_logic;
SIGNAL \PS.S31~q\ : std_logic;
SIGNAL \PS.S0~0_combout\ : std_logic;
SIGNAL \PS.S0~q\ : std_logic;
SIGNAL \PS.S1~0_combout\ : std_logic;
SIGNAL \PS.S1~q\ : std_logic;
SIGNAL \PS.S2~feeder_combout\ : std_logic;
SIGNAL \PS.S2~q\ : std_logic;
SIGNAL \PS.S3~feeder_combout\ : std_logic;
SIGNAL \PS.S3~q\ : std_logic;
SIGNAL \PS.S4~feeder_combout\ : std_logic;
SIGNAL \PS.S4~q\ : std_logic;
SIGNAL \PS.S5~feeder_combout\ : std_logic;
SIGNAL \PS.S5~q\ : std_logic;
SIGNAL \PS.S6~q\ : std_logic;
SIGNAL \PS.S7~q\ : std_logic;
SIGNAL \PS.S8~feeder_combout\ : std_logic;
SIGNAL \PS.S8~q\ : std_logic;
SIGNAL \PS.S9~feeder_combout\ : std_logic;
SIGNAL \PS.S9~q\ : std_logic;
SIGNAL \PS.S10~q\ : std_logic;
SIGNAL \PS.S11~feeder_combout\ : std_logic;
SIGNAL \PS.S11~q\ : std_logic;
SIGNAL \PS.S12~feeder_combout\ : std_logic;
SIGNAL \PS.S12~q\ : std_logic;
SIGNAL \PS.S13~feeder_combout\ : std_logic;
SIGNAL \PS.S13~q\ : std_logic;
SIGNAL \PS.S14~feeder_combout\ : std_logic;
SIGNAL \PS.S14~q\ : std_logic;
SIGNAL \PS.S15~feeder_combout\ : std_logic;
SIGNAL \PS.S15~q\ : std_logic;
SIGNAL \PS.S16~feeder_combout\ : std_logic;
SIGNAL \PS.S16~q\ : std_logic;
SIGNAL \PS.S17~feeder_combout\ : std_logic;
SIGNAL \PS.S17~q\ : std_logic;
SIGNAL \PS.S18~feeder_combout\ : std_logic;
SIGNAL \PS.S18~q\ : std_logic;
SIGNAL \PS.S19~feeder_combout\ : std_logic;
SIGNAL \PS.S19~q\ : std_logic;
SIGNAL \PS.S20~feeder_combout\ : std_logic;
SIGNAL \PS.S20~q\ : std_logic;
SIGNAL \PS.S21~feeder_combout\ : std_logic;
SIGNAL \PS.S21~q\ : std_logic;
SIGNAL \PS.S22~q\ : std_logic;
SIGNAL \PS.S23~q\ : std_logic;
SIGNAL \PS.S24~feeder_combout\ : std_logic;
SIGNAL \PS.S24~q\ : std_logic;
SIGNAL \PS.S25~q\ : std_logic;
SIGNAL \PS.S26~feeder_combout\ : std_logic;
SIGNAL \PS.S26~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr3~2_combout\ : std_logic;
SIGNAL \WideOr2~3_combout\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \WideOr2~4_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr1~2_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_EN <= EN;
ww_RST <= RST;
numero <= ww_numero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_WideOr0~3_combout\ <= NOT \WideOr0~3_combout\;
\ALT_INV_WideOr1~2_combout\ <= NOT \WideOr1~2_combout\;
\ALT_INV_WideOr2~4_combout\ <= NOT \WideOr2~4_combout\;
\ALT_INV_WideOr3~2_combout\ <= NOT \WideOr3~2_combout\;
\ALT_INV_WideOr4~2_combout\ <= NOT \WideOr4~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y73_N9
\numero[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \numero[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\numero[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \numero[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\numero[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~4_combout\,
	devoe => ww_devoe,
	o => \numero[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\numero[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \numero[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\numero[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~3_combout\,
	devoe => ww_devoe,
	o => \numero[4]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: IOIBUF_X38_Y73_N15
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: FF_X39_Y72_N7
\PS.S27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S26~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S27~q\);

-- Location: LCCOMB_X39_Y72_N30
\PS.S28~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S28~feeder_combout\ = \PS.S27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S27~q\,
	combout => \PS.S28~feeder_combout\);

-- Location: FF_X39_Y72_N31
\PS.S28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S28~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S28~q\);

-- Location: FF_X39_Y72_N5
\PS.S29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S28~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S29~q\);

-- Location: FF_X39_Y72_N3
\PS.S30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S29~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S30~q\);

-- Location: LCCOMB_X39_Y72_N10
\PS.S31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S31~feeder_combout\ = \PS.S30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S30~q\,
	combout => \PS.S31~feeder_combout\);

-- Location: FF_X39_Y72_N11
\PS.S31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S31~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S31~q\);

-- Location: LCCOMB_X40_Y72_N28
\PS.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S0~0_combout\ = !\PS.S31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S31~q\,
	combout => \PS.S0~0_combout\);

-- Location: FF_X40_Y72_N29
\PS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S0~q\);

-- Location: LCCOMB_X41_Y72_N28
\PS.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S1~0_combout\ = !\PS.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S0~q\,
	combout => \PS.S1~0_combout\);

-- Location: FF_X41_Y72_N29
\PS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S1~q\);

-- Location: LCCOMB_X41_Y72_N20
\PS.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S2~feeder_combout\ = \PS.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S1~q\,
	combout => \PS.S2~feeder_combout\);

-- Location: FF_X41_Y72_N21
\PS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S2~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S2~q\);

-- Location: LCCOMB_X41_Y72_N18
\PS.S3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S3~feeder_combout\ = \PS.S2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S2~q\,
	combout => \PS.S3~feeder_combout\);

-- Location: FF_X41_Y72_N19
\PS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S3~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S3~q\);

-- Location: LCCOMB_X41_Y72_N24
\PS.S4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S4~feeder_combout\ = \PS.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S3~q\,
	combout => \PS.S4~feeder_combout\);

-- Location: FF_X41_Y72_N25
\PS.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S4~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S4~q\);

-- Location: LCCOMB_X41_Y72_N4
\PS.S5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S5~feeder_combout\ = \PS.S4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S4~q\,
	combout => \PS.S5~feeder_combout\);

-- Location: FF_X41_Y72_N5
\PS.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S5~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S5~q\);

-- Location: FF_X41_Y72_N31
\PS.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S5~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S6~q\);

-- Location: FF_X41_Y72_N7
\PS.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S6~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S7~q\);

-- Location: LCCOMB_X41_Y72_N0
\PS.S8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S8~feeder_combout\ = \PS.S7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S7~q\,
	combout => \PS.S8~feeder_combout\);

-- Location: FF_X41_Y72_N1
\PS.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S8~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S8~q\);

-- Location: LCCOMB_X41_Y72_N8
\PS.S9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S9~feeder_combout\ = \PS.S8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S8~q\,
	combout => \PS.S9~feeder_combout\);

-- Location: FF_X41_Y72_N9
\PS.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S9~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S9~q\);

-- Location: FF_X41_Y72_N17
\PS.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S9~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S10~q\);

-- Location: LCCOMB_X41_Y72_N26
\PS.S11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S11~feeder_combout\ = \PS.S10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S10~q\,
	combout => \PS.S11~feeder_combout\);

-- Location: FF_X41_Y72_N27
\PS.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S11~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S11~q\);

-- Location: LCCOMB_X40_Y72_N10
\PS.S12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S12~feeder_combout\ = \PS.S11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S11~q\,
	combout => \PS.S12~feeder_combout\);

-- Location: FF_X40_Y72_N11
\PS.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S12~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S12~q\);

-- Location: LCCOMB_X40_Y72_N6
\PS.S13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S13~feeder_combout\ = \PS.S12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S12~q\,
	combout => \PS.S13~feeder_combout\);

-- Location: FF_X40_Y72_N7
\PS.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S13~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S13~q\);

-- Location: LCCOMB_X40_Y72_N24
\PS.S14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S14~feeder_combout\ = \PS.S13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S13~q\,
	combout => \PS.S14~feeder_combout\);

-- Location: FF_X40_Y72_N25
\PS.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S14~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S14~q\);

-- Location: LCCOMB_X40_Y72_N18
\PS.S15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S15~feeder_combout\ = \PS.S14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S14~q\,
	combout => \PS.S15~feeder_combout\);

-- Location: FF_X40_Y72_N19
\PS.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S15~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S15~q\);

-- Location: LCCOMB_X40_Y72_N22
\PS.S16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S16~feeder_combout\ = \PS.S15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S15~q\,
	combout => \PS.S16~feeder_combout\);

-- Location: FF_X40_Y72_N23
\PS.S16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S16~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S16~q\);

-- Location: LCCOMB_X39_Y72_N16
\PS.S17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S17~feeder_combout\ = \PS.S16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S16~q\,
	combout => \PS.S17~feeder_combout\);

-- Location: FF_X39_Y72_N17
\PS.S17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S17~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S17~q\);

-- Location: LCCOMB_X39_Y72_N24
\PS.S18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S18~feeder_combout\ = \PS.S17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S17~q\,
	combout => \PS.S18~feeder_combout\);

-- Location: FF_X39_Y72_N25
\PS.S18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S18~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S18~q\);

-- Location: LCCOMB_X39_Y72_N12
\PS.S19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S19~feeder_combout\ = \PS.S18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S18~q\,
	combout => \PS.S19~feeder_combout\);

-- Location: FF_X39_Y72_N13
\PS.S19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S19~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S19~q\);

-- Location: LCCOMB_X39_Y72_N20
\PS.S20~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S20~feeder_combout\ = \PS.S19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S19~q\,
	combout => \PS.S20~feeder_combout\);

-- Location: FF_X39_Y72_N21
\PS.S20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S20~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S20~q\);

-- Location: LCCOMB_X39_Y72_N14
\PS.S21~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S21~feeder_combout\ = \PS.S20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S20~q\,
	combout => \PS.S21~feeder_combout\);

-- Location: FF_X39_Y72_N15
\PS.S21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S21~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S21~q\);

-- Location: FF_X39_Y72_N23
\PS.S22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S21~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S22~q\);

-- Location: FF_X39_Y72_N29
\PS.S23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S22~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S23~q\);

-- Location: LCCOMB_X39_Y72_N8
\PS.S24~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S24~feeder_combout\ = \PS.S23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S23~q\,
	combout => \PS.S24~feeder_combout\);

-- Location: FF_X39_Y72_N9
\PS.S24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S24~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S24~q\);

-- Location: FF_X39_Y72_N19
\PS.S25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS.S24~q\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S25~q\);

-- Location: LCCOMB_X39_Y72_N26
\PS.S26~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.S26~feeder_combout\ = \PS.S25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS.S25~q\,
	combout => \PS.S26~feeder_combout\);

-- Location: FF_X39_Y72_N27
\PS.S26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PS.S26~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S26~q\);

-- Location: LCCOMB_X39_Y72_N2
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\PS.S26~q\) # ((\PS.S24~q\) # ((\PS.S30~q\) # (\PS.S28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S26~q\,
	datab => \PS.S24~q\,
	datac => \PS.S30~q\,
	datad => \PS.S28~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X39_Y72_N22
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\PS.S16~q\ & (!\PS.S18~q\ & (!\PS.S22~q\ & !\PS.S20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S16~q\,
	datab => \PS.S18~q\,
	datac => \PS.S22~q\,
	datad => \PS.S20~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X41_Y72_N30
\WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (!\PS.S2~q\ & (\PS.S0~q\ & (!\PS.S6~q\ & !\PS.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S2~q\,
	datab => \PS.S0~q\,
	datac => \PS.S6~q\,
	datad => \PS.S4~q\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X41_Y72_N22
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\PS.S12~q\ & (!\PS.S14~q\ & (!\PS.S10~q\ & !\PS.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S12~q\,
	datab => \PS.S14~q\,
	datac => \PS.S10~q\,
	datad => \PS.S8~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X40_Y72_N4
\WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (\WideOr4~0_combout\) # (((!\WideOr0~0_combout\) # (!\WideOr4~1_combout\)) # (!\WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr1~0_combout\,
	datac => \WideOr4~1_combout\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X41_Y72_N14
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\PS.S8~q\ & (\PS.S0~q\ & (!\PS.S9~q\ & !\PS.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S8~q\,
	datab => \PS.S0~q\,
	datac => \PS.S9~q\,
	datad => \PS.S1~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X39_Y72_N18
\WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (!\PS.S16~q\ & (!\PS.S24~q\ & (!\PS.S25~q\ & !\PS.S17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S16~q\,
	datab => \PS.S24~q\,
	datac => \PS.S25~q\,
	datad => \PS.S17~q\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X41_Y72_N10
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\PS.S12~q\) # ((\PS.S13~q\) # ((\PS.S5~q\) # (\PS.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S12~q\,
	datab => \PS.S13~q\,
	datac => \PS.S5~q\,
	datad => \PS.S4~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X39_Y72_N4
\WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\PS.S28~q\) # ((\PS.S21~q\) # ((\PS.S29~q\) # (\PS.S20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S28~q\,
	datab => \PS.S21~q\,
	datac => \PS.S29~q\,
	datad => \PS.S20~q\,
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X40_Y72_N20
\WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~2_combout\ = (((\WideOr3~0_combout\) # (\WideOr3~1_combout\)) # (!\WideOr2~1_combout\)) # (!\WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr2~1_combout\,
	datac => \WideOr3~0_combout\,
	datad => \WideOr3~1_combout\,
	combout => \WideOr3~2_combout\);

-- Location: LCCOMB_X39_Y72_N6
\WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~3_combout\ = (\PS.S26~q\) # ((\PS.S18~q\) # ((\PS.S27~q\) # (\PS.S19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S26~q\,
	datab => \PS.S18~q\,
	datac => \PS.S27~q\,
	datad => \PS.S19~q\,
	combout => \WideOr2~3_combout\);

-- Location: LCCOMB_X41_Y72_N2
\WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~2_combout\ = (\PS.S11~q\) # ((\PS.S3~q\) # ((\PS.S10~q\) # (\PS.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S11~q\,
	datab => \PS.S3~q\,
	datac => \PS.S10~q\,
	datad => \PS.S2~q\,
	combout => \WideOr2~2_combout\);

-- Location: LCCOMB_X40_Y72_N2
\WideOr2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~4_combout\ = (((\WideOr2~3_combout\) # (\WideOr2~2_combout\)) # (!\WideOr2~1_combout\)) # (!\WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr2~1_combout\,
	datac => \WideOr2~3_combout\,
	datad => \WideOr2~2_combout\,
	combout => \WideOr2~4_combout\);

-- Location: LCCOMB_X41_Y72_N6
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (!\PS.S3~q\ & (!\PS.S5~q\ & (!\PS.S7~q\ & !\PS.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S3~q\,
	datab => \PS.S5~q\,
	datac => \PS.S7~q\,
	datad => \PS.S1~q\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X39_Y72_N28
\WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\PS.S19~q\) # ((\PS.S21~q\) # ((\PS.S23~q\) # (\PS.S17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S19~q\,
	datab => \PS.S21~q\,
	datac => \PS.S23~q\,
	datad => \PS.S17~q\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X40_Y72_N12
\WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~2_combout\ = (((\WideOr1~1_combout\) # (!\WideOr4~1_combout\)) # (!\WideOr1~0_combout\)) # (!\WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~1_combout\,
	datab => \WideOr1~0_combout\,
	datac => \WideOr4~1_combout\,
	datad => \WideOr1~1_combout\,
	combout => \WideOr1~2_combout\);

-- Location: LCCOMB_X41_Y72_N16
\WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\PS.S11~q\) # ((\PS.S13~q\) # ((\PS.S9~q\) # (\PS.S15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S11~q\,
	datab => \PS.S13~q\,
	datac => \PS.S9~q\,
	datad => \PS.S15~q\,
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X41_Y72_N12
\WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (((\WideOr0~2_combout\) # (!\WideOr0~1_combout\)) # (!\WideOr4~1_combout\)) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \WideOr4~1_combout\,
	datac => \WideOr0~1_combout\,
	datad => \WideOr0~2_combout\,
	combout => \WideOr0~3_combout\);

ww_numero(0) <= \numero[0]~output_o\;

ww_numero(1) <= \numero[1]~output_o\;

ww_numero(2) <= \numero[2]~output_o\;

ww_numero(3) <= \numero[3]~output_o\;

ww_numero(4) <= \numero[4]~output_o\;
END structure;


