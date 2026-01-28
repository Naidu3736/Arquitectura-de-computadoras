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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/27/2026 22:56:31"
                                                            
-- Vhdl Test Bench template for design  :  register_file
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY register_file_vhd_tst IS
END register_file_vhd_tst;
ARCHITECTURE register_file_arch OF register_file_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL raa : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rae : STD_LOGIC;
SIGNAL rba : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rbe : STD_LOGIC;
SIGNAL wa : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL wd : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT register_file
	PORT (
	aout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	raa : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rae : IN STD_LOGIC;
	rba : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rbe : IN STD_LOGIC;
	wa : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	wd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : register_file
	PORT MAP (
-- list connections between master ports and signals
	aout => aout,
	bout => bout,
	clk => clk,
	raa => raa,
	rae => rae,
	rba => rba,
	rbe => rbe,
	wa => wa,
	wd => wd,
	we => we
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END register_file_arch;
