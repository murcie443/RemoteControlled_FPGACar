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
-- Generated on "05/29/2024 18:39:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DCmot_PWM_cntrl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DCmot_PWM_cntrl_vhd_vec_tst IS
END DCmot_PWM_cntrl_vhd_vec_tst;
ARCHITECTURE DCmot_PWM_cntrl_arch OF DCmot_PWM_cntrl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK1 : STD_LOGIC;
SIGNAL DCmot_speedv : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL PWM_DCmot : STD_LOGIC;
COMPONENT DCmot_PWM_cntrl
	PORT (
	CLK1 : IN STD_LOGIC;
	DCmot_speedv : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	PWM_DCmot : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DCmot_PWM_cntrl
	PORT MAP (
-- list connections between master ports and signals
	CLK1 => CLK1,
	DCmot_speedv => DCmot_speedv,
	PWM_DCmot => PWM_DCmot
	);

-- CLK1
t_prcs_CLK1: PROCESS
BEGIN
LOOP
	CLK1 <= '0';
	WAIT FOR 5000 ps;
	CLK1 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK1;
-- DCmot_speedv[2]
t_prcs_DCmot_speedv_2: PROCESS
BEGIN
	DCmot_speedv(2) <= '1';
WAIT;
END PROCESS t_prcs_DCmot_speedv_2;
-- DCmot_speedv[1]
t_prcs_DCmot_speedv_1: PROCESS
BEGIN
	DCmot_speedv(1) <= '1';
WAIT;
END PROCESS t_prcs_DCmot_speedv_1;
-- DCmot_speedv[0]
t_prcs_DCmot_speedv_0: PROCESS
BEGIN
	DCmot_speedv(0) <= '0';
WAIT;
END PROCESS t_prcs_DCmot_speedv_0;
END DCmot_PWM_cntrl_arch;
