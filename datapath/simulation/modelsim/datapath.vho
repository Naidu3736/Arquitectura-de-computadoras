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

-- DATE "01/28/2026 04:28:37"

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
	we : IN std_logic;
	wa : IN std_logic_vector(1 DOWNTO 0);
	rae : IN std_logic;
	raa : IN std_logic_vector(1 DOWNTO 0);
	rbe : IN std_logic;
	rba : IN std_logic_vector(1 DOWNTO 0);
	alu_ctrl : IN std_logic_vector(2 DOWNTO 0);
	sh_ctrl : IN std_logic_vector(1 DOWNTO 0);
	oe : IN std_logic;
	output : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- rae	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rbe	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sh_ctrl[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rba[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rba[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- raa[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- raa[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ctrl[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sh_ctrl[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ie	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_we : std_logic;
SIGNAL ww_wa : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rae : std_logic;
SIGNAL ww_raa : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rbe : std_logic;
SIGNAL ww_rba : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_alu_ctrl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sh_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oe : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \rae~input_o\ : std_logic;
SIGNAL \rbe~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \alu_ctrl[2]~input_o\ : std_logic;
SIGNAL \sh_ctrl[1]~input_o\ : std_logic;
SIGNAL \alu_ctrl[1]~input_o\ : std_logic;
SIGNAL \alu_ctrl[0]~input_o\ : std_logic;
SIGNAL \U2|Mux2~3_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \ie~input_o\ : std_logic;
SIGNAL \U0|y[0]~1_combout\ : std_logic;
SIGNAL \wa[1]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \wa[0]~input_o\ : std_logic;
SIGNAL \u1|registers~33_combout\ : std_logic;
SIGNAL \u1|registers~15_q\ : std_logic;
SIGNAL \raa[0]~input_o\ : std_logic;
SIGNAL \raa[1]~input_o\ : std_logic;
SIGNAL \u1|registers~32_combout\ : std_logic;
SIGNAL \u1|registers~11_q\ : std_logic;
SIGNAL \u1|registers~34_combout\ : std_logic;
SIGNAL \u1|registers~19_q\ : std_logic;
SIGNAL \u1|registers~31_combout\ : std_logic;
SIGNAL \u1|registers~7_q\ : std_logic;
SIGNAL \u1|registers~24_combout\ : std_logic;
SIGNAL \rba[1]~input_o\ : std_logic;
SIGNAL \rba[0]~input_o\ : std_logic;
SIGNAL \u1|registers~26_combout\ : std_logic;
SIGNAL \U2|Mux3~1_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux2~1_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \sh_ctrl[0]~input_o\ : std_logic;
SIGNAL \U2|Mux3~2_combout\ : std_logic;
SIGNAL \u1|registers~17_q\ : std_logic;
SIGNAL \u1|registers~13_q\ : std_logic;
SIGNAL \u1|registers~9_q\ : std_logic;
SIGNAL \u1|registers~27_combout\ : std_logic;
SIGNAL \u1|registers~12_q\ : std_logic;
SIGNAL \u1|registers~20_q\ : std_logic;
SIGNAL \u1|registers~8_q\ : std_logic;
SIGNAL \u1|registers~23_combout\ : std_logic;
SIGNAL \U2|U_ADD|U1|cout~0_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~1_combout\ : std_logic;
SIGNAL \U0|y[3]~3_combout\ : std_logic;
SIGNAL \u1|registers~18_q\ : std_logic;
SIGNAL \u1|registers~10_q\ : std_logic;
SIGNAL \u1|registers~14_q\ : std_logic;
SIGNAL \u1|registers~22_q\ : std_logic;
SIGNAL \u1|registers~30_combout\ : std_logic;
SIGNAL \u1|registers~29_combout\ : std_logic;
SIGNAL \U2|U_ADD|U3|s~combout\ : std_logic;
SIGNAL \U2|U_DEC|U0|U1|cout~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|U_SUB|U2|cout~0_combout\ : std_logic;
SIGNAL \U2|Mux0~1_combout\ : std_logic;
SIGNAL \U2|Mux0~2_combout\ : std_logic;
SIGNAL \U2|Mux0~3_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \U2|Mux2~2_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux2~5_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U0|y[2]~2_combout\ : std_logic;
SIGNAL \u1|registers~21_q\ : std_logic;
SIGNAL \u1|registers~28_combout\ : std_logic;
SIGNAL \U2|Mux1~2_combout\ : std_logic;
SIGNAL \U2|U_SUB|U2|s~combout\ : std_logic;
SIGNAL \U2|Mux1~1_combout\ : std_logic;
SIGNAL \U2|Mux1~3_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux2~1_combout\ : std_logic;
SIGNAL \U3|Mux2~2_combout\ : std_logic;
SIGNAL \U0|y[1]~0_combout\ : std_logic;
SIGNAL \u1|registers~16_q\ : std_logic;
SIGNAL \u1|registers~25_combout\ : std_logic;
SIGNAL \U2|Mux2~4_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux3~1_combout\ : std_logic;
SIGNAL \oe~input_o\ : std_logic;
SIGNAL \U3|Mux2~3_combout\ : std_logic;
SIGNAL \U3|Mux1~1_combout\ : std_logic;
SIGNAL \U3|Mux0~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U2|U_SUB|U2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U2|U_ADD|U3|ALT_INV_s~combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~30_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~29_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~22_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~18_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~14_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~10_q\ : std_logic;
SIGNAL \U2|U_DEC|U0|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \U2|U_SUB|U2|ALT_INV_s~combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U2|U_ADD|U1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~28_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~27_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~21_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~17_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~13_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~9_q\ : std_logic;
SIGNAL \U3|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~26_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~25_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~24_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~19_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~15_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~11_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~7_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~23_combout\ : std_logic;
SIGNAL \u1|ALT_INV_registers~20_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~16_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~12_q\ : std_logic;
SIGNAL \u1|ALT_INV_registers~8_q\ : std_logic;
SIGNAL \ALT_INV_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_wa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_we~input_o\ : std_logic;
SIGNAL \ALT_INV_wa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ie~input_o\ : std_logic;
SIGNAL \ALT_INV_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sh_ctrl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_raa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_raa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rba[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rba[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_ctrl[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sh_ctrl[1]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_ie <= ie;
ww_we <= we;
ww_wa <= wa;
ww_rae <= rae;
ww_raa <= raa;
ww_rbe <= rbe;
ww_rba <= rba;
ww_alu_ctrl <= alu_ctrl;
ww_sh_ctrl <= sh_ctrl;
ww_oe <= oe;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U3|ALT_INV_Mux0~1_combout\ <= NOT \U3|Mux0~1_combout\;
\U2|ALT_INV_Mux3~2_combout\ <= NOT \U2|Mux3~2_combout\;
\U3|ALT_INV_Mux1~0_combout\ <= NOT \U3|Mux1~0_combout\;
\U2|ALT_INV_Mux2~5_combout\ <= NOT \U2|Mux2~5_combout\;
\U2|ALT_INV_Mux0~3_combout\ <= NOT \U2|Mux0~3_combout\;
\U2|ALT_INV_Mux0~2_combout\ <= NOT \U2|Mux0~2_combout\;
\U2|ALT_INV_Mux0~1_combout\ <= NOT \U2|Mux0~1_combout\;
\U2|U_SUB|U2|ALT_INV_cout~0_combout\ <= NOT \U2|U_SUB|U2|cout~0_combout\;
\U2|U_ADD|U3|ALT_INV_s~combout\ <= NOT \U2|U_ADD|U3|s~combout\;
\U2|ALT_INV_Mux0~0_combout\ <= NOT \U2|Mux0~0_combout\;
\u1|ALT_INV_registers~30_combout\ <= NOT \u1|registers~30_combout\;
\u1|ALT_INV_registers~29_combout\ <= NOT \u1|registers~29_combout\;
\u1|ALT_INV_registers~22_q\ <= NOT \u1|registers~22_q\;
\u1|ALT_INV_registers~18_q\ <= NOT \u1|registers~18_q\;
\u1|ALT_INV_registers~14_q\ <= NOT \u1|registers~14_q\;
\u1|ALT_INV_registers~10_q\ <= NOT \u1|registers~10_q\;
\U2|U_DEC|U0|U1|ALT_INV_cout~0_combout\ <= NOT \U2|U_DEC|U0|U1|cout~0_combout\;
\U3|ALT_INV_Mux2~2_combout\ <= NOT \U3|Mux2~2_combout\;
\U3|ALT_INV_Mux2~1_combout\ <= NOT \U3|Mux2~1_combout\;
\U3|ALT_INV_Mux2~0_combout\ <= NOT \U3|Mux2~0_combout\;
\U2|ALT_INV_Mux1~3_combout\ <= NOT \U2|Mux1~3_combout\;
\U2|ALT_INV_Mux1~2_combout\ <= NOT \U2|Mux1~2_combout\;
\U2|U_SUB|U2|ALT_INV_s~combout\ <= NOT \U2|U_SUB|U2|s~combout\;
\U2|ALT_INV_Mux1~1_combout\ <= NOT \U2|Mux1~1_combout\;
\U2|ALT_INV_Mux1~0_combout\ <= NOT \U2|Mux1~0_combout\;
\U2|U_ADD|U1|ALT_INV_cout~0_combout\ <= NOT \U2|U_ADD|U1|cout~0_combout\;
\u1|ALT_INV_registers~28_combout\ <= NOT \u1|registers~28_combout\;
\u1|ALT_INV_registers~27_combout\ <= NOT \u1|registers~27_combout\;
\u1|ALT_INV_registers~21_q\ <= NOT \u1|registers~21_q\;
\u1|ALT_INV_registers~17_q\ <= NOT \u1|registers~17_q\;
\u1|ALT_INV_registers~13_q\ <= NOT \u1|registers~13_q\;
\u1|ALT_INV_registers~9_q\ <= NOT \u1|registers~9_q\;
\U3|ALT_INV_Mux3~1_combout\ <= NOT \U3|Mux3~1_combout\;
\U3|ALT_INV_Mux3~0_combout\ <= NOT \U3|Mux3~0_combout\;
\U3|ALT_INV_Mux0~0_combout\ <= NOT \U3|Mux0~0_combout\;
\U2|ALT_INV_Mux2~4_combout\ <= NOT \U2|Mux2~4_combout\;
\U2|ALT_INV_Mux3~1_combout\ <= NOT \U2|Mux3~1_combout\;
\U2|ALT_INV_Mux2~3_combout\ <= NOT \U2|Mux2~3_combout\;
\u1|ALT_INV_registers~26_combout\ <= NOT \u1|registers~26_combout\;
\U2|ALT_INV_Mux2~2_combout\ <= NOT \U2|Mux2~2_combout\;
\U2|ALT_INV_Mux3~0_combout\ <= NOT \U2|Mux3~0_combout\;
\U2|ALT_INV_Mux2~1_combout\ <= NOT \U2|Mux2~1_combout\;
\U2|ALT_INV_Mux2~0_combout\ <= NOT \U2|Mux2~0_combout\;
\u1|ALT_INV_registers~25_combout\ <= NOT \u1|registers~25_combout\;
\u1|ALT_INV_registers~24_combout\ <= NOT \u1|registers~24_combout\;
\u1|ALT_INV_registers~19_q\ <= NOT \u1|registers~19_q\;
\u1|ALT_INV_registers~15_q\ <= NOT \u1|registers~15_q\;
\u1|ALT_INV_registers~11_q\ <= NOT \u1|registers~11_q\;
\u1|ALT_INV_registers~7_q\ <= NOT \u1|registers~7_q\;
\u1|ALT_INV_registers~23_combout\ <= NOT \u1|registers~23_combout\;
\u1|ALT_INV_registers~20_q\ <= NOT \u1|registers~20_q\;
\u1|ALT_INV_registers~16_q\ <= NOT \u1|registers~16_q\;
\u1|ALT_INV_registers~12_q\ <= NOT \u1|registers~12_q\;
\u1|ALT_INV_registers~8_q\ <= NOT \u1|registers~8_q\;
\ALT_INV_input[3]~input_o\ <= NOT \input[3]~input_o\;
\ALT_INV_input[2]~input_o\ <= NOT \input[2]~input_o\;
\ALT_INV_input[0]~input_o\ <= NOT \input[0]~input_o\;
\ALT_INV_wa[0]~input_o\ <= NOT \wa[0]~input_o\;
\ALT_INV_we~input_o\ <= NOT \we~input_o\;
\ALT_INV_wa[1]~input_o\ <= NOT \wa[1]~input_o\;
\ALT_INV_ie~input_o\ <= NOT \ie~input_o\;
\ALT_INV_input[1]~input_o\ <= NOT \input[1]~input_o\;
\ALT_INV_sh_ctrl[0]~input_o\ <= NOT \sh_ctrl[0]~input_o\;
\ALT_INV_alu_ctrl[0]~input_o\ <= NOT \alu_ctrl[0]~input_o\;
\ALT_INV_alu_ctrl[1]~input_o\ <= NOT \alu_ctrl[1]~input_o\;
\ALT_INV_raa[1]~input_o\ <= NOT \raa[1]~input_o\;
\ALT_INV_raa[0]~input_o\ <= NOT \raa[0]~input_o\;
\ALT_INV_rba[1]~input_o\ <= NOT \rba[1]~input_o\;
\ALT_INV_rba[0]~input_o\ <= NOT \rba[0]~input_o\;
\ALT_INV_alu_ctrl[2]~input_o\ <= NOT \alu_ctrl[2]~input_o\;
\ALT_INV_sh_ctrl[1]~input_o\ <= NOT \sh_ctrl[1]~input_o\;

-- Location: IOOBUF_X89_Y13_N5
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~1_combout\,
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X89_Y13_N56
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~3_combout\,
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X89_Y13_N22
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux1~1_combout\,
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X89_Y13_N39
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~2_combout\,
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOIBUF_X89_Y9_N21
\alu_ctrl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(2),
	o => \alu_ctrl[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\sh_ctrl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sh_ctrl(1),
	o => \sh_ctrl[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\alu_ctrl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(1),
	o => \alu_ctrl[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\alu_ctrl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ctrl(0),
	o => \alu_ctrl[0]~input_o\);

-- Location: LABCELL_X83_Y9_N51
\U2|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~3_combout\ = (\alu_ctrl[1]~input_o\ & (!\alu_ctrl[0]~input_o\ & !\alu_ctrl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[1]~input_o\,
	datab => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \U2|Mux2~3_combout\);

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

-- Location: IOIBUF_X89_Y15_N38
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\ie~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ie,
	o => \ie~input_o\);

-- Location: LABCELL_X83_Y9_N36
\U0|y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|y[0]~1_combout\ = ( \U3|Mux3~1_combout\ & ( (!\ie~input_o\) # (\input[0]~input_o\) ) ) # ( !\U3|Mux3~1_combout\ & ( (\input[0]~input_o\ & \ie~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_ie~input_o\,
	dataf => \U3|ALT_INV_Mux3~1_combout\,
	combout => \U0|y[0]~1_combout\);

-- Location: IOIBUF_X89_Y6_N21
\wa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(1),
	o => \wa[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\wa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(0),
	o => \wa[0]~input_o\);

-- Location: MLABCELL_X87_Y9_N0
\u1|registers~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~33_combout\ = ( \we~input_o\ & ( !\wa[0]~input_o\ & ( \wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_wa[0]~input_o\,
	combout => \u1|registers~33_combout\);

-- Location: FF_X85_Y9_N38
\u1|registers~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[0]~1_combout\,
	sload => VCC,
	ena => \u1|registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~15_q\);

-- Location: IOIBUF_X89_Y9_N4
\raa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raa(0),
	o => \raa[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\raa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raa(1),
	o => \raa[1]~input_o\);

-- Location: MLABCELL_X87_Y9_N6
\u1|registers~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~32_combout\ = ( \we~input_o\ & ( \wa[0]~input_o\ & ( !\wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_wa[0]~input_o\,
	combout => \u1|registers~32_combout\);

-- Location: FF_X85_Y9_N20
\u1|registers~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[0]~1_combout\,
	sload => VCC,
	ena => \u1|registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~11_q\);

-- Location: MLABCELL_X87_Y9_N57
\u1|registers~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~34_combout\ = ( \we~input_o\ & ( \wa[0]~input_o\ & ( \wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_wa[0]~input_o\,
	combout => \u1|registers~34_combout\);

-- Location: FF_X85_Y9_N5
\u1|registers~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[0]~1_combout\,
	sload => VCC,
	ena => \u1|registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~19_q\);

-- Location: MLABCELL_X87_Y9_N15
\u1|registers~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~31_combout\ = ( \we~input_o\ & ( !\wa[0]~input_o\ & ( !\wa[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wa[1]~input_o\,
	datae => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_wa[0]~input_o\,
	combout => \u1|registers~31_combout\);

-- Location: FF_X84_Y9_N59
\u1|registers~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[0]~1_combout\,
	sload => VCC,
	ena => \u1|registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~7_q\);

-- Location: LABCELL_X85_Y9_N15
\u1|registers~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~24_combout\ = ( \u1|registers~19_q\ & ( \u1|registers~7_q\ & ( (!\raa[0]~input_o\ & (((!\raa[1]~input_o\)) # (\u1|registers~15_q\))) # (\raa[0]~input_o\ & (((\u1|registers~11_q\) # (\raa[1]~input_o\)))) ) ) ) # ( !\u1|registers~19_q\ & ( 
-- \u1|registers~7_q\ & ( (!\raa[0]~input_o\ & (((!\raa[1]~input_o\)) # (\u1|registers~15_q\))) # (\raa[0]~input_o\ & (((!\raa[1]~input_o\ & \u1|registers~11_q\)))) ) ) ) # ( \u1|registers~19_q\ & ( !\u1|registers~7_q\ & ( (!\raa[0]~input_o\ & 
-- (\u1|registers~15_q\ & (\raa[1]~input_o\))) # (\raa[0]~input_o\ & (((\u1|registers~11_q\) # (\raa[1]~input_o\)))) ) ) ) # ( !\u1|registers~19_q\ & ( !\u1|registers~7_q\ & ( (!\raa[0]~input_o\ & (\u1|registers~15_q\ & (\raa[1]~input_o\))) # 
-- (\raa[0]~input_o\ & (((!\raa[1]~input_o\ & \u1|registers~11_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~15_q\,
	datab => \ALT_INV_raa[0]~input_o\,
	datac => \ALT_INV_raa[1]~input_o\,
	datad => \u1|ALT_INV_registers~11_q\,
	datae => \u1|ALT_INV_registers~19_q\,
	dataf => \u1|ALT_INV_registers~7_q\,
	combout => \u1|registers~24_combout\);

-- Location: IOIBUF_X89_Y8_N38
\rba[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rba(1),
	o => \rba[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\rba[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rba(0),
	o => \rba[0]~input_o\);

-- Location: LABCELL_X85_Y9_N39
\u1|registers~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~26_combout\ = ( \u1|registers~19_q\ & ( \u1|registers~7_q\ & ( (!\rba[1]~input_o\ & (((!\rba[0]~input_o\) # (\u1|registers~11_q\)))) # (\rba[1]~input_o\ & (((\rba[0]~input_o\)) # (\u1|registers~15_q\))) ) ) ) # ( !\u1|registers~19_q\ & ( 
-- \u1|registers~7_q\ & ( (!\rba[1]~input_o\ & (((!\rba[0]~input_o\) # (\u1|registers~11_q\)))) # (\rba[1]~input_o\ & (\u1|registers~15_q\ & (!\rba[0]~input_o\))) ) ) ) # ( \u1|registers~19_q\ & ( !\u1|registers~7_q\ & ( (!\rba[1]~input_o\ & 
-- (((\rba[0]~input_o\ & \u1|registers~11_q\)))) # (\rba[1]~input_o\ & (((\rba[0]~input_o\)) # (\u1|registers~15_q\))) ) ) ) # ( !\u1|registers~19_q\ & ( !\u1|registers~7_q\ & ( (!\rba[1]~input_o\ & (((\rba[0]~input_o\ & \u1|registers~11_q\)))) # 
-- (\rba[1]~input_o\ & (\u1|registers~15_q\ & (!\rba[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~15_q\,
	datab => \ALT_INV_rba[1]~input_o\,
	datac => \ALT_INV_rba[0]~input_o\,
	datad => \u1|ALT_INV_registers~11_q\,
	datae => \u1|ALT_INV_registers~19_q\,
	dataf => \u1|ALT_INV_registers~7_q\,
	combout => \u1|registers~26_combout\);

-- Location: LABCELL_X83_Y9_N48
\U2|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux3~1_combout\ = ( !\alu_ctrl[1]~input_o\ & ( (\alu_ctrl[0]~input_o\ & !\alu_ctrl[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_alu_ctrl[0]~input_o\,
	datac => \ALT_INV_alu_ctrl[2]~input_o\,
	dataf => \ALT_INV_alu_ctrl[1]~input_o\,
	combout => \U2|Mux3~1_combout\);

-- Location: IOIBUF_X89_Y11_N95
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LABCELL_X83_Y9_N42
\U2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (!\alu_ctrl[1]~input_o\ & (!\alu_ctrl[0]~input_o\ & !\alu_ctrl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[1]~input_o\,
	datab => \ALT_INV_alu_ctrl[0]~input_o\,
	datac => \ALT_INV_alu_ctrl[2]~input_o\,
	combout => \U2|Mux3~0_combout\);

-- Location: LABCELL_X83_Y9_N39
\U2|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~1_combout\ = ( \alu_ctrl[1]~input_o\ & ( (\alu_ctrl[0]~input_o\ & !\alu_ctrl[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \ALT_INV_alu_ctrl[2]~input_o\,
	dataf => \ALT_INV_alu_ctrl[1]~input_o\,
	combout => \U2|Mux2~1_combout\);

-- Location: IOIBUF_X89_Y11_N44
\input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\sh_ctrl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sh_ctrl(0),
	o => \sh_ctrl[0]~input_o\);

-- Location: LABCELL_X83_Y9_N30
\U2|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux3~2_combout\ = ( \u1|registers~26_combout\ & ( (!\alu_ctrl[1]~input_o\ & (!\alu_ctrl[0]~input_o\ $ (!\alu_ctrl[2]~input_o\ $ (\u1|registers~24_combout\)))) # (\alu_ctrl[1]~input_o\ & ((!\u1|registers~24_combout\) # ((!\alu_ctrl[0]~input_o\ & 
-- \alu_ctrl[2]~input_o\)))) ) ) # ( !\u1|registers~26_combout\ & ( (!\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[2]~input_o\ & ((\u1|registers~24_combout\))) # (\alu_ctrl[2]~input_o\ & (!\alu_ctrl[0]~input_o\ & !\u1|registers~24_combout\)))) # 
-- (\alu_ctrl[1]~input_o\ & (!\alu_ctrl[0]~input_o\ $ (((!\u1|registers~24_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100111100100000110011110010001111101100001100111110110000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[1]~input_o\,
	datab => \ALT_INV_alu_ctrl[0]~input_o\,
	datac => \ALT_INV_alu_ctrl[2]~input_o\,
	datad => \u1|ALT_INV_registers~24_combout\,
	dataf => \u1|ALT_INV_registers~26_combout\,
	combout => \U2|Mux3~2_combout\);

-- Location: FF_X83_Y9_N50
\u1|registers~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[2]~2_combout\,
	sload => VCC,
	ena => \u1|registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~17_q\);

-- Location: FF_X84_Y9_N2
\u1|registers~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U0|y[2]~2_combout\,
	ena => \u1|registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~13_q\);

-- Location: FF_X84_Y9_N23
\u1|registers~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[2]~2_combout\,
	sload => VCC,
	ena => \u1|registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~9_q\);

-- Location: LABCELL_X83_Y9_N57
\u1|registers~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~27_combout\ = ( \u1|registers~21_q\ & ( \u1|registers~9_q\ & ( (!\rba[1]~input_o\ & (((!\rba[0]~input_o\) # (\u1|registers~13_q\)))) # (\rba[1]~input_o\ & (((\rba[0]~input_o\)) # (\u1|registers~17_q\))) ) ) ) # ( !\u1|registers~21_q\ & ( 
-- \u1|registers~9_q\ & ( (!\rba[1]~input_o\ & (((!\rba[0]~input_o\) # (\u1|registers~13_q\)))) # (\rba[1]~input_o\ & (\u1|registers~17_q\ & (!\rba[0]~input_o\))) ) ) ) # ( \u1|registers~21_q\ & ( !\u1|registers~9_q\ & ( (!\rba[1]~input_o\ & 
-- (((\rba[0]~input_o\ & \u1|registers~13_q\)))) # (\rba[1]~input_o\ & (((\rba[0]~input_o\)) # (\u1|registers~17_q\))) ) ) ) # ( !\u1|registers~21_q\ & ( !\u1|registers~9_q\ & ( (!\rba[1]~input_o\ & (((\rba[0]~input_o\ & \u1|registers~13_q\)))) # 
-- (\rba[1]~input_o\ & (\u1|registers~17_q\ & (!\rba[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~17_q\,
	datab => \ALT_INV_rba[1]~input_o\,
	datac => \ALT_INV_rba[0]~input_o\,
	datad => \u1|ALT_INV_registers~13_q\,
	datae => \u1|ALT_INV_registers~21_q\,
	dataf => \u1|ALT_INV_registers~9_q\,
	combout => \u1|registers~27_combout\);

-- Location: FF_X85_Y9_N56
\u1|registers~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~12_q\);

-- Location: FF_X85_Y9_N53
\u1|registers~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~20_q\);

-- Location: FF_X84_Y9_N11
\u1|registers~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~8_q\);

-- Location: LABCELL_X85_Y9_N48
\u1|registers~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~23_combout\ = ( \u1|registers~16_q\ & ( \u1|registers~8_q\ & ( (!\rba[0]~input_o\) # ((!\rba[1]~input_o\ & (\u1|registers~12_q\)) # (\rba[1]~input_o\ & ((\u1|registers~20_q\)))) ) ) ) # ( !\u1|registers~16_q\ & ( \u1|registers~8_q\ & ( 
-- (!\rba[0]~input_o\ & (((!\rba[1]~input_o\)))) # (\rba[0]~input_o\ & ((!\rba[1]~input_o\ & (\u1|registers~12_q\)) # (\rba[1]~input_o\ & ((\u1|registers~20_q\))))) ) ) ) # ( \u1|registers~16_q\ & ( !\u1|registers~8_q\ & ( (!\rba[0]~input_o\ & 
-- (((\rba[1]~input_o\)))) # (\rba[0]~input_o\ & ((!\rba[1]~input_o\ & (\u1|registers~12_q\)) # (\rba[1]~input_o\ & ((\u1|registers~20_q\))))) ) ) ) # ( !\u1|registers~16_q\ & ( !\u1|registers~8_q\ & ( (\rba[0]~input_o\ & ((!\rba[1]~input_o\ & 
-- (\u1|registers~12_q\)) # (\rba[1]~input_o\ & ((\u1|registers~20_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~12_q\,
	datab => \ALT_INV_rba[0]~input_o\,
	datac => \u1|ALT_INV_registers~20_q\,
	datad => \ALT_INV_rba[1]~input_o\,
	datae => \u1|ALT_INV_registers~16_q\,
	dataf => \u1|ALT_INV_registers~8_q\,
	combout => \u1|registers~23_combout\);

-- Location: LABCELL_X85_Y9_N6
\U2|U_ADD|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U_ADD|U1|cout~0_combout\ = ( \u1|registers~23_combout\ & ( ((\u1|registers~24_combout\ & \u1|registers~26_combout\)) # (\u1|registers~25_combout\) ) ) # ( !\u1|registers~23_combout\ & ( (\u1|registers~24_combout\ & (\u1|registers~25_combout\ & 
-- \u1|registers~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_registers~24_combout\,
	datac => \u1|ALT_INV_registers~25_combout\,
	datad => \u1|ALT_INV_registers~26_combout\,
	dataf => \u1|ALT_INV_registers~23_combout\,
	combout => \U2|U_ADD|U1|cout~0_combout\);

-- Location: MLABCELL_X84_Y9_N45
\U2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = ( \U2|U_ADD|U1|cout~0_combout\ & ( (\U2|Mux3~1_combout\ & (!\u1|registers~27_combout\ $ (\u1|registers~28_combout\))) ) ) # ( !\U2|U_ADD|U1|cout~0_combout\ & ( (\U2|Mux3~1_combout\ & (!\u1|registers~27_combout\ $ 
-- (!\u1|registers~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux3~1_combout\,
	datac => \u1|ALT_INV_registers~27_combout\,
	datad => \u1|ALT_INV_registers~28_combout\,
	dataf => \U2|U_ADD|U1|ALT_INV_cout~0_combout\,
	combout => \U2|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y9_N3
\U3|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux0~1_combout\ = ( \U2|Mux1~3_combout\ & ( (!\sh_ctrl[1]~input_o\ & ((!\U2|Mux1~0_combout\))) # (\sh_ctrl[1]~input_o\ & (!\U2|Mux3~2_combout\)) ) ) # ( !\U2|Mux1~3_combout\ & ( (\sh_ctrl[1]~input_o\ & !\U2|Mux3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010010100001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sh_ctrl[1]~input_o\,
	datac => \U2|ALT_INV_Mux3~2_combout\,
	datad => \U2|ALT_INV_Mux1~0_combout\,
	dataf => \U2|ALT_INV_Mux1~3_combout\,
	combout => \U3|Mux0~1_combout\);

-- Location: MLABCELL_X84_Y9_N27
\U0|y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|y[3]~3_combout\ = ( \U3|Mux0~1_combout\ & ( \U2|Mux0~3_combout\ & ( (\ie~input_o\ & \input[3]~input_o\) ) ) ) # ( !\U3|Mux0~1_combout\ & ( \U2|Mux0~3_combout\ & ( (!\ie~input_o\ & ((\sh_ctrl[0]~input_o\))) # (\ie~input_o\ & (\input[3]~input_o\)) ) ) ) 
-- # ( \U3|Mux0~1_combout\ & ( !\U2|Mux0~3_combout\ & ( (!\ie~input_o\ & (((!\sh_ctrl[0]~input_o\ & !\sh_ctrl[1]~input_o\)))) # (\ie~input_o\ & (\input[3]~input_o\)) ) ) ) # ( !\U3|Mux0~1_combout\ & ( !\U2|Mux0~3_combout\ & ( (!\ie~input_o\ & 
-- (((!\sh_ctrl[1]~input_o\) # (\sh_ctrl[0]~input_o\)))) # (\ie~input_o\ & (\input[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100011011101100010001000100011011000110110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	datab => \ALT_INV_input[3]~input_o\,
	datac => \ALT_INV_sh_ctrl[0]~input_o\,
	datad => \ALT_INV_sh_ctrl[1]~input_o\,
	datae => \U3|ALT_INV_Mux0~1_combout\,
	dataf => \U2|ALT_INV_Mux0~3_combout\,
	combout => \U0|y[3]~3_combout\);

-- Location: FF_X83_Y9_N44
\u1|registers~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[3]~3_combout\,
	sload => VCC,
	ena => \u1|registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~18_q\);

-- Location: FF_X84_Y9_N35
\u1|registers~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[3]~3_combout\,
	sload => VCC,
	ena => \u1|registers~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~10_q\);

-- Location: FF_X83_Y9_N56
\u1|registers~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[3]~3_combout\,
	sload => VCC,
	ena => \u1|registers~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~14_q\);

-- Location: FF_X84_Y9_N26
\u1|registers~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[3]~3_combout\,
	sload => VCC,
	ena => \u1|registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~22_q\);

-- Location: LABCELL_X83_Y9_N3
\u1|registers~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~30_combout\ = ( \u1|registers~14_q\ & ( \u1|registers~22_q\ & ( ((!\raa[1]~input_o\ & ((\u1|registers~10_q\))) # (\raa[1]~input_o\ & (\u1|registers~18_q\))) # (\raa[0]~input_o\) ) ) ) # ( !\u1|registers~14_q\ & ( \u1|registers~22_q\ & ( 
-- (!\raa[0]~input_o\ & ((!\raa[1]~input_o\ & ((\u1|registers~10_q\))) # (\raa[1]~input_o\ & (\u1|registers~18_q\)))) # (\raa[0]~input_o\ & (\raa[1]~input_o\)) ) ) ) # ( \u1|registers~14_q\ & ( !\u1|registers~22_q\ & ( (!\raa[0]~input_o\ & 
-- ((!\raa[1]~input_o\ & ((\u1|registers~10_q\))) # (\raa[1]~input_o\ & (\u1|registers~18_q\)))) # (\raa[0]~input_o\ & (!\raa[1]~input_o\)) ) ) ) # ( !\u1|registers~14_q\ & ( !\u1|registers~22_q\ & ( (!\raa[0]~input_o\ & ((!\raa[1]~input_o\ & 
-- ((\u1|registers~10_q\))) # (\raa[1]~input_o\ & (\u1|registers~18_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raa[0]~input_o\,
	datab => \ALT_INV_raa[1]~input_o\,
	datac => \u1|ALT_INV_registers~18_q\,
	datad => \u1|ALT_INV_registers~10_q\,
	datae => \u1|ALT_INV_registers~14_q\,
	dataf => \u1|ALT_INV_registers~22_q\,
	combout => \u1|registers~30_combout\);

-- Location: LABCELL_X83_Y9_N21
\u1|registers~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~29_combout\ = ( \u1|registers~14_q\ & ( \u1|registers~22_q\ & ( ((!\rba[1]~input_o\ & ((\u1|registers~10_q\))) # (\rba[1]~input_o\ & (\u1|registers~18_q\))) # (\rba[0]~input_o\) ) ) ) # ( !\u1|registers~14_q\ & ( \u1|registers~22_q\ & ( 
-- (!\rba[0]~input_o\ & ((!\rba[1]~input_o\ & ((\u1|registers~10_q\))) # (\rba[1]~input_o\ & (\u1|registers~18_q\)))) # (\rba[0]~input_o\ & (\rba[1]~input_o\)) ) ) ) # ( \u1|registers~14_q\ & ( !\u1|registers~22_q\ & ( (!\rba[0]~input_o\ & 
-- ((!\rba[1]~input_o\ & ((\u1|registers~10_q\))) # (\rba[1]~input_o\ & (\u1|registers~18_q\)))) # (\rba[0]~input_o\ & (!\rba[1]~input_o\)) ) ) ) # ( !\u1|registers~14_q\ & ( !\u1|registers~22_q\ & ( (!\rba[0]~input_o\ & ((!\rba[1]~input_o\ & 
-- ((\u1|registers~10_q\))) # (\rba[1]~input_o\ & (\u1|registers~18_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rba[0]~input_o\,
	datab => \ALT_INV_rba[1]~input_o\,
	datac => \u1|ALT_INV_registers~18_q\,
	datad => \u1|ALT_INV_registers~10_q\,
	datae => \u1|ALT_INV_registers~14_q\,
	dataf => \u1|ALT_INV_registers~22_q\,
	combout => \u1|registers~29_combout\);

-- Location: MLABCELL_X84_Y9_N51
\U2|U_ADD|U3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U_ADD|U3|s~combout\ = ( \U2|U_ADD|U1|cout~0_combout\ & ( !\u1|registers~30_combout\ $ (!\u1|registers~29_combout\ $ (((\u1|registers~27_combout\) # (\u1|registers~28_combout\)))) ) ) # ( !\U2|U_ADD|U1|cout~0_combout\ & ( !\u1|registers~30_combout\ $ 
-- (!\u1|registers~29_combout\ $ (((\u1|registers~28_combout\ & \u1|registers~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~28_combout\,
	datab => \u1|ALT_INV_registers~30_combout\,
	datac => \u1|ALT_INV_registers~27_combout\,
	datad => \u1|ALT_INV_registers~29_combout\,
	dataf => \U2|U_ADD|U1|ALT_INV_cout~0_combout\,
	combout => \U2|U_ADD|U3|s~combout\);

-- Location: LABCELL_X83_Y9_N33
\U2|U_DEC|U0|U1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U_DEC|U0|U1|cout~0_combout\ = ( !\u1|registers~25_combout\ & ( !\u1|registers~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_registers~24_combout\,
	dataf => \u1|ALT_INV_registers~25_combout\,
	combout => \U2|U_DEC|U0|U1|cout~0_combout\);

-- Location: LABCELL_X83_Y9_N12
\U2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = ( \u1|registers~28_combout\ & ( \U2|U_DEC|U0|U1|cout~0_combout\ & ( (!\u1|registers~30_combout\ & (\alu_ctrl[1]~input_o\ & ((\u1|registers~29_combout\) # (\alu_ctrl[0]~input_o\)))) # (\u1|registers~30_combout\ & 
-- ((!\alu_ctrl[0]~input_o\) # ((\u1|registers~29_combout\ & !\alu_ctrl[1]~input_o\)))) ) ) ) # ( !\u1|registers~28_combout\ & ( \U2|U_DEC|U0|U1|cout~0_combout\ & ( (!\u1|registers~30_combout\ & ((!\alu_ctrl[0]~input_o\ & ((!\alu_ctrl[1]~input_o\) # 
-- (\u1|registers~29_combout\))) # (\alu_ctrl[0]~input_o\ & ((\alu_ctrl[1]~input_o\))))) # (\u1|registers~30_combout\ & ((!\alu_ctrl[0]~input_o\ & ((\alu_ctrl[1]~input_o\))) # (\alu_ctrl[0]~input_o\ & (\u1|registers~29_combout\ & !\alu_ctrl[1]~input_o\)))) ) 
-- ) ) # ( \u1|registers~28_combout\ & ( !\U2|U_DEC|U0|U1|cout~0_combout\ & ( (!\u1|registers~30_combout\ & (\alu_ctrl[1]~input_o\ & ((\u1|registers~29_combout\) # (\alu_ctrl[0]~input_o\)))) # (\u1|registers~30_combout\ & ((!\alu_ctrl[0]~input_o\) # 
-- ((\u1|registers~29_combout\ & !\alu_ctrl[1]~input_o\)))) ) ) ) # ( !\u1|registers~28_combout\ & ( !\U2|U_DEC|U0|U1|cout~0_combout\ & ( (!\u1|registers~30_combout\ & (\alu_ctrl[1]~input_o\ & ((\u1|registers~29_combout\) # (\alu_ctrl[0]~input_o\)))) # 
-- (\u1|registers~30_combout\ & ((!\alu_ctrl[0]~input_o\) # ((\u1|registers~29_combout\ & !\alu_ctrl[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101101110010001010110111010001001011011100100010101101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~30_combout\,
	datab => \ALT_INV_alu_ctrl[0]~input_o\,
	datac => \u1|ALT_INV_registers~29_combout\,
	datad => \ALT_INV_alu_ctrl[1]~input_o\,
	datae => \u1|ALT_INV_registers~28_combout\,
	dataf => \U2|U_DEC|U0|U1|ALT_INV_cout~0_combout\,
	combout => \U2|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y9_N39
\U2|U_SUB|U2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U_SUB|U2|cout~0_combout\ = ( \u1|registers~23_combout\ & ( \u1|registers~26_combout\ & ( (!\u1|registers~28_combout\ & (((!\u1|registers~25_combout\) # (!\u1|registers~24_combout\)) # (\u1|registers~27_combout\))) # (\u1|registers~28_combout\ & 
-- (\u1|registers~27_combout\ & ((!\u1|registers~25_combout\) # (!\u1|registers~24_combout\)))) ) ) ) # ( !\u1|registers~23_combout\ & ( \u1|registers~26_combout\ & ( (!\u1|registers~28_combout\ & (((!\u1|registers~25_combout\ & !\u1|registers~24_combout\)) 
-- # (\u1|registers~27_combout\))) # (\u1|registers~28_combout\ & (\u1|registers~27_combout\ & (!\u1|registers~25_combout\ & !\u1|registers~24_combout\))) ) ) ) # ( \u1|registers~23_combout\ & ( !\u1|registers~26_combout\ & ( (!\u1|registers~28_combout\ & 
-- ((!\u1|registers~25_combout\) # (\u1|registers~27_combout\))) # (\u1|registers~28_combout\ & (\u1|registers~27_combout\ & !\u1|registers~25_combout\)) ) ) ) # ( !\u1|registers~23_combout\ & ( !\u1|registers~26_combout\ & ( (!\u1|registers~28_combout\ & 
-- \u1|registers~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010101100101011001010110010001000101011101110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~28_combout\,
	datab => \u1|ALT_INV_registers~27_combout\,
	datac => \u1|ALT_INV_registers~25_combout\,
	datad => \u1|ALT_INV_registers~24_combout\,
	datae => \u1|ALT_INV_registers~23_combout\,
	dataf => \u1|ALT_INV_registers~26_combout\,
	combout => \U2|U_SUB|U2|cout~0_combout\);

-- Location: MLABCELL_X84_Y9_N48
\U2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~1_combout\ = ( \u1|registers~24_combout\ & ( (\U2|Mux2~1_combout\ & (!\u1|registers~30_combout\ $ (((!\u1|registers~28_combout\) # (!\u1|registers~25_combout\))))) ) ) # ( !\u1|registers~24_combout\ & ( (\u1|registers~30_combout\ & 
-- \U2|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000001100000001100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~28_combout\,
	datab => \u1|ALT_INV_registers~30_combout\,
	datac => \U2|ALT_INV_Mux2~1_combout\,
	datad => \u1|ALT_INV_registers~25_combout\,
	dataf => \u1|ALT_INV_registers~24_combout\,
	combout => \U2|Mux0~1_combout\);

-- Location: MLABCELL_X84_Y9_N18
\U2|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~2_combout\ = ( \u1|registers~29_combout\ & ( !\U2|Mux0~1_combout\ & ( (!\u1|registers~30_combout\ & ((!\U2|Mux2~3_combout\) # ((\U2|U_SUB|U2|cout~0_combout\)))) # (\u1|registers~30_combout\ & (!\U2|Mux3~0_combout\ & ((!\U2|Mux2~3_combout\) # 
-- (!\U2|U_SUB|U2|cout~0_combout\)))) ) ) ) # ( !\u1|registers~29_combout\ & ( !\U2|Mux0~1_combout\ & ( (!\u1|registers~30_combout\ & ((!\U2|Mux2~3_combout\) # ((!\U2|U_SUB|U2|cout~0_combout\)))) # (\u1|registers~30_combout\ & (!\U2|Mux3~0_combout\ & 
-- ((!\U2|Mux2~3_combout\) # (\U2|U_SUB|U2|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110010111000101110001110110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux2~3_combout\,
	datab => \u1|ALT_INV_registers~30_combout\,
	datac => \U2|ALT_INV_Mux3~0_combout\,
	datad => \U2|U_SUB|U2|ALT_INV_cout~0_combout\,
	datae => \u1|ALT_INV_registers~29_combout\,
	dataf => \U2|ALT_INV_Mux0~1_combout\,
	combout => \U2|Mux0~2_combout\);

-- Location: MLABCELL_X84_Y9_N30
\U2|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~3_combout\ = ( \U2|Mux0~0_combout\ & ( \U2|Mux0~2_combout\ & ( (!\alu_ctrl[2]~input_o\ & ((!\U2|Mux3~1_combout\) # (!\U2|U_ADD|U3|s~combout\))) ) ) ) # ( !\U2|Mux0~0_combout\ & ( \U2|Mux0~2_combout\ & ( (!\U2|Mux3~1_combout\) # 
-- (!\U2|U_ADD|U3|s~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111110101111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux3~1_combout\,
	datac => \U2|U_ADD|U3|ALT_INV_s~combout\,
	datad => \ALT_INV_alu_ctrl[2]~input_o\,
	datae => \U2|ALT_INV_Mux0~0_combout\,
	dataf => \U2|ALT_INV_Mux0~2_combout\,
	combout => \U2|Mux0~3_combout\);

-- Location: IOIBUF_X89_Y11_N78
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LABCELL_X83_Y9_N6
\U2|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~2_combout\ = ( \u1|registers~25_combout\ & ( ((\U2|Mux2~1_combout\ & !\u1|registers~24_combout\)) # (\U2|Mux3~0_combout\) ) ) # ( !\u1|registers~25_combout\ & ( (\U2|Mux2~1_combout\ & \u1|registers~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_Mux3~0_combout\,
	datac => \U2|ALT_INV_Mux2~1_combout\,
	datad => \u1|ALT_INV_registers~24_combout\,
	dataf => \u1|ALT_INV_registers~25_combout\,
	combout => \U2|Mux2~2_combout\);

-- Location: LABCELL_X83_Y9_N45
\U2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = ( \u1|registers~24_combout\ & ( (!\u1|registers~25_combout\ & (\alu_ctrl[1]~input_o\ & ((\u1|registers~23_combout\) # (\alu_ctrl[0]~input_o\)))) # (\u1|registers~25_combout\ & ((!\alu_ctrl[0]~input_o\) # ((!\alu_ctrl[1]~input_o\ & 
-- \u1|registers~23_combout\)))) ) ) # ( !\u1|registers~24_combout\ & ( (!\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[0]~input_o\ & ((!\u1|registers~25_combout\))) # (\alu_ctrl[0]~input_o\ & (\u1|registers~23_combout\ & \u1|registers~25_combout\)))) # 
-- (\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[0]~input_o\ & ((\u1|registers~25_combout\) # (\u1|registers~23_combout\))) # (\alu_ctrl[0]~input_o\ & ((!\u1|registers~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110101000110100111010100011000010101110011100001010111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[1]~input_o\,
	datab => \ALT_INV_alu_ctrl[0]~input_o\,
	datac => \u1|ALT_INV_registers~23_combout\,
	datad => \u1|ALT_INV_registers~25_combout\,
	dataf => \u1|ALT_INV_registers~24_combout\,
	combout => \U2|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y9_N15
\U2|Mux2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~5_combout\ = ( \U2|Mux2~0_combout\ & ( (!\alu_ctrl[2]~input_o\ & (!\U2|Mux2~4_combout\ & !\U2|Mux2~2_combout\)) ) ) # ( !\U2|Mux2~0_combout\ & ( (!\U2|Mux2~4_combout\ & !\U2|Mux2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \U2|ALT_INV_Mux2~4_combout\,
	datad => \U2|ALT_INV_Mux2~2_combout\,
	dataf => \U2|ALT_INV_Mux2~0_combout\,
	combout => \U2|Mux2~5_combout\);

-- Location: MLABCELL_X84_Y9_N42
\U3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux1~0_combout\ = ( \U2|Mux1~3_combout\ & ( (!\sh_ctrl[0]~input_o\ & ((!\U2|Mux1~0_combout\))) # (\sh_ctrl[0]~input_o\ & (\U2|Mux2~5_combout\)) ) ) # ( !\U2|Mux1~3_combout\ & ( (\U2|Mux2~5_combout\ & \sh_ctrl[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_Mux2~5_combout\,
	datac => \ALT_INV_sh_ctrl[0]~input_o\,
	datad => \U2|ALT_INV_Mux1~0_combout\,
	dataf => \U2|ALT_INV_Mux1~3_combout\,
	combout => \U3|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y9_N0
\U0|y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|y[2]~2_combout\ = ( \U3|Mux1~0_combout\ & ( (!\ie~input_o\ & (\sh_ctrl[1]~input_o\ & (!\U2|Mux0~3_combout\))) # (\ie~input_o\ & (((\input[2]~input_o\)))) ) ) # ( !\U3|Mux1~0_combout\ & ( (!\ie~input_o\ & ((!\sh_ctrl[1]~input_o\) # 
-- ((!\U2|Mux0~3_combout\)))) # (\ie~input_o\ & (((\input[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000001111111011100000111101000100000011110100010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sh_ctrl[1]~input_o\,
	datab => \U2|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_input[2]~input_o\,
	datad => \ALT_INV_ie~input_o\,
	dataf => \U3|ALT_INV_Mux1~0_combout\,
	combout => \U0|y[2]~2_combout\);

-- Location: FF_X84_Y9_N38
\u1|registers~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[2]~2_combout\,
	sload => VCC,
	ena => \u1|registers~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~21_q\);

-- Location: MLABCELL_X84_Y9_N54
\u1|registers~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~28_combout\ = ( \u1|registers~13_q\ & ( \u1|registers~17_q\ & ( (!\raa[0]~input_o\ & (((\raa[1]~input_o\) # (\u1|registers~9_q\)))) # (\raa[0]~input_o\ & (((!\raa[1]~input_o\)) # (\u1|registers~21_q\))) ) ) ) # ( !\u1|registers~13_q\ & ( 
-- \u1|registers~17_q\ & ( (!\raa[0]~input_o\ & (((\raa[1]~input_o\) # (\u1|registers~9_q\)))) # (\raa[0]~input_o\ & (\u1|registers~21_q\ & ((\raa[1]~input_o\)))) ) ) ) # ( \u1|registers~13_q\ & ( !\u1|registers~17_q\ & ( (!\raa[0]~input_o\ & 
-- (((\u1|registers~9_q\ & !\raa[1]~input_o\)))) # (\raa[0]~input_o\ & (((!\raa[1]~input_o\)) # (\u1|registers~21_q\))) ) ) ) # ( !\u1|registers~13_q\ & ( !\u1|registers~17_q\ & ( (!\raa[0]~input_o\ & (((\u1|registers~9_q\ & !\raa[1]~input_o\)))) # 
-- (\raa[0]~input_o\ & (\u1|registers~21_q\ & ((\raa[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~21_q\,
	datab => \ALT_INV_raa[0]~input_o\,
	datac => \u1|ALT_INV_registers~9_q\,
	datad => \ALT_INV_raa[1]~input_o\,
	datae => \u1|ALT_INV_registers~13_q\,
	dataf => \u1|ALT_INV_registers~17_q\,
	combout => \u1|registers~28_combout\);

-- Location: LABCELL_X85_Y9_N9
\U2|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux1~2_combout\ = ( \u1|registers~28_combout\ & ( ((\U2|Mux2~1_combout\ & ((!\u1|registers~24_combout\) # (!\u1|registers~25_combout\)))) # (\U2|Mux3~0_combout\) ) ) # ( !\u1|registers~28_combout\ & ( (\u1|registers~24_combout\ & (\U2|Mux2~1_combout\ 
-- & \u1|registers~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001101011111010111010101111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux3~0_combout\,
	datab => \u1|ALT_INV_registers~24_combout\,
	datac => \U2|ALT_INV_Mux2~1_combout\,
	datad => \u1|ALT_INV_registers~25_combout\,
	dataf => \u1|ALT_INV_registers~28_combout\,
	combout => \U2|Mux1~2_combout\);

-- Location: MLABCELL_X84_Y9_N6
\U2|U_SUB|U2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U_SUB|U2|s~combout\ = ( \u1|registers~24_combout\ & ( \u1|registers~23_combout\ & ( !\u1|registers~28_combout\ $ (!\u1|registers~27_combout\ $ (!\u1|registers~25_combout\)) ) ) ) # ( !\u1|registers~24_combout\ & ( \u1|registers~23_combout\ & ( 
-- !\u1|registers~28_combout\ $ (!\u1|registers~27_combout\ $ (((!\u1|registers~25_combout\) # (\u1|registers~26_combout\)))) ) ) ) # ( \u1|registers~24_combout\ & ( !\u1|registers~23_combout\ & ( !\u1|registers~28_combout\ $ (!\u1|registers~27_combout\) ) ) 
-- ) # ( !\u1|registers~24_combout\ & ( !\u1|registers~23_combout\ & ( !\u1|registers~28_combout\ $ (!\u1|registers~27_combout\ $ (((\u1|registers~26_combout\ & !\u1|registers~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011001100110011010011001011010011001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_registers~28_combout\,
	datab => \u1|ALT_INV_registers~27_combout\,
	datac => \u1|ALT_INV_registers~26_combout\,
	datad => \u1|ALT_INV_registers~25_combout\,
	datae => \u1|ALT_INV_registers~24_combout\,
	dataf => \u1|ALT_INV_registers~23_combout\,
	combout => \U2|U_SUB|U2|s~combout\);

-- Location: LABCELL_X85_Y9_N42
\U2|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux1~1_combout\ = ( \u1|registers~25_combout\ & ( \u1|registers~27_combout\ & ( (!\alu_ctrl[1]~input_o\ & ((\u1|registers~28_combout\))) # (\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[0]~input_o\) # (!\u1|registers~28_combout\))) ) ) ) # ( 
-- !\u1|registers~25_combout\ & ( \u1|registers~27_combout\ & ( (!\alu_ctrl[0]~input_o\ & ((!\u1|registers~28_combout\ $ (\u1|registers~24_combout\)) # (\alu_ctrl[1]~input_o\))) # (\alu_ctrl[0]~input_o\ & (!\alu_ctrl[1]~input_o\ $ 
-- ((!\u1|registers~28_combout\)))) ) ) ) # ( \u1|registers~25_combout\ & ( !\u1|registers~27_combout\ & ( (!\alu_ctrl[0]~input_o\ & ((\u1|registers~28_combout\))) # (\alu_ctrl[0]~input_o\ & (\alu_ctrl[1]~input_o\ & !\u1|registers~28_combout\)) ) ) ) # ( 
-- !\u1|registers~25_combout\ & ( !\u1|registers~27_combout\ & ( (!\alu_ctrl[0]~input_o\ & (!\u1|registers~28_combout\ $ (((\u1|registers~24_combout\) # (\alu_ctrl[1]~input_o\))))) # (\alu_ctrl[0]~input_o\ & (\alu_ctrl[1]~input_o\ & 
-- (!\u1|registers~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001000011010000110100001101010110110001111100011111000111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[0]~input_o\,
	datab => \ALT_INV_alu_ctrl[1]~input_o\,
	datac => \u1|ALT_INV_registers~28_combout\,
	datad => \u1|ALT_INV_registers~24_combout\,
	datae => \u1|ALT_INV_registers~25_combout\,
	dataf => \u1|ALT_INV_registers~27_combout\,
	combout => \U2|Mux1~1_combout\);

-- Location: MLABCELL_X84_Y9_N12
\U2|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux1~3_combout\ = ( \U2|Mux1~1_combout\ & ( (!\U2|Mux1~2_combout\ & (!\alu_ctrl[2]~input_o\ & ((!\U2|Mux2~3_combout\) # (!\U2|U_SUB|U2|s~combout\)))) ) ) # ( !\U2|Mux1~1_combout\ & ( (!\U2|Mux1~2_combout\ & ((!\U2|Mux2~3_combout\) # 
-- (!\U2|U_SUB|U2|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux1~2_combout\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \U2|ALT_INV_Mux2~3_combout\,
	datad => \U2|U_SUB|U2|ALT_INV_s~combout\,
	dataf => \U2|ALT_INV_Mux1~1_combout\,
	combout => \U2|Mux1~3_combout\);

-- Location: LABCELL_X83_Y9_N9
\U3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = (!\sh_ctrl[0]~input_o\ & !\sh_ctrl[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sh_ctrl[0]~input_o\,
	datac => \ALT_INV_sh_ctrl[1]~input_o\,
	combout => \U3|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y9_N27
\U3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux2~0_combout\ = ( !\sh_ctrl[1]~input_o\ & ( \sh_ctrl[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sh_ctrl[1]~input_o\,
	dataf => \ALT_INV_sh_ctrl[0]~input_o\,
	combout => \U3|Mux2~0_combout\);

-- Location: LABCELL_X85_Y9_N30
\U3|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux2~1_combout\ = ( \u1|registers~26_combout\ & ( \U3|Mux2~0_combout\ & ( (!\alu_ctrl[1]~input_o\ & (!\alu_ctrl[2]~input_o\ $ (!\alu_ctrl[0]~input_o\ $ (\u1|registers~24_combout\)))) # (\alu_ctrl[1]~input_o\ & ((!\u1|registers~24_combout\) # 
-- ((\alu_ctrl[2]~input_o\ & !\alu_ctrl[0]~input_o\)))) ) ) ) # ( !\u1|registers~26_combout\ & ( \U3|Mux2~0_combout\ & ( (!\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[2]~input_o\ & ((\u1|registers~24_combout\))) # (\alu_ctrl[2]~input_o\ & (!\alu_ctrl[0]~input_o\ & 
-- !\u1|registers~24_combout\)))) # (\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[0]~input_o\ $ (!\u1|registers~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100101110110000111110110010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[1]~input_o\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \ALT_INV_alu_ctrl[0]~input_o\,
	datad => \u1|ALT_INV_registers~24_combout\,
	datae => \u1|ALT_INV_registers~26_combout\,
	dataf => \U3|ALT_INV_Mux2~0_combout\,
	combout => \U3|Mux2~1_combout\);

-- Location: LABCELL_X85_Y9_N0
\U3|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux2~2_combout\ = ( \U2|Mux2~0_combout\ & ( \U2|Mux2~2_combout\ & ( (!\U3|Mux0~0_combout\ & !\U3|Mux2~1_combout\) ) ) ) # ( !\U2|Mux2~0_combout\ & ( \U2|Mux2~2_combout\ & ( (!\U3|Mux0~0_combout\ & !\U3|Mux2~1_combout\) ) ) ) # ( \U2|Mux2~0_combout\ & 
-- ( !\U2|Mux2~2_combout\ & ( (!\U3|Mux2~1_combout\ & ((!\U3|Mux0~0_combout\) # ((!\alu_ctrl[2]~input_o\ & !\U2|Mux2~4_combout\)))) ) ) ) # ( !\U2|Mux2~0_combout\ & ( !\U2|Mux2~2_combout\ & ( (!\U3|Mux2~1_combout\ & ((!\U3|Mux0~0_combout\) # 
-- (!\U2|Mux2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[2]~input_o\,
	datab => \U3|ALT_INV_Mux0~0_combout\,
	datac => \U2|ALT_INV_Mux2~4_combout\,
	datad => \U3|ALT_INV_Mux2~1_combout\,
	datae => \U2|ALT_INV_Mux2~0_combout\,
	dataf => \U2|ALT_INV_Mux2~2_combout\,
	combout => \U3|Mux2~2_combout\);

-- Location: LABCELL_X85_Y9_N27
\U0|y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|y[1]~0_combout\ = ( \U3|Mux2~2_combout\ & ( \U2|Mux1~0_combout\ & ( (!\ie~input_o\ & ((\sh_ctrl[1]~input_o\))) # (\ie~input_o\ & (\input[1]~input_o\)) ) ) ) # ( !\U3|Mux2~2_combout\ & ( \U2|Mux1~0_combout\ & ( (!\ie~input_o\) # (\input[1]~input_o\) ) 
-- ) ) # ( \U3|Mux2~2_combout\ & ( !\U2|Mux1~0_combout\ & ( (!\ie~input_o\ & (((\sh_ctrl[1]~input_o\ & !\U2|Mux1~3_combout\)))) # (\ie~input_o\ & (\input[1]~input_o\)) ) ) ) # ( !\U3|Mux2~2_combout\ & ( !\U2|Mux1~0_combout\ & ( (!\ie~input_o\) # 
-- (\input[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011000110110001000110111011101110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ie~input_o\,
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_sh_ctrl[1]~input_o\,
	datad => \U2|ALT_INV_Mux1~3_combout\,
	datae => \U3|ALT_INV_Mux2~2_combout\,
	dataf => \U2|ALT_INV_Mux1~0_combout\,
	combout => \U0|y[1]~0_combout\);

-- Location: FF_X85_Y9_N47
\u1|registers~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \U0|y[1]~0_combout\,
	sload => VCC,
	ena => \u1|registers~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|registers~16_q\);

-- Location: LABCELL_X85_Y9_N57
\u1|registers~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|registers~25_combout\ = ( \u1|registers~12_q\ & ( \u1|registers~8_q\ & ( (!\raa[1]~input_o\) # ((!\raa[0]~input_o\ & (\u1|registers~16_q\)) # (\raa[0]~input_o\ & ((\u1|registers~20_q\)))) ) ) ) # ( !\u1|registers~12_q\ & ( \u1|registers~8_q\ & ( 
-- (!\raa[0]~input_o\ & ((!\raa[1]~input_o\) # ((\u1|registers~16_q\)))) # (\raa[0]~input_o\ & (\raa[1]~input_o\ & ((\u1|registers~20_q\)))) ) ) ) # ( \u1|registers~12_q\ & ( !\u1|registers~8_q\ & ( (!\raa[0]~input_o\ & (\raa[1]~input_o\ & 
-- (\u1|registers~16_q\))) # (\raa[0]~input_o\ & ((!\raa[1]~input_o\) # ((\u1|registers~20_q\)))) ) ) ) # ( !\u1|registers~12_q\ & ( !\u1|registers~8_q\ & ( (\raa[1]~input_o\ & ((!\raa[0]~input_o\ & (\u1|registers~16_q\)) # (\raa[0]~input_o\ & 
-- ((\u1|registers~20_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_raa[0]~input_o\,
	datab => \ALT_INV_raa[1]~input_o\,
	datac => \u1|ALT_INV_registers~16_q\,
	datad => \u1|ALT_INV_registers~20_q\,
	datae => \u1|ALT_INV_registers~12_q\,
	dataf => \u1|ALT_INV_registers~8_q\,
	combout => \u1|registers~25_combout\);

-- Location: LABCELL_X85_Y9_N21
\U2|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~4_combout\ = ( \u1|registers~25_combout\ & ( \u1|registers~23_combout\ & ( (\u1|registers~26_combout\ & ((!\u1|registers~24_combout\ & (\U2|Mux2~3_combout\)) # (\u1|registers~24_combout\ & ((\U2|Mux3~1_combout\))))) ) ) ) # ( 
-- !\u1|registers~25_combout\ & ( \u1|registers~23_combout\ & ( (!\u1|registers~26_combout\ & (((\U2|Mux3~1_combout\)) # (\U2|Mux2~3_combout\))) # (\u1|registers~26_combout\ & ((!\u1|registers~24_combout\ & ((\U2|Mux3~1_combout\))) # 
-- (\u1|registers~24_combout\ & (\U2|Mux2~3_combout\)))) ) ) ) # ( \u1|registers~25_combout\ & ( !\u1|registers~23_combout\ & ( (!\u1|registers~26_combout\ & (((\U2|Mux3~1_combout\)) # (\U2|Mux2~3_combout\))) # (\u1|registers~26_combout\ & 
-- ((!\u1|registers~24_combout\ & ((\U2|Mux3~1_combout\))) # (\u1|registers~24_combout\ & (\U2|Mux2~3_combout\)))) ) ) ) # ( !\u1|registers~25_combout\ & ( !\u1|registers~23_combout\ & ( (\u1|registers~26_combout\ & ((!\u1|registers~24_combout\ & 
-- (\U2|Mux2~3_combout\)) # (\u1|registers~24_combout\ & ((\U2|Mux3~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111010100011111110101010001111111010000010000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux2~3_combout\,
	datab => \u1|ALT_INV_registers~24_combout\,
	datac => \u1|ALT_INV_registers~26_combout\,
	datad => \U2|ALT_INV_Mux3~1_combout\,
	datae => \u1|ALT_INV_registers~25_combout\,
	dataf => \u1|ALT_INV_registers~23_combout\,
	combout => \U2|Mux2~4_combout\);

-- Location: LABCELL_X85_Y9_N33
\U3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux3~0_combout\ = ( \u1|registers~26_combout\ & ( \U3|Mux0~0_combout\ & ( (!\alu_ctrl[1]~input_o\ & (!\alu_ctrl[2]~input_o\ $ (!\u1|registers~24_combout\ $ (\alu_ctrl[0]~input_o\)))) # (\alu_ctrl[1]~input_o\ & ((!\u1|registers~24_combout\) # 
-- ((\alu_ctrl[2]~input_o\ & !\alu_ctrl[0]~input_o\)))) ) ) ) # ( !\u1|registers~26_combout\ & ( \U3|Mux0~0_combout\ & ( (!\alu_ctrl[1]~input_o\ & ((!\alu_ctrl[2]~input_o\ & (\u1|registers~24_combout\)) # (\alu_ctrl[2]~input_o\ & (!\u1|registers~24_combout\ 
-- & !\alu_ctrl[0]~input_o\)))) # (\alu_ctrl[1]~input_o\ & ((!\u1|registers~24_combout\ $ (!\alu_ctrl[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101101010110000111100111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[1]~input_o\,
	datab => \ALT_INV_alu_ctrl[2]~input_o\,
	datac => \u1|ALT_INV_registers~24_combout\,
	datad => \ALT_INV_alu_ctrl[0]~input_o\,
	datae => \u1|ALT_INV_registers~26_combout\,
	dataf => \U3|ALT_INV_Mux0~0_combout\,
	combout => \U3|Mux3~0_combout\);

-- Location: LABCELL_X83_Y9_N24
\U3|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux3~1_combout\ = ( \U2|Mux2~2_combout\ & ( \U3|Mux3~0_combout\ ) ) # ( !\U2|Mux2~2_combout\ & ( \U3|Mux3~0_combout\ ) ) # ( \U2|Mux2~2_combout\ & ( !\U3|Mux3~0_combout\ & ( \sh_ctrl[1]~input_o\ ) ) ) # ( !\U2|Mux2~2_combout\ & ( !\U3|Mux3~0_combout\ 
-- & ( (\sh_ctrl[1]~input_o\ & (((\alu_ctrl[2]~input_o\ & \U2|Mux2~0_combout\)) # (\U2|Mux2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_ctrl[2]~input_o\,
	datab => \ALT_INV_sh_ctrl[1]~input_o\,
	datac => \U2|ALT_INV_Mux2~4_combout\,
	datad => \U2|ALT_INV_Mux2~0_combout\,
	datae => \U2|ALT_INV_Mux2~2_combout\,
	dataf => \U3|ALT_INV_Mux3~0_combout\,
	combout => \U3|Mux3~1_combout\);

-- Location: IOIBUF_X89_Y15_N4
\oe~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oe,
	o => \oe~input_o\);

-- Location: MLABCELL_X87_Y9_N42
\U3|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux2~3_combout\ = ( \sh_ctrl[1]~input_o\ & ( \U2|Mux1~3_combout\ & ( (!\U3|Mux2~2_combout\) # (\U2|Mux1~0_combout\) ) ) ) # ( !\sh_ctrl[1]~input_o\ & ( \U2|Mux1~3_combout\ & ( !\U3|Mux2~2_combout\ ) ) ) # ( \sh_ctrl[1]~input_o\ & ( 
-- !\U2|Mux1~3_combout\ ) ) # ( !\sh_ctrl[1]~input_o\ & ( !\U2|Mux1~3_combout\ & ( !\U3|Mux2~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux1~0_combout\,
	datac => \U3|ALT_INV_Mux2~2_combout\,
	datae => \ALT_INV_sh_ctrl[1]~input_o\,
	dataf => \U2|ALT_INV_Mux1~3_combout\,
	combout => \U3|Mux2~3_combout\);

-- Location: MLABCELL_X87_Y9_N39
\U3|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux1~1_combout\ = ( \U2|Mux0~3_combout\ & ( (!\U3|Mux1~0_combout\ & !\sh_ctrl[1]~input_o\) ) ) # ( !\U2|Mux0~3_combout\ & ( (!\U3|Mux1~0_combout\) # (\sh_ctrl[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_sh_ctrl[1]~input_o\,
	dataf => \U2|ALT_INV_Mux0~3_combout\,
	combout => \U3|Mux1~1_combout\);

-- Location: MLABCELL_X87_Y9_N30
\U3|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux0~2_combout\ = ( \sh_ctrl[1]~input_o\ & ( \sh_ctrl[0]~input_o\ & ( !\U3|Mux0~1_combout\ ) ) ) # ( !\sh_ctrl[1]~input_o\ & ( \sh_ctrl[0]~input_o\ & ( !\U3|Mux0~1_combout\ ) ) ) # ( !\sh_ctrl[1]~input_o\ & ( !\sh_ctrl[0]~input_o\ & ( 
-- !\U2|Mux0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_Mux0~3_combout\,
	datad => \U3|ALT_INV_Mux0~1_combout\,
	datae => \ALT_INV_sh_ctrl[1]~input_o\,
	dataf => \ALT_INV_sh_ctrl[0]~input_o\,
	combout => \U3|Mux0~2_combout\);

-- Location: IOIBUF_X4_Y0_N18
\rae~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rae,
	o => \rae~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\rbe~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rbe,
	o => \rbe~input_o\);

-- Location: LABCELL_X70_Y23_N3
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


