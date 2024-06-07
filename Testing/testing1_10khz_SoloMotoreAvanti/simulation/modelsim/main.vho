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

-- DATE "06/07/2024 19:18:53"

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

ENTITY 	main IS
    PORT (
	PWM_DCMOT : OUT std_logic;
	CLK : IN std_logic;
	I_RX_series : IN std_logic
	);
END main;

-- Design Ports Information
-- PWM_DCMOT	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I_RX_series	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PWM_DCMOT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_I_RX_series : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|counter~4_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~1_combout\ : std_logic;
SIGNAL \inst1|Selector19~3_combout\ : std_logic;
SIGNAL \I_RX_series~input_o\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~q\ : std_logic;
SIGNAL \inst1|r_RX_Data~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data~q\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \inst1|Selector19~2_combout\ : std_logic;
SIGNAL \inst1|Selector19~4_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~1_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[2]~39_combout\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Selector19~1_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[2]~40_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[2]~41_combout\ : std_logic;
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
SIGNAL \inst1|r_Clk_Count[11]~36\ : std_logic;
SIGNAL \inst1|r_Clk_Count[12]~37_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main~7_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~1_combout\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[5]~1_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[4]~2_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[6]~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|flag~0_combout\ : std_logic;
SIGNAL \inst|innercounter[2]~0_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|Add2~21\ : std_logic;
SIGNAL \inst|Add2~22_combout\ : std_logic;
SIGNAL \inst|Add2~23\ : std_logic;
SIGNAL \inst|Add2~24_combout\ : std_logic;
SIGNAL \inst|Add2~25\ : std_logic;
SIGNAL \inst|Add2~26_combout\ : std_logic;
SIGNAL \inst|Add2~27\ : std_logic;
SIGNAL \inst|Add2~28_combout\ : std_logic;
SIGNAL \inst|Add2~29\ : std_logic;
SIGNAL \inst|Add2~30_combout\ : std_logic;
SIGNAL \inst|Add2~31\ : std_logic;
SIGNAL \inst|Add2~32_combout\ : std_logic;
SIGNAL \inst|Add2~33\ : std_logic;
SIGNAL \inst|Add2~34_combout\ : std_logic;
SIGNAL \inst|Add2~35\ : std_logic;
SIGNAL \inst|Add2~36_combout\ : std_logic;
SIGNAL \inst|Add2~37\ : std_logic;
SIGNAL \inst|Add2~38_combout\ : std_logic;
SIGNAL \inst|Add2~39\ : std_logic;
SIGNAL \inst|Add2~40_combout\ : std_logic;
SIGNAL \inst|Add2~41\ : std_logic;
SIGNAL \inst|Add2~42_combout\ : std_logic;
SIGNAL \inst|Add2~43\ : std_logic;
SIGNAL \inst|Add2~44_combout\ : std_logic;
SIGNAL \inst|Add2~45\ : std_logic;
SIGNAL \inst|Add2~46_combout\ : std_logic;
SIGNAL \inst|Add2~47\ : std_logic;
SIGNAL \inst|Add2~48_combout\ : std_logic;
SIGNAL \inst|Add2~49\ : std_logic;
SIGNAL \inst|Add2~50_combout\ : std_logic;
SIGNAL \inst|Add2~51\ : std_logic;
SIGNAL \inst|Add2~52_combout\ : std_logic;
SIGNAL \inst|Add2~53\ : std_logic;
SIGNAL \inst|Add2~54_combout\ : std_logic;
SIGNAL \inst|Equal2~8_combout\ : std_logic;
SIGNAL \inst|Add2~55\ : std_logic;
SIGNAL \inst|Add2~56_combout\ : std_logic;
SIGNAL \inst|Add2~57\ : std_logic;
SIGNAL \inst|Add2~58_combout\ : std_logic;
SIGNAL \inst|Add2~59\ : std_logic;
SIGNAL \inst|Add2~60_combout\ : std_logic;
SIGNAL \inst|Add2~61\ : std_logic;
SIGNAL \inst|Add2~62_combout\ : std_logic;
SIGNAL \inst|Equal2~9_combout\ : std_logic;
SIGNAL \inst|Equal2~3_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~4_combout\ : std_logic;
SIGNAL \inst|Equal2~6_combout\ : std_logic;
SIGNAL \inst|Equal2~5_combout\ : std_logic;
SIGNAL \inst|Equal2~7_combout\ : std_logic;
SIGNAL \inst|Equal2~10_combout\ : std_logic;
SIGNAL \inst|innercounter~4_combout\ : std_logic;
SIGNAL \inst|innercounter[2]~2_combout\ : std_logic;
SIGNAL \inst|innercounter~3_combout\ : std_logic;
SIGNAL \inst|innercounter~1_combout\ : std_logic;
SIGNAL \inst|PWM_DCmot~0_combout\ : std_logic;
SIGNAL \inst|PWM_DCmot~1_combout\ : std_logic;
SIGNAL \inst|PWM_DCmot~2_combout\ : std_logic;
SIGNAL \inst|PWM_DCmot~3_combout\ : std_logic;
SIGNAL \inst|PWM_DCmot~q\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|flag\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|innercounter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);

BEGIN

PWM_DCMOT <= ww_PWM_DCMOT;
ww_CLK <= CLK;
ww_I_RX_series <= I_RX_series;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\inst3|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X58_Y0_N16
\PWM_DCMOT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PWM_DCmot~q\,
	devoe => ww_devoe,
	o => ww_PWM_DCMOT);

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
\inst3|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
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
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
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
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
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
	fbin => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst3|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst3|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G19
\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y16_N0
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

-- Location: FF_X63_Y16_N1
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X63_Y16_N2
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(1) & (!\inst|Add0~1\)) # (!\inst|counter\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X63_Y16_N3
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X63_Y16_N4
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

-- Location: FF_X63_Y16_N5
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X63_Y16_N6
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

-- Location: FF_X63_Y16_N7
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X63_Y16_N8
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|counter\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|counter\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|counter\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X63_Y16_N28
\inst|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~4_combout\ = (\inst|Add0~8_combout\ & !\inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~8_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|counter~4_combout\);

-- Location: FF_X63_Y16_N29
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X63_Y16_N10
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|counter\(5) & (!\inst|Add0~9\)) # (!\inst|counter\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X63_Y16_N11
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X63_Y16_N12
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

-- Location: FF_X63_Y16_N13
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X63_Y16_N30
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|counter\(5) & (!\inst|counter\(6) & !\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datac => \inst|counter\(6),
	datad => \inst|counter\(4),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y16_N20
\inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|counter\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|counter\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|counter\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X63_Y16_N22
\inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|counter\(11) & (!\inst|Add0~21\)) # (!\inst|counter\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X63_Y16_N23
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X63_Y16_N24
\inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|counter\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|counter\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|counter\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X63_Y16_N25
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X62_Y16_N24
\inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|counter\(12) & !\inst|counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(12),
	datad => \inst|counter\(11),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X63_Y16_N14
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

-- Location: FF_X63_Y16_N15
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X62_Y16_N16
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(1) & (\inst|counter\(0) & \inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y16_N26
\inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = \inst|Add0~25\ $ (\inst|counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(13),
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\);

-- Location: LCCOMB_X62_Y16_N8
\inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (!\inst|Equal0~3_combout\ & \inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~3_combout\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X62_Y16_N9
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X62_Y16_N26
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & (\inst|counter\(13) & \inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|counter\(13),
	datad => \inst|counter\(3),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y16_N28
\inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|LessThan0~0_combout\ & (\inst|LessThan1~0_combout\ & (!\inst|counter\(7) & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|counter\(7),
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y16_N16
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|counter\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|counter\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|counter\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X62_Y16_N2
\inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|Equal0~3_combout\ & \inst|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~3_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X62_Y16_N3
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X63_Y16_N18
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|counter\(9) & (!\inst|Add0~17\)) # (!\inst|counter\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X62_Y16_N6
\inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (!\inst|Equal0~3_combout\ & \inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~3_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|counter~3_combout\);

-- Location: FF_X62_Y16_N7
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X62_Y16_N12
\inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|Add0~20_combout\ & !\inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~20_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X62_Y16_N13
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X62_Y16_N30
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|counter\(10) & (\inst|counter\(8) & \inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datab => \inst|counter\(8),
	datad => \inst|counter\(9),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y16_N10
\inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = ((!\inst|counter\(2)) # (!\inst|counter\(3))) # (!\inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datac => \inst|counter\(3),
	datad => \inst|counter\(2),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X62_Y16_N20
\inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|LessThan0~0_combout\ & (\inst|LessThan1~0_combout\ & (!\inst|counter\(7) & \inst|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|counter\(7),
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X62_Y16_N0
\inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = ((\inst|LessThan1~2_combout\) # ((!\inst|Equal0~1_combout\ & \inst|LessThan1~0_combout\))) # (!\inst|counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|LessThan1~0_combout\,
	datac => \inst|counter\(13),
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|LessThan1~3_combout\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X59_Y7_N6
\inst1|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[0]~13_combout\ = \inst1|r_Clk_Count\(0) $ (VCC)
-- \inst1|r_Clk_Count[0]~14\ = CARRY(\inst1|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(0),
	datad => VCC,
	combout => \inst1|r_Clk_Count[0]~13_combout\,
	cout => \inst1|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X57_Y8_N12
\inst1|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|r_Bit_Index\(0) $ (\inst1|LessThan1~3_combout\)))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_SM_Main.s_Idle~q\ & (\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(0),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector16~0_combout\);

-- Location: FF_X57_Y8_N13
\inst1|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Bit_Index\(0));

-- Location: LCCOMB_X57_Y8_N8
\inst1|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Bit_Index\(1) $ (((\inst1|r_Bit_Index\(0) & \inst1|LessThan1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector15~0_combout\);

-- Location: LCCOMB_X57_Y8_N4
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

-- Location: FF_X57_Y8_N5
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

-- Location: LCCOMB_X57_Y8_N0
\inst1|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~3_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((!\inst1|r_Bit_Index\(0)) # (!\inst1|r_Bit_Index\(1))) # (!\inst1|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector19~3_combout\);

-- Location: IOIBUF_X56_Y0_N8
\I_RX_series~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_RX_series,
	o => \I_RX_series~input_o\);

-- Location: LCCOMB_X59_Y7_N2
\inst1|r_RX_Data_R~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Data_R~feeder_combout\ = \I_RX_series~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_RX_series~input_o\,
	combout => \inst1|r_RX_Data_R~feeder_combout\);

-- Location: FF_X59_Y7_N3
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

-- Location: LCCOMB_X59_Y7_N0
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

-- Location: FF_X59_Y7_N1
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

-- Location: LCCOMB_X60_Y7_N30
\inst1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|r_Clk_Count\(2) & (\inst1|r_Clk_Count\(3) & (\inst1|r_Clk_Count\(5) & !\inst1|r_Clk_Count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(2),
	datab => \inst1|r_Clk_Count\(3),
	datac => \inst1|r_Clk_Count\(5),
	datad => \inst1|r_Clk_Count\(4),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y7_N8
\inst1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|r_Clk_Count\(9) & (\inst1|r_Clk_Count\(11) & (!\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(9),
	datab => \inst1|r_Clk_Count\(11),
	datac => \inst1|r_Clk_Count\(10),
	datad => \inst1|r_Clk_Count\(6),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y7_N20
\inst1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|r_Clk_Count\(1) & (!\inst1|r_Clk_Count\(8) & (\inst1|r_Clk_Count\(0) & !\inst1|r_Clk_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(1),
	datab => \inst1|r_Clk_Count\(8),
	datac => \inst1|r_Clk_Count\(0),
	datad => \inst1|r_Clk_Count\(7),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y7_N6
\inst1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|Equal0~1_combout\ & (!\inst1|r_Clk_Count\(12) & (\inst1|Equal0~2_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|r_Clk_Count\(12),
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y7_N4
\inst1|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector18~0_combout\ = (\inst1|r_SM_Main.s_Idle~q\ & (((\inst1|r_SM_Main.s_RX_Start_Bit~q\ & !\inst1|Equal0~3_combout\)))) # (!\inst1|r_SM_Main.s_Idle~q\ & (((\inst1|r_SM_Main.s_RX_Start_Bit~q\ & !\inst1|Equal0~3_combout\)) # 
-- (!\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Selector18~0_combout\);

-- Location: FF_X59_Y7_N5
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

-- Location: LCCOMB_X60_Y7_N2
\inst1|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~2_combout\ = (!\inst1|r_RX_Data~q\ & (\inst1|r_SM_Main.s_RX_Start_Bit~q\ & \inst1|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datac => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Selector19~2_combout\);

-- Location: LCCOMB_X57_Y8_N24
\inst1|Selector19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~4_combout\ = (\inst1|Selector19~3_combout\) # ((\inst1|Selector19~2_combout\) # ((!\inst1|LessThan1~3_combout\ & \inst1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|Selector19~3_combout\,
	datac => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|Selector19~2_combout\,
	combout => \inst1|Selector19~4_combout\);

-- Location: FF_X57_Y8_N25
\inst1|r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X57_Y8_N18
\inst1|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\inst1|r_Bit_Index\(2) & (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Bit_Index\(1) & \inst1|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: LCCOMB_X57_Y8_N28
\inst1|r_SM_Main.s_RX_Stop_Bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main.s_RX_Stop_Bit~1_combout\ = (\inst1|r_Bit_Index\(0) & ((\inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\) # ((\inst1|r_SM_Main.s_RX_Stop_Bit~q\ & !\inst1|LessThan1~3_combout\)))) # (!\inst1|r_Bit_Index\(0) & (((\inst1|r_SM_Main.s_RX_Stop_Bit~q\ & 
-- !\inst1|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datab => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	datac => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|r_SM_Main.s_RX_Stop_Bit~1_combout\);

-- Location: FF_X57_Y8_N29
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

-- Location: LCCOMB_X57_Y8_N30
\inst1|r_Clk_Count[2]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[2]~39_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\) # (\inst1|r_SM_Main.s_RX_Stop_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \inst1|r_Clk_Count[2]~39_combout\);

-- Location: LCCOMB_X60_Y7_N18
\inst1|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = (!\inst1|r_Clk_Count\(12) & \inst1|r_SM_Main.s_RX_Start_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(12),
	datac => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	combout => \inst1|Selector19~0_combout\);

-- Location: LCCOMB_X60_Y7_N12
\inst1|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~1_combout\ = (\inst1|Equal0~1_combout\ & (\inst1|Selector19~0_combout\ & (\inst1|Equal0~2_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Selector19~0_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Selector19~1_combout\);

-- Location: LCCOMB_X58_Y7_N26
\inst1|r_Clk_Count[2]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[2]~40_combout\ = ((\inst1|Selector19~1_combout\) # ((\inst1|r_Clk_Count[2]~39_combout\ & \inst1|LessThan1~3_combout\))) # (!\inst1|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count[2]~39_combout\,
	datab => \inst1|r_SM_Main.s_Idle~q\,
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|Selector19~1_combout\,
	combout => \inst1|r_Clk_Count[2]~40_combout\);

-- Location: LCCOMB_X60_Y7_N16
\inst1|r_Clk_Count[2]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[2]~41_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((!\inst1|Equal0~3_combout\) # (!\inst1|r_SM_Main.s_RX_Start_Bit~q\)) # (!\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst1|r_SM_Main.s_Cleanup~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|r_Clk_Count[2]~41_combout\);

-- Location: FF_X59_Y7_N7
\inst1|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[0]~13_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(0));

-- Location: LCCOMB_X59_Y7_N8
\inst1|r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[1]~15_combout\ = (\inst1|r_Clk_Count\(1) & (!\inst1|r_Clk_Count[0]~14\)) # (!\inst1|r_Clk_Count\(1) & ((\inst1|r_Clk_Count[0]~14\) # (GND)))
-- \inst1|r_Clk_Count[1]~16\ = CARRY((!\inst1|r_Clk_Count[0]~14\) # (!\inst1|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(1),
	datad => VCC,
	cin => \inst1|r_Clk_Count[0]~14\,
	combout => \inst1|r_Clk_Count[1]~15_combout\,
	cout => \inst1|r_Clk_Count[1]~16\);

-- Location: FF_X59_Y7_N9
\inst1|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[1]~15_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(1));

-- Location: LCCOMB_X59_Y7_N10
\inst1|r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[2]~17_combout\ = (\inst1|r_Clk_Count\(2) & (\inst1|r_Clk_Count[1]~16\ $ (GND))) # (!\inst1|r_Clk_Count\(2) & (!\inst1|r_Clk_Count[1]~16\ & VCC))
-- \inst1|r_Clk_Count[2]~18\ = CARRY((\inst1|r_Clk_Count\(2) & !\inst1|r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(2),
	datad => VCC,
	cin => \inst1|r_Clk_Count[1]~16\,
	combout => \inst1|r_Clk_Count[2]~17_combout\,
	cout => \inst1|r_Clk_Count[2]~18\);

-- Location: FF_X59_Y7_N11
\inst1|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[2]~17_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(2));

-- Location: LCCOMB_X59_Y7_N12
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

-- Location: FF_X59_Y7_N13
\inst1|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[3]~19_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(3));

-- Location: LCCOMB_X59_Y7_N14
\inst1|r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[4]~21_combout\ = (\inst1|r_Clk_Count\(4) & (\inst1|r_Clk_Count[3]~20\ $ (GND))) # (!\inst1|r_Clk_Count\(4) & (!\inst1|r_Clk_Count[3]~20\ & VCC))
-- \inst1|r_Clk_Count[4]~22\ = CARRY((\inst1|r_Clk_Count\(4) & !\inst1|r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(4),
	datad => VCC,
	cin => \inst1|r_Clk_Count[3]~20\,
	combout => \inst1|r_Clk_Count[4]~21_combout\,
	cout => \inst1|r_Clk_Count[4]~22\);

-- Location: FF_X59_Y7_N15
\inst1|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[4]~21_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(4));

-- Location: LCCOMB_X59_Y7_N16
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

-- Location: FF_X59_Y7_N17
\inst1|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[5]~23_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(5));

-- Location: LCCOMB_X59_Y7_N18
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

-- Location: FF_X59_Y7_N19
\inst1|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[6]~25_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(6));

-- Location: LCCOMB_X59_Y7_N20
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

-- Location: FF_X59_Y7_N21
\inst1|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[7]~27_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(7));

-- Location: LCCOMB_X59_Y7_N22
\inst1|r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[8]~29_combout\ = (\inst1|r_Clk_Count\(8) & (\inst1|r_Clk_Count[7]~28\ $ (GND))) # (!\inst1|r_Clk_Count\(8) & (!\inst1|r_Clk_Count[7]~28\ & VCC))
-- \inst1|r_Clk_Count[8]~30\ = CARRY((\inst1|r_Clk_Count\(8) & !\inst1|r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(8),
	datad => VCC,
	cin => \inst1|r_Clk_Count[7]~28\,
	combout => \inst1|r_Clk_Count[8]~29_combout\,
	cout => \inst1|r_Clk_Count[8]~30\);

-- Location: FF_X59_Y7_N23
\inst1|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[8]~29_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(8));

-- Location: LCCOMB_X59_Y7_N24
\inst1|r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[9]~31_combout\ = (\inst1|r_Clk_Count\(9) & (!\inst1|r_Clk_Count[8]~30\)) # (!\inst1|r_Clk_Count\(9) & ((\inst1|r_Clk_Count[8]~30\) # (GND)))
-- \inst1|r_Clk_Count[9]~32\ = CARRY((!\inst1|r_Clk_Count[8]~30\) # (!\inst1|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(9),
	datad => VCC,
	cin => \inst1|r_Clk_Count[8]~30\,
	combout => \inst1|r_Clk_Count[9]~31_combout\,
	cout => \inst1|r_Clk_Count[9]~32\);

-- Location: FF_X59_Y7_N25
\inst1|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[9]~31_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(9));

-- Location: LCCOMB_X59_Y7_N26
\inst1|r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[10]~33_combout\ = (\inst1|r_Clk_Count\(10) & (\inst1|r_Clk_Count[9]~32\ $ (GND))) # (!\inst1|r_Clk_Count\(10) & (!\inst1|r_Clk_Count[9]~32\ & VCC))
-- \inst1|r_Clk_Count[10]~34\ = CARRY((\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(10),
	datad => VCC,
	cin => \inst1|r_Clk_Count[9]~32\,
	combout => \inst1|r_Clk_Count[10]~33_combout\,
	cout => \inst1|r_Clk_Count[10]~34\);

-- Location: FF_X59_Y7_N27
\inst1|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[10]~33_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(10));

-- Location: LCCOMB_X59_Y7_N28
\inst1|r_Clk_Count[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[11]~35_combout\ = (\inst1|r_Clk_Count\(11) & (!\inst1|r_Clk_Count[10]~34\)) # (!\inst1|r_Clk_Count\(11) & ((\inst1|r_Clk_Count[10]~34\) # (GND)))
-- \inst1|r_Clk_Count[11]~36\ = CARRY((!\inst1|r_Clk_Count[10]~34\) # (!\inst1|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(11),
	datad => VCC,
	cin => \inst1|r_Clk_Count[10]~34\,
	combout => \inst1|r_Clk_Count[11]~35_combout\,
	cout => \inst1|r_Clk_Count[11]~36\);

-- Location: FF_X59_Y7_N29
\inst1|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[11]~35_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(11));

-- Location: LCCOMB_X59_Y7_N30
\inst1|r_Clk_Count[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[12]~37_combout\ = \inst1|r_Clk_Count\(12) $ (!\inst1|r_Clk_Count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	cin => \inst1|r_Clk_Count[11]~36\,
	combout => \inst1|r_Clk_Count[12]~37_combout\);

-- Location: FF_X59_Y7_N31
\inst1|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[12]~37_combout\,
	sclr => \inst1|r_Clk_Count[2]~40_combout\,
	ena => \inst1|r_Clk_Count[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(12));

-- Location: LCCOMB_X60_Y7_N24
\inst1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|r_Clk_Count\(3) & (((!\inst1|r_Clk_Count\(2)) # (!\inst1|r_Clk_Count\(0))) # (!\inst1|r_Clk_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(3),
	datab => \inst1|r_Clk_Count\(1),
	datac => \inst1|r_Clk_Count\(0),
	datad => \inst1|r_Clk_Count\(2),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X60_Y7_N26
\inst1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ((!\inst1|r_Clk_Count\(5) & ((\inst1|LessThan1~0_combout\) # (!\inst1|r_Clk_Count\(4))))) # (!\inst1|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(4),
	datab => \inst1|r_Clk_Count\(6),
	datac => \inst1|r_Clk_Count\(5),
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X60_Y7_N28
\inst1|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (\inst1|r_Clk_Count\(9)) # ((\inst1|r_Clk_Count\(8)) # ((\inst1|r_Clk_Count\(7)) # (!\inst1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(9),
	datab => \inst1|r_Clk_Count\(8),
	datac => \inst1|LessThan1~1_combout\,
	datad => \inst1|r_Clk_Count\(7),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X60_Y7_N22
\inst1|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (\inst1|r_Clk_Count\(12) & ((\inst1|r_Clk_Count\(11)) # ((\inst1|r_Clk_Count\(10) & \inst1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|r_Clk_Count\(11),
	datac => \inst1|r_Clk_Count\(10),
	datad => \inst1|LessThan1~2_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X58_Y7_N12
\inst1|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main~7_combout\ = (\inst1|LessThan1~3_combout\ & \inst1|r_SM_Main.s_RX_Stop_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datac => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \inst1|r_SM_Main~7_combout\);

-- Location: FF_X58_Y7_N13
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

-- Location: LCCOMB_X58_Y7_N0
\inst1|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((\inst1|r_SM_Main.s_Idle~q\ & !\inst1|Selector19~1_combout\)) # (!\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Cleanup~q\,
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_SM_Main.s_Idle~q\,
	datad => \inst1|Selector19~1_combout\,
	combout => \inst1|Selector17~0_combout\);

-- Location: FF_X58_Y7_N1
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

-- Location: LCCOMB_X57_Y8_N10
\inst1|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|r_Bit_Index\(0) & (\inst1|r_Bit_Index\(1) & \inst1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector14~0_combout\);

-- Location: LCCOMB_X57_Y8_N6
\inst1|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~1_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|r_Bit_Index\(2) $ (\inst1|Selector14~0_combout\)))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_SM_Main.s_Idle~q\ & (\inst1|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|Selector14~0_combout\,
	combout => \inst1|Selector14~1_combout\);

-- Location: FF_X57_Y8_N7
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

-- Location: LCCOMB_X57_Y8_N22
\inst1|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (\inst1|r_Bit_Index\(2) & (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (!\inst1|r_Bit_Index\(1) & \inst1|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X57_Y8_N16
\inst1|r_RX_Byte[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[5]~1_combout\ = (\inst1|Decoder0~0_combout\ & ((\inst1|r_Bit_Index\(0) & (\inst1|r_RX_Data~q\)) # (!\inst1|r_Bit_Index\(0) & ((\inst1|r_RX_Byte\(5)))))) # (!\inst1|Decoder0~0_combout\ & (((\inst1|r_RX_Byte\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|r_RX_Byte[5]~1_combout\);

-- Location: FF_X57_Y8_N17
\inst1|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(5));

-- Location: LCCOMB_X57_Y8_N2
\inst1|r_RX_Byte[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[4]~2_combout\ = (\inst1|Decoder0~0_combout\ & ((\inst1|r_Bit_Index\(0) & ((\inst1|r_RX_Byte\(4)))) # (!\inst1|r_Bit_Index\(0) & (\inst1|r_RX_Data~q\)))) # (!\inst1|Decoder0~0_combout\ & (((\inst1|r_RX_Byte\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|r_RX_Byte[4]~2_combout\);

-- Location: FF_X57_Y8_N3
\inst1|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(4));

-- Location: LCCOMB_X58_Y8_N16
\inst1|r_RX_Byte[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[6]~0_combout\ = (\inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ & ((\inst1|r_Bit_Index\(0) & ((\inst1|r_RX_Byte\(6)))) # (!\inst1|r_Bit_Index\(0) & (\inst1|r_RX_Data~q\)))) # (!\inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ & 
-- (((\inst1|r_RX_Byte\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datab => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	datac => \inst1|r_RX_Byte\(6),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|r_RX_Byte[6]~0_combout\);

-- Location: FF_X58_Y8_N17
\inst1|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(6));

-- Location: LCCOMB_X58_Y12_N20
\inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst1|r_RX_Byte\(5) & (!\inst1|r_RX_Byte\(4) & !\inst1|r_RX_Byte\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(5),
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst1|r_RX_Byte\(6),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X62_Y16_N18
\inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|counter\(9) & ((\inst|Equal0~0_combout\) # ((\inst|counter\(3)) # (!\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|counter\(3),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y16_N4
\inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|counter\(10)) # ((\inst|LessThan0~1_combout\ & (\inst|counter\(7) & \inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|counter\(7),
	datad => \inst|counter\(8),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X62_Y16_N14
\inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|counter\(13) & (((!\inst|LessThan0~2_combout\ & !\inst|counter\(11))) # (!\inst|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|counter\(12),
	datac => \inst|counter\(13),
	datad => \inst|counter\(11),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y12_N0
\inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|flag\(0) $ (GND)
-- \inst|Add2~1\ = CARRY(!\inst|flag\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X58_Y12_N26
\inst|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|flag~0_combout\ = (!\inst|Add2~0_combout\ & !\inst|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~0_combout\,
	datad => \inst|Equal2~10_combout\,
	combout => \inst|flag~0_combout\);

-- Location: LCCOMB_X58_Y12_N30
\inst|innercounter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[2]~0_combout\ = (\inst|LessThan1~3_combout\ & (!\inst|Equal1~0_combout\ & !\inst|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~3_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|LessThan0~3_combout\,
	combout => \inst|innercounter[2]~0_combout\);

-- Location: FF_X58_Y12_N27
\inst|flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|flag~0_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(0));

-- Location: LCCOMB_X59_Y12_N2
\inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|flag\(1) & (\inst|Add2~1\ & VCC)) # (!\inst|flag\(1) & (!\inst|Add2~1\))
-- \inst|Add2~3\ = CARRY((!\inst|flag\(1) & !\inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: FF_X59_Y12_N3
\inst|flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~2_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(1));

-- Location: LCCOMB_X59_Y12_N4
\inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|flag\(2) & ((GND) # (!\inst|Add2~3\))) # (!\inst|flag\(2) & (\inst|Add2~3\ $ (GND)))
-- \inst|Add2~5\ = CARRY((\inst|flag\(2)) # (!\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: FF_X59_Y12_N5
\inst|flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~4_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(2));

-- Location: LCCOMB_X59_Y12_N6
\inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|flag\(3) & (\inst|Add2~5\ & VCC)) # (!\inst|flag\(3) & (!\inst|Add2~5\))
-- \inst|Add2~7\ = CARRY((!\inst|flag\(3) & !\inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: FF_X59_Y12_N7
\inst|flag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~6_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(3));

-- Location: LCCOMB_X59_Y12_N8
\inst|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|flag\(4) & ((GND) # (!\inst|Add2~7\))) # (!\inst|flag\(4) & (\inst|Add2~7\ $ (GND)))
-- \inst|Add2~9\ = CARRY((\inst|flag\(4)) # (!\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: FF_X59_Y12_N9
\inst|flag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~8_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(4));

-- Location: LCCOMB_X59_Y12_N10
\inst|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|flag\(5) & (\inst|Add2~9\ & VCC)) # (!\inst|flag\(5) & (!\inst|Add2~9\))
-- \inst|Add2~11\ = CARRY((!\inst|flag\(5) & !\inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: FF_X59_Y12_N11
\inst|flag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~10_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(5));

-- Location: LCCOMB_X59_Y12_N12
\inst|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|flag\(6) & ((GND) # (!\inst|Add2~11\))) # (!\inst|flag\(6) & (\inst|Add2~11\ $ (GND)))
-- \inst|Add2~13\ = CARRY((\inst|flag\(6)) # (!\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: FF_X59_Y12_N13
\inst|flag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~12_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(6));

-- Location: LCCOMB_X59_Y12_N14
\inst|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|flag\(7) & (\inst|Add2~13\ & VCC)) # (!\inst|flag\(7) & (!\inst|Add2~13\))
-- \inst|Add2~15\ = CARRY((!\inst|flag\(7) & !\inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(7),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: FF_X59_Y12_N15
\inst|flag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~14_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(7));

-- Location: LCCOMB_X59_Y12_N16
\inst|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|flag\(8) & ((GND) # (!\inst|Add2~15\))) # (!\inst|flag\(8) & (\inst|Add2~15\ $ (GND)))
-- \inst|Add2~17\ = CARRY((\inst|flag\(8)) # (!\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(8),
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: FF_X59_Y12_N17
\inst|flag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~16_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(8));

-- Location: LCCOMB_X59_Y12_N18
\inst|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (\inst|flag\(9) & (\inst|Add2~17\ & VCC)) # (!\inst|flag\(9) & (!\inst|Add2~17\))
-- \inst|Add2~19\ = CARRY((!\inst|flag\(9) & !\inst|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(9),
	datad => VCC,
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\,
	cout => \inst|Add2~19\);

-- Location: FF_X59_Y12_N19
\inst|flag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~18_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(9));

-- Location: LCCOMB_X59_Y12_N20
\inst|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = (\inst|flag\(10) & ((GND) # (!\inst|Add2~19\))) # (!\inst|flag\(10) & (\inst|Add2~19\ $ (GND)))
-- \inst|Add2~21\ = CARRY((\inst|flag\(10)) # (!\inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(10),
	datad => VCC,
	cin => \inst|Add2~19\,
	combout => \inst|Add2~20_combout\,
	cout => \inst|Add2~21\);

-- Location: FF_X59_Y12_N21
\inst|flag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~20_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(10));

-- Location: LCCOMB_X59_Y12_N22
\inst|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~22_combout\ = (\inst|flag\(11) & (\inst|Add2~21\ & VCC)) # (!\inst|flag\(11) & (!\inst|Add2~21\))
-- \inst|Add2~23\ = CARRY((!\inst|flag\(11) & !\inst|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(11),
	datad => VCC,
	cin => \inst|Add2~21\,
	combout => \inst|Add2~22_combout\,
	cout => \inst|Add2~23\);

-- Location: FF_X59_Y12_N23
\inst|flag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~22_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(11));

-- Location: LCCOMB_X59_Y12_N24
\inst|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~24_combout\ = (\inst|flag\(12) & ((GND) # (!\inst|Add2~23\))) # (!\inst|flag\(12) & (\inst|Add2~23\ $ (GND)))
-- \inst|Add2~25\ = CARRY((\inst|flag\(12)) # (!\inst|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(12),
	datad => VCC,
	cin => \inst|Add2~23\,
	combout => \inst|Add2~24_combout\,
	cout => \inst|Add2~25\);

-- Location: FF_X59_Y12_N25
\inst|flag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~24_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(12));

-- Location: LCCOMB_X59_Y12_N26
\inst|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~26_combout\ = (\inst|flag\(13) & (\inst|Add2~25\ & VCC)) # (!\inst|flag\(13) & (!\inst|Add2~25\))
-- \inst|Add2~27\ = CARRY((!\inst|flag\(13) & !\inst|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(13),
	datad => VCC,
	cin => \inst|Add2~25\,
	combout => \inst|Add2~26_combout\,
	cout => \inst|Add2~27\);

-- Location: FF_X59_Y12_N27
\inst|flag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~26_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(13));

-- Location: LCCOMB_X59_Y12_N28
\inst|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~28_combout\ = (\inst|flag\(14) & ((GND) # (!\inst|Add2~27\))) # (!\inst|flag\(14) & (\inst|Add2~27\ $ (GND)))
-- \inst|Add2~29\ = CARRY((\inst|flag\(14)) # (!\inst|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(14),
	datad => VCC,
	cin => \inst|Add2~27\,
	combout => \inst|Add2~28_combout\,
	cout => \inst|Add2~29\);

-- Location: FF_X59_Y12_N29
\inst|flag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~28_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(14));

-- Location: LCCOMB_X59_Y12_N30
\inst|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~30_combout\ = (\inst|flag\(15) & (\inst|Add2~29\ & VCC)) # (!\inst|flag\(15) & (!\inst|Add2~29\))
-- \inst|Add2~31\ = CARRY((!\inst|flag\(15) & !\inst|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(15),
	datad => VCC,
	cin => \inst|Add2~29\,
	combout => \inst|Add2~30_combout\,
	cout => \inst|Add2~31\);

-- Location: FF_X59_Y12_N31
\inst|flag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~30_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(15));

-- Location: LCCOMB_X59_Y11_N0
\inst|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~32_combout\ = (\inst|flag\(16) & ((GND) # (!\inst|Add2~31\))) # (!\inst|flag\(16) & (\inst|Add2~31\ $ (GND)))
-- \inst|Add2~33\ = CARRY((\inst|flag\(16)) # (!\inst|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(16),
	datad => VCC,
	cin => \inst|Add2~31\,
	combout => \inst|Add2~32_combout\,
	cout => \inst|Add2~33\);

-- Location: FF_X59_Y11_N1
\inst|flag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~32_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(16));

-- Location: LCCOMB_X59_Y11_N2
\inst|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~34_combout\ = (\inst|flag\(17) & (\inst|Add2~33\ & VCC)) # (!\inst|flag\(17) & (!\inst|Add2~33\))
-- \inst|Add2~35\ = CARRY((!\inst|flag\(17) & !\inst|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(17),
	datad => VCC,
	cin => \inst|Add2~33\,
	combout => \inst|Add2~34_combout\,
	cout => \inst|Add2~35\);

-- Location: FF_X59_Y11_N3
\inst|flag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~34_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(17));

-- Location: LCCOMB_X59_Y11_N4
\inst|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~36_combout\ = (\inst|flag\(18) & ((GND) # (!\inst|Add2~35\))) # (!\inst|flag\(18) & (\inst|Add2~35\ $ (GND)))
-- \inst|Add2~37\ = CARRY((\inst|flag\(18)) # (!\inst|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(18),
	datad => VCC,
	cin => \inst|Add2~35\,
	combout => \inst|Add2~36_combout\,
	cout => \inst|Add2~37\);

-- Location: FF_X59_Y11_N5
\inst|flag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~36_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(18));

-- Location: LCCOMB_X59_Y11_N6
\inst|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~38_combout\ = (\inst|flag\(19) & (\inst|Add2~37\ & VCC)) # (!\inst|flag\(19) & (!\inst|Add2~37\))
-- \inst|Add2~39\ = CARRY((!\inst|flag\(19) & !\inst|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(19),
	datad => VCC,
	cin => \inst|Add2~37\,
	combout => \inst|Add2~38_combout\,
	cout => \inst|Add2~39\);

-- Location: FF_X59_Y11_N7
\inst|flag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~38_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(19));

-- Location: LCCOMB_X59_Y11_N8
\inst|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~40_combout\ = (\inst|flag\(20) & ((GND) # (!\inst|Add2~39\))) # (!\inst|flag\(20) & (\inst|Add2~39\ $ (GND)))
-- \inst|Add2~41\ = CARRY((\inst|flag\(20)) # (!\inst|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(20),
	datad => VCC,
	cin => \inst|Add2~39\,
	combout => \inst|Add2~40_combout\,
	cout => \inst|Add2~41\);

-- Location: FF_X59_Y11_N9
\inst|flag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~40_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(20));

-- Location: LCCOMB_X59_Y11_N10
\inst|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~42_combout\ = (\inst|flag\(21) & (\inst|Add2~41\ & VCC)) # (!\inst|flag\(21) & (!\inst|Add2~41\))
-- \inst|Add2~43\ = CARRY((!\inst|flag\(21) & !\inst|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(21),
	datad => VCC,
	cin => \inst|Add2~41\,
	combout => \inst|Add2~42_combout\,
	cout => \inst|Add2~43\);

-- Location: FF_X59_Y11_N11
\inst|flag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~42_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(21));

-- Location: LCCOMB_X59_Y11_N12
\inst|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~44_combout\ = (\inst|flag\(22) & ((GND) # (!\inst|Add2~43\))) # (!\inst|flag\(22) & (\inst|Add2~43\ $ (GND)))
-- \inst|Add2~45\ = CARRY((\inst|flag\(22)) # (!\inst|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(22),
	datad => VCC,
	cin => \inst|Add2~43\,
	combout => \inst|Add2~44_combout\,
	cout => \inst|Add2~45\);

-- Location: FF_X59_Y11_N13
\inst|flag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~44_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(22));

-- Location: LCCOMB_X59_Y11_N14
\inst|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~46_combout\ = (\inst|flag\(23) & (\inst|Add2~45\ & VCC)) # (!\inst|flag\(23) & (!\inst|Add2~45\))
-- \inst|Add2~47\ = CARRY((!\inst|flag\(23) & !\inst|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(23),
	datad => VCC,
	cin => \inst|Add2~45\,
	combout => \inst|Add2~46_combout\,
	cout => \inst|Add2~47\);

-- Location: FF_X59_Y11_N15
\inst|flag[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~46_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(23));

-- Location: LCCOMB_X59_Y11_N16
\inst|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~48_combout\ = (\inst|flag\(24) & ((GND) # (!\inst|Add2~47\))) # (!\inst|flag\(24) & (\inst|Add2~47\ $ (GND)))
-- \inst|Add2~49\ = CARRY((\inst|flag\(24)) # (!\inst|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(24),
	datad => VCC,
	cin => \inst|Add2~47\,
	combout => \inst|Add2~48_combout\,
	cout => \inst|Add2~49\);

-- Location: FF_X59_Y11_N17
\inst|flag[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~48_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(24));

-- Location: LCCOMB_X59_Y11_N18
\inst|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~50_combout\ = (\inst|flag\(25) & (\inst|Add2~49\ & VCC)) # (!\inst|flag\(25) & (!\inst|Add2~49\))
-- \inst|Add2~51\ = CARRY((!\inst|flag\(25) & !\inst|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(25),
	datad => VCC,
	cin => \inst|Add2~49\,
	combout => \inst|Add2~50_combout\,
	cout => \inst|Add2~51\);

-- Location: FF_X59_Y11_N19
\inst|flag[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~50_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(25));

-- Location: LCCOMB_X59_Y11_N20
\inst|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~52_combout\ = (\inst|flag\(26) & ((GND) # (!\inst|Add2~51\))) # (!\inst|flag\(26) & (\inst|Add2~51\ $ (GND)))
-- \inst|Add2~53\ = CARRY((\inst|flag\(26)) # (!\inst|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(26),
	datad => VCC,
	cin => \inst|Add2~51\,
	combout => \inst|Add2~52_combout\,
	cout => \inst|Add2~53\);

-- Location: FF_X59_Y11_N21
\inst|flag[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~52_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(26));

-- Location: LCCOMB_X59_Y11_N22
\inst|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~54_combout\ = (\inst|flag\(27) & (\inst|Add2~53\ & VCC)) # (!\inst|flag\(27) & (!\inst|Add2~53\))
-- \inst|Add2~55\ = CARRY((!\inst|flag\(27) & !\inst|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(27),
	datad => VCC,
	cin => \inst|Add2~53\,
	combout => \inst|Add2~54_combout\,
	cout => \inst|Add2~55\);

-- Location: FF_X59_Y11_N23
\inst|flag[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~54_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(27));

-- Location: LCCOMB_X58_Y11_N6
\inst|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~8_combout\ = (!\inst|flag\(27) & (!\inst|flag\(25) & (!\inst|flag\(26) & !\inst|flag\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(27),
	datab => \inst|flag\(25),
	datac => \inst|flag\(26),
	datad => \inst|flag\(24),
	combout => \inst|Equal2~8_combout\);

-- Location: LCCOMB_X59_Y11_N24
\inst|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~56_combout\ = (\inst|flag\(28) & ((GND) # (!\inst|Add2~55\))) # (!\inst|flag\(28) & (\inst|Add2~55\ $ (GND)))
-- \inst|Add2~57\ = CARRY((\inst|flag\(28)) # (!\inst|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(28),
	datad => VCC,
	cin => \inst|Add2~55\,
	combout => \inst|Add2~56_combout\,
	cout => \inst|Add2~57\);

-- Location: FF_X59_Y11_N25
\inst|flag[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~56_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(28));

-- Location: LCCOMB_X59_Y11_N26
\inst|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~58_combout\ = (\inst|flag\(29) & (\inst|Add2~57\ & VCC)) # (!\inst|flag\(29) & (!\inst|Add2~57\))
-- \inst|Add2~59\ = CARRY((!\inst|flag\(29) & !\inst|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(29),
	datad => VCC,
	cin => \inst|Add2~57\,
	combout => \inst|Add2~58_combout\,
	cout => \inst|Add2~59\);

-- Location: FF_X59_Y11_N27
\inst|flag[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~58_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(29));

-- Location: LCCOMB_X59_Y11_N28
\inst|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~60_combout\ = (\inst|flag\(30) & ((GND) # (!\inst|Add2~59\))) # (!\inst|flag\(30) & (\inst|Add2~59\ $ (GND)))
-- \inst|Add2~61\ = CARRY((\inst|flag\(30)) # (!\inst|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag\(30),
	datad => VCC,
	cin => \inst|Add2~59\,
	combout => \inst|Add2~60_combout\,
	cout => \inst|Add2~61\);

-- Location: FF_X59_Y11_N29
\inst|flag[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~60_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(30));

-- Location: LCCOMB_X59_Y11_N30
\inst|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~62_combout\ = \inst|flag\(31) $ (!\inst|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(31),
	cin => \inst|Add2~61\,
	combout => \inst|Add2~62_combout\);

-- Location: FF_X59_Y11_N31
\inst|flag[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add2~62_combout\,
	ena => \inst|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag\(31));

-- Location: LCCOMB_X58_Y11_N24
\inst|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~9_combout\ = (!\inst|flag\(29) & (!\inst|flag\(30) & (!\inst|flag\(31) & !\inst|flag\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(29),
	datab => \inst|flag\(30),
	datac => \inst|flag\(31),
	datad => \inst|flag\(28),
	combout => \inst|Equal2~9_combout\);

-- Location: LCCOMB_X58_Y12_N10
\inst|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~3_combout\ = (!\inst|flag\(13) & (!\inst|flag\(14) & (!\inst|flag\(15) & !\inst|flag\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(13),
	datab => \inst|flag\(14),
	datac => \inst|flag\(15),
	datad => \inst|flag\(12),
	combout => \inst|Equal2~3_combout\);

-- Location: LCCOMB_X58_Y12_N24
\inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (!\inst|flag\(8) & (!\inst|flag\(11) & (!\inst|flag\(10) & !\inst|flag\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(8),
	datab => \inst|flag\(11),
	datac => \inst|flag\(10),
	datad => \inst|flag\(9),
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X58_Y12_N22
\inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (!\inst|flag\(6) & (!\inst|flag\(7) & (!\inst|flag\(5) & !\inst|flag\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(6),
	datab => \inst|flag\(7),
	datac => \inst|flag\(5),
	datad => \inst|flag\(4),
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X58_Y12_N28
\inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|flag\(2) & (!\inst|flag\(1) & (!\inst|flag\(0) & !\inst|flag\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(2),
	datab => \inst|flag\(1),
	datac => \inst|flag\(0),
	datad => \inst|flag\(3),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X58_Y12_N12
\inst|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~4_combout\ = (\inst|Equal2~3_combout\ & (\inst|Equal2~2_combout\ & (\inst|Equal2~1_combout\ & \inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \inst|Equal2~2_combout\,
	datac => \inst|Equal2~1_combout\,
	datad => \inst|Equal2~0_combout\,
	combout => \inst|Equal2~4_combout\);

-- Location: LCCOMB_X58_Y11_N26
\inst|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~6_combout\ = (!\inst|flag\(21) & (!\inst|flag\(22) & (!\inst|flag\(20) & !\inst|flag\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(21),
	datab => \inst|flag\(22),
	datac => \inst|flag\(20),
	datad => \inst|flag\(23),
	combout => \inst|Equal2~6_combout\);

-- Location: LCCOMB_X58_Y11_N0
\inst|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~5_combout\ = (!\inst|flag\(18) & (!\inst|flag\(19) & (!\inst|flag\(16) & !\inst|flag\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag\(18),
	datab => \inst|flag\(19),
	datac => \inst|flag\(16),
	datad => \inst|flag\(17),
	combout => \inst|Equal2~5_combout\);

-- Location: LCCOMB_X58_Y11_N12
\inst|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~7_combout\ = (\inst|Equal2~6_combout\ & \inst|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal2~6_combout\,
	datad => \inst|Equal2~5_combout\,
	combout => \inst|Equal2~7_combout\);

-- Location: LCCOMB_X58_Y11_N10
\inst|Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~10_combout\ = (\inst|Equal2~8_combout\ & (\inst|Equal2~9_combout\ & (\inst|Equal2~4_combout\ & \inst|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~8_combout\,
	datab => \inst|Equal2~9_combout\,
	datac => \inst|Equal2~4_combout\,
	datad => \inst|Equal2~7_combout\,
	combout => \inst|Equal2~10_combout\);

-- Location: LCCOMB_X57_Y12_N12
\inst|innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~4_combout\ = (!\inst|innercounter\(0) & ((!\inst|innercounter\(1)) # (!\inst|innercounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|innercounter\(2),
	datac => \inst|innercounter\(0),
	datad => \inst|innercounter\(1),
	combout => \inst|innercounter~4_combout\);

-- Location: LCCOMB_X58_Y12_N8
\inst|innercounter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[2]~2_combout\ = (\inst|Equal2~10_combout\ & (!\inst|Equal1~0_combout\ & (!\inst|LessThan0~3_combout\ & \inst|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan1~3_combout\,
	combout => \inst|innercounter[2]~2_combout\);

-- Location: FF_X57_Y12_N13
\inst|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|innercounter~4_combout\,
	ena => \inst|innercounter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(0));

-- Location: LCCOMB_X57_Y12_N18
\inst|innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~3_combout\ = (\inst|innercounter\(1) & (!\inst|innercounter\(2) & !\inst|innercounter\(0))) # (!\inst|innercounter\(1) & ((\inst|innercounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|innercounter\(2),
	datac => \inst|innercounter\(1),
	datad => \inst|innercounter\(0),
	combout => \inst|innercounter~3_combout\);

-- Location: FF_X57_Y12_N19
\inst|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|innercounter~3_combout\,
	ena => \inst|innercounter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(1));

-- Location: LCCOMB_X57_Y12_N8
\inst|innercounter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~1_combout\ = (\inst|innercounter\(1) & (!\inst|innercounter\(2) & \inst|innercounter\(0))) # (!\inst|innercounter\(1) & (\inst|innercounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|innercounter\(1),
	datac => \inst|innercounter\(2),
	datad => \inst|innercounter\(0),
	combout => \inst|innercounter~1_combout\);

-- Location: FF_X57_Y12_N9
\inst|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|innercounter~1_combout\,
	ena => \inst|innercounter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(2));

-- Location: LCCOMB_X58_Y12_N6
\inst|PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_DCmot~0_combout\ = (\inst1|r_RX_Byte\(5) & (((\inst1|r_RX_Byte\(4) & !\inst|innercounter\(0))) # (!\inst|innercounter\(1)))) # (!\inst1|r_RX_Byte\(5) & (!\inst|innercounter\(1) & (\inst1|r_RX_Byte\(4) & !\inst|innercounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(5),
	datab => \inst|innercounter\(1),
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst|innercounter\(0),
	combout => \inst|PWM_DCmot~0_combout\);

-- Location: LCCOMB_X58_Y12_N16
\inst|PWM_DCmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_DCmot~1_combout\ = (\inst|innercounter\(2) & (\inst1|r_RX_Byte\(6) & \inst|PWM_DCmot~0_combout\)) # (!\inst|innercounter\(2) & ((\inst1|r_RX_Byte\(6)) # (\inst|PWM_DCmot~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(2),
	datab => \inst1|r_RX_Byte\(6),
	datad => \inst|PWM_DCmot~0_combout\,
	combout => \inst|PWM_DCmot~1_combout\);

-- Location: LCCOMB_X58_Y12_N18
\inst|PWM_DCmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_DCmot~2_combout\ = (\inst|Equal2~10_combout\ & (\inst|PWM_DCmot~1_combout\)) # (!\inst|Equal2~10_combout\ & ((\inst|PWM_DCmot~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|PWM_DCmot~1_combout\,
	datad => \inst|PWM_DCmot~q\,
	combout => \inst|PWM_DCmot~2_combout\);

-- Location: LCCOMB_X58_Y12_N0
\inst|PWM_DCmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_DCmot~3_combout\ = (!\inst|Equal1~0_combout\ & ((\inst|LessThan0~3_combout\) # ((\inst|LessThan1~3_combout\ & \inst|PWM_DCmot~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~3_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|PWM_DCmot~2_combout\,
	combout => \inst|PWM_DCmot~3_combout\);

-- Location: FF_X58_Y12_N1
\inst|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PWM_DCmot~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PWM_DCmot~q\);

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


