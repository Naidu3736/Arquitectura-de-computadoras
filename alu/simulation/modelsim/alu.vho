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

-- DATE "01/20/2026 23:10:57"

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

ENTITY 	alu IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	alu_ctrl : IN std_logic_vector(2 DOWNTO 0);
	s : OUT std_logic_vector(3 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[1]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
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
SIGNAL ww_alu_ctrl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \alu_ctrl[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \alu_ctrl[1]~input_o\ : std_logic;
SIGNAL \alu_ctrl[2]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \U_ADD|U1|cout~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \U_SUB|U1|cout~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \U_DEC|U0|U1|cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \U_INC|U0|U3|s~combout\ : std_logic;
SIGNAL \U_SUB|U2|cout~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \U_ADD|U3|s~combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U_SUB|U2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U_ADD|U3|ALT_INV_s~combout\ : std_logic;
SIGNAL \U_INC|U0|U3|ALT_INV_s~combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_DEC|U0|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \U_ADD|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \U_SUB|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_alu_ctrl <= alu_ctrl;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_alu_ctrl[1]~input_o\ <= NOT \alu_ctrl[1]~input_o\;
\ALT_INV_alu_ctrl[0]~input_o\ <= NOT \alu_ctrl[0]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_alu_ctrl[2]~input_o\ <= NOT \alu_ctrl[2]~input_o\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\U_SUB|U2|ALT_INV_cout~0_combout\ <= NOT \U_SUB|U2|cout~0_combout\;
\U_ADD|U3|ALT_INV_s~combout\ <= NOT \U_ADD|U3|s~combout\;
\U_INC|U0|U3|ALT_INV_s~combout\ <= NOT \U_INC|U0|U3|s~combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\U_DEC|U0|U1|ALT_INV_cout~0_combout\ <= NOT \U_DEC|U0|U1|cout~0_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\U_ADD|U1|ALT_INV_cout~0_combout\ <= NOT \U_ADD|U1|cout~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\U_SUB|U1|ALT_INV_cout~0_combout\ <= NOT \U_SUB|U1|cout~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;

-- Location: IOOBUF_X89_Y21_N22
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y23_N39
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y21_N39
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y16_N39
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOIBUF_X89_Y16_N4
\alu_ctrl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(0),
	o => \alu_ctrl[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\alu_ctrl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(1),
	o => \alu_ctrl[1]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\alu_ctrl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(2),
	o => \alu_ctrl[2]~input_o\);

-- Location: LABCELL_X88_Y19_N6
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \alu_ctrl[2]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & ((!\a[0]~input_o\ & ((!\alu_ctrl[1]~input_o\) # (\b[0]~input_o\))) # (\a[0]~input_o\ & ((\alu_ctrl[1]~input_o\))))) # (\alu_ctrl[0]~input_o\ & ((!\a[0]~input_o\ & 
-- ((\alu_ctrl[1]~input_o\))) # (\a[0]~input_o\ & (\b[0]~input_o\ & !\alu_ctrl[1]~input_o\)))) ) ) # ( !\alu_ctrl[2]~input_o\ & ( !\a[0]~input_o\ $ (((!\alu_ctrl[0]~input_o\ & ((!\b[0]~input_o\) # (!\alu_ctrl[1]~input_o\))) # (\alu_ctrl[0]~input_o\ & 
-- (!\b[0]~input_o\ & !\alu_ctrl[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110010001001011011101000100101101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X89_Y21_N4
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X88_Y19_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[0]~input_o\) # (\a[0]~input_o\))) # (\alu_ctrl[1]~input_o\ & ((!\a[0]~input_o\))))) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( 
-- !\a[1]~input_o\ $ (((!\alu_ctrl[1]~input_o\ & (!\alu_ctrl[0]~input_o\)) # (\alu_ctrl[1]~input_o\ & (\alu_ctrl[0]~input_o\ & !\a[0]~input_o\)))) ) ) ) # ( \b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\alu_ctrl[0]~input_o\ & 
-- ((!\alu_ctrl[1]~input_o\) # (\a[0]~input_o\))) # (\alu_ctrl[0]~input_o\ & ((!\a[0]~input_o\))))) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\alu_ctrl[1]~input_o\) # ((!\alu_ctrl[0]~input_o\) # (!\a[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110011001010101101001101001011010100101100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_alu_ctrl[1]~input_o\,
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y19_N9
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \alu_ctrl[1]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & ((\a[1]~input_o\) # (\b[1]~input_o\))) # (\alu_ctrl[0]~input_o\ & ((!\a[1]~input_o\))) ) ) # ( !\alu_ctrl[1]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (!\a[0]~input_o\ $ 
-- (((\a[1]~input_o\))))) # (\alu_ctrl[0]~input_o\ & (((\b[1]~input_o\ & \a[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100111100010000010011101011111101010100101111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_alu_ctrl[1]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X88_Y19_N57
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \alu_ctrl[2]~input_o\ & ( \Mux2~1_combout\ ) ) # ( !\alu_ctrl[2]~input_o\ & ( \Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux2~1_combout\,
	dataf => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X89_Y16_N55
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X88_Y19_N48
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \a[1]~input_o\ & ( \alu_ctrl[1]~input_o\ & ( (\alu_ctrl[0]~input_o\ & (!\alu_ctrl[2]~input_o\ & (!\a[0]~input_o\ $ (!\a[2]~input_o\)))) ) ) ) # ( !\a[1]~input_o\ & ( \alu_ctrl[1]~input_o\ & ( (\alu_ctrl[0]~input_o\ & (\a[2]~input_o\ & 
-- !\alu_ctrl[2]~input_o\)) ) ) ) # ( \a[1]~input_o\ & ( !\alu_ctrl[1]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (\a[2]~input_o\ & !\alu_ctrl[2]~input_o\)) ) ) ) # ( !\a[1]~input_o\ & ( !\alu_ctrl[1]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (\a[2]~input_o\ & 
-- !\alu_ctrl[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_alu_ctrl[2]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_alu_ctrl[1]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: IOIBUF_X89_Y20_N95
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X85_Y19_N30
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \alu_ctrl[1]~input_o\ & ( \a[1]~input_o\ & ( (!\a[2]~input_o\ & ((\b[2]~input_o\) # (\alu_ctrl[0]~input_o\))) # (\a[2]~input_o\ & (!\alu_ctrl[0]~input_o\)) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( \a[1]~input_o\ & ( (\a[2]~input_o\ & 
-- ((!\alu_ctrl[0]~input_o\) # (\b[2]~input_o\))) ) ) ) # ( \alu_ctrl[1]~input_o\ & ( !\a[1]~input_o\ & ( (!\a[2]~input_o\ & ((\b[2]~input_o\) # (\alu_ctrl[0]~input_o\))) # (\a[2]~input_o\ & (!\alu_ctrl[0]~input_o\)) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( 
-- !\a[1]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (!\a[0]~input_o\ $ ((\a[2]~input_o\)))) # (\alu_ctrl[0]~input_o\ & (((\a[2]~input_o\ & \b[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010011001111001111110000110000001100110011110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y19_N15
\U_ADD|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ADD|U1|cout~0_combout\ = ( \b[1]~input_o\ & ( ((\b[0]~input_o\ & \a[0]~input_o\)) # (\a[1]~input_o\) ) ) # ( !\b[1]~input_o\ & ( (\b[0]~input_o\ & (\a[0]~input_o\ & \a[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U_ADD|U1|cout~0_combout\);

-- Location: LABCELL_X85_Y19_N18
\Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \b[2]~input_o\ & ( !\alu_ctrl[2]~input_o\ & ( (!\alu_ctrl[1]~input_o\ & (\alu_ctrl[0]~input_o\ & (!\U_ADD|U1|cout~0_combout\ $ (\a[2]~input_o\)))) ) ) ) # ( !\b[2]~input_o\ & ( !\alu_ctrl[2]~input_o\ & ( (!\alu_ctrl[1]~input_o\ & 
-- (\alu_ctrl[0]~input_o\ & (!\U_ADD|U1|cout~0_combout\ $ (!\a[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000010000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADD|U1|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_alu_ctrl[1]~input_o\,
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X88_Y19_N12
\U_SUB|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|U1|cout~0_combout\ = ( \b[1]~input_o\ & ( (!\a[1]~input_o\) # ((\b[0]~input_o\ & !\a[0]~input_o\)) ) ) # ( !\b[1]~input_o\ & ( (\b[0]~input_o\ & (!\a[0]~input_o\ & !\a[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011110100111101001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U_SUB|U1|cout~0_combout\);

-- Location: LABCELL_X85_Y19_N6
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \b[2]~input_o\ & ( !\alu_ctrl[2]~input_o\ & ( (\alu_ctrl[1]~input_o\ & (!\alu_ctrl[0]~input_o\ & (!\U_SUB|U1|cout~0_combout\ $ (\a[2]~input_o\)))) ) ) ) # ( !\b[2]~input_o\ & ( !\alu_ctrl[2]~input_o\ & ( (\alu_ctrl[1]~input_o\ & 
-- (!\alu_ctrl[0]~input_o\ & (!\U_SUB|U1|cout~0_combout\ $ (!\a[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000001000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|U1|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_alu_ctrl[1]~input_o\,
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X85_Y19_N42
\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \alu_ctrl[2]~input_o\ & ( (((\Mux1~1_combout\) # (\Mux1~4_combout\)) # (\Mux1~0_combout\)) # (\Mux1~2_combout\) ) ) # ( !\alu_ctrl[2]~input_o\ & ( ((\Mux1~1_combout\) # (\Mux1~4_combout\)) # (\Mux1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~2_combout\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux1~4_combout\,
	datad => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X89_Y20_N61
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y19_N54
\U_DEC|U0|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_DEC|U0|U1|cout~0_combout\ = (!\a[0]~input_o\ & !\a[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	combout => \U_DEC|U0|U1|cout~0_combout\);

-- Location: LABCELL_X88_Y19_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \alu_ctrl[1]~input_o\ & ( \U_DEC|U0|U1|cout~0_combout\ & ( (!\alu_ctrl[0]~input_o\ & ((\a[3]~input_o\) # (\b[3]~input_o\))) # (\alu_ctrl[0]~input_o\ & ((!\a[3]~input_o\))) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( 
-- \U_DEC|U0|U1|cout~0_combout\ & ( (!\alu_ctrl[0]~input_o\ & ((!\a[2]~input_o\ $ (\a[3]~input_o\)))) # (\alu_ctrl[0]~input_o\ & (\b[3]~input_o\ & ((\a[3]~input_o\)))) ) ) ) # ( \alu_ctrl[1]~input_o\ & ( !\U_DEC|U0|U1|cout~0_combout\ & ( 
-- (!\alu_ctrl[0]~input_o\ & ((\a[3]~input_o\) # (\b[3]~input_o\))) # (\alu_ctrl[0]~input_o\ & ((!\a[3]~input_o\))) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( !\U_DEC|U0|U1|cout~0_combout\ & ( (\a[3]~input_o\ & ((!\alu_ctrl[0]~input_o\) # (\b[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011011101111010101010100000000110110111011110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \U_DEC|U0|U1|ALT_INV_cout~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X88_Y19_N39
\U_INC|U0|U3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_INC|U0|U3|s~combout\ = ( \a[3]~input_o\ & ( (!\a[2]~input_o\) # ((!\a[0]~input_o\) # (!\a[1]~input_o\)) ) ) # ( !\a[3]~input_o\ & ( (\a[2]~input_o\ & (\a[0]~input_o\ & \a[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \U_INC|U0|U3|s~combout\);

-- Location: LABCELL_X88_Y19_N42
\U_SUB|U2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|U2|cout~0_combout\ = ( \a[1]~input_o\ & ( \a[2]~input_o\ & ( (\b[2]~input_o\ & (\b[1]~input_o\ & (\b[0]~input_o\ & !\a[0]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( \a[2]~input_o\ & ( (\b[2]~input_o\ & (((\b[0]~input_o\ & !\a[0]~input_o\)) # 
-- (\b[1]~input_o\))) ) ) ) # ( \a[1]~input_o\ & ( !\a[2]~input_o\ & ( ((\b[1]~input_o\ & (\b[0]~input_o\ & !\a[0]~input_o\))) # (\b[2]~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( !\a[2]~input_o\ & ( (((\b[0]~input_o\ & !\a[0]~input_o\)) # (\b[1]~input_o\)) # 
-- (\b[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111010101110101010100010101000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \U_SUB|U2|cout~0_combout\);

-- Location: LABCELL_X88_Y19_N18
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \alu_ctrl[1]~input_o\ & ( !\alu_ctrl[2]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (!\U_SUB|U2|cout~0_combout\ $ (!\a[3]~input_o\ $ (\b[3]~input_o\)))) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( !\alu_ctrl[2]~input_o\ & ( 
-- (!\alu_ctrl[0]~input_o\ & \a[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001010001000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \U_SUB|U2|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X88_Y19_N36
\U_ADD|U3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ADD|U3|s~combout\ = ( \a[3]~input_o\ & ( !\b[3]~input_o\ $ (((!\a[2]~input_o\ & (\U_ADD|U1|cout~0_combout\ & \b[2]~input_o\)) # (\a[2]~input_o\ & ((\b[2]~input_o\) # (\U_ADD|U1|cout~0_combout\))))) ) ) # ( !\a[3]~input_o\ & ( !\b[3]~input_o\ $ 
-- (((!\a[2]~input_o\ & ((!\U_ADD|U1|cout~0_combout\) # (!\b[2]~input_o\))) # (\a[2]~input_o\ & (!\U_ADD|U1|cout~0_combout\ & !\b[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \U_ADD|U1|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \U_ADD|U3|s~combout\);

-- Location: LABCELL_X88_Y19_N0
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( !\alu_ctrl[1]~input_o\ & ( ((!\alu_ctrl[2]~input_o\ & (\alu_ctrl[0]~input_o\ & ((\U_ADD|U3|s~combout\)))) # (\alu_ctrl[2]~input_o\ & (((\Mux0~0_combout\))))) # (\Mux0~1_combout\) ) ) # ( \alu_ctrl[1]~input_o\ & ( 
-- ((!\alu_ctrl[2]~input_o\ & (\alu_ctrl[0]~input_o\ & ((\U_INC|U0|U3|s~combout\)))) # (\alu_ctrl[2]~input_o\ & (((\Mux0~0_combout\))))) # (\Mux0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011000001010011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \U_INC|U0|U3|ALT_INV_s~combout\,
	datad => \ALT_INV_alu_ctrl[2]~input_o\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \ALT_INV_Mux0~1_combout\,
	datag => \U_ADD|U3|ALT_INV_s~combout\,
	combout => \Mux0~2_combout\);

-- Location: LABCELL_X29_Y11_N0
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


