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

-- DATE "11/20/2023 16:39:28"

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

ENTITY 	restador_n IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	r : OUT std_logic_vector(15 DOWNTO 0);
	cout : OUT std_logic
	);
END restador_n;

-- Design Ports Information
-- r[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[10]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[11]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[12]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[13]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[14]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[15]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador_n IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \r[7]~output_o\ : std_logic;
SIGNAL \r[8]~output_o\ : std_logic;
SIGNAL \r[9]~output_o\ : std_logic;
SIGNAL \r[10]~output_o\ : std_logic;
SIGNAL \r[11]~output_o\ : std_logic;
SIGNAL \r[12]~output_o\ : std_logic;
SIGNAL \r[13]~output_o\ : std_logic;
SIGNAL \r[14]~output_o\ : std_logic;
SIGNAL \r[15]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \adder:0:data|res~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \adder:1:data|res~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \adder:1:data|cout~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \adder:2:data|res~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \adder:2:data|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \adder:3:data|res~0_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \adder:3:data|cout~0_combout\ : std_logic;
SIGNAL \adder:4:data|res~0_combout\ : std_logic;
SIGNAL \adder:4:data|cout~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \adder:5:data|res~0_combout\ : std_logic;
SIGNAL \adder:5:data|cout~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \adder:6:data|res~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \adder:6:data|cout~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \adder:7:data|res~0_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \adder:7:data|cout~0_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \adder:8:data|res~0_combout\ : std_logic;
SIGNAL \adder:8:data|cout~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \adder:9:data|res~0_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \adder:9:data|cout~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \adder:10:data|res~0_combout\ : std_logic;
SIGNAL \adder:10:data|cout~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \adder:11:data|res~0_combout\ : std_logic;
SIGNAL \adder:11:data|cout~0_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \adder:12:data|res~0_combout\ : std_logic;
SIGNAL \adder:12:data|cout~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \adder:13:data|res~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \adder:13:data|cout~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \adder:14:data|res~0_combout\ : std_logic;
SIGNAL \adder:14:data|cout~0_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \adder:15:data|res~0_combout\ : std_logic;
SIGNAL \adder:15:data|cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
r <= ww_r;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X62_Y0_N16
\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:0:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:1:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:2:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:3:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:4:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:5:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:6:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:7:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[7]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\r[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:8:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[8]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\r[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:9:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[9]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\r[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:10:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[10]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\r[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:11:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[11]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\r[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:12:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[12]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\r[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:13:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[13]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\r[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:14:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[14]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\r[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:15:data|res~0_combout\,
	devoe => ww_devoe,
	o => \r[15]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder:15:data|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X67_Y0_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X72_Y1_N8
\adder:0:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:0:data|res~0_combout\ = \a[0]~input_o\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	combout => \adder:0:data|res~0_combout\);

-- Location: IOIBUF_X67_Y0_N15
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X72_Y1_N26
\adder:1:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:1:data|res~0_combout\ = \b[1]~input_o\ $ (\a[1]~input_o\ $ (((!\a[0]~input_o\ & \b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \adder:1:data|res~0_combout\);

-- Location: IOIBUF_X65_Y0_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X72_Y1_N4
\adder:1:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:1:data|cout~0_combout\ = (\b[1]~input_o\ & (((!\a[0]~input_o\ & \b[0]~input_o\)) # (!\a[1]~input_o\))) # (!\b[1]~input_o\ & (!\a[0]~input_o\ & (\b[0]~input_o\ & !\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \adder:1:data|cout~0_combout\);

-- Location: IOIBUF_X79_Y0_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X72_Y1_N30
\adder:2:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:2:data|res~0_combout\ = \a[2]~input_o\ $ (\adder:1:data|cout~0_combout\ $ (\b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \adder:1:data|cout~0_combout\,
	datad => \b[2]~input_o\,
	combout => \adder:2:data|res~0_combout\);

-- Location: IOIBUF_X74_Y0_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X72_Y1_N0
\adder:2:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:2:data|cout~0_combout\ = (\a[2]~input_o\ & (\adder:1:data|cout~0_combout\ & \b[2]~input_o\)) # (!\a[2]~input_o\ & ((\adder:1:data|cout~0_combout\) # (\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \adder:1:data|cout~0_combout\,
	datad => \b[2]~input_o\,
	combout => \adder:2:data|cout~0_combout\);

-- Location: IOIBUF_X74_Y0_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X72_Y1_N2
\adder:3:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:3:data|res~0_combout\ = \a[3]~input_o\ $ (\adder:2:data|cout~0_combout\ $ (\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \adder:2:data|cout~0_combout\,
	datad => \b[3]~input_o\,
	combout => \adder:3:data|res~0_combout\);

-- Location: IOIBUF_X72_Y0_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X72_Y1_N20
\adder:3:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:3:data|cout~0_combout\ = (\a[3]~input_o\ & (\adder:2:data|cout~0_combout\ & \b[3]~input_o\)) # (!\a[3]~input_o\ & ((\adder:2:data|cout~0_combout\) # (\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \adder:2:data|cout~0_combout\,
	datad => \b[3]~input_o\,
	combout => \adder:3:data|cout~0_combout\);

-- Location: LCCOMB_X72_Y1_N14
\adder:4:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:4:data|res~0_combout\ = \b[4]~input_o\ $ (\a[4]~input_o\ $ (\adder:3:data|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \adder:3:data|cout~0_combout\,
	combout => \adder:4:data|res~0_combout\);

-- Location: LCCOMB_X72_Y1_N16
\adder:4:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:4:data|cout~0_combout\ = (\b[4]~input_o\ & ((\adder:3:data|cout~0_combout\) # (!\a[4]~input_o\))) # (!\b[4]~input_o\ & (!\a[4]~input_o\ & \adder:3:data|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \adder:3:data|cout~0_combout\,
	combout => \adder:4:data|cout~0_combout\);

-- Location: IOIBUF_X65_Y0_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X72_Y1_N18
\adder:5:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:5:data|res~0_combout\ = \adder:4:data|cout~0_combout\ $ (\a[5]~input_o\ $ (\b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder:4:data|cout~0_combout\,
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \adder:5:data|res~0_combout\);

-- Location: LCCOMB_X72_Y1_N12
\adder:5:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:5:data|cout~0_combout\ = (\adder:4:data|cout~0_combout\ & ((\b[5]~input_o\) # (!\a[5]~input_o\))) # (!\adder:4:data|cout~0_combout\ & (!\a[5]~input_o\ & \b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder:4:data|cout~0_combout\,
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \adder:5:data|cout~0_combout\);

-- Location: IOIBUF_X69_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X72_Y1_N22
\adder:6:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:6:data|res~0_combout\ = \adder:5:data|cout~0_combout\ $ (\a[6]~input_o\ $ (\b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:5:data|cout~0_combout\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \adder:6:data|res~0_combout\);

-- Location: IOIBUF_X74_Y0_N1
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X72_Y1_N24
\adder:6:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:6:data|cout~0_combout\ = (\adder:5:data|cout~0_combout\ & ((\b[6]~input_o\) # (!\a[6]~input_o\))) # (!\adder:5:data|cout~0_combout\ & (!\a[6]~input_o\ & \b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:5:data|cout~0_combout\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \adder:6:data|cout~0_combout\);

-- Location: IOIBUF_X65_Y0_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X72_Y1_N10
\adder:7:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:7:data|res~0_combout\ = \a[7]~input_o\ $ (\adder:6:data|cout~0_combout\ $ (\b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \adder:6:data|cout~0_combout\,
	datac => \b[7]~input_o\,
	combout => \adder:7:data|res~0_combout\);

-- Location: IOIBUF_X83_Y73_N8
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X72_Y1_N28
\adder:7:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:7:data|cout~0_combout\ = (\a[7]~input_o\ & (\adder:6:data|cout~0_combout\ & \b[7]~input_o\)) # (!\a[7]~input_o\ & ((\adder:6:data|cout~0_combout\) # (\b[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \adder:6:data|cout~0_combout\,
	datac => \b[7]~input_o\,
	combout => \adder:7:data|cout~0_combout\);

-- Location: IOIBUF_X85_Y73_N8
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X81_Y72_N0
\adder:8:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:8:data|res~0_combout\ = \b[8]~input_o\ $ (\adder:7:data|cout~0_combout\ $ (\a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datac => \adder:7:data|cout~0_combout\,
	datad => \a[8]~input_o\,
	combout => \adder:8:data|res~0_combout\);

-- Location: LCCOMB_X81_Y72_N10
\adder:8:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:8:data|cout~0_combout\ = (\b[8]~input_o\ & ((\adder:7:data|cout~0_combout\) # (!\a[8]~input_o\))) # (!\b[8]~input_o\ & (\adder:7:data|cout~0_combout\ & !\a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datac => \adder:7:data|cout~0_combout\,
	datad => \a[8]~input_o\,
	combout => \adder:8:data|cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N15
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X81_Y72_N4
\adder:9:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:9:data|res~0_combout\ = \adder:8:data|cout~0_combout\ $ (\a[9]~input_o\ $ (\b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:8:data|cout~0_combout\,
	datac => \a[9]~input_o\,
	datad => \b[9]~input_o\,
	combout => \adder:9:data|res~0_combout\);

-- Location: IOIBUF_X74_Y73_N22
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X81_Y72_N22
\adder:9:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:9:data|cout~0_combout\ = (\adder:8:data|cout~0_combout\ & ((\b[9]~input_o\) # (!\a[9]~input_o\))) # (!\adder:8:data|cout~0_combout\ & (!\a[9]~input_o\ & \b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:8:data|cout~0_combout\,
	datac => \a[9]~input_o\,
	datad => \b[9]~input_o\,
	combout => \adder:9:data|cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X81_Y72_N16
\adder:10:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:10:data|res~0_combout\ = \b[10]~input_o\ $ (\adder:9:data|cout~0_combout\ $ (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[10]~input_o\,
	datac => \adder:9:data|cout~0_combout\,
	datad => \a[10]~input_o\,
	combout => \adder:10:data|res~0_combout\);

-- Location: LCCOMB_X81_Y72_N26
\adder:10:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:10:data|cout~0_combout\ = (\b[10]~input_o\ & ((\adder:9:data|cout~0_combout\) # (!\a[10]~input_o\))) # (!\b[10]~input_o\ & (\adder:9:data|cout~0_combout\ & !\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[10]~input_o\,
	datac => \adder:9:data|cout~0_combout\,
	datad => \a[10]~input_o\,
	combout => \adder:10:data|cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X81_Y72_N12
\adder:11:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:11:data|res~0_combout\ = \adder:10:data|cout~0_combout\ $ (\a[11]~input_o\ $ (\b[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:10:data|cout~0_combout\,
	datac => \a[11]~input_o\,
	datad => \b[11]~input_o\,
	combout => \adder:11:data|res~0_combout\);

-- Location: LCCOMB_X81_Y72_N6
\adder:11:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:11:data|cout~0_combout\ = (\adder:10:data|cout~0_combout\ & ((\b[11]~input_o\) # (!\a[11]~input_o\))) # (!\adder:10:data|cout~0_combout\ & (!\a[11]~input_o\ & \b[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:10:data|cout~0_combout\,
	datac => \a[11]~input_o\,
	datad => \b[11]~input_o\,
	combout => \adder:11:data|cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X81_Y72_N24
\adder:12:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:12:data|res~0_combout\ = \adder:11:data|cout~0_combout\ $ (\b[12]~input_o\ $ (\a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:11:data|cout~0_combout\,
	datab => \b[12]~input_o\,
	datad => \a[12]~input_o\,
	combout => \adder:12:data|res~0_combout\);

-- Location: LCCOMB_X81_Y72_N2
\adder:12:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:12:data|cout~0_combout\ = (\adder:11:data|cout~0_combout\ & ((\b[12]~input_o\) # (!\a[12]~input_o\))) # (!\adder:11:data|cout~0_combout\ & (\b[12]~input_o\ & !\a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder:11:data|cout~0_combout\,
	datab => \b[12]~input_o\,
	datad => \a[12]~input_o\,
	combout => \adder:12:data|cout~0_combout\);

-- Location: IOIBUF_X74_Y73_N15
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X81_Y72_N28
\adder:13:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:13:data|res~0_combout\ = \adder:12:data|cout~0_combout\ $ (\a[13]~input_o\ $ (\b[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder:12:data|cout~0_combout\,
	datac => \a[13]~input_o\,
	datad => \b[13]~input_o\,
	combout => \adder:13:data|res~0_combout\);

-- Location: IOIBUF_X81_Y73_N8
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X81_Y72_N30
\adder:13:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:13:data|cout~0_combout\ = (\adder:12:data|cout~0_combout\ & ((\b[13]~input_o\) # (!\a[13]~input_o\))) # (!\adder:12:data|cout~0_combout\ & (!\a[13]~input_o\ & \b[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder:12:data|cout~0_combout\,
	datac => \a[13]~input_o\,
	datad => \b[13]~input_o\,
	combout => \adder:13:data|cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N22
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X81_Y72_N8
\adder:14:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:14:data|res~0_combout\ = \a[14]~input_o\ $ (\adder:13:data|cout~0_combout\ $ (\b[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datac => \adder:13:data|cout~0_combout\,
	datad => \b[14]~input_o\,
	combout => \adder:14:data|res~0_combout\);

-- Location: LCCOMB_X81_Y72_N18
\adder:14:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:14:data|cout~0_combout\ = (\a[14]~input_o\ & (\adder:13:data|cout~0_combout\ & \b[14]~input_o\)) # (!\a[14]~input_o\ & ((\adder:13:data|cout~0_combout\) # (\b[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datac => \adder:13:data|cout~0_combout\,
	datad => \b[14]~input_o\,
	combout => \adder:14:data|cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N15
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X81_Y72_N20
\adder:15:data|res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:15:data|res~0_combout\ = \adder:14:data|cout~0_combout\ $ (\a[15]~input_o\ $ (\b[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder:14:data|cout~0_combout\,
	datac => \a[15]~input_o\,
	datad => \b[15]~input_o\,
	combout => \adder:15:data|res~0_combout\);

-- Location: LCCOMB_X81_Y72_N14
\adder:15:data|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder:15:data|cout~0_combout\ = (\adder:14:data|cout~0_combout\ & ((\b[15]~input_o\) # (!\a[15]~input_o\))) # (!\adder:14:data|cout~0_combout\ & (!\a[15]~input_o\ & \b[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder:14:data|cout~0_combout\,
	datac => \a[15]~input_o\,
	datad => \b[15]~input_o\,
	combout => \adder:15:data|cout~0_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(6) <= \r[6]~output_o\;

ww_r(7) <= \r[7]~output_o\;

ww_r(8) <= \r[8]~output_o\;

ww_r(9) <= \r[9]~output_o\;

ww_r(10) <= \r[10]~output_o\;

ww_r(11) <= \r[11]~output_o\;

ww_r(12) <= \r[12]~output_o\;

ww_r(13) <= \r[13]~output_o\;

ww_r(14) <= \r[14]~output_o\;

ww_r(15) <= \r[15]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


