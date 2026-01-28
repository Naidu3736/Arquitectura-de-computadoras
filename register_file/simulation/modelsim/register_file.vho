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

-- DATE "01/27/2026 22:55:47"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_file IS
    PORT (
	clk : IN std_logic;
	we : IN std_logic;
	wa : IN std_logic_vector(1 DOWNTO 0);
	wd : IN std_logic_vector(3 DOWNTO 0);
	rae : IN std_logic;
	raa : IN std_logic_vector(1 DOWNTO 0);
	aout : OUT std_logic_vector(3 DOWNTO 0);
	rbe : IN std_logic;
	rba : IN std_logic_vector(1 DOWNTO 0);
	bout : OUT std_logic_vector(3 DOWNTO 0)
	);
END register_file;

-- Design Ports Information
-- aout[0]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aout[1]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aout[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aout[3]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[0]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[1]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[3]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- raa[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- raa[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rae	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rba[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rba[1]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rbe	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wd[0]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[1]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[0]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wd[1]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wd[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wd[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_file IS
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
SIGNAL ww_we : std_logic;
SIGNAL ww_wa : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_wd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rae : std_logic;
SIGNAL ww_raa : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_aout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rbe : std_logic;
SIGNAL ww_rba : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_bout : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \wd[0]~input_o\ : std_logic;
SIGNAL \registers~7feeder_combout\ : std_logic;
SIGNAL \wa[1]~input_o\ : std_logic;
SIGNAL \wa[0]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \registers~31_combout\ : std_logic;
SIGNAL \registers~7_q\ : std_logic;
SIGNAL \raa[0]~input_o\ : std_logic;
SIGNAL \registers~11feeder_combout\ : std_logic;
SIGNAL \registers~32_combout\ : std_logic;
SIGNAL \registers~11_q\ : std_logic;
SIGNAL \registers~34_combout\ : std_logic;
SIGNAL \registers~19_q\ : std_logic;
SIGNAL \registers~33_combout\ : std_logic;
SIGNAL \registers~15_q\ : std_logic;
SIGNAL \raa[1]~input_o\ : std_logic;
SIGNAL \registers~23_combout\ : std_logic;
SIGNAL \rae~input_o\ : std_logic;
SIGNAL \wd[1]~input_o\ : std_logic;
SIGNAL \registers~20_q\ : std_logic;
SIGNAL \registers~8_q\ : std_logic;
SIGNAL \registers~12feeder_combout\ : std_logic;
SIGNAL \registers~12_q\ : std_logic;
SIGNAL \registers~16_q\ : std_logic;
SIGNAL \registers~24_combout\ : std_logic;
SIGNAL \wd[2]~input_o\ : std_logic;
SIGNAL \registers~13feeder_combout\ : std_logic;
SIGNAL \registers~13_q\ : std_logic;
SIGNAL \registers~9_q\ : std_logic;
SIGNAL \registers~17_q\ : std_logic;
SIGNAL \registers~21_q\ : std_logic;
SIGNAL \registers~25_combout\ : std_logic;
SIGNAL \wd[3]~input_o\ : std_logic;
SIGNAL \registers~22_q\ : std_logic;
SIGNAL \registers~14feeder_combout\ : std_logic;
SIGNAL \registers~14_q\ : std_logic;
SIGNAL \registers~10_q\ : std_logic;
SIGNAL \registers~18_q\ : std_logic;
SIGNAL \registers~26_combout\ : std_logic;
SIGNAL \rba[0]~input_o\ : std_logic;
SIGNAL \rba[1]~input_o\ : std_logic;
SIGNAL \registers~27_combout\ : std_logic;
SIGNAL \rbe~input_o\ : std_logic;
SIGNAL \registers~28_combout\ : std_logic;
SIGNAL \registers~29_combout\ : std_logic;
SIGNAL \registers~30_combout\ : std_logic;
SIGNAL \ALT_INV_raa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_raa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rba[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rba[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_wd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_wa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_we~input_o\ : std_logic;
SIGNAL \ALT_INV_wa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_wd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_wd[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_wd[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_registers~7_q\ : std_logic;
SIGNAL \ALT_INV_registers~11_q\ : std_logic;
SIGNAL \ALT_INV_registers~19_q\ : std_logic;
SIGNAL \ALT_INV_registers~15_q\ : std_logic;
SIGNAL \ALT_INV_registers~8_q\ : std_logic;
SIGNAL \ALT_INV_registers~16_q\ : std_logic;
SIGNAL \ALT_INV_registers~12_q\ : std_logic;
SIGNAL \ALT_INV_registers~20_q\ : std_logic;
SIGNAL \ALT_INV_registers~9_q\ : std_logic;
SIGNAL \ALT_INV_registers~13_q\ : std_logic;
SIGNAL \ALT_INV_registers~17_q\ : std_logic;
SIGNAL \ALT_INV_registers~21_q\ : std_logic;
SIGNAL \ALT_INV_registers~10_q\ : std_logic;
SIGNAL \ALT_INV_registers~14_q\ : std_logic;
SIGNAL \ALT_INV_registers~18_q\ : std_logic;
SIGNAL \ALT_INV_registers~22_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_we <= we;
ww_wa <= wa;
ww_wd <= wd;
ww_rae <= rae;
ww_raa <= raa;
aout <= ww_aout;
ww_rbe <= rbe;
ww_rba <= rba;
bout <= ww_bout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_raa[0]~input_o\ <= NOT \raa[0]~input_o\;
\ALT_INV_raa[1]~input_o\ <= NOT \raa[1]~input_o\;
\ALT_INV_rba[0]~input_o\ <= NOT \rba[0]~input_o\;
\ALT_INV_rba[1]~input_o\ <= NOT \rba[1]~input_o\;
\ALT_INV_wd[0]~input_o\ <= NOT \wd[0]~input_o\;
\ALT_INV_wa[1]~input_o\ <= NOT \wa[1]~input_o\;
\ALT_INV_we~input_o\ <= NOT \we~input_o\;
\ALT_INV_wa[0]~input_o\ <= NOT \wa[0]~input_o\;
\ALT_INV_wd[1]~input_o\ <= NOT \wd[1]~input_o\;
\ALT_INV_wd[2]~input_o\ <= NOT \wd[2]~input_o\;
\ALT_INV_wd[3]~input_o\ <= NOT \wd[3]~input_o\;
\ALT_INV_registers~7_q\ <= NOT \registers~7_q\;
\ALT_INV_registers~11_q\ <= NOT \registers~11_q\;
\ALT_INV_registers~19_q\ <= NOT \registers~19_q\;
\ALT_INV_registers~15_q\ <= NOT \registers~15_q\;
\ALT_INV_registers~8_q\ <= NOT \registers~8_q\;
\ALT_INV_registers~16_q\ <= NOT \registers~16_q\;
\ALT_INV_registers~12_q\ <= NOT \registers~12_q\;
\ALT_INV_registers~20_q\ <= NOT \registers~20_q\;
\ALT_INV_registers~9_q\ <= NOT \registers~9_q\;
\ALT_INV_registers~13_q\ <= NOT \registers~13_q\;
\ALT_INV_registers~17_q\ <= NOT \registers~17_q\;
\ALT_INV_registers~21_q\ <= NOT \registers~21_q\;
\ALT_INV_registers~10_q\ <= NOT \registers~10_q\;
\ALT_INV_registers~14_q\ <= NOT \registers~14_q\;
\ALT_INV_registers~18_q\ <= NOT \registers~18_q\;
\ALT_INV_registers~22_q\ <= NOT \registers~22_q\;

-- Location: IOOBUF_X72_Y0_N36
\aout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~23_combout\,
	oe => \rae~input_o\,
	devoe => ww_devoe,
	o => ww_aout(0));

-- Location: IOOBUF_X74_Y0_N76
\aout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~24_combout\,
	oe => \rae~input_o\,
	devoe => ww_devoe,
	o => ww_aout(1));

-- Location: IOOBUF_X72_Y0_N19
\aout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~25_combout\,
	oe => \rae~input_o\,
	devoe => ww_devoe,
	o => ww_aout(2));

-- Location: IOOBUF_X74_Y0_N59
\aout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~26_combout\,
	oe => \rae~input_o\,
	devoe => ww_devoe,
	o => ww_aout(3));

-- Location: IOOBUF_X68_Y0_N36
\bout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~27_combout\,
	oe => \rbe~input_o\,
	devoe => ww_devoe,
	o => ww_bout(0));

-- Location: IOOBUF_X64_Y0_N53
\bout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~28_combout\,
	oe => \rbe~input_o\,
	devoe => ww_devoe,
	o => ww_bout(1));

-- Location: IOOBUF_X64_Y0_N2
\bout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~29_combout\,
	oe => \rbe~input_o\,
	devoe => ww_devoe,
	o => ww_bout(2));

-- Location: IOOBUF_X68_Y0_N53
\bout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registers~30_combout\,
	oe => \rbe~input_o\,
	devoe => ww_devoe,
	o => ww_bout(3));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X66_Y0_N75
\wd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wd(0),
	o => \wd[0]~input_o\);

-- Location: LABCELL_X68_Y2_N3
\registers~7feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~7feeder_combout\ = ( \wd[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_wd[0]~input_o\,
	combout => \registers~7feeder_combout\);

-- Location: IOIBUF_X64_Y0_N35
\wa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(1),
	o => \wa[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\wa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(0),
	o => \wa[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: LABCELL_X67_Y2_N54
\registers~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~31_combout\ = ( !\wa[0]~input_o\ & ( \we~input_o\ & ( !\wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_wa[0]~input_o\,
	dataf => \ALT_INV_we~input_o\,
	combout => \registers~31_combout\);

-- Location: FF_X68_Y2_N5
\registers~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \registers~7feeder_combout\,
	ena => \registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~7_q\);

-- Location: IOIBUF_X68_Y0_N18
\raa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raa(0),
	o => \raa[0]~input_o\);

-- Location: LABCELL_X67_Y2_N30
\registers~11feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~11feeder_combout\ = ( \wd[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_wd[0]~input_o\,
	combout => \registers~11feeder_combout\);

-- Location: LABCELL_X67_Y2_N3
\registers~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~32_combout\ = ( \wa[0]~input_o\ & ( \we~input_o\ & ( !\wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_wa[0]~input_o\,
	dataf => \ALT_INV_we~input_o\,
	combout => \registers~32_combout\);

-- Location: FF_X67_Y2_N32
\registers~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \registers~11feeder_combout\,
	ena => \registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~11_q\);

-- Location: LABCELL_X67_Y2_N45
\registers~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~34_combout\ = ( \wa[0]~input_o\ & ( \we~input_o\ & ( \wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_wa[0]~input_o\,
	dataf => \ALT_INV_we~input_o\,
	combout => \registers~34_combout\);

-- Location: FF_X68_Y2_N44
\registers~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[0]~input_o\,
	sload => VCC,
	ena => \registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~19_q\);

-- Location: LABCELL_X67_Y2_N6
\registers~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~33_combout\ = ( !\wa[0]~input_o\ & ( \we~input_o\ & ( \wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_wa[0]~input_o\,
	dataf => \ALT_INV_we~input_o\,
	combout => \registers~33_combout\);

-- Location: FF_X68_Y2_N38
\registers~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[0]~input_o\,
	sload => VCC,
	ena => \registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~15_q\);

-- Location: IOIBUF_X70_Y0_N18
\raa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raa(1),
	o => \raa[1]~input_o\);

-- Location: LABCELL_X68_Y2_N36
\registers~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~23_combout\ = ( \registers~15_q\ & ( \raa[1]~input_o\ & ( (!\raa[0]~input_o\) # (\registers~19_q\) ) ) ) # ( !\registers~15_q\ & ( \raa[1]~input_o\ & ( (\raa[0]~input_o\ & \registers~19_q\) ) ) ) # ( \registers~15_q\ & ( !\raa[1]~input_o\ & ( 
-- (!\raa[0]~input_o\ & (\registers~7_q\)) # (\raa[0]~input_o\ & ((\registers~11_q\))) ) ) ) # ( !\registers~15_q\ & ( !\raa[1]~input_o\ & ( (!\raa[0]~input_o\ & (\registers~7_q\)) # (\raa[0]~input_o\ & ((\registers~11_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_registers~7_q\,
	datab => \ALT_INV_raa[0]~input_o\,
	datac => \ALT_INV_registers~11_q\,
	datad => \ALT_INV_registers~19_q\,
	datae => \ALT_INV_registers~15_q\,
	dataf => \ALT_INV_raa[1]~input_o\,
	combout => \registers~23_combout\);

-- Location: IOIBUF_X74_Y0_N92
\rae~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rae,
	o => \rae~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\wd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wd(1),
	o => \wd[1]~input_o\);

-- Location: FF_X68_Y2_N56
\registers~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[1]~input_o\,
	sload => VCC,
	ena => \registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~20_q\);

-- Location: FF_X68_Y2_N2
\registers~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[1]~input_o\,
	sload => VCC,
	ena => \registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~8_q\);

-- Location: LABCELL_X67_Y2_N39
\registers~12feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~12feeder_combout\ = ( \wd[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_wd[1]~input_o\,
	combout => \registers~12feeder_combout\);

-- Location: FF_X67_Y2_N41
\registers~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \registers~12feeder_combout\,
	ena => \registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~12_q\);

-- Location: FF_X68_Y2_N20
\registers~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[1]~input_o\,
	sload => VCC,
	ena => \registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~16_q\);

-- Location: LABCELL_X68_Y2_N18
\registers~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~24_combout\ = ( \registers~16_q\ & ( \raa[1]~input_o\ & ( (!\raa[0]~input_o\) # (\registers~20_q\) ) ) ) # ( !\registers~16_q\ & ( \raa[1]~input_o\ & ( (\registers~20_q\ & \raa[0]~input_o\) ) ) ) # ( \registers~16_q\ & ( !\raa[1]~input_o\ & ( 
-- (!\raa[0]~input_o\ & (\registers~8_q\)) # (\raa[0]~input_o\ & ((\registers~12_q\))) ) ) ) # ( !\registers~16_q\ & ( !\raa[1]~input_o\ & ( (!\raa[0]~input_o\ & (\registers~8_q\)) # (\raa[0]~input_o\ & ((\registers~12_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_registers~20_q\,
	datab => \ALT_INV_raa[0]~input_o\,
	datac => \ALT_INV_registers~8_q\,
	datad => \ALT_INV_registers~12_q\,
	datae => \ALT_INV_registers~16_q\,
	dataf => \ALT_INV_raa[1]~input_o\,
	combout => \registers~24_combout\);

-- Location: IOIBUF_X66_Y0_N41
\wd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wd(2),
	o => \wd[2]~input_o\);

-- Location: LABCELL_X67_Y2_N12
\registers~13feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~13feeder_combout\ = ( \wd[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_wd[2]~input_o\,
	combout => \registers~13feeder_combout\);

-- Location: FF_X67_Y2_N14
\registers~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \registers~13feeder_combout\,
	ena => \registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~13_q\);

-- Location: FF_X68_Y2_N32
\registers~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[2]~input_o\,
	sload => VCC,
	ena => \registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~9_q\);

-- Location: FF_X68_Y2_N8
\registers~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[2]~input_o\,
	sload => VCC,
	ena => \registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~17_q\);

-- Location: FF_X68_Y2_N13
\registers~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[2]~input_o\,
	sload => VCC,
	ena => \registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~21_q\);

-- Location: LABCELL_X68_Y2_N6
\registers~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~25_combout\ = ( \registers~17_q\ & ( \registers~21_q\ & ( ((!\raa[0]~input_o\ & ((\registers~9_q\))) # (\raa[0]~input_o\ & (\registers~13_q\))) # (\raa[1]~input_o\) ) ) ) # ( !\registers~17_q\ & ( \registers~21_q\ & ( (!\raa[1]~input_o\ & 
-- ((!\raa[0]~input_o\ & ((\registers~9_q\))) # (\raa[0]~input_o\ & (\registers~13_q\)))) # (\raa[1]~input_o\ & (\raa[0]~input_o\)) ) ) ) # ( \registers~17_q\ & ( !\registers~21_q\ & ( (!\raa[1]~input_o\ & ((!\raa[0]~input_o\ & ((\registers~9_q\))) # 
-- (\raa[0]~input_o\ & (\registers~13_q\)))) # (\raa[1]~input_o\ & (!\raa[0]~input_o\)) ) ) ) # ( !\registers~17_q\ & ( !\registers~21_q\ & ( (!\raa[1]~input_o\ & ((!\raa[0]~input_o\ & ((\registers~9_q\))) # (\raa[0]~input_o\ & (\registers~13_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raa[1]~input_o\,
	datab => \ALT_INV_raa[0]~input_o\,
	datac => \ALT_INV_registers~13_q\,
	datad => \ALT_INV_registers~9_q\,
	datae => \ALT_INV_registers~17_q\,
	dataf => \ALT_INV_registers~21_q\,
	combout => \registers~25_combout\);

-- Location: IOIBUF_X68_Y0_N1
\wd[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wd(3),
	o => \wd[3]~input_o\);

-- Location: FF_X68_Y2_N26
\registers~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[3]~input_o\,
	sload => VCC,
	ena => \registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~22_q\);

-- Location: LABCELL_X67_Y2_N21
\registers~14feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~14feeder_combout\ = ( \wd[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_wd[3]~input_o\,
	combout => \registers~14feeder_combout\);

-- Location: FF_X67_Y2_N23
\registers~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \registers~14feeder_combout\,
	ena => \registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~14_q\);

-- Location: FF_X68_Y2_N35
\registers~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[3]~input_o\,
	sload => VCC,
	ena => \registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~10_q\);

-- Location: FF_X68_Y2_N50
\registers~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \wd[3]~input_o\,
	sload => VCC,
	ena => \registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers~18_q\);

-- Location: LABCELL_X68_Y2_N48
\registers~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~26_combout\ = ( \registers~18_q\ & ( \raa[1]~input_o\ & ( (!\raa[0]~input_o\) # (\registers~22_q\) ) ) ) # ( !\registers~18_q\ & ( \raa[1]~input_o\ & ( (\registers~22_q\ & \raa[0]~input_o\) ) ) ) # ( \registers~18_q\ & ( !\raa[1]~input_o\ & ( 
-- (!\raa[0]~input_o\ & ((\registers~10_q\))) # (\raa[0]~input_o\ & (\registers~14_q\)) ) ) ) # ( !\registers~18_q\ & ( !\raa[1]~input_o\ & ( (!\raa[0]~input_o\ & ((\registers~10_q\))) # (\raa[0]~input_o\ & (\registers~14_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_registers~22_q\,
	datab => \ALT_INV_registers~14_q\,
	datac => \ALT_INV_registers~10_q\,
	datad => \ALT_INV_raa[0]~input_o\,
	datae => \ALT_INV_registers~18_q\,
	dataf => \ALT_INV_raa[1]~input_o\,
	combout => \registers~26_combout\);

-- Location: IOIBUF_X70_Y0_N35
\rba[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rba(0),
	o => \rba[0]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\rba[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rba(1),
	o => \rba[1]~input_o\);

-- Location: LABCELL_X68_Y2_N42
\registers~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~27_combout\ = ( \registers~19_q\ & ( \registers~11_q\ & ( ((!\rba[1]~input_o\ & ((\registers~7_q\))) # (\rba[1]~input_o\ & (\registers~15_q\))) # (\rba[0]~input_o\) ) ) ) # ( !\registers~19_q\ & ( \registers~11_q\ & ( (!\rba[0]~input_o\ & 
-- ((!\rba[1]~input_o\ & ((\registers~7_q\))) # (\rba[1]~input_o\ & (\registers~15_q\)))) # (\rba[0]~input_o\ & (((!\rba[1]~input_o\)))) ) ) ) # ( \registers~19_q\ & ( !\registers~11_q\ & ( (!\rba[0]~input_o\ & ((!\rba[1]~input_o\ & ((\registers~7_q\))) # 
-- (\rba[1]~input_o\ & (\registers~15_q\)))) # (\rba[0]~input_o\ & (((\rba[1]~input_o\)))) ) ) ) # ( !\registers~19_q\ & ( !\registers~11_q\ & ( (!\rba[0]~input_o\ & ((!\rba[1]~input_o\ & ((\registers~7_q\))) # (\rba[1]~input_o\ & (\registers~15_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_registers~15_q\,
	datab => \ALT_INV_rba[0]~input_o\,
	datac => \ALT_INV_registers~7_q\,
	datad => \ALT_INV_rba[1]~input_o\,
	datae => \ALT_INV_registers~19_q\,
	dataf => \ALT_INV_registers~11_q\,
	combout => \registers~27_combout\);

-- Location: IOIBUF_X64_Y0_N18
\rbe~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rbe,
	o => \rbe~input_o\);

-- Location: LABCELL_X68_Y2_N54
\registers~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~28_combout\ = ( \registers~20_q\ & ( \rba[1]~input_o\ & ( (\rba[0]~input_o\) # (\registers~16_q\) ) ) ) # ( !\registers~20_q\ & ( \rba[1]~input_o\ & ( (\registers~16_q\ & !\rba[0]~input_o\) ) ) ) # ( \registers~20_q\ & ( !\rba[1]~input_o\ & ( 
-- (!\rba[0]~input_o\ & (\registers~8_q\)) # (\rba[0]~input_o\ & ((\registers~12_q\))) ) ) ) # ( !\registers~20_q\ & ( !\rba[1]~input_o\ & ( (!\rba[0]~input_o\ & (\registers~8_q\)) # (\rba[0]~input_o\ & ((\registers~12_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_registers~16_q\,
	datab => \ALT_INV_rba[0]~input_o\,
	datac => \ALT_INV_registers~8_q\,
	datad => \ALT_INV_registers~12_q\,
	datae => \ALT_INV_registers~20_q\,
	dataf => \ALT_INV_rba[1]~input_o\,
	combout => \registers~28_combout\);

-- Location: LABCELL_X68_Y2_N12
\registers~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~29_combout\ = ( \registers~21_q\ & ( \registers~17_q\ & ( ((!\rba[0]~input_o\ & (\registers~9_q\)) # (\rba[0]~input_o\ & ((\registers~13_q\)))) # (\rba[1]~input_o\) ) ) ) # ( !\registers~21_q\ & ( \registers~17_q\ & ( (!\rba[1]~input_o\ & 
-- ((!\rba[0]~input_o\ & (\registers~9_q\)) # (\rba[0]~input_o\ & ((\registers~13_q\))))) # (\rba[1]~input_o\ & (((!\rba[0]~input_o\)))) ) ) ) # ( \registers~21_q\ & ( !\registers~17_q\ & ( (!\rba[1]~input_o\ & ((!\rba[0]~input_o\ & (\registers~9_q\)) # 
-- (\rba[0]~input_o\ & ((\registers~13_q\))))) # (\rba[1]~input_o\ & (((\rba[0]~input_o\)))) ) ) ) # ( !\registers~21_q\ & ( !\registers~17_q\ & ( (!\rba[1]~input_o\ & ((!\rba[0]~input_o\ & (\registers~9_q\)) # (\rba[0]~input_o\ & ((\registers~13_q\))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rba[1]~input_o\,
	datab => \ALT_INV_registers~9_q\,
	datac => \ALT_INV_registers~13_q\,
	datad => \ALT_INV_rba[0]~input_o\,
	datae => \ALT_INV_registers~21_q\,
	dataf => \ALT_INV_registers~17_q\,
	combout => \registers~29_combout\);

-- Location: LABCELL_X68_Y2_N24
\registers~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \registers~30_combout\ = ( \registers~22_q\ & ( \rba[1]~input_o\ & ( (\rba[0]~input_o\) # (\registers~18_q\) ) ) ) # ( !\registers~22_q\ & ( \rba[1]~input_o\ & ( (\registers~18_q\ & !\rba[0]~input_o\) ) ) ) # ( \registers~22_q\ & ( !\rba[1]~input_o\ & ( 
-- (!\rba[0]~input_o\ & (\registers~10_q\)) # (\rba[0]~input_o\ & ((\registers~14_q\))) ) ) ) # ( !\registers~22_q\ & ( !\rba[1]~input_o\ & ( (!\rba[0]~input_o\ & (\registers~10_q\)) # (\rba[0]~input_o\ & ((\registers~14_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_registers~10_q\,
	datab => \ALT_INV_registers~14_q\,
	datac => \ALT_INV_registers~18_q\,
	datad => \ALT_INV_rba[0]~input_o\,
	datae => \ALT_INV_registers~22_q\,
	dataf => \ALT_INV_rba[1]~input_o\,
	combout => \registers~30_combout\);

-- Location: LABCELL_X43_Y27_N3
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


