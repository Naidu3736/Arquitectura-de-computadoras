-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/20/2026 21:12:31"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	s : OUT std_logic_vector(3 DOWNTO 0);
	c : OUT std_logic
	);
END adder;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_c : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \U0|s~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \U1|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \U2|s~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \U1|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \U3|s~combout\ : std_logic;
SIGNAL \U3|cout~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
s <= ww_s;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U1|ALT_INV_cout~0_combout\ <= NOT \U1|cout~0_combout\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;

-- Location: IOOBUF_X89_Y20_N79
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y23_N56
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|s~combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y20_N45
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y20_N96
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|s~combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X89_Y21_N39
\c~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|cout~0_combout\,
	devoe => ww_devoe,
	o => ww_c);

-- Location: IOIBUF_X89_Y21_N55
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\U0|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|s~0_combout\ = ( \b[0]~input_o\ & ( !\a[0]~input_o\ ) ) # ( !\b[0]~input_o\ & ( \a[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \U0|s~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X88_Y21_N39
\U1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s~combout\ = ( \a[1]~input_o\ & ( !\b[1]~input_o\ $ (((\a[0]~input_o\ & \b[0]~input_o\))) ) ) # ( !\a[1]~input_o\ & ( !\b[1]~input_o\ $ (((!\a[0]~input_o\) # (!\b[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111011100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \U1|s~combout\);

-- Location: IOIBUF_X89_Y21_N4
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X88_Y21_N42
\U2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|s~combout\ = ( \a[0]~input_o\ & ( \a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((\b[0]~input_o\) # (\b[1]~input_o\)))) ) ) ) # ( !\a[0]~input_o\ & ( \a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\b[1]~input_o\ $ (\b[2]~input_o\)) ) ) ) # ( 
-- \a[0]~input_o\ & ( !\a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((\b[1]~input_o\ & \b[0]~input_o\)))) ) ) ) # ( !\a[0]~input_o\ & ( !\a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100110100101101001011010010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \U2|s~combout\);

-- Location: IOIBUF_X89_Y23_N4
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y21_N18
\U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|cout~0_combout\ = ( \a[1]~input_o\ & ( ((\a[0]~input_o\ & \b[0]~input_o\)) # (\b[1]~input_o\) ) ) # ( !\a[1]~input_o\ & ( (\b[1]~input_o\ & (\a[0]~input_o\ & \b[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \U1|cout~0_combout\);

-- Location: IOIBUF_X89_Y25_N4
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X88_Y21_N24
\U3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|s~combout\ = ( \a[2]~input_o\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((\U1|cout~0_combout\) # (\b[2]~input_o\)))) ) ) # ( !\a[2]~input_o\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((\b[2]~input_o\ & \U1|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \U1|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \U3|s~combout\);

-- Location: LABCELL_X88_Y21_N27
\U3|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|cout~0_combout\ = ( \U1|cout~0_combout\ & ( (!\a[3]~input_o\ & (\b[3]~input_o\ & ((\a[2]~input_o\) # (\b[2]~input_o\)))) # (\a[3]~input_o\ & (((\a[2]~input_o\) # (\b[3]~input_o\)) # (\b[2]~input_o\))) ) ) # ( !\U1|cout~0_combout\ & ( (!\a[3]~input_o\ 
-- & (\b[2]~input_o\ & (\b[3]~input_o\ & \a[2]~input_o\))) # (\a[3]~input_o\ & (((\b[2]~input_o\ & \a[2]~input_o\)) # (\b[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	dataf => \U1|ALT_INV_cout~0_combout\,
	combout => \U3|cout~0_combout\);

-- Location: LABCELL_X36_Y27_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


