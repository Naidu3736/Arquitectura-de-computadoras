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

-- DATE "01/29/2026 21:57:22"

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

ENTITY 	datapath IS
    PORT (
	clk : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	ie : IN std_logic;
	alu_ctrl : IN std_logic_vector(2 DOWNTO 0);
	load : IN std_logic;
	clear : IN std_logic;
	oe : IN std_logic;
	output : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[2]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ie	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
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
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ie : std_logic;
SIGNAL ww_alu_ctrl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_oe : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \alu_ctrl[0]~input_o\ : std_logic;
SIGNAL \alu_ctrl[2]~input_o\ : std_logic;
SIGNAL \ie~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \alu_ctrl[1]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \oe~input_o\ : std_logic;
SIGNAL \U_REG|q[1]~0_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \U_ALU|U_SUB|U1|s~combout\ : std_logic;
SIGNAL \U_MUX|y[1]~1_combout\ : std_logic;
SIGNAL \U_MUX|y[0]~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \U_ALU|U_DEC|U0|U1|cout~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU|U_SUB|U2|s~0_combout\ : std_logic;
SIGNAL \U_MUX|y[2]~2_combout\ : std_logic;
SIGNAL \U_ALU|U_INC|U0|U1|cout~0_combout\ : std_logic;
SIGNAL \U_ALU|U_ADD|U1|cout~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_ALU|U_SUB|U1|cout~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \U_ALU|U_INC|U0|U3|s~combout\ : std_logic;
SIGNAL \U_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \U_ALU|U_DEC|U0|U2|cout~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \U_ALU|U_SUB|U3|s~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \U_REG|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ie~input_o\ : std_logic;
SIGNAL \ALT_INV_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[2]~input_o\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \U_ALU|U_INC|U0|U3|ALT_INV_s~combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U_ALU|U_SUB|U3|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU|U_DEC|U0|U2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \U_ALU|U_ADD|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U_ALU|U_INC|U0|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U_MUX|ALT_INV_y[2]~2_combout\ : std_logic;
SIGNAL \U_ALU|U_SUB|U2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \U_ALU|U_SUB|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU|U_DEC|U0|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \U_MUX|ALT_INV_y[1]~1_combout\ : std_logic;
SIGNAL \U_MUX|ALT_INV_y[0]~0_combout\ : std_logic;
SIGNAL \U_ALU|U_SUB|U1|ALT_INV_s~combout\ : std_logic;
SIGNAL \U_ALU|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_q[1]~0_combout\ : std_logic;
SIGNAL \U_REG|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_ie <= ie;
ww_alu_ctrl <= alu_ctrl;
ww_load <= load;
ww_clear <= clear;
ww_oe <= oe;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input[3]~input_o\ <= NOT \input[3]~input_o\;
\ALT_INV_input[2]~input_o\ <= NOT \input[2]~input_o\;
\ALT_INV_input[1]~input_o\ <= NOT \input[1]~input_o\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\ALT_INV_alu_ctrl[1]~input_o\ <= NOT \alu_ctrl[1]~input_o\;
\ALT_INV_alu_ctrl[0]~input_o\ <= NOT \alu_ctrl[0]~input_o\;
\ALT_INV_ie~input_o\ <= NOT \ie~input_o\;
\ALT_INV_input[0]~input_o\ <= NOT \input[0]~input_o\;
\ALT_INV_alu_ctrl[2]~input_o\ <= NOT \alu_ctrl[2]~input_o\;
\U_ALU|ALT_INV_Mux0~5_combout\ <= NOT \U_ALU|Mux0~5_combout\;
\U_ALU|ALT_INV_Mux0~4_combout\ <= NOT \U_ALU|Mux0~4_combout\;
\U_ALU|ALT_INV_Mux0~3_combout\ <= NOT \U_ALU|Mux0~3_combout\;
\U_ALU|ALT_INV_Mux0~2_combout\ <= NOT \U_ALU|Mux0~2_combout\;
\U_ALU|U_INC|U0|U3|ALT_INV_s~combout\ <= NOT \U_ALU|U_INC|U0|U3|s~combout\;
\U_ALU|ALT_INV_Mux0~1_combout\ <= NOT \U_ALU|Mux0~1_combout\;
\U_ALU|U_SUB|U3|ALT_INV_s~0_combout\ <= NOT \U_ALU|U_SUB|U3|s~0_combout\;
\U_ALU|ALT_INV_Mux0~0_combout\ <= NOT \U_ALU|Mux0~0_combout\;
\U_ALU|U_DEC|U0|U2|ALT_INV_cout~0_combout\ <= NOT \U_ALU|U_DEC|U0|U2|cout~0_combout\;
\U_ALU|ALT_INV_Mux1~1_combout\ <= NOT \U_ALU|Mux1~1_combout\;
\U_ALU|U_ADD|U1|ALT_INV_cout~0_combout\ <= NOT \U_ALU|U_ADD|U1|cout~0_combout\;
\U_ALU|U_INC|U0|U1|ALT_INV_cout~0_combout\ <= NOT \U_ALU|U_INC|U0|U1|cout~0_combout\;
\U_MUX|ALT_INV_y[2]~2_combout\ <= NOT \U_MUX|y[2]~2_combout\;
\U_ALU|U_SUB|U2|ALT_INV_s~0_combout\ <= NOT \U_ALU|U_SUB|U2|s~0_combout\;
\U_ALU|U_SUB|U1|ALT_INV_cout~0_combout\ <= NOT \U_ALU|U_SUB|U1|cout~0_combout\;
\U_ALU|ALT_INV_Mux1~0_combout\ <= NOT \U_ALU|Mux1~0_combout\;
\U_ALU|U_DEC|U0|U1|ALT_INV_cout~0_combout\ <= NOT \U_ALU|U_DEC|U0|U1|cout~0_combout\;
\U_ALU|ALT_INV_Mux2~1_combout\ <= NOT \U_ALU|Mux2~1_combout\;
\U_MUX|ALT_INV_y[1]~1_combout\ <= NOT \U_MUX|y[1]~1_combout\;
\U_MUX|ALT_INV_y[0]~0_combout\ <= NOT \U_MUX|y[0]~0_combout\;
\U_ALU|U_SUB|U1|ALT_INV_s~combout\ <= NOT \U_ALU|U_SUB|U1|s~combout\;
\U_ALU|ALT_INV_Mux2~0_combout\ <= NOT \U_ALU|Mux2~0_combout\;
\U_REG|ALT_INV_q[1]~0_combout\ <= NOT \U_REG|q[1]~0_combout\;
\U_REG|ALT_INV_q\(3) <= NOT \U_REG|q\(3);
\U_REG|ALT_INV_q\(0) <= NOT \U_REG|q\(0);
\U_REG|ALT_INV_q\(1) <= NOT \U_REG|q\(1);
\U_REG|ALT_INV_q\(2) <= NOT \U_REG|q\(2);

-- Location: IOOBUF_X89_Y21_N5
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|q\(0),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X89_Y21_N22
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|q\(1),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X89_Y21_N56
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|q\(2),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X89_Y20_N45
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG|q\(3),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(3));

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

-- Location: IOIBUF_X89_Y23_N21
\alu_ctrl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(0),
	o => \alu_ctrl[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\alu_ctrl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(2),
	o => \alu_ctrl[2]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\ie~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ie,
	o => \ie~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\alu_ctrl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(1),
	o => \alu_ctrl[1]~input_o\);

-- Location: MLABCELL_X87_Y36_N12
\U_ALU|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~0_combout\ = ( \alu_ctrl[1]~input_o\ & ( \U_REG|q\(0) & ( (!\alu_ctrl[0]~input_o\ & (((\ie~input_o\ & !\input[0]~input_o\)) # (\alu_ctrl[2]~input_o\))) # (\alu_ctrl[0]~input_o\ & (((\ie~input_o\ & !\input[0]~input_o\)))) ) ) ) # ( 
-- !\alu_ctrl[1]~input_o\ & ( \U_REG|q\(0) & ( !\alu_ctrl[0]~input_o\ $ (!\alu_ctrl[2]~input_o\ $ (((!\ie~input_o\) # (\input[0]~input_o\)))) ) ) ) # ( \alu_ctrl[1]~input_o\ & ( !\U_REG|q\(0) & ( !\alu_ctrl[0]~input_o\ $ (((\ie~input_o\ & 
-- !\input[0]~input_o\))) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( !\U_REG|q\(0) & ( (!\alu_ctrl[2]~input_o\ & (((!\ie~input_o\) # (\input[0]~input_o\)))) # (\alu_ctrl[2]~input_o\ & (!\alu_ctrl[0]~input_o\ & (\ie~input_o\ & !\input[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011001100101001011010101010010110100110010010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \ALT_INV_ie~input_o\,
	datad => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \U_REG|ALT_INV_q\(0),
	combout => \U_ALU|Mux3~0_combout\);

-- Location: IOIBUF_X89_Y20_N78
\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X88_Y36_N32
\U_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U_ALU|Mux3~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|q\(0));

-- Location: IOIBUF_X89_Y20_N61
\oe~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oe,
	o => \oe~input_o\);

-- Location: MLABCELL_X87_Y36_N39
\U_REG|q[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_REG|q[1]~0_combout\ = ( \alu_ctrl[1]~input_o\ & ( !\alu_ctrl[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	combout => \U_REG|q[1]~0_combout\);

-- Location: IOIBUF_X89_Y25_N4
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LABCELL_X88_Y36_N6
\U_ALU|U_SUB|U1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_SUB|U1|s~combout\ = ( \U_REG|q\(0) & ( !\U_REG|q\(1) $ (((\ie~input_o\ & (!\input[1]~input_o\ $ (!\input[0]~input_o\))))) ) ) # ( !\U_REG|q\(0) & ( !\U_REG|q\(1) $ (((!\input[1]~input_o\ & \ie~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011010010110100101101001011100001110100101110000111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datab => \ALT_INV_ie~input_o\,
	datac => \U_REG|ALT_INV_q\(1),
	datad => \ALT_INV_input[0]~input_o\,
	dataf => \U_REG|ALT_INV_q\(0),
	combout => \U_ALU|U_SUB|U1|s~combout\);

-- Location: LABCELL_X88_Y36_N45
\U_MUX|y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_MUX|y[1]~1_combout\ = (!\input[1]~input_o\ & \ie~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_ie~input_o\,
	combout => \U_MUX|y[1]~1_combout\);

-- Location: MLABCELL_X87_Y36_N27
\U_MUX|y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_MUX|y[0]~0_combout\ = ( !\input[0]~input_o\ & ( \ie~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	dataf => \ALT_INV_input[0]~input_o\,
	combout => \U_MUX|y[0]~0_combout\);

-- Location: LABCELL_X88_Y36_N0
\U_ALU|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~1_combout\ = ( \alu_ctrl[1]~input_o\ & ( \U_REG|q\(0) & ( !\U_MUX|y[1]~1_combout\ $ (!\U_MUX|y[0]~0_combout\) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( \U_REG|q\(0) & ( !\U_MUX|y[1]~1_combout\ $ (((\alu_ctrl[0]~input_o\ & (!\U_REG|q\(1) $ 
-- (\U_MUX|y[0]~0_combout\))))) ) ) ) # ( \alu_ctrl[1]~input_o\ & ( !\U_REG|q\(0) & ( !\U_MUX|y[1]~1_combout\ $ (!\U_MUX|y[0]~0_combout\) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( !\U_REG|q\(0) & ( !\U_MUX|y[1]~1_combout\ $ (((\alu_ctrl[0]~input_o\ & 
-- \U_REG|q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100111001001001100111100110010011100110010010011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \U_MUX|ALT_INV_y[1]~1_combout\,
	datac => \U_REG|ALT_INV_q\(1),
	datad => \U_MUX|ALT_INV_y[0]~0_combout\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \U_REG|ALT_INV_q\(0),
	combout => \U_ALU|Mux2~1_combout\);

-- Location: MLABCELL_X87_Y36_N54
\U_ALU|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~0_combout\ = ( \U_REG|q\(1) & ( \input[0]~input_o\ & ( (!\alu_ctrl[1]~input_o\ & (((!\input[1]~input_o\ & \ie~input_o\)))) # (\alu_ctrl[1]~input_o\ & (\alu_ctrl[0]~input_o\ & ((!\ie~input_o\) # (\input[1]~input_o\)))) ) ) ) # ( !\U_REG|q\(1) & 
-- ( \input[0]~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (!\input[1]~input_o\ & (\ie~input_o\))) # (\alu_ctrl[0]~input_o\ & (((!\ie~input_o\) # (!\alu_ctrl[1]~input_o\)) # (\input[1]~input_o\))) ) ) ) # ( \U_REG|q\(1) & ( !\input[0]~input_o\ & ( 
-- (!\alu_ctrl[0]~input_o\ & (\input[1]~input_o\ & (\ie~input_o\ & !\alu_ctrl[1]~input_o\))) # (\alu_ctrl[0]~input_o\ & (!\alu_ctrl[1]~input_o\ $ (((!\ie~input_o\) # (\input[1]~input_o\))))) ) ) ) # ( !\U_REG|q\(1) & ( !\input[0]~input_o\ & ( 
-- (!\alu_ctrl[0]~input_o\ & (\ie~input_o\ & (!\input[1]~input_o\ $ (!\alu_ctrl[1]~input_o\)))) # (\alu_ctrl[0]~input_o\ & (((!\ie~input_o\) # (!\alu_ctrl[1]~input_o\)) # (\input[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101011001000001100101000101011101010110010000110001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_ie~input_o\,
	datad => \ALT_INV_alu_ctrl[1]~input_o\,
	datae => \U_REG|ALT_INV_q\(1),
	dataf => \ALT_INV_input[0]~input_o\,
	combout => \U_ALU|Mux2~0_combout\);

-- Location: LABCELL_X88_Y36_N48
\U_ALU|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~2_combout\ = ( \U_ALU|Mux2~0_combout\ & ( (!\alu_ctrl[2]~input_o\ & ((!\U_REG|q[1]~0_combout\ & ((\U_ALU|Mux2~1_combout\))) # (\U_REG|q[1]~0_combout\ & (\U_ALU|U_SUB|U1|s~combout\)))) ) ) # ( !\U_ALU|Mux2~0_combout\ & ( 
-- ((!\U_REG|q[1]~0_combout\ & ((\U_ALU|Mux2~1_combout\))) # (\U_REG|q[1]~0_combout\ & (\U_ALU|U_SUB|U1|s~combout\))) # (\alu_ctrl[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_q[1]~0_combout\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \U_ALU|U_SUB|U1|ALT_INV_s~combout\,
	datad => \U_ALU|ALT_INV_Mux2~1_combout\,
	dataf => \U_ALU|ALT_INV_Mux2~0_combout\,
	combout => \U_ALU|Mux2~2_combout\);

-- Location: FF_X88_Y36_N50
\U_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U_ALU|Mux2~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|q\(1));

-- Location: IOIBUF_X89_Y23_N55
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: MLABCELL_X87_Y36_N42
\U_ALU|U_DEC|U0|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_DEC|U0|U1|cout~0_combout\ = ( !\input[1]~input_o\ & ( !\input[0]~input_o\ & ( \ie~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ie~input_o\,
	datae => \ALT_INV_input[1]~input_o\,
	dataf => \ALT_INV_input[0]~input_o\,
	combout => \U_ALU|U_DEC|U0|U1|cout~0_combout\);

-- Location: MLABCELL_X87_Y36_N6
\U_ALU|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~0_combout\ = ( \alu_ctrl[1]~input_o\ & ( \U_REG|q\(2) & ( (!\alu_ctrl[0]~input_o\) # ((\ie~input_o\ & !\input[2]~input_o\)) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( \U_REG|q\(2) & ( (!\ie~input_o\ & (((!\U_ALU|U_DEC|U0|U1|cout~0_combout\) # 
-- (\alu_ctrl[0]~input_o\)))) # (\ie~input_o\ & (!\input[2]~input_o\ $ (((!\U_ALU|U_DEC|U0|U1|cout~0_combout\) # (\alu_ctrl[0]~input_o\))))) ) ) ) # ( \alu_ctrl[1]~input_o\ & ( !\U_REG|q\(2) & ( !\alu_ctrl[0]~input_o\ $ (((\ie~input_o\ & 
-- !\input[2]~input_o\))) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( !\U_REG|q\(2) & ( (!\alu_ctrl[0]~input_o\ & (!\U_ALU|U_DEC|U0|U1|cout~0_combout\ $ (((\ie~input_o\ & !\input[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000001000000101101001011010010111011010010111111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	datab => \ALT_INV_input[2]~input_o\,
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \U_ALU|U_DEC|U0|U1|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \U_REG|ALT_INV_q\(2),
	combout => \U_ALU|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y36_N33
\U_ALU|U_SUB|U2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_SUB|U2|s~0_combout\ = ( \U_REG|q\(2) & ( (\ie~input_o\ & !\input[2]~input_o\) ) ) # ( !\U_REG|q\(2) & ( (!\ie~input_o\) # (\input[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	dataf => \U_REG|ALT_INV_q\(2),
	combout => \U_ALU|U_SUB|U2|s~0_combout\);

-- Location: MLABCELL_X87_Y36_N3
\U_MUX|y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_MUX|y[2]~2_combout\ = (\ie~input_o\ & !\input[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	combout => \U_MUX|y[2]~2_combout\);

-- Location: LABCELL_X88_Y36_N39
\U_ALU|U_INC|U0|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_INC|U0|U1|cout~0_combout\ = ( \input[1]~input_o\ & ( (\ie~input_o\ & !\input[0]~input_o\) ) ) # ( !\input[1]~input_o\ & ( \ie~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ie~input_o\,
	datad => \ALT_INV_input[0]~input_o\,
	dataf => \ALT_INV_input[1]~input_o\,
	combout => \U_ALU|U_INC|U0|U1|cout~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\U_ALU|U_ADD|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_ADD|U1|cout~0_combout\ = ( \U_REG|q\(0) & ( (\ie~input_o\ & ((!\input[1]~input_o\ & ((!\U_REG|q\(1)) # (!\input[0]~input_o\))) # (\input[1]~input_o\ & (!\U_REG|q\(1) & !\input[0]~input_o\)))) ) ) # ( !\U_REG|q\(0) & ( (!\U_REG|q\(1)) # 
-- ((!\input[1]~input_o\ & \ie~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110010111100101111001000110010001000000011001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datab => \ALT_INV_ie~input_o\,
	datac => \U_REG|ALT_INV_q\(1),
	datad => \ALT_INV_input[0]~input_o\,
	dataf => \U_REG|ALT_INV_q\(0),
	combout => \U_ALU|U_ADD|U1|cout~0_combout\);

-- Location: LABCELL_X88_Y36_N54
\U_ALU|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~1_combout\ = ( \alu_ctrl[1]~input_o\ & ( \U_ALU|U_ADD|U1|cout~0_combout\ & ( !\U_MUX|y[2]~2_combout\ $ (!\U_ALU|U_INC|U0|U1|cout~0_combout\) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( \U_ALU|U_ADD|U1|cout~0_combout\ & ( !\U_MUX|y[2]~2_combout\ $ 
-- (((\alu_ctrl[0]~input_o\ & \U_REG|q\(2)))) ) ) ) # ( \alu_ctrl[1]~input_o\ & ( !\U_ALU|U_ADD|U1|cout~0_combout\ & ( !\U_MUX|y[2]~2_combout\ $ (!\U_ALU|U_INC|U0|U1|cout~0_combout\) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( !\U_ALU|U_ADD|U1|cout~0_combout\ & ( 
-- !\U_MUX|y[2]~2_combout\ $ (((\alu_ctrl[0]~input_o\ & !\U_REG|q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110010011100001100111100110011001001110010010011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \U_MUX|ALT_INV_y[2]~2_combout\,
	datac => \U_REG|ALT_INV_q\(2),
	datad => \U_ALU|U_INC|U0|U1|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \U_ALU|U_ADD|U1|ALT_INV_cout~0_combout\,
	combout => \U_ALU|Mux1~1_combout\);

-- Location: LABCELL_X88_Y36_N9
\U_ALU|U_SUB|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_SUB|U1|cout~0_combout\ = ( \U_REG|q\(0) & ( (\ie~input_o\ & ((!\input[1]~input_o\ & ((!\input[0]~input_o\) # (\U_REG|q\(1)))) # (\input[1]~input_o\ & (!\input[0]~input_o\ & \U_REG|q\(1))))) ) ) # ( !\U_REG|q\(0) & ( (!\input[1]~input_o\ & 
-- (\ie~input_o\ & \U_REG|q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000100000001100100010000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datab => \ALT_INV_ie~input_o\,
	datac => \ALT_INV_input[0]~input_o\,
	datad => \U_REG|ALT_INV_q\(1),
	dataf => \U_REG|ALT_INV_q\(0),
	combout => \U_ALU|U_SUB|U1|cout~0_combout\);

-- Location: LABCELL_X88_Y36_N18
\U_ALU|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~2_combout\ = ( \U_ALU|Mux1~1_combout\ & ( \U_ALU|U_SUB|U1|cout~0_combout\ & ( (!\alu_ctrl[2]~input_o\ & ((!\U_REG|q[1]~0_combout\) # ((!\U_ALU|U_SUB|U2|s~0_combout\)))) # (\alu_ctrl[2]~input_o\ & (((\U_ALU|Mux1~0_combout\)))) ) ) ) # ( 
-- !\U_ALU|Mux1~1_combout\ & ( \U_ALU|U_SUB|U1|cout~0_combout\ & ( (!\alu_ctrl[2]~input_o\ & (\U_REG|q[1]~0_combout\ & ((!\U_ALU|U_SUB|U2|s~0_combout\)))) # (\alu_ctrl[2]~input_o\ & (((\U_ALU|Mux1~0_combout\)))) ) ) ) # ( \U_ALU|Mux1~1_combout\ & ( 
-- !\U_ALU|U_SUB|U1|cout~0_combout\ & ( (!\alu_ctrl[2]~input_o\ & ((!\U_REG|q[1]~0_combout\) # ((\U_ALU|U_SUB|U2|s~0_combout\)))) # (\alu_ctrl[2]~input_o\ & (((\U_ALU|Mux1~0_combout\)))) ) ) ) # ( !\U_ALU|Mux1~1_combout\ & ( !\U_ALU|U_SUB|U1|cout~0_combout\ 
-- & ( (!\alu_ctrl[2]~input_o\ & (\U_REG|q[1]~0_combout\ & ((\U_ALU|U_SUB|U2|s~0_combout\)))) # (\alu_ctrl[2]~input_o\ & (((\U_ALU|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111101000111000000111100111110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|ALT_INV_q[1]~0_combout\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \U_ALU|ALT_INV_Mux1~0_combout\,
	datad => \U_ALU|U_SUB|U2|ALT_INV_s~0_combout\,
	datae => \U_ALU|ALT_INV_Mux1~1_combout\,
	dataf => \U_ALU|U_SUB|U1|ALT_INV_cout~0_combout\,
	combout => \U_ALU|Mux1~2_combout\);

-- Location: FF_X88_Y36_N20
\U_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U_ALU|Mux1~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|q\(2));

-- Location: IOIBUF_X89_Y23_N4
\input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: MLABCELL_X87_Y36_N18
\U_ALU|U_INC|U0|U3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_INC|U0|U3|s~combout\ = ( \input[0]~input_o\ & ( (\ie~input_o\ & (!\input[3]~input_o\ $ (((!\input[1]~input_o\) # (!\input[2]~input_o\))))) ) ) # ( !\input[0]~input_o\ & ( (\ie~input_o\ & \input[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000101000000010100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[3]~input_o\,
	datad => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[0]~input_o\,
	combout => \U_ALU|U_INC|U0|U3|s~combout\);

-- Location: MLABCELL_X87_Y36_N51
\U_ALU|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~2_combout\ = ( \U_ALU|U_INC|U0|U3|s~combout\ & ( (\alu_ctrl[0]~input_o\ & (!\alu_ctrl[2]~input_o\ & \alu_ctrl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datad => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \U_ALU|U_INC|U0|U3|ALT_INV_s~combout\,
	combout => \U_ALU|Mux0~2_combout\);

-- Location: MLABCELL_X87_Y36_N21
\U_ALU|U_DEC|U0|U2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_DEC|U0|U2|cout~0_combout\ = ( !\input[0]~input_o\ & ( (\ie~input_o\ & (!\input[1]~input_o\ & !\input[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[0]~input_o\,
	combout => \U_ALU|U_DEC|U0|U2|cout~0_combout\);

-- Location: LABCELL_X88_Y36_N33
\U_ALU|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~0_combout\ = ( \alu_ctrl[1]~input_o\ & ( \U_REG|q\(3) & ( (!\alu_ctrl[0]~input_o\) # ((\ie~input_o\ & !\input[3]~input_o\)) ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( \U_REG|q\(3) & ( (!\U_ALU|U_DEC|U0|U2|cout~0_combout\ & (((!\ie~input_o\) # 
-- (\input[3]~input_o\)))) # (\U_ALU|U_DEC|U0|U2|cout~0_combout\ & (!\alu_ctrl[0]~input_o\ $ (((!\ie~input_o\) # (\input[3]~input_o\))))) ) ) ) # ( \alu_ctrl[1]~input_o\ & ( !\U_REG|q\(3) & ( !\alu_ctrl[0]~input_o\ $ (((\ie~input_o\ & !\input[3]~input_o\))) 
-- ) ) ) # ( !\alu_ctrl[1]~input_o\ & ( !\U_REG|q\(3) & ( (!\alu_ctrl[0]~input_o\ & (!\U_ALU|U_DEC|U0|U2|cout~0_combout\ $ (((\ie~input_o\ & !\input[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010001000110000111100110010110100101110111100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|U_DEC|U0|U2|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_alu_ctrl[0]~input_o\,
	datac => \ALT_INV_ie~input_o\,
	datad => \ALT_INV_input[3]~input_o\,
	datae => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \U_REG|ALT_INV_q\(3),
	combout => \U_ALU|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y36_N48
\U_ALU|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~5_combout\ = ( \ie~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (!\alu_ctrl[2]~input_o\ & (\input[3]~input_o\ & !\alu_ctrl[1]~input_o\))) ) ) # ( !\ie~input_o\ & ( (!\alu_ctrl[0]~input_o\ & (!\alu_ctrl[2]~input_o\ & !\alu_ctrl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \ALT_INV_input[3]~input_o\,
	datad => \ALT_INV_alu_ctrl[1]~input_o\,
	dataf => \ALT_INV_ie~input_o\,
	combout => \U_ALU|Mux0~5_combout\);

-- Location: LABCELL_X88_Y36_N51
\U_ALU|U_SUB|U3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|U_SUB|U3|s~0_combout\ = ( \U_REG|q\(3) & ( (\ie~input_o\ & !\input[3]~input_o\) ) ) # ( !\U_REG|q\(3) & ( (!\ie~input_o\) # (\input[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ie~input_o\,
	datad => \ALT_INV_input[3]~input_o\,
	dataf => \U_REG|ALT_INV_q\(3),
	combout => \U_ALU|U_SUB|U3|s~0_combout\);

-- Location: MLABCELL_X87_Y36_N0
\U_ALU|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~3_combout\ = ( !\alu_ctrl[2]~input_o\ & ( (!\alu_ctrl[1]~input_o\ & \alu_ctrl[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_alu_ctrl[1]~input_o\,
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	dataf => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \U_ALU|Mux0~3_combout\);

-- Location: LABCELL_X88_Y36_N36
\U_ALU|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~4_combout\ = ( \U_ALU|U_ADD|U1|cout~0_combout\ & ( (\U_ALU|Mux0~3_combout\ & (!\U_ALU|U_SUB|U3|s~0_combout\ $ (((!\U_REG|q\(2)) # (\U_MUX|y[2]~2_combout\))))) ) ) # ( !\U_ALU|U_ADD|U1|cout~0_combout\ & ( (\U_ALU|Mux0~3_combout\ & 
-- (!\U_ALU|U_SUB|U3|s~0_combout\ $ (((\U_MUX|y[2]~2_combout\ & !\U_REG|q\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011010000000001001101000000000010110010000000001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|U_SUB|U3|ALT_INV_s~0_combout\,
	datab => \U_MUX|ALT_INV_y[2]~2_combout\,
	datac => \U_REG|ALT_INV_q\(2),
	datad => \U_ALU|ALT_INV_Mux0~3_combout\,
	dataf => \U_ALU|U_ADD|U1|ALT_INV_cout~0_combout\,
	combout => \U_ALU|Mux0~4_combout\);

-- Location: LABCELL_X88_Y36_N24
\U_ALU|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~1_combout\ = ( \U_REG|q[1]~0_combout\ & ( \U_ALU|U_SUB|U1|cout~0_combout\ & ( (!\alu_ctrl[2]~input_o\ & (!\U_ALU|U_SUB|U3|s~0_combout\ $ (((!\U_REG|q\(2) & !\U_MUX|y[2]~2_combout\))))) ) ) ) # ( \U_REG|q[1]~0_combout\ & ( 
-- !\U_ALU|U_SUB|U1|cout~0_combout\ & ( (!\alu_ctrl[2]~input_o\ & (!\U_ALU|U_SUB|U3|s~0_combout\ $ (((!\U_REG|q\(2)) # (!\U_MUX|y[2]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100100000000000000000000100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|U_SUB|U3|ALT_INV_s~0_combout\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \U_REG|ALT_INV_q\(2),
	datad => \U_MUX|ALT_INV_y[2]~2_combout\,
	datae => \U_REG|ALT_INV_q[1]~0_combout\,
	dataf => \U_ALU|U_SUB|U1|ALT_INV_cout~0_combout\,
	combout => \U_ALU|Mux0~1_combout\);

-- Location: LABCELL_X88_Y36_N12
\U_ALU|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~6_combout\ = ( \U_ALU|Mux0~4_combout\ & ( \U_ALU|Mux0~1_combout\ ) ) # ( !\U_ALU|Mux0~4_combout\ & ( \U_ALU|Mux0~1_combout\ ) ) # ( \U_ALU|Mux0~4_combout\ & ( !\U_ALU|Mux0~1_combout\ ) ) # ( !\U_ALU|Mux0~4_combout\ & ( !\U_ALU|Mux0~1_combout\ 
-- & ( (((\alu_ctrl[2]~input_o\ & \U_ALU|Mux0~0_combout\)) # (\U_ALU|Mux0~5_combout\)) # (\U_ALU|Mux0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \U_ALU|ALT_INV_Mux0~0_combout\,
	datad => \U_ALU|ALT_INV_Mux0~5_combout\,
	datae => \U_ALU|ALT_INV_Mux0~4_combout\,
	dataf => \U_ALU|ALT_INV_Mux0~1_combout\,
	combout => \U_ALU|Mux0~6_combout\);

-- Location: FF_X88_Y36_N14
\U_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U_ALU|Mux0~6_combout\,
	clrn => \ALT_INV_clear~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|q\(3));

-- Location: LABCELL_X36_Y23_N0
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


