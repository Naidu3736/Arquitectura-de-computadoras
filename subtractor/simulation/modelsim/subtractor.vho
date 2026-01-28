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

-- DATE "01/26/2026 20:20:43"

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

ENTITY 	subtractor IS
    PORT (
	clk : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	s : BUFFER std_logic_vector(3 DOWNTO 0);
	c : BUFFER std_logic
	);
END subtractor;

-- Design Ports Information
-- clk	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF subtractor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_c : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \U_FIRST|s~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \GEN_SUBTRACTORS:1:U_MID|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \GEN_SUBTRACTORS:2:U_MID|s~combout\ : std_logic;
SIGNAL \GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \U_LAST|s~combout\ : std_logic;
SIGNAL \U_LAST|cout~0_combout\ : std_logic;
SIGNAL \GEN_SUBTRACTORS:1:U_MID|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_a <= a;
ww_b <= b;
s <= ww_s;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\GEN_SUBTRACTORS:1:U_MID|ALT_INV_cout~0_combout\ <= NOT \GEN_SUBTRACTORS:1:U_MID|cout~0_combout\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;

-- Location: IOOBUF_X89_Y11_N45
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIRST|s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y15_N5
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_SUBTRACTORS:1:U_MID|s~combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y9_N39
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_SUBTRACTORS:2:U_MID|s~combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y11_N62
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LAST|s~combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X89_Y11_N79
\c~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LAST|cout~0_combout\,
	devoe => ww_devoe,
	o => ww_c);

-- Location: IOIBUF_X89_Y13_N21
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X88_Y13_N0
\U_FIRST|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_FIRST|s~0_combout\ = ( \b[0]~input_o\ & ( !\a[0]~input_o\ ) ) # ( !\b[0]~input_o\ & ( \a[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \U_FIRST|s~0_combout\);

-- Location: IOIBUF_X89_Y15_N21
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X88_Y13_N39
\GEN_SUBTRACTORS:1:U_MID|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_SUBTRACTORS:1:U_MID|s~combout\ = ( \b[1]~input_o\ & ( \b[0]~input_o\ & ( !\a[0]~input_o\ $ (!\a[1]~input_o\) ) ) ) # ( !\b[1]~input_o\ & ( \b[0]~input_o\ & ( !\a[0]~input_o\ $ (\a[1]~input_o\) ) ) ) # ( \b[1]~input_o\ & ( !\b[0]~input_o\ & ( 
-- !\a[1]~input_o\ ) ) ) # ( !\b[1]~input_o\ & ( !\b[0]~input_o\ & ( \a[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000010101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \GEN_SUBTRACTORS:1:U_MID|s~combout\);

-- Location: IOIBUF_X89_Y13_N55
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X88_Y13_N42
\GEN_SUBTRACTORS:2:U_MID|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_SUBTRACTORS:2:U_MID|s~combout\ = ( \b[1]~input_o\ & ( \a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((!\a[0]~input_o\ & \b[0]~input_o\)))) ) ) ) # ( !\b[1]~input_o\ & ( \a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\) ) ) ) # ( 
-- \b[1]~input_o\ & ( !\a[1]~input_o\ & ( !\a[2]~input_o\ $ (\b[2]~input_o\) ) ) ) # ( !\b[1]~input_o\ & ( !\a[1]~input_o\ & ( !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (((!\a[0]~input_o\ & \b[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110111010010111100000000111100001111111100000010110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \GEN_SUBTRACTORS:2:U_MID|s~combout\);

-- Location: LABCELL_X88_Y13_N18
\GEN_SUBTRACTORS:1:U_MID|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ = ( \b[1]~input_o\ & ( \b[0]~input_o\ & ( (!\a[1]~input_o\) # (!\a[0]~input_o\) ) ) ) # ( !\b[1]~input_o\ & ( \b[0]~input_o\ & ( (!\a[1]~input_o\ & !\a[0]~input_o\) ) ) ) # ( \b[1]~input_o\ & ( !\b[0]~input_o\ & ( 
-- !\a[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010100000101000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \GEN_SUBTRACTORS:1:U_MID|cout~0_combout\);

-- Location: IOIBUF_X89_Y13_N4
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y13_N24
\U_LAST|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_LAST|s~combout\ = ( \a[3]~input_o\ & ( !\b[3]~input_o\ $ (((!\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & (\b[2]~input_o\ & !\a[2]~input_o\)) # (\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & ((!\a[2]~input_o\) # (\b[2]~input_o\))))) ) ) # ( !\a[3]~input_o\ 
-- & ( !\b[3]~input_o\ $ (((!\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & ((!\b[2]~input_o\) # (\a[2]~input_o\))) # (\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & (!\b[2]~input_o\ & \a[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000110001110011100011000111010001110011100011000111001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_SUBTRACTORS:1:U_MID|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \U_LAST|s~combout\);

-- Location: LABCELL_X88_Y13_N27
\U_LAST|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_LAST|cout~0_combout\ = ( \b[3]~input_o\ & ( (!\a[3]~input_o\) # ((!\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & (\b[2]~input_o\ & !\a[2]~input_o\)) # (\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & ((!\a[2]~input_o\) # (\b[2]~input_o\)))) ) ) # ( 
-- !\b[3]~input_o\ & ( (!\a[3]~input_o\ & ((!\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & (\b[2]~input_o\ & !\a[2]~input_o\)) # (\GEN_SUBTRACTORS:1:U_MID|cout~0_combout\ & ((!\a[2]~input_o\) # (\b[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010000011100000001000011110111111100011111011111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_SUBTRACTORS:1:U_MID|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \U_LAST|cout~0_combout\);

-- Location: IOIBUF_X26_Y0_N75
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X42_Y38_N3
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


