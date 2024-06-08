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
-- Generated on "05/28/2024 18:07:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SVmot_angle_cntrl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SVmot_angle_cntrl_vhd_vec_tst IS
END SVmot_angle_cntrl_vhd_vec_tst;
ARCHITECTURE SVmot_angle_cntrl_arch OF SVmot_angle_cntrl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK2 : STD_LOGIC;
SIGNAL PWM_SVmot : STD_LOGIC;
SIGNAL Svmot_anglev : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT SVmot_angle_cntrl
	PORT (
	CLK2 : IN STD_LOGIC;
	PWM_SVmot : OUT STD_LOGIC;
	Svmot_anglev : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SVmot_angle_cntrl
	PORT MAP (
-- list connections between master ports and signals
	CLK2 => CLK2,
	PWM_SVmot => PWM_SVmot,
	Svmot_anglev => Svmot_anglev
	);

-- CLK2
t_prcs_CLK2: PROCESS
BEGIN
LOOP
	CLK2 <= '0';
	WAIT FOR 5000 ps;
	CLK2 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK2;
-- Svmot_anglev[3]
t_prcs_Svmot_anglev_3: PROCESS
BEGIN
	Svmot_anglev(3) <= '0';
WAIT;
END PROCESS t_prcs_Svmot_anglev_3;
-- Svmot_anglev[2]
t_prcs_Svmot_anglev_2: PROCESS
BEGIN
	Svmot_anglev(2) <= '0';
WAIT;
END PROCESS t_prcs_Svmot_anglev_2;
-- Svmot_anglev[1]
t_prcs_Svmot_anglev_1: PROCESS
BEGIN
	Svmot_anglev(1) <= '0';
WAIT;
END PROCESS t_prcs_Svmot_anglev_1;
-- Svmot_anglev[0]
t_prcs_Svmot_anglev_0: PROCESS
BEGIN
	Svmot_anglev(0) <= '1';
WAIT;
END PROCESS t_prcs_Svmot_anglev_0;
END SVmot_angle_cntrl_arch;
