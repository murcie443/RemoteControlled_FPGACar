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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/04/2024 15:33:12"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	PWM_SVmot : OUT std_logic;
	CLK : IN std_logic;
	i_RX_Serial : IN std_logic;
	PWM_DCmot : OUT std_logic
	);
END Main;

-- Design Ports Information
-- PWM_SVmot	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_DCmot	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PWM_SVmot : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_PWM_DCmot : std_logic;
SIGNAL \inst7|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~8_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~9_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[11]~36\ : std_logic;
SIGNAL \inst1|r_Clk_Count[12]~37_combout\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~q\ : std_logic;
SIGNAL \inst1|r_RX_Data~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data~q\ : std_logic;
SIGNAL \inst1|Selector19~1_combout\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~1_combout\ : std_logic;
SIGNAL \inst1|Selector19~2_combout\ : std_logic;
SIGNAL \inst1|Selector19~3_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~5_combout\ : std_logic;
SIGNAL \inst1|Selector16~1_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~1_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \inst1|r_SM_Main~7_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[10]~41_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|LessThan1~4_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[10]~39_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[10]~40_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[0]~14\ : std_logic;
SIGNAL \inst1|r_Clk_Count[1]~15_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[1]~16\ : std_logic;
SIGNAL \inst1|r_Clk_Count[2]~17_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[2]~18\ : std_logic;
SIGNAL \inst1|r_Clk_Count[3]~19_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[3]~20\ : std_logic;
SIGNAL \inst1|r_Clk_Count[4]~21_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[4]~22\ : std_logic;
SIGNAL \inst1|r_Clk_Count[5]~23_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[5]~24\ : std_logic;
SIGNAL \inst1|r_Clk_Count[6]~25_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[6]~26\ : std_logic;
SIGNAL \inst1|r_Clk_Count[7]~27_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[7]~28\ : std_logic;
SIGNAL \inst1|r_Clk_Count[8]~29_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[8]~30\ : std_logic;
SIGNAL \inst1|r_Clk_Count[9]~31_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[9]~32\ : std_logic;
SIGNAL \inst1|r_Clk_Count[10]~33_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[10]~34\ : std_logic;
SIGNAL \inst1|r_Clk_Count[11]~35_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~1_combout\ : std_logic;
SIGNAL \inst1|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[0]~3_combout\ : std_logic;
SIGNAL \inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[1]~2_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[3]~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[2]~1_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~10_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~0_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~1_combout\ : std_logic;
SIGNAL \inst|flag~0_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst|innercounter~5_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~3_combout\ : std_logic;
SIGNAL \inst|innercounter~4_combout\ : std_logic;
SIGNAL \inst|innercounter~6_combout\ : std_logic;
SIGNAL \inst|innercounter~2_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~1_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~2_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~3_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~4_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~5_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~6_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~7_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~11_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~q\ : std_logic;
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|counter~1_combout\ : std_logic;
SIGNAL \inst2|counter~0_combout\ : std_logic;
SIGNAL \inst2|counter~2_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[5]~5_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[4]~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[6]~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|PWM_DCmot~q\ : std_logic;
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|innercounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);

BEGIN

PWM_SVmot <= ww_PWM_SVmot;
ww_CLK <= CLK;
ww_i_RX_Serial <= i_RX_Serial;
PWM_DCmot <= ww_PWM_DCmot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\inst7|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|altpll_component|auto_generated|wire_pll1_clk\(1));

\inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y0_N9
\PWM_SVmot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PWM_SVmot~q\,
	devoe => ww_devoe,
	o => ww_PWM_SVmot);

-- Location: IOOBUF_X36_Y0_N2
\PWM_DCmot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PWM_DCmot~q\,
	devoe => ww_devoe,
	o => ww_PWM_DCmot);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLL_1
\inst7|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 60,
	c0_initial => 1,
	c0_low => 60,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 20,
	c2_initial => 1,
	c2_low => 20,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 250,
	c3_initial => 1,
	c3_low => 250,
	c3_mode => "even",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 5000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c3",
	clk1_divide_by => 5000,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 3,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst7|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst7|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst7|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst7|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y4_N4
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X35_Y4_N5
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X35_Y4_N6
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(1) & (!\inst|Add0~1\)) # (!\inst|counter\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X35_Y4_N7
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X35_Y4_N8
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|counter\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|counter\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|counter\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X35_Y4_N9
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X35_Y4_N10
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(3) & (!\inst|Add0~5\)) # (!\inst|counter\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X36_Y4_N6
\inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|Add0~6_combout\ & !\inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datac => \inst|Equal0~2_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X36_Y4_N7
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X35_Y4_N12
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|counter\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|counter\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|counter\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X36_Y4_N4
\inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|Equal0~2_combout\ & \inst|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X36_Y4_N5
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X35_Y4_N14
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|counter\(5) & (!\inst|Add0~9\)) # (!\inst|counter\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X35_Y4_N15
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X35_Y4_N16
\inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|counter\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|counter\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|counter\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X35_Y4_N18
\inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|counter\(7) & (!\inst|Add0~13\)) # (!\inst|counter\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X35_Y4_N19
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X35_Y4_N20
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|counter\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|counter\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|counter\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X35_Y4_N21
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X35_Y4_N24
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter\(3) & (!\inst|counter\(8) & (!\inst|counter\(5) & !\inst|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(8),
	datac => \inst|counter\(5),
	datad => \inst|counter\(7),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y4_N22
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = \inst|Add0~17\ $ (\inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(9),
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\);

-- Location: LCCOMB_X35_Y4_N28
\inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (!\inst|Equal0~2_combout\ & \inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datac => \inst|Add0~18_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X35_Y4_N29
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X35_Y4_N30
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(1) & (\inst|counter\(0) & (\inst|counter\(2) & \inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(0),
	datac => \inst|counter\(2),
	datad => \inst|counter\(4),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y4_N26
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~1_combout\ & (\inst|counter\(9) & (\inst|Equal0~0_combout\ & \inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|counter\(9),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|counter\(6),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y4_N26
\inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (!\inst|Equal0~2_combout\ & \inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datac => \inst|Add0~12_combout\,
	combout => \inst|counter~3_combout\);

-- Location: FF_X36_Y4_N27
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X36_Y4_N12
\inst|PWM_SVmot~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~8_combout\ = (\inst|counter\(6)) # ((\inst|counter\(4) & \inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datab => \inst|counter\(4),
	datac => \inst|counter\(5),
	combout => \inst|PWM_SVmot~8_combout\);

-- Location: LCCOMB_X36_Y4_N2
\inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst|counter\(2) & (\inst|counter\(4) & (\inst|counter\(1) & \inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(4),
	datac => \inst|counter\(1),
	datad => \inst|counter\(3),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y4_N0
\inst|PWM_SVmot~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~9_combout\ = (((!\inst|counter\(1) & !\inst|counter\(0))) # (!\inst|counter\(3))) # (!\inst|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(0),
	datac => \inst|counter\(2),
	datad => \inst|counter\(3),
	combout => \inst|PWM_SVmot~9_combout\);

-- Location: CLKCTRL_G16
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y3_N4
\inst1|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[0]~13_combout\ = \inst1|r_Clk_Count\(0) $ (VCC)
-- \inst1|r_Clk_Count[0]~14\ = CARRY(\inst1|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(0),
	datad => VCC,
	combout => \inst1|r_Clk_Count[0]~13_combout\,
	cout => \inst1|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X38_Y3_N0
\inst1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|r_Clk_Count\(3) & (((!\inst1|r_Clk_Count\(1)) # (!\inst1|r_Clk_Count\(0))) # (!\inst1|r_Clk_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(3),
	datab => \inst1|r_Clk_Count\(2),
	datac => \inst1|r_Clk_Count\(0),
	datad => \inst1|r_Clk_Count\(1),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y3_N2
\inst1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ((!\inst1|r_Clk_Count\(5) & ((\inst1|LessThan1~0_combout\) # (!\inst1|r_Clk_Count\(4))))) # (!\inst1|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(4),
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|r_Clk_Count\(5),
	datad => \inst1|r_Clk_Count\(6),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y3_N26
\inst1|r_Clk_Count[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[11]~35_combout\ = (\inst1|r_Clk_Count\(11) & (!\inst1|r_Clk_Count[10]~34\)) # (!\inst1|r_Clk_Count\(11) & ((\inst1|r_Clk_Count[10]~34\) # (GND)))
-- \inst1|r_Clk_Count[11]~36\ = CARRY((!\inst1|r_Clk_Count[10]~34\) # (!\inst1|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datad => VCC,
	cin => \inst1|r_Clk_Count[10]~34\,
	combout => \inst1|r_Clk_Count[11]~35_combout\,
	cout => \inst1|r_Clk_Count[11]~36\);

-- Location: LCCOMB_X38_Y3_N28
\inst1|r_Clk_Count[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[12]~37_combout\ = \inst1|r_Clk_Count[11]~36\ $ (!\inst1|r_Clk_Count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|r_Clk_Count\(12),
	cin => \inst1|r_Clk_Count[11]~36\,
	combout => \inst1|r_Clk_Count[12]~37_combout\);

-- Location: IOIBUF_X56_Y0_N8
\i_RX_Serial~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

-- Location: LCCOMB_X40_Y3_N24
\inst1|r_RX_Data_R~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Data_R~feeder_combout\ = \i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RX_Serial~input_o\,
	combout => \inst1|r_RX_Data_R~feeder_combout\);

-- Location: FF_X40_Y3_N25
\inst1|r_RX_Data_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Data_R~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Data_R~q\);

-- Location: LCCOMB_X39_Y3_N0
\inst1|r_RX_Data~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Data~feeder_combout\ = \inst1|r_RX_Data_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|r_RX_Data_R~q\,
	combout => \inst1|r_RX_Data~feeder_combout\);

-- Location: FF_X39_Y3_N1
\inst1|r_RX_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Data~q\);

-- Location: LCCOMB_X39_Y3_N20
\inst1|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~1_combout\ = (\inst1|r_SM_Main.s_RX_Start_Bit~q\ & (\inst1|Equal0~3_combout\ & !\inst1|r_RX_Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|Selector19~1_combout\);

-- Location: LCCOMB_X39_Y4_N20
\inst1|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Bit_Index\(1) $ (((\inst1|r_Bit_Index\(0) & \inst1|LessThan1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|LessThan1~4_combout\,
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Selector15~0_combout\);

-- Location: LCCOMB_X39_Y4_N22
\inst1|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~1_combout\ = (\inst1|Selector15~0_combout\) # ((\inst1|r_SM_Main.s_Idle~q\ & (\inst1|r_Bit_Index\(1) & !\inst1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|Selector15~0_combout\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Selector15~1_combout\);

-- Location: FF_X39_Y4_N23
\inst1|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Bit_Index\(1));

-- Location: LCCOMB_X39_Y4_N24
\inst1|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~2_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((!\inst1|r_Bit_Index\(1)) # (!\inst1|r_Bit_Index\(0))) # (!\inst1|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|r_Bit_Index\(0),
	datad => \inst1|r_Bit_Index\(1),
	combout => \inst1|Selector19~2_combout\);

-- Location: LCCOMB_X39_Y4_N6
\inst1|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~3_combout\ = (\inst1|Selector19~1_combout\) # ((\inst1|Selector19~2_combout\) # ((!\inst1|LessThan1~4_combout\ & \inst1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~1_combout\,
	datab => \inst1|LessThan1~4_combout\,
	datac => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|Selector19~2_combout\,
	combout => \inst1|Selector19~3_combout\);

-- Location: FF_X39_Y4_N7
\inst1|r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X39_Y4_N26
\inst1|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|r_Clk_Count\(12)))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datac => \inst1|r_Clk_Count\(12),
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Selector16~0_combout\);

-- Location: LCCOMB_X39_Y3_N6
\inst1|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|r_Clk_Count\(7) & (!\inst1|r_Clk_Count\(8) & (!\inst1|r_Clk_Count\(11) & !\inst1|r_Clk_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(7),
	datab => \inst1|r_Clk_Count\(8),
	datac => \inst1|r_Clk_Count\(11),
	datad => \inst1|r_Clk_Count\(9),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X39_Y3_N10
\inst1|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~5_combout\ = (\inst1|LessThan1~1_combout\ & ((\inst1|LessThan1~2_combout\) # ((!\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count\(11))))) # (!\inst1|LessThan1~1_combout\ & (!\inst1|r_Clk_Count\(10) & (!\inst1|r_Clk_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~1_combout\,
	datab => \inst1|r_Clk_Count\(10),
	datac => \inst1|r_Clk_Count\(11),
	datad => \inst1|LessThan1~2_combout\,
	combout => \inst1|LessThan1~5_combout\);

-- Location: LCCOMB_X39_Y4_N4
\inst1|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~1_combout\ = (\inst1|Selector16~0_combout\ & (\inst1|r_Bit_Index\(0) $ (((!\inst1|LessThan1~5_combout\ & \inst1|r_SM_Main.s_RX_Data_Bits~q\))))) # (!\inst1|Selector16~0_combout\ & (((\inst1|r_Bit_Index\(0) & 
-- \inst1|r_SM_Main.s_RX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector16~0_combout\,
	datab => \inst1|LessThan1~5_combout\,
	datac => \inst1|r_Bit_Index\(0),
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Selector16~1_combout\);

-- Location: FF_X39_Y4_N5
\inst1|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Bit_Index\(0));

-- Location: LCCOMB_X39_Y4_N0
\inst1|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\inst1|r_Bit_Index\(0) & (\inst1|r_Bit_Index\(1) & (\inst1|LessThan1~4_combout\ & \inst1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|LessThan1~4_combout\,
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: LCCOMB_X39_Y4_N8
\inst1|r_SM_Main.s_RX_Stop_Bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main.s_RX_Stop_Bit~1_combout\ = (\inst1|r_Bit_Index\(2) & ((\inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\) # ((!\inst1|LessThan1~4_combout\ & \inst1|r_SM_Main.s_RX_Stop_Bit~q\)))) # (!\inst1|r_Bit_Index\(2) & (!\inst1|LessThan1~4_combout\ & 
-- (\inst1|r_SM_Main.s_RX_Stop_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|LessThan1~4_combout\,
	datac => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	combout => \inst1|r_SM_Main.s_RX_Stop_Bit~1_combout\);

-- Location: FF_X39_Y4_N9
\inst1|r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_SM_Main.s_RX_Stop_Bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X39_Y3_N4
\inst1|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main~7_combout\ = (\inst1|LessThan1~4_combout\ & \inst1|r_SM_Main.s_RX_Stop_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan1~4_combout\,
	datad => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \inst1|r_SM_Main~7_combout\);

-- Location: FF_X39_Y3_N5
\inst1|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X39_Y3_N26
\inst1|r_Clk_Count[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[10]~41_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((!\inst1|r_RX_Data~q\) # (!\inst1|r_SM_Main.s_RX_Start_Bit~q\)) # (!\inst1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~3_combout\,
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst1|r_SM_Main.s_Cleanup~q\,
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|r_Clk_Count[10]~41_combout\);

-- Location: FF_X38_Y3_N29
\inst1|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[12]~37_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(12));

-- Location: LCCOMB_X39_Y3_N8
\inst1|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (!\inst1|r_Clk_Count\(11) & !\inst1|r_Clk_Count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|r_Clk_Count\(11),
	datad => \inst1|r_Clk_Count\(10),
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X39_Y3_N22
\inst1|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~4_combout\ = (\inst1|r_Clk_Count\(12) & (!\inst1|LessThan1~3_combout\ & ((!\inst1|LessThan1~2_combout\) # (!\inst1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~1_combout\,
	datab => \inst1|r_Clk_Count\(12),
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|LessThan1~2_combout\,
	combout => \inst1|LessThan1~4_combout\);

-- Location: LCCOMB_X39_Y4_N30
\inst1|r_Clk_Count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[10]~39_combout\ = (\inst1|r_SM_Main.s_RX_Stop_Bit~q\) # (\inst1|r_SM_Main.s_RX_Data_Bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|r_Clk_Count[10]~39_combout\);

-- Location: LCCOMB_X39_Y3_N30
\inst1|r_Clk_Count[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[10]~40_combout\ = (\inst1|Selector19~0_combout\) # (((\inst1|LessThan1~4_combout\ & \inst1|r_Clk_Count[10]~39_combout\)) # (!\inst1|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~4_combout\,
	datab => \inst1|Selector19~0_combout\,
	datac => \inst1|r_Clk_Count[10]~39_combout\,
	datad => \inst1|r_SM_Main.s_Idle~q\,
	combout => \inst1|r_Clk_Count[10]~40_combout\);

-- Location: FF_X38_Y3_N5
\inst1|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[0]~13_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(0));

-- Location: LCCOMB_X38_Y3_N6
\inst1|r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[1]~15_combout\ = (\inst1|r_Clk_Count\(1) & (!\inst1|r_Clk_Count[0]~14\)) # (!\inst1|r_Clk_Count\(1) & ((\inst1|r_Clk_Count[0]~14\) # (GND)))
-- \inst1|r_Clk_Count[1]~16\ = CARRY((!\inst1|r_Clk_Count[0]~14\) # (!\inst1|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(1),
	datad => VCC,
	cin => \inst1|r_Clk_Count[0]~14\,
	combout => \inst1|r_Clk_Count[1]~15_combout\,
	cout => \inst1|r_Clk_Count[1]~16\);

-- Location: FF_X38_Y3_N7
\inst1|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[1]~15_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(1));

-- Location: LCCOMB_X38_Y3_N8
\inst1|r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[2]~17_combout\ = (\inst1|r_Clk_Count\(2) & (\inst1|r_Clk_Count[1]~16\ $ (GND))) # (!\inst1|r_Clk_Count\(2) & (!\inst1|r_Clk_Count[1]~16\ & VCC))
-- \inst1|r_Clk_Count[2]~18\ = CARRY((\inst1|r_Clk_Count\(2) & !\inst1|r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(2),
	datad => VCC,
	cin => \inst1|r_Clk_Count[1]~16\,
	combout => \inst1|r_Clk_Count[2]~17_combout\,
	cout => \inst1|r_Clk_Count[2]~18\);

-- Location: FF_X38_Y3_N9
\inst1|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[2]~17_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(2));

-- Location: LCCOMB_X38_Y3_N10
\inst1|r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[3]~19_combout\ = (\inst1|r_Clk_Count\(3) & (!\inst1|r_Clk_Count[2]~18\)) # (!\inst1|r_Clk_Count\(3) & ((\inst1|r_Clk_Count[2]~18\) # (GND)))
-- \inst1|r_Clk_Count[3]~20\ = CARRY((!\inst1|r_Clk_Count[2]~18\) # (!\inst1|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(3),
	datad => VCC,
	cin => \inst1|r_Clk_Count[2]~18\,
	combout => \inst1|r_Clk_Count[3]~19_combout\,
	cout => \inst1|r_Clk_Count[3]~20\);

-- Location: FF_X38_Y3_N11
\inst1|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[3]~19_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(3));

-- Location: LCCOMB_X38_Y3_N12
\inst1|r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[4]~21_combout\ = (\inst1|r_Clk_Count\(4) & (\inst1|r_Clk_Count[3]~20\ $ (GND))) # (!\inst1|r_Clk_Count\(4) & (!\inst1|r_Clk_Count[3]~20\ & VCC))
-- \inst1|r_Clk_Count[4]~22\ = CARRY((\inst1|r_Clk_Count\(4) & !\inst1|r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(4),
	datad => VCC,
	cin => \inst1|r_Clk_Count[3]~20\,
	combout => \inst1|r_Clk_Count[4]~21_combout\,
	cout => \inst1|r_Clk_Count[4]~22\);

-- Location: FF_X38_Y3_N13
\inst1|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[4]~21_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(4));

-- Location: LCCOMB_X38_Y3_N14
\inst1|r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[5]~23_combout\ = (\inst1|r_Clk_Count\(5) & (!\inst1|r_Clk_Count[4]~22\)) # (!\inst1|r_Clk_Count\(5) & ((\inst1|r_Clk_Count[4]~22\) # (GND)))
-- \inst1|r_Clk_Count[5]~24\ = CARRY((!\inst1|r_Clk_Count[4]~22\) # (!\inst1|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(5),
	datad => VCC,
	cin => \inst1|r_Clk_Count[4]~22\,
	combout => \inst1|r_Clk_Count[5]~23_combout\,
	cout => \inst1|r_Clk_Count[5]~24\);

-- Location: FF_X38_Y3_N15
\inst1|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[5]~23_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(5));

-- Location: LCCOMB_X38_Y3_N16
\inst1|r_Clk_Count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[6]~25_combout\ = (\inst1|r_Clk_Count\(6) & (\inst1|r_Clk_Count[5]~24\ $ (GND))) # (!\inst1|r_Clk_Count\(6) & (!\inst1|r_Clk_Count[5]~24\ & VCC))
-- \inst1|r_Clk_Count[6]~26\ = CARRY((\inst1|r_Clk_Count\(6) & !\inst1|r_Clk_Count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(6),
	datad => VCC,
	cin => \inst1|r_Clk_Count[5]~24\,
	combout => \inst1|r_Clk_Count[6]~25_combout\,
	cout => \inst1|r_Clk_Count[6]~26\);

-- Location: FF_X38_Y3_N17
\inst1|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[6]~25_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(6));

-- Location: LCCOMB_X38_Y3_N18
\inst1|r_Clk_Count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[7]~27_combout\ = (\inst1|r_Clk_Count\(7) & (!\inst1|r_Clk_Count[6]~26\)) # (!\inst1|r_Clk_Count\(7) & ((\inst1|r_Clk_Count[6]~26\) # (GND)))
-- \inst1|r_Clk_Count[7]~28\ = CARRY((!\inst1|r_Clk_Count[6]~26\) # (!\inst1|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(7),
	datad => VCC,
	cin => \inst1|r_Clk_Count[6]~26\,
	combout => \inst1|r_Clk_Count[7]~27_combout\,
	cout => \inst1|r_Clk_Count[7]~28\);

-- Location: FF_X38_Y3_N19
\inst1|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[7]~27_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(7));

-- Location: LCCOMB_X38_Y3_N20
\inst1|r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[8]~29_combout\ = (\inst1|r_Clk_Count\(8) & (\inst1|r_Clk_Count[7]~28\ $ (GND))) # (!\inst1|r_Clk_Count\(8) & (!\inst1|r_Clk_Count[7]~28\ & VCC))
-- \inst1|r_Clk_Count[8]~30\ = CARRY((\inst1|r_Clk_Count\(8) & !\inst1|r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(8),
	datad => VCC,
	cin => \inst1|r_Clk_Count[7]~28\,
	combout => \inst1|r_Clk_Count[8]~29_combout\,
	cout => \inst1|r_Clk_Count[8]~30\);

-- Location: FF_X38_Y3_N21
\inst1|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[8]~29_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(8));

-- Location: LCCOMB_X38_Y3_N22
\inst1|r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[9]~31_combout\ = (\inst1|r_Clk_Count\(9) & (!\inst1|r_Clk_Count[8]~30\)) # (!\inst1|r_Clk_Count\(9) & ((\inst1|r_Clk_Count[8]~30\) # (GND)))
-- \inst1|r_Clk_Count[9]~32\ = CARRY((!\inst1|r_Clk_Count[8]~30\) # (!\inst1|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(9),
	datad => VCC,
	cin => \inst1|r_Clk_Count[8]~30\,
	combout => \inst1|r_Clk_Count[9]~31_combout\,
	cout => \inst1|r_Clk_Count[9]~32\);

-- Location: FF_X38_Y3_N23
\inst1|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[9]~31_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(9));

-- Location: LCCOMB_X38_Y3_N24
\inst1|r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[10]~33_combout\ = (\inst1|r_Clk_Count\(10) & (\inst1|r_Clk_Count[9]~32\ $ (GND))) # (!\inst1|r_Clk_Count\(10) & (!\inst1|r_Clk_Count[9]~32\ & VCC))
-- \inst1|r_Clk_Count[10]~34\ = CARRY((\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(10),
	datad => VCC,
	cin => \inst1|r_Clk_Count[9]~32\,
	combout => \inst1|r_Clk_Count[10]~33_combout\,
	cout => \inst1|r_Clk_Count[10]~34\);

-- Location: FF_X38_Y3_N25
\inst1|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[10]~33_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(10));

-- Location: FF_X38_Y3_N27
\inst1|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[11]~35_combout\,
	sclr => \inst1|r_Clk_Count[10]~40_combout\,
	ena => \inst1|r_Clk_Count[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(11));

-- Location: LCCOMB_X39_Y3_N12
\inst1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|r_Clk_Count\(11) & (\inst1|r_Clk_Count\(9) & (!\inst1|r_Clk_Count\(6) & !\inst1|r_Clk_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datab => \inst1|r_Clk_Count\(9),
	datac => \inst1|r_Clk_Count\(6),
	datad => \inst1|r_Clk_Count\(10),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y3_N30
\inst1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|r_Clk_Count\(4) & (!\inst1|r_Clk_Count\(2) & (\inst1|r_Clk_Count\(5) & \inst1|r_Clk_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(4),
	datab => \inst1|r_Clk_Count\(2),
	datac => \inst1|r_Clk_Count\(5),
	datad => \inst1|r_Clk_Count\(3),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y3_N14
\inst1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|r_Clk_Count\(0) & (!\inst1|r_Clk_Count\(8) & (\inst1|r_Clk_Count\(1) & !\inst1|r_Clk_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(0),
	datab => \inst1|r_Clk_Count\(8),
	datac => \inst1|r_Clk_Count\(1),
	datad => \inst1|r_Clk_Count\(7),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y3_N18
\inst1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~0_combout\ & !\inst1|r_Clk_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|r_Clk_Count\(12),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y3_N16
\inst1|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector18~0_combout\ = (\inst1|r_SM_Main.s_Idle~q\ & (!\inst1|Equal0~3_combout\ & (\inst1|r_SM_Main.s_RX_Start_Bit~q\))) # (!\inst1|r_SM_Main.s_Idle~q\ & (((!\inst1|Equal0~3_combout\ & \inst1|r_SM_Main.s_RX_Start_Bit~q\)) # 
-- (!\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|Equal0~3_combout\,
	datac => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|Selector18~0_combout\);

-- Location: FF_X39_Y3_N17
\inst1|r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X39_Y3_N24
\inst1|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = (\inst1|r_SM_Main.s_RX_Start_Bit~q\ & \inst1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Selector19~0_combout\);

-- Location: LCCOMB_X39_Y3_N28
\inst1|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((!\inst1|Selector19~0_combout\ & \inst1|r_SM_Main.s_Idle~q\)) # (!\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~0_combout\,
	datab => \inst1|r_SM_Main.s_Cleanup~q\,
	datac => \inst1|r_SM_Main.s_Idle~q\,
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|Selector17~0_combout\);

-- Location: FF_X39_Y3_N29
\inst1|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X39_Y4_N14
\inst1|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|r_Bit_Index\(0) & (\inst1|LessThan1~4_combout\ & \inst1|r_Bit_Index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datac => \inst1|LessThan1~4_combout\,
	datad => \inst1|r_Bit_Index\(1),
	combout => \inst1|Selector14~0_combout\);

-- Location: LCCOMB_X39_Y4_N18
\inst1|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~1_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|Selector14~0_combout\ $ (\inst1|r_Bit_Index\(2))))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_SM_Main.s_Idle~q\ & ((\inst1|r_Bit_Index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|Selector14~0_combout\,
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Selector14~1_combout\);

-- Location: FF_X39_Y4_N19
\inst1|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Bit_Index\(2));

-- Location: LCCOMB_X39_Y4_N10
\inst1|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~2_combout\ = (!\inst1|r_Bit_Index\(0) & (!\inst1|r_Bit_Index\(1) & (\inst1|LessThan1~4_combout\ & \inst1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|LessThan1~4_combout\,
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Decoder0~2_combout\);

-- Location: LCCOMB_X37_Y4_N16
\inst1|r_RX_Byte[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[0]~3_combout\ = (\inst1|r_Bit_Index\(2) & (((\inst1|r_RX_Byte\(0))))) # (!\inst1|r_Bit_Index\(2) & ((\inst1|Decoder0~2_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~2_combout\ & ((\inst1|r_RX_Byte\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(0),
	datad => \inst1|Decoder0~2_combout\,
	combout => \inst1|r_RX_Byte[0]~3_combout\);

-- Location: FF_X37_Y4_N17
\inst1|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(0));

-- Location: LCCOMB_X38_Y4_N26
\inst1|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~1_combout\ = (\inst1|LessThan1~4_combout\ & (!\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(0) & \inst1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~4_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(0),
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X37_Y4_N22
\inst1|r_RX_Byte[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[1]~2_combout\ = (\inst1|r_Bit_Index\(2) & (((\inst1|r_RX_Byte\(1))))) # (!\inst1|r_Bit_Index\(2) & ((\inst1|Decoder0~1_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~1_combout\ & ((\inst1|r_RX_Byte\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst1|Decoder0~1_combout\,
	combout => \inst1|r_RX_Byte[1]~2_combout\);

-- Location: FF_X37_Y4_N23
\inst1|r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(1));

-- Location: LCCOMB_X39_Y4_N12
\inst1|r_RX_Byte[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[3]~0_combout\ = (\inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ & ((\inst1|r_Bit_Index\(2) & ((\inst1|r_RX_Byte\(3)))) # (!\inst1|r_Bit_Index\(2) & (\inst1|r_RX_Data~q\)))) # (!\inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ & 
-- (((\inst1|r_RX_Byte\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datab => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	datac => \inst1|r_RX_Byte\(3),
	datad => \inst1|r_Bit_Index\(2),
	combout => \inst1|r_RX_Byte[3]~0_combout\);

-- Location: FF_X39_Y4_N13
\inst1|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(3));

-- Location: LCCOMB_X39_Y4_N16
\inst1|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (!\inst1|r_Bit_Index\(0) & (\inst1|r_Bit_Index\(1) & (\inst1|LessThan1~4_combout\ & \inst1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|LessThan1~4_combout\,
	datad => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X39_Y4_N2
\inst1|r_RX_Byte[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[2]~1_combout\ = (\inst1|Decoder0~0_combout\ & ((\inst1|r_Bit_Index\(2) & ((\inst1|r_RX_Byte\(2)))) # (!\inst1|r_Bit_Index\(2) & (\inst1|r_RX_Data~q\)))) # (!\inst1|Decoder0~0_combout\ & (((\inst1|r_RX_Byte\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datab => \inst1|Decoder0~0_combout\,
	datac => \inst1|r_RX_Byte\(2),
	datad => \inst1|r_Bit_Index\(2),
	combout => \inst1|r_RX_Byte[2]~1_combout\);

-- Location: FF_X39_Y4_N3
\inst1|r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(2));

-- Location: LCCOMB_X38_Y4_N6
\inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst1|r_RX_Byte\(0) & (\inst1|r_RX_Byte\(1) & (!\inst1|r_RX_Byte\(3) & \inst1|r_RX_Byte\(2)))) # (!\inst1|r_RX_Byte\(0) & (!\inst1|r_RX_Byte\(1) & (\inst1|r_RX_Byte\(3) & !\inst1|r_RX_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(0),
	datab => \inst1|r_RX_Byte\(1),
	datac => \inst1|r_RX_Byte\(3),
	datad => \inst1|r_RX_Byte\(2),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X38_Y4_N20
\inst|PWM_SVmot~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~10_combout\ = (\inst|counter\(5) & (((!\inst|process_0~0_combout\) # (!\inst|PWM_SVmot~9_combout\)))) # (!\inst|counter\(5) & (\inst|LessThan2~0_combout\ & ((!\inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~0_combout\,
	datab => \inst|PWM_SVmot~9_combout\,
	datac => \inst|counter\(5),
	datad => \inst|process_0~0_combout\,
	combout => \inst|PWM_SVmot~10_combout\);

-- Location: LCCOMB_X35_Y4_N2
\inst|PWM_SVmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~0_combout\ = (!\inst|counter\(8) & (!\inst|counter\(9) & !\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datac => \inst|counter\(9),
	datad => \inst|counter\(7),
	combout => \inst|PWM_SVmot~0_combout\);

-- Location: LCCOMB_X36_Y4_N20
\inst|innercounter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~0_combout\ = (!\inst|counter\(6) & ((\inst|counter\(5)) # (\inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datac => \inst|counter\(5),
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|innercounter[3]~0_combout\);

-- Location: LCCOMB_X36_Y4_N16
\inst|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (((!\inst|counter\(3)) # (!\inst|counter\(5))) # (!\inst|counter\(4))) # (!\inst|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(4),
	datac => \inst|counter\(5),
	datad => \inst|counter\(3),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X38_Y4_N2
\inst|innercounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~1_combout\ = (\inst|innercounter[3]~0_combout\ & (\inst|LessThan3~0_combout\ & (\inst|PWM_SVmot~0_combout\ & !\inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter[3]~0_combout\,
	datab => \inst|LessThan3~0_combout\,
	datac => \inst|PWM_SVmot~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|innercounter[3]~1_combout\);

-- Location: LCCOMB_X38_Y4_N22
\inst|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|flag~0_combout\ = \inst|flag~q\ $ (\inst|innercounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|flag~q\,
	datad => \inst|innercounter[3]~1_combout\,
	combout => \inst|flag~0_combout\);

-- Location: FF_X38_Y4_N23
\inst|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag~q\);

-- Location: LCCOMB_X38_Y4_N30
\inst|innercounter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~5_combout\ = (!\inst|innercounter\(0) & (((!\inst|innercounter\(2)) # (!\inst|innercounter\(3))) # (!\inst|innercounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(1),
	datab => \inst|innercounter\(3),
	datac => \inst|innercounter\(0),
	datad => \inst|innercounter\(2),
	combout => \inst|innercounter~5_combout\);

-- Location: LCCOMB_X38_Y4_N16
\inst|innercounter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~3_combout\ = (!\inst|flag~q\ & \inst|innercounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|flag~q\,
	datad => \inst|innercounter[3]~1_combout\,
	combout => \inst|innercounter[3]~3_combout\);

-- Location: FF_X38_Y4_N31
\inst|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~5_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(0));

-- Location: LCCOMB_X38_Y4_N14
\inst|innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~4_combout\ = (\inst|innercounter\(1) & ((\inst|innercounter\(3) & ((!\inst|innercounter\(2)))) # (!\inst|innercounter\(3) & (\inst|innercounter\(0) & \inst|innercounter\(2))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(1),
	datab => \inst|innercounter\(0),
	datac => \inst|innercounter\(3),
	datad => \inst|innercounter\(2),
	combout => \inst|innercounter~4_combout\);

-- Location: FF_X38_Y4_N15
\inst|innercounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~4_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(3));

-- Location: LCCOMB_X38_Y4_N0
\inst|innercounter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~6_combout\ = (\inst|innercounter\(1) & (!\inst|innercounter\(0) & ((!\inst|innercounter\(3)) # (!\inst|innercounter\(2))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(2),
	datab => \inst|innercounter\(3),
	datac => \inst|innercounter\(1),
	datad => \inst|innercounter\(0),
	combout => \inst|innercounter~6_combout\);

-- Location: FF_X38_Y4_N1
\inst|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~6_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(1));

-- Location: LCCOMB_X38_Y4_N12
\inst|innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~2_combout\ = (\inst|innercounter\(1) & ((\inst|innercounter\(2) & (!\inst|innercounter\(3) & !\inst|innercounter\(0))) # (!\inst|innercounter\(2) & ((\inst|innercounter\(0)))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(1),
	datab => \inst|innercounter\(3),
	datac => \inst|innercounter\(2),
	datad => \inst|innercounter\(0),
	combout => \inst|innercounter~2_combout\);

-- Location: FF_X38_Y4_N13
\inst|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~2_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(2));

-- Location: LCCOMB_X39_Y4_N28
\inst|PWM_SVmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~1_combout\ = (\inst1|r_RX_Byte\(2) & (\inst|innercounter\(3) $ (!\inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(3),
	datab => \inst1|r_RX_Byte\(2),
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst|PWM_SVmot~1_combout\);

-- Location: LCCOMB_X38_Y4_N4
\inst|PWM_SVmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~2_combout\ = (\inst|flag~q\ & (((\inst|PWM_SVmot~q\)))) # (!\inst|flag~q\ & (!\inst|innercounter\(2) & ((\inst|PWM_SVmot~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(2),
	datab => \inst|PWM_SVmot~q\,
	datac => \inst|flag~q\,
	datad => \inst|PWM_SVmot~1_combout\,
	combout => \inst|PWM_SVmot~2_combout\);

-- Location: LCCOMB_X38_Y4_N8
\inst|PWM_SVmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~3_combout\ = (\inst|LessThan3~0_combout\ & (!\inst|counter\(6) & !\inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan3~0_combout\,
	datac => \inst|counter\(6),
	datad => \inst|process_0~0_combout\,
	combout => \inst|PWM_SVmot~3_combout\);

-- Location: LCCOMB_X37_Y4_N14
\inst|PWM_SVmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~4_combout\ = (\inst|innercounter\(1) & (!\inst|innercounter\(0) & (\inst1|r_RX_Byte\(1) & \inst1|r_RX_Byte\(0)))) # (!\inst|innercounter\(1) & ((\inst1|r_RX_Byte\(1)) # ((!\inst|innercounter\(0) & \inst1|r_RX_Byte\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(0),
	datab => \inst|innercounter\(1),
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst1|r_RX_Byte\(0),
	combout => \inst|PWM_SVmot~4_combout\);

-- Location: LCCOMB_X38_Y4_N10
\inst|PWM_SVmot~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~5_combout\ = (\inst|PWM_SVmot~4_combout\ & (\inst1|r_RX_Byte\(2) $ (!\inst|innercounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(2),
	datac => \inst|innercounter\(2),
	datad => \inst|PWM_SVmot~4_combout\,
	combout => \inst|PWM_SVmot~5_combout\);

-- Location: LCCOMB_X38_Y4_N24
\inst|PWM_SVmot~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~6_combout\ = (\inst1|r_RX_Byte\(3) & ((\inst|PWM_SVmot~5_combout\) # (!\inst|innercounter\(3)))) # (!\inst1|r_RX_Byte\(3) & (!\inst|innercounter\(3) & \inst|PWM_SVmot~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Byte\(3),
	datac => \inst|innercounter\(3),
	datad => \inst|PWM_SVmot~5_combout\,
	combout => \inst|PWM_SVmot~6_combout\);

-- Location: LCCOMB_X38_Y4_N18
\inst|PWM_SVmot~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~7_combout\ = (\inst|PWM_SVmot~3_combout\ & ((\inst|PWM_SVmot~2_combout\) # ((!\inst|flag~q\ & \inst|PWM_SVmot~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~q\,
	datab => \inst|PWM_SVmot~2_combout\,
	datac => \inst|PWM_SVmot~3_combout\,
	datad => \inst|PWM_SVmot~6_combout\,
	combout => \inst|PWM_SVmot~7_combout\);

-- Location: LCCOMB_X38_Y4_N28
\inst|PWM_SVmot~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~11_combout\ = (\inst|PWM_SVmot~0_combout\ & ((\inst|PWM_SVmot~7_combout\) # ((!\inst|PWM_SVmot~8_combout\ & !\inst|PWM_SVmot~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PWM_SVmot~8_combout\,
	datab => \inst|PWM_SVmot~10_combout\,
	datac => \inst|PWM_SVmot~0_combout\,
	datad => \inst|PWM_SVmot~7_combout\,
	combout => \inst|PWM_SVmot~11_combout\);

-- Location: FF_X38_Y4_N29
\inst|PWM_SVmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|PWM_SVmot~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PWM_SVmot~q\);

-- Location: CLKCTRL_G19
\inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y4_N18
\inst2|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~1_combout\ = (\inst2|counter\(0) & (!\inst2|counter\(1))) # (!\inst2|counter\(0) & (\inst2|counter\(1) & !\inst2|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(0),
	datac => \inst2|counter\(1),
	datad => \inst2|counter\(2),
	combout => \inst2|counter~1_combout\);

-- Location: FF_X37_Y4_N19
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: LCCOMB_X37_Y4_N10
\inst2|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~0_combout\ = (\inst2|counter\(2) & ((!\inst2|counter\(1)))) # (!\inst2|counter\(2) & (\inst2|counter\(0) & \inst2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(0),
	datac => \inst2|counter\(2),
	datad => \inst2|counter\(1),
	combout => \inst2|counter~0_combout\);

-- Location: FF_X37_Y4_N11
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: LCCOMB_X37_Y4_N26
\inst2|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~2_combout\ = (!\inst2|counter\(0) & ((!\inst2|counter\(1)) # (!\inst2|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datac => \inst2|counter\(0),
	datad => \inst2|counter\(1),
	combout => \inst2|counter~2_combout\);

-- Location: FF_X37_Y4_N27
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LCCOMB_X37_Y4_N20
\inst1|r_RX_Byte[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[5]~5_combout\ = (\inst1|r_Bit_Index\(2) & ((\inst1|Decoder0~1_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~1_combout\ & ((\inst1|r_RX_Byte\(5)))))) # (!\inst1|r_Bit_Index\(2) & (((\inst1|r_RX_Byte\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst1|Decoder0~1_combout\,
	combout => \inst1|r_RX_Byte[5]~5_combout\);

-- Location: FF_X37_Y4_N21
\inst1|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(5));

-- Location: LCCOMB_X37_Y4_N24
\inst1|r_RX_Byte[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[4]~6_combout\ = (\inst1|r_Bit_Index\(2) & ((\inst1|Decoder0~2_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~2_combout\ & ((\inst1|r_RX_Byte\(4)))))) # (!\inst1|r_Bit_Index\(2) & (((\inst1|r_RX_Byte\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst1|Decoder0~2_combout\,
	combout => \inst1|r_RX_Byte[4]~6_combout\);

-- Location: FF_X37_Y4_N25
\inst1|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(4));

-- Location: LCCOMB_X37_Y4_N12
\inst2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst1|r_RX_Byte\(5) & (((!\inst2|counter\(0) & \inst1|r_RX_Byte\(4))) # (!\inst2|counter\(1)))) # (!\inst1|r_RX_Byte\(5) & (!\inst2|counter\(0) & (\inst1|r_RX_Byte\(4) & !\inst2|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(0),
	datab => \inst1|r_RX_Byte\(5),
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst2|counter\(1),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y4_N28
\inst1|r_RX_Byte[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[6]~4_combout\ = (\inst1|r_Bit_Index\(2) & ((\inst1|Decoder0~0_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~0_combout\ & ((\inst1|r_RX_Byte\(6)))))) # (!\inst1|r_Bit_Index\(2) & (((\inst1|r_RX_Byte\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(6),
	datad => \inst1|Decoder0~0_combout\,
	combout => \inst1|r_RX_Byte[6]~4_combout\);

-- Location: FF_X37_Y4_N29
\inst1|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(6));

-- Location: LCCOMB_X37_Y4_N8
\inst2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|LessThan0~0_combout\ & ((\inst1|r_RX_Byte\(6)) # (!\inst2|counter\(2)))) # (!\inst2|LessThan0~0_combout\ & (\inst1|r_RX_Byte\(6) & !\inst2|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~0_combout\,
	datab => \inst1|r_RX_Byte\(6),
	datad => \inst2|counter\(2),
	combout => \inst2|LessThan0~1_combout\);

-- Location: FF_X37_Y4_N9
\inst2|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PWM_DCmot~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


