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

-- DATE "11/21/2023 11:37:51"

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

ENTITY 	control_path IS
    PORT (
	CLK : IN std_logic;
	EN : IN std_logic;
	RST : IN std_logic;
	igual : OUT std_logic
	);
END control_path;

-- Design Ports Information
-- igual	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_path IS
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
SIGNAL ww_igual : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \igual~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S0~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S0~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S1~0_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S1~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S2~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S2~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S3~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S3~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S4~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S4~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S5~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S5~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S6~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S6~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S7~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S7~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S8~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S8~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S9~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S9~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S10~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S10~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S11~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S11~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S12~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S12~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S13~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S13~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S14~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S14~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S15~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S15~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S16~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S16~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S17~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S17~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S18~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S18~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S19~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S19~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S20~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S20~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S21~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S21~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S22~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S22~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S23~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S23~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S24~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S24~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S25~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S25~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S26~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S26~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S27~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S27~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S28~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S28~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S29~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S29~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S30~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S30~q\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S31~feeder_combout\ : std_logic;
SIGNAL \contar_comparar|counter|PS.S31~q\ : std_logic;

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
igual <= ww_igual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N16
\igual~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contar_comparar|counter|PS.S31~q\,
	devoe => ww_devoe,
	o => \igual~output_o\);

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

-- Location: LCCOMB_X54_Y1_N6
\contar_comparar|counter|PS.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S0~0_combout\ = !\contar_comparar|counter|PS.S31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S31~q\,
	combout => \contar_comparar|counter|PS.S0~0_combout\);

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

-- Location: IOIBUF_X54_Y0_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: FF_X54_Y1_N7
\contar_comparar|counter|PS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S0~q\);

-- Location: LCCOMB_X54_Y1_N0
\contar_comparar|counter|PS.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S1~0_combout\ = !\contar_comparar|counter|PS.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S0~q\,
	combout => \contar_comparar|counter|PS.S1~0_combout\);

-- Location: FF_X54_Y1_N1
\contar_comparar|counter|PS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S1~q\);

-- Location: LCCOMB_X54_Y1_N2
\contar_comparar|counter|PS.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S2~feeder_combout\ = \contar_comparar|counter|PS.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S1~q\,
	combout => \contar_comparar|counter|PS.S2~feeder_combout\);

-- Location: FF_X54_Y1_N3
\contar_comparar|counter|PS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S2~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S2~q\);

-- Location: LCCOMB_X54_Y1_N16
\contar_comparar|counter|PS.S3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S3~feeder_combout\ = \contar_comparar|counter|PS.S2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S2~q\,
	combout => \contar_comparar|counter|PS.S3~feeder_combout\);

-- Location: FF_X54_Y1_N17
\contar_comparar|counter|PS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S3~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S3~q\);

-- Location: LCCOMB_X54_Y1_N22
\contar_comparar|counter|PS.S4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S4~feeder_combout\ = \contar_comparar|counter|PS.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S3~q\,
	combout => \contar_comparar|counter|PS.S4~feeder_combout\);

-- Location: FF_X54_Y1_N23
\contar_comparar|counter|PS.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S4~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S4~q\);

-- Location: LCCOMB_X53_Y1_N30
\contar_comparar|counter|PS.S5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S5~feeder_combout\ = \contar_comparar|counter|PS.S4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S4~q\,
	combout => \contar_comparar|counter|PS.S5~feeder_combout\);

-- Location: FF_X53_Y1_N31
\contar_comparar|counter|PS.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S5~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S5~q\);

-- Location: LCCOMB_X53_Y1_N24
\contar_comparar|counter|PS.S6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S6~feeder_combout\ = \contar_comparar|counter|PS.S5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S5~q\,
	combout => \contar_comparar|counter|PS.S6~feeder_combout\);

-- Location: FF_X53_Y1_N25
\contar_comparar|counter|PS.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S6~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S6~q\);

-- Location: LCCOMB_X53_Y1_N2
\contar_comparar|counter|PS.S7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S7~feeder_combout\ = \contar_comparar|counter|PS.S6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S6~q\,
	combout => \contar_comparar|counter|PS.S7~feeder_combout\);

-- Location: FF_X53_Y1_N3
\contar_comparar|counter|PS.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S7~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S7~q\);

-- Location: LCCOMB_X53_Y1_N12
\contar_comparar|counter|PS.S8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S8~feeder_combout\ = \contar_comparar|counter|PS.S7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S7~q\,
	combout => \contar_comparar|counter|PS.S8~feeder_combout\);

-- Location: FF_X53_Y1_N13
\contar_comparar|counter|PS.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S8~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S8~q\);

-- Location: LCCOMB_X53_Y1_N18
\contar_comparar|counter|PS.S9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S9~feeder_combout\ = \contar_comparar|counter|PS.S8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S8~q\,
	combout => \contar_comparar|counter|PS.S9~feeder_combout\);

-- Location: FF_X53_Y1_N19
\contar_comparar|counter|PS.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S9~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S9~q\);

-- Location: LCCOMB_X53_Y1_N28
\contar_comparar|counter|PS.S10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S10~feeder_combout\ = \contar_comparar|counter|PS.S9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S9~q\,
	combout => \contar_comparar|counter|PS.S10~feeder_combout\);

-- Location: FF_X53_Y1_N29
\contar_comparar|counter|PS.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S10~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S10~q\);

-- Location: LCCOMB_X53_Y1_N22
\contar_comparar|counter|PS.S11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S11~feeder_combout\ = \contar_comparar|counter|PS.S10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S10~q\,
	combout => \contar_comparar|counter|PS.S11~feeder_combout\);

-- Location: FF_X53_Y1_N23
\contar_comparar|counter|PS.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S11~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S11~q\);

-- Location: LCCOMB_X53_Y1_N20
\contar_comparar|counter|PS.S12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S12~feeder_combout\ = \contar_comparar|counter|PS.S11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S11~q\,
	combout => \contar_comparar|counter|PS.S12~feeder_combout\);

-- Location: FF_X53_Y1_N21
\contar_comparar|counter|PS.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S12~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S12~q\);

-- Location: LCCOMB_X53_Y1_N10
\contar_comparar|counter|PS.S13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S13~feeder_combout\ = \contar_comparar|counter|PS.S12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S12~q\,
	combout => \contar_comparar|counter|PS.S13~feeder_combout\);

-- Location: FF_X53_Y1_N11
\contar_comparar|counter|PS.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S13~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S13~q\);

-- Location: LCCOMB_X53_Y1_N16
\contar_comparar|counter|PS.S14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S14~feeder_combout\ = \contar_comparar|counter|PS.S13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S13~q\,
	combout => \contar_comparar|counter|PS.S14~feeder_combout\);

-- Location: FF_X53_Y1_N17
\contar_comparar|counter|PS.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S14~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S14~q\);

-- Location: LCCOMB_X53_Y1_N26
\contar_comparar|counter|PS.S15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S15~feeder_combout\ = \contar_comparar|counter|PS.S14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S14~q\,
	combout => \contar_comparar|counter|PS.S15~feeder_combout\);

-- Location: FF_X53_Y1_N27
\contar_comparar|counter|PS.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S15~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S15~q\);

-- Location: LCCOMB_X53_Y1_N0
\contar_comparar|counter|PS.S16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S16~feeder_combout\ = \contar_comparar|counter|PS.S15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S15~q\,
	combout => \contar_comparar|counter|PS.S16~feeder_combout\);

-- Location: FF_X53_Y1_N1
\contar_comparar|counter|PS.S16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S16~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S16~q\);

-- Location: LCCOMB_X53_Y1_N14
\contar_comparar|counter|PS.S17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S17~feeder_combout\ = \contar_comparar|counter|PS.S16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S16~q\,
	combout => \contar_comparar|counter|PS.S17~feeder_combout\);

-- Location: FF_X53_Y1_N15
\contar_comparar|counter|PS.S17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S17~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S17~q\);

-- Location: LCCOMB_X53_Y1_N4
\contar_comparar|counter|PS.S18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S18~feeder_combout\ = \contar_comparar|counter|PS.S17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S17~q\,
	combout => \contar_comparar|counter|PS.S18~feeder_combout\);

-- Location: FF_X53_Y1_N5
\contar_comparar|counter|PS.S18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S18~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S18~q\);

-- Location: LCCOMB_X53_Y1_N6
\contar_comparar|counter|PS.S19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S19~feeder_combout\ = \contar_comparar|counter|PS.S18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S18~q\,
	combout => \contar_comparar|counter|PS.S19~feeder_combout\);

-- Location: FF_X53_Y1_N7
\contar_comparar|counter|PS.S19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S19~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S19~q\);

-- Location: LCCOMB_X53_Y1_N8
\contar_comparar|counter|PS.S20~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S20~feeder_combout\ = \contar_comparar|counter|PS.S19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S19~q\,
	combout => \contar_comparar|counter|PS.S20~feeder_combout\);

-- Location: FF_X53_Y1_N9
\contar_comparar|counter|PS.S20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S20~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S20~q\);

-- Location: LCCOMB_X54_Y1_N12
\contar_comparar|counter|PS.S21~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S21~feeder_combout\ = \contar_comparar|counter|PS.S20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S20~q\,
	combout => \contar_comparar|counter|PS.S21~feeder_combout\);

-- Location: FF_X54_Y1_N13
\contar_comparar|counter|PS.S21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S21~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S21~q\);

-- Location: LCCOMB_X54_Y1_N30
\contar_comparar|counter|PS.S22~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S22~feeder_combout\ = \contar_comparar|counter|PS.S21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S21~q\,
	combout => \contar_comparar|counter|PS.S22~feeder_combout\);

-- Location: FF_X54_Y1_N31
\contar_comparar|counter|PS.S22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S22~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S22~q\);

-- Location: LCCOMB_X54_Y1_N4
\contar_comparar|counter|PS.S23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S23~feeder_combout\ = \contar_comparar|counter|PS.S22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S22~q\,
	combout => \contar_comparar|counter|PS.S23~feeder_combout\);

-- Location: FF_X54_Y1_N5
\contar_comparar|counter|PS.S23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S23~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S23~q\);

-- Location: LCCOMB_X54_Y1_N14
\contar_comparar|counter|PS.S24~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S24~feeder_combout\ = \contar_comparar|counter|PS.S23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S23~q\,
	combout => \contar_comparar|counter|PS.S24~feeder_combout\);

-- Location: FF_X54_Y1_N15
\contar_comparar|counter|PS.S24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S24~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S24~q\);

-- Location: LCCOMB_X54_Y1_N8
\contar_comparar|counter|PS.S25~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S25~feeder_combout\ = \contar_comparar|counter|PS.S24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S24~q\,
	combout => \contar_comparar|counter|PS.S25~feeder_combout\);

-- Location: FF_X54_Y1_N9
\contar_comparar|counter|PS.S25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S25~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S25~q\);

-- Location: LCCOMB_X54_Y1_N26
\contar_comparar|counter|PS.S26~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S26~feeder_combout\ = \contar_comparar|counter|PS.S25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S25~q\,
	combout => \contar_comparar|counter|PS.S26~feeder_combout\);

-- Location: FF_X54_Y1_N27
\contar_comparar|counter|PS.S26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S26~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S26~q\);

-- Location: LCCOMB_X54_Y1_N24
\contar_comparar|counter|PS.S27~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S27~feeder_combout\ = \contar_comparar|counter|PS.S26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar_comparar|counter|PS.S26~q\,
	combout => \contar_comparar|counter|PS.S27~feeder_combout\);

-- Location: FF_X54_Y1_N25
\contar_comparar|counter|PS.S27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S27~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S27~q\);

-- Location: LCCOMB_X54_Y1_N10
\contar_comparar|counter|PS.S28~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S28~feeder_combout\ = \contar_comparar|counter|PS.S27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S27~q\,
	combout => \contar_comparar|counter|PS.S28~feeder_combout\);

-- Location: FF_X54_Y1_N11
\contar_comparar|counter|PS.S28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S28~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S28~q\);

-- Location: LCCOMB_X54_Y1_N20
\contar_comparar|counter|PS.S29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S29~feeder_combout\ = \contar_comparar|counter|PS.S28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S28~q\,
	combout => \contar_comparar|counter|PS.S29~feeder_combout\);

-- Location: FF_X54_Y1_N21
\contar_comparar|counter|PS.S29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S29~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S29~q\);

-- Location: LCCOMB_X54_Y1_N18
\contar_comparar|counter|PS.S30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S30~feeder_combout\ = \contar_comparar|counter|PS.S29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S29~q\,
	combout => \contar_comparar|counter|PS.S30~feeder_combout\);

-- Location: FF_X54_Y1_N19
\contar_comparar|counter|PS.S30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S30~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S30~q\);

-- Location: LCCOMB_X54_Y1_N28
\contar_comparar|counter|PS.S31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar_comparar|counter|PS.S31~feeder_combout\ = \contar_comparar|counter|PS.S30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contar_comparar|counter|PS.S30~q\,
	combout => \contar_comparar|counter|PS.S31~feeder_combout\);

-- Location: FF_X54_Y1_N29
\contar_comparar|counter|PS.S31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \contar_comparar|counter|PS.S31~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar_comparar|counter|PS.S31~q\);

ww_igual <= \igual~output_o\;
END structure;


