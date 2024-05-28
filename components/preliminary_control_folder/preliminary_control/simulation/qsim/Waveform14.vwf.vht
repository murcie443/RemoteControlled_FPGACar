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
-- Generated on "05/26/2024 18:59:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          preliminary_control
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY preliminary_control_vhd_vec_tst IS
END preliminary_control_vhd_vec_tst;
ARCHITECTURE preliminary_control_arch OF preliminary_control_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK3 : STD_LOGIC;
SIGNAL debug : STD_LOGIC;
SIGNAL DV_RX : STD_LOGIC;
SIGNAL EN_SW : STD_LOGIC;
SIGNAL RX_data_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RX_data_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT preliminary_control
	PORT (
	CLK3 : IN STD_LOGIC;
	debug : OUT STD_LOGIC;
	DV_RX : IN STD_LOGIC;
	EN_SW : IN STD_LOGIC;
	RX_data_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	RX_data_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : preliminary_control
	PORT MAP (
-- list connections between master ports and signals
	CLK3 => CLK3,
	debug => debug,
	DV_RX => DV_RX,
	EN_SW => EN_SW,
	RX_data_IN => RX_data_IN,
	RX_data_OUT => RX_data_OUT
	);

-- CLK3
t_prcs_CLK3: PROCESS
BEGIN
LOOP
	CLK3 <= '0';
	WAIT FOR 5000 ps;
	CLK3 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK3;

-- DV_RX
t_prcs_DV_RX: PROCESS
BEGIN
LOOP
	DV_RX <= '0';
	WAIT FOR 500000 ps;
	DV_RX <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DV_RX;
-- RX_data_IN[7]
t_prcs_RX_data_IN_7: PROCESS
BEGIN
	RX_data_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_7;
-- RX_data_IN[6]
t_prcs_RX_data_IN_6: PROCESS
BEGIN
	RX_data_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_6;
-- RX_data_IN[5]
t_prcs_RX_data_IN_5: PROCESS
BEGIN
	RX_data_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_5;
-- RX_data_IN[4]
t_prcs_RX_data_IN_4: PROCESS
BEGIN
	RX_data_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_4;
-- RX_data_IN[3]
t_prcs_RX_data_IN_3: PROCESS
BEGIN
	RX_data_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_3;
-- RX_data_IN[2]
t_prcs_RX_data_IN_2: PROCESS
BEGIN
	RX_data_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_2;
-- RX_data_IN[1]
t_prcs_RX_data_IN_1: PROCESS
BEGIN
	RX_data_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_1;
-- RX_data_IN[0]
t_prcs_RX_data_IN_0: PROCESS
BEGIN
	RX_data_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_RX_data_IN_0;

-- EN_SW
t_prcs_EN_SW: PROCESS
BEGIN
	EN_SW <= '1';
WAIT;
END PROCESS t_prcs_EN_SW;
END preliminary_control_arch;
