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

-- DATE "05/27/2024 17:45:40"

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

ENTITY 	Block1 IS
    PORT (
	PWM_SVmot : OUT std_logic;
	CLK : IN std_logic;
	Svmot_anglev : IN std_logic_vector(3 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- PWM_SVmot	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
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
SIGNAL ww_Svmot_anglev : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|counter~1_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|counter[4]~5_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|counter~2_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|counter[6]~11_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|counter[7]~12_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|counter~4_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|counter~0_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|counter[2]~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|counter~3_combout\ : std_logic;
SIGNAL \inst2|PWM_SVmot~0_combout\ : std_logic;
SIGNAL \inst2|innercounter~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|innercounter[3]~1_combout\ : std_logic;
SIGNAL \inst2|innercounter~0_combout\ : std_logic;
SIGNAL \inst2|innercounter~3_combout\ : std_logic;
SIGNAL \inst2|innercounter~4_combout\ : std_logic;
SIGNAL \Svmot_anglev[2]~input_o\ : std_logic;
SIGNAL \Svmot_anglev[1]~input_o\ : std_logic;
SIGNAL \Svmot_anglev[0]~input_o\ : std_logic;
SIGNAL \inst2|PWM_SVmot~1_combout\ : std_logic;
SIGNAL \inst2|PWM_SVmot~2_combout\ : std_logic;
SIGNAL \Svmot_anglev[3]~input_o\ : std_logic;
SIGNAL \inst2|PWM_SVmot~3_combout\ : std_logic;
SIGNAL \inst2|PWM_SVmot~4_combout\ : std_logic;
SIGNAL \inst2|PWM_SVmot~q\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|innercounter\ : std_logic_vector(3 DOWNTO 0);

BEGIN

PWM_SVmot <= ww_PWM_SVmot;
ww_CLK <= CLK;
ww_Svmot_anglev <= Svmot_anglev;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: LCCOMB_X43_Y38_N24
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
	i => \inst2|PWM_SVmot~q\,
	devoe => ww_devoe,
	o => ww_PWM_SVmot);

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
\inst|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 40,
	c0_initial => 1,
	c0_low => 40,
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
	clk0_divide_by => 10000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
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
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G19
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y50_N6
\inst2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|counter\(0) $ (GND)
-- \inst2|Add0~1\ = CARRY(!\inst2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X46_Y50_N10
\inst2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|counter\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|counter\(2) & ((GND) # (!\inst2|Add0~3\)))
-- \inst2|Add0~5\ = CARRY((!\inst2|Add0~3\) # (!\inst2|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X46_Y50_N12
\inst2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|counter\(3) & (!\inst2|Add0~5\)) # (!\inst2|counter\(3) & (\inst2|Add0~5\ & VCC))
-- \inst2|Add0~7\ = CARRY((\inst2|counter\(3) & !\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X46_Y50_N2
\inst2|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~1_combout\ = (!\inst2|Add0~6_combout\ & (((!\inst2|Equal0~0_combout\) # (!\inst2|Equal0~1_combout\)) # (!\inst2|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|counter\(8),
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|counter~1_combout\);

-- Location: FF_X46_Y50_N3
\inst2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(3));

-- Location: LCCOMB_X46_Y50_N14
\inst2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|counter\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|counter\(4) & ((GND) # (!\inst2|Add0~7\)))
-- \inst2|Add0~9\ = CARRY((!\inst2|Add0~7\) # (!\inst2|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X47_Y50_N2
\inst2|counter[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter[4]~5_combout\ = !\inst2|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|counter[4]~5_combout\);

-- Location: FF_X47_Y50_N3
\inst2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(4));

-- Location: LCCOMB_X46_Y50_N16
\inst2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|counter\(5) & (!\inst2|Add0~9\)) # (!\inst2|counter\(5) & (\inst2|Add0~9\ & VCC))
-- \inst2|Add0~11\ = CARRY((\inst2|counter\(5) & !\inst2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X46_Y50_N28
\inst2|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~2_combout\ = (!\inst2|Add0~10_combout\ & (((!\inst2|counter\(8)) # (!\inst2|Equal0~1_combout\)) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|counter\(8),
	combout => \inst2|counter~2_combout\);

-- Location: FF_X46_Y50_N29
\inst2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(5));

-- Location: LCCOMB_X46_Y50_N18
\inst2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|counter\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|counter\(6) & ((GND) # (!\inst2|Add0~11\)))
-- \inst2|Add0~13\ = CARRY((!\inst2|Add0~11\) # (!\inst2|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X46_Y50_N26
\inst2|counter[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter[6]~11_combout\ = !\inst2|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|counter[6]~11_combout\);

-- Location: FF_X46_Y50_N27
\inst2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(6));

-- Location: LCCOMB_X46_Y50_N20
\inst2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|counter\(7) & (!\inst2|Add0~13\)) # (!\inst2|counter\(7) & (\inst2|Add0~13\ & VCC))
-- \inst2|Add0~15\ = CARRY((\inst2|counter\(7) & !\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X47_Y50_N0
\inst2|counter[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter[7]~12_combout\ = !\inst2|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|counter[7]~12_combout\);

-- Location: FF_X47_Y50_N1
\inst2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(7));

-- Location: LCCOMB_X47_Y50_N4
\inst2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|counter\(6) & (!\inst2|counter\(7) & (\inst2|counter\(1) & \inst2|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(6),
	datab => \inst2|counter\(7),
	datac => \inst2|counter\(1),
	datad => \inst2|counter\(3),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y50_N4
\inst2|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~4_combout\ = (!\inst2|Add0~0_combout\ & (((!\inst2|Equal0~0_combout\) # (!\inst2|Equal0~1_combout\)) # (!\inst2|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst2|counter\(8),
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|counter~4_combout\);

-- Location: FF_X46_Y50_N5
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LCCOMB_X46_Y50_N8
\inst2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|counter\(1) & (!\inst2|Add0~1\)) # (!\inst2|counter\(1) & (\inst2|Add0~1\ & VCC))
-- \inst2|Add0~3\ = CARRY((\inst2|counter\(1) & !\inst2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X46_Y50_N0
\inst2|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~0_combout\ = (!\inst2|Add0~2_combout\ & (((!\inst2|Equal0~0_combout\) # (!\inst2|counter\(8))) # (!\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|counter\(8),
	datac => \inst2|Add0~2_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|counter~0_combout\);

-- Location: FF_X46_Y50_N1
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: LCCOMB_X45_Y50_N16
\inst2|counter[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter[2]~6_combout\ = !\inst2|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~4_combout\,
	combout => \inst2|counter[2]~6_combout\);

-- Location: FF_X45_Y50_N17
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: LCCOMB_X46_Y50_N30
\inst2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|counter\(2) & (\inst2|counter\(5) & (!\inst2|counter\(0) & !\inst2|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(5),
	datac => \inst2|counter\(0),
	datad => \inst2|counter\(4),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y50_N22
\inst2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = \inst2|Add0~15\ $ (!\inst2|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|counter\(8),
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\);

-- Location: LCCOMB_X46_Y50_N24
\inst2|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~3_combout\ = (!\inst2|Add0~16_combout\ & (((!\inst2|Equal0~0_combout\) # (!\inst2|counter\(8))) # (!\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|counter\(8),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|counter~3_combout\);

-- Location: FF_X46_Y50_N25
\inst2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(8));

-- Location: LCCOMB_X47_Y50_N10
\inst2|PWM_SVmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|PWM_SVmot~0_combout\ = (!\inst2|counter\(8) & (!\inst2|counter\(6) & !\inst2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(8),
	datac => \inst2|counter\(6),
	datad => \inst2|counter\(7),
	combout => \inst2|PWM_SVmot~0_combout\);

-- Location: LCCOMB_X47_Y50_N16
\inst2|innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|innercounter~2_combout\ = (\inst2|innercounter\(0) & (((!\inst2|innercounter\(1))))) # (!\inst2|innercounter\(0) & (\inst2|innercounter\(1) & ((!\inst2|innercounter\(2)) # (!\inst2|innercounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|innercounter\(0),
	datab => \inst2|innercounter\(3),
	datac => \inst2|innercounter\(1),
	datad => \inst2|innercounter\(2),
	combout => \inst2|innercounter~2_combout\);

-- Location: LCCOMB_X47_Y50_N12
\inst2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|counter\(2) & (\inst2|counter\(1) & \inst2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(2),
	datac => \inst2|counter\(1),
	datad => \inst2|counter\(3),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y50_N20
\inst2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|counter\(5)) # ((\inst2|counter\(4)) # ((\inst2|LessThan0~0_combout\ & \inst2|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~0_combout\,
	datab => \inst2|counter\(5),
	datac => \inst2|counter\(0),
	datad => \inst2|counter\(4),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y50_N22
\inst2|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (!\inst2|counter\(5) & ((!\inst2|counter\(4)) # (!\inst2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~0_combout\,
	datab => \inst2|counter\(5),
	datad => \inst2|counter\(4),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X47_Y50_N30
\inst2|innercounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|innercounter[3]~1_combout\ = (\inst2|LessThan0~1_combout\ & (\inst2|LessThan1~0_combout\ & \inst2|PWM_SVmot~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~1_combout\,
	datac => \inst2|LessThan1~0_combout\,
	datad => \inst2|PWM_SVmot~0_combout\,
	combout => \inst2|innercounter[3]~1_combout\);

-- Location: FF_X47_Y50_N17
\inst2|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|innercounter~2_combout\,
	ena => \inst2|innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|innercounter\(1));

-- Location: LCCOMB_X47_Y50_N6
\inst2|innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|innercounter~0_combout\ = (\inst2|innercounter\(0) & ((\inst2|innercounter\(2) $ (\inst2|innercounter\(1))))) # (!\inst2|innercounter\(0) & (\inst2|innercounter\(2) & ((!\inst2|innercounter\(1)) # (!\inst2|innercounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|innercounter\(0),
	datab => \inst2|innercounter\(3),
	datac => \inst2|innercounter\(2),
	datad => \inst2|innercounter\(1),
	combout => \inst2|innercounter~0_combout\);

-- Location: FF_X47_Y50_N7
\inst2|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|innercounter~0_combout\,
	ena => \inst2|innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|innercounter\(2));

-- Location: LCCOMB_X47_Y50_N26
\inst2|innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|innercounter~3_combout\ = (!\inst2|innercounter\(0) & (((!\inst2|innercounter\(1)) # (!\inst2|innercounter\(3))) # (!\inst2|innercounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|innercounter\(2),
	datab => \inst2|innercounter\(3),
	datac => \inst2|innercounter\(0),
	datad => \inst2|innercounter\(1),
	combout => \inst2|innercounter~3_combout\);

-- Location: FF_X47_Y50_N27
\inst2|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|innercounter~3_combout\,
	ena => \inst2|innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|innercounter\(0));

-- Location: LCCOMB_X47_Y50_N8
\inst2|innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|innercounter~4_combout\ = (\inst2|innercounter\(1) & ((\inst2|innercounter\(3) & ((!\inst2|innercounter\(2)))) # (!\inst2|innercounter\(3) & (\inst2|innercounter\(0) & \inst2|innercounter\(2))))) # (!\inst2|innercounter\(1) & 
-- (((\inst2|innercounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|innercounter\(0),
	datab => \inst2|innercounter\(1),
	datac => \inst2|innercounter\(3),
	datad => \inst2|innercounter\(2),
	combout => \inst2|innercounter~4_combout\);

-- Location: FF_X47_Y50_N9
\inst2|innercounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|innercounter~4_combout\,
	ena => \inst2|innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|innercounter\(3));

-- Location: IOIBUF_X51_Y54_N1
\Svmot_anglev[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Svmot_anglev(2),
	o => \Svmot_anglev[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\Svmot_anglev[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Svmot_anglev(1),
	o => \Svmot_anglev[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\Svmot_anglev[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Svmot_anglev(0),
	o => \Svmot_anglev[0]~input_o\);

-- Location: LCCOMB_X47_Y50_N28
\inst2|PWM_SVmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|PWM_SVmot~1_combout\ = (\Svmot_anglev[1]~input_o\ & ((\inst2|innercounter\(0)) # ((\Svmot_anglev[0]~input_o\) # (\inst2|innercounter\(1))))) # (!\Svmot_anglev[1]~input_o\ & (\inst2|innercounter\(1) & ((\inst2|innercounter\(0)) # 
-- (\Svmot_anglev[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|innercounter\(0),
	datab => \Svmot_anglev[1]~input_o\,
	datac => \Svmot_anglev[0]~input_o\,
	datad => \inst2|innercounter\(1),
	combout => \inst2|PWM_SVmot~1_combout\);

-- Location: LCCOMB_X47_Y50_N14
\inst2|PWM_SVmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|PWM_SVmot~2_combout\ = (\Svmot_anglev[2]~input_o\ & (!\inst2|PWM_SVmot~1_combout\ & !\inst2|innercounter\(2))) # (!\Svmot_anglev[2]~input_o\ & ((!\inst2|innercounter\(2)) # (!\inst2|PWM_SVmot~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Svmot_anglev[2]~input_o\,
	datab => \inst2|PWM_SVmot~1_combout\,
	datad => \inst2|innercounter\(2),
	combout => \inst2|PWM_SVmot~2_combout\);

-- Location: IOIBUF_X54_Y54_N29
\Svmot_anglev[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Svmot_anglev(3),
	o => \Svmot_anglev[3]~input_o\);

-- Location: LCCOMB_X47_Y50_N18
\inst2|PWM_SVmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|PWM_SVmot~3_combout\ = (\inst2|innercounter\(3) & ((\Svmot_anglev[3]~input_o\) # (!\inst2|PWM_SVmot~2_combout\))) # (!\inst2|innercounter\(3) & (!\inst2|PWM_SVmot~2_combout\ & \Svmot_anglev[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|innercounter\(3),
	datac => \inst2|PWM_SVmot~2_combout\,
	datad => \Svmot_anglev[3]~input_o\,
	combout => \inst2|PWM_SVmot~3_combout\);

-- Location: LCCOMB_X47_Y50_N24
\inst2|PWM_SVmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|PWM_SVmot~4_combout\ = (\inst2|PWM_SVmot~0_combout\ & (((!\inst2|PWM_SVmot~3_combout\ & \inst2|LessThan1~0_combout\)) # (!\inst2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PWM_SVmot~0_combout\,
	datab => \inst2|PWM_SVmot~3_combout\,
	datac => \inst2|LessThan1~0_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|PWM_SVmot~4_combout\);

-- Location: FF_X47_Y50_N25
\inst2|PWM_SVmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|PWM_SVmot~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PWM_SVmot~q\);

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


