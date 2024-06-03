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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/03/2024 17:43:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          led_cntrl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY led_cntrl_vhd_vec_tst IS
END led_cntrl_vhd_vec_tst;
ARCHITECTURE led_cntrl_arch OF led_cntrl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL back_bit : STD_LOGIC;
SIGNAL Back_led : STD_LOGIC;
SIGNAL Front_led : STD_LOGIC;
SIGNAL SW1 : STD_LOGIC;
SIGNAL SW2 : STD_LOGIC;
COMPONENT led_cntrl
	PORT (
	back_bit : IN STD_LOGIC;
	Back_led : OUT STD_LOGIC;
	Front_led : OUT STD_LOGIC;
	SW1 : IN STD_LOGIC;
	SW2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : led_cntrl
	PORT MAP (
-- list connections between master ports and signals
	back_bit => back_bit,
	Back_led => Back_led,
	Front_led => Front_led,
	SW1 => SW1,
	SW2 => SW2
	);

-- SW1
t_prcs_SW1: PROCESS
BEGIN
	SW1 <= '1';
WAIT;
END PROCESS t_prcs_SW1;

-- SW2
t_prcs_SW2: PROCESS
BEGIN
	SW2 <= '1';
WAIT;
END PROCESS t_prcs_SW2;

-- back_bit
t_prcs_back_bit: PROCESS
BEGIN
	back_bit <= '0';
WAIT;
END PROCESS t_prcs_back_bit;
END led_cntrl_arch;
