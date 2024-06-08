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

-- DATE "06/04/2024 19:27:21"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SVmot_angle_cntrl IS
    PORT (
	CLK2 : IN std_logic;
	Svmot_anglev : IN std_logic_vector(3 DOWNTO 0);
	PWM_SVmot : OUT std_logic
	);
END SVmot_angle_cntrl;

-- Design Ports Information
-- PWM_SVmot	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK2	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SVmot_angle_cntrl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK2 : std_logic;
SIGNAL ww_Svmot_anglev : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PWM_SVmot : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \PWM_SVmot~output_o\ : std_logic;
SIGNAL \CLK2~input_o\ : std_logic;
SIGNAL \CLK2~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \PWM_SVmot~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Svmot_anglev[0]~input_o\ : std_logic;
SIGNAL \Svmot_anglev[3]~input_o\ : std_logic;
SIGNAL \Svmot_anglev[1]~input_o\ : std_logic;
SIGNAL \Svmot_anglev[2]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \PWM_SVmot~8_combout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \innercounter~2_combout\ : std_logic;
SIGNAL \innercounter[3]~1_combout\ : std_logic;
SIGNAL \innercounter~3_combout\ : std_logic;
SIGNAL \innercounter~4_combout\ : std_logic;
SIGNAL \innercounter~0_combout\ : std_logic;
SIGNAL \PWM_SVmot~4_combout\ : std_logic;
SIGNAL \PWM_SVmot~5_combout\ : std_logic;
SIGNAL \PWM_SVmot~6_combout\ : std_logic;
SIGNAL \PWM_SVmot~7_combout\ : std_logic;
SIGNAL \PWM_SVmot~1_combout\ : std_logic;
SIGNAL \PWM_SVmot~2_combout\ : std_logic;
SIGNAL \PWM_SVmot~3_combout\ : std_logic;
SIGNAL \PWM_SVmot~9_combout\ : std_logic;
SIGNAL \PWM_SVmot~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(10 DOWNTO 0);
SIGNAL innercounter : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK2 <= CLK2;
ww_Svmot_anglev <= Svmot_anglev;
PWM_SVmot <= ww_PWM_SVmot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK2~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X78_Y33_N23
\PWM_SVmot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_SVmot~reg0_q\,
	devoe => ww_devoe,
	o => \PWM_SVmot~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK2,
	o => \CLK2~input_o\);

-- Location: CLKCTRL_G3
\CLK2~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK2~inputclkctrl_outclk\);

-- Location: LCCOMB_X75_Y34_N8
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X75_Y34_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X75_Y34_N10
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X75_Y34_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X75_Y34_N12
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X75_Y34_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X75_Y34_N14
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X75_Y34_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X75_Y34_N16
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X75_Y34_N6
\counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~8_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~8_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X75_Y34_N7
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X76_Y34_N8
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(2) & (!counter(4) & (counter(5) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => counter(5),
	datad => counter(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X75_Y34_N18
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X75_Y34_N4
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~10_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~10_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X75_Y34_N5
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X75_Y34_N20
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X75_Y34_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X75_Y34_N22
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X75_Y34_N24
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X75_Y34_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X75_Y34_N26
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X75_Y34_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X76_Y34_N10
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(0) & (!counter(8) & (!counter(9) & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(8),
	datac => counter(9),
	datad => counter(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X75_Y34_N30
\counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~14_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal0~1_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X75_Y34_N31
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X76_Y34_N6
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(7) & (counter(10) & !counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datac => counter(10),
	datad => counter(6),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X75_Y34_N28
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = counter(10) $ (!\Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	cin => \Add0~19\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X75_Y34_N0
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~20_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~20_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X75_Y34_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X76_Y34_N0
\PWM_SVmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~0_combout\ = (!counter(10) & (!counter(9) & !counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datac => counter(9),
	datad => counter(8),
	combout => \PWM_SVmot~0_combout\);

-- Location: LCCOMB_X75_Y34_N2
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (counter(7)) # ((counter(6) & ((counter(5)) # (counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(5),
	datad => counter(4),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X76_Y34_N14
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (counter(3) & ((counter(2)) # ((counter(0) & counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(3),
	datad => counter(1),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X77_Y34_N24
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~0_combout\) # ((counter(6) & \LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: IOIBUF_X78_Y34_N23
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

-- Location: IOIBUF_X78_Y34_N1
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

-- Location: IOIBUF_X78_Y34_N15
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

-- Location: IOIBUF_X78_Y34_N8
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

-- Location: LCCOMB_X77_Y34_N10
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\Svmot_anglev[0]~input_o\ & (!\Svmot_anglev[3]~input_o\ & (\Svmot_anglev[1]~input_o\ & \Svmot_anglev[2]~input_o\))) # (!\Svmot_anglev[0]~input_o\ & (\Svmot_anglev[3]~input_o\ & (!\Svmot_anglev[1]~input_o\ & 
-- !\Svmot_anglev[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Svmot_anglev[0]~input_o\,
	datab => \Svmot_anglev[3]~input_o\,
	datac => \Svmot_anglev[1]~input_o\,
	datad => \Svmot_anglev[2]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X76_Y34_N30
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (((!counter(3) & !counter(4))) # (!counter(6))) # (!counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(4),
	datac => counter(5),
	datad => counter(6),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X76_Y34_N24
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!counter(0) & (!counter(2) & (!counter(4) & !counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(4),
	datad => counter(1),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X76_Y34_N16
\PWM_SVmot~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~8_combout\ = (!counter(7) & (!\process_0~0_combout\ & ((\LessThan3~1_combout\) # (\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \process_0~0_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~0_combout\,
	combout => \PWM_SVmot~8_combout\);

-- Location: LCCOMB_X77_Y34_N28
\flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = \flag~q\ $ (((\PWM_SVmot~0_combout\ & (\LessThan2~2_combout\ & \PWM_SVmot~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_SVmot~0_combout\,
	datab => \LessThan2~2_combout\,
	datac => \flag~q\,
	datad => \PWM_SVmot~8_combout\,
	combout => \flag~0_combout\);

-- Location: FF_X77_Y34_N29
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: LCCOMB_X77_Y34_N0
\innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~2_combout\ = (!innercounter(0) & (((!innercounter(1)) # (!innercounter(3))) # (!innercounter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(2),
	datab => innercounter(3),
	datac => innercounter(0),
	datad => innercounter(1),
	combout => \innercounter~2_combout\);

-- Location: LCCOMB_X77_Y34_N14
\innercounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter[3]~1_combout\ = (\PWM_SVmot~0_combout\ & (!\flag~q\ & (\PWM_SVmot~8_combout\ & \LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_SVmot~0_combout\,
	datab => \flag~q\,
	datac => \PWM_SVmot~8_combout\,
	datad => \LessThan2~2_combout\,
	combout => \innercounter[3]~1_combout\);

-- Location: FF_X77_Y34_N1
\innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \innercounter~2_combout\,
	ena => \innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => innercounter(0));

-- Location: LCCOMB_X77_Y34_N26
\innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~3_combout\ = (innercounter(0) & (((!innercounter(1))))) # (!innercounter(0) & (innercounter(1) & ((!innercounter(3)) # (!innercounter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(2),
	datab => innercounter(0),
	datac => innercounter(1),
	datad => innercounter(3),
	combout => \innercounter~3_combout\);

-- Location: FF_X77_Y34_N27
\innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \innercounter~3_combout\,
	ena => \innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => innercounter(1));

-- Location: LCCOMB_X77_Y34_N30
\innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~4_combout\ = (innercounter(1) & ((innercounter(0) & (!innercounter(2))) # (!innercounter(0) & (innercounter(2) & !innercounter(3))))) # (!innercounter(1) & (((innercounter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(1),
	datab => innercounter(0),
	datac => innercounter(2),
	datad => innercounter(3),
	combout => \innercounter~4_combout\);

-- Location: FF_X77_Y34_N31
\innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \innercounter~4_combout\,
	ena => \innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => innercounter(2));

-- Location: LCCOMB_X77_Y34_N22
\innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~0_combout\ = (innercounter(2) & ((innercounter(3) & ((!innercounter(1)))) # (!innercounter(3) & (innercounter(0) & innercounter(1))))) # (!innercounter(2) & (((innercounter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(2),
	datab => innercounter(0),
	datac => innercounter(3),
	datad => innercounter(1),
	combout => \innercounter~0_combout\);

-- Location: FF_X77_Y34_N23
\innercounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \innercounter~0_combout\,
	ena => \innercounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => innercounter(3));

-- Location: LCCOMB_X77_Y34_N16
\PWM_SVmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~4_combout\ = (\Svmot_anglev[1]~input_o\ & (((\Svmot_anglev[0]~input_o\ & !innercounter(0))) # (!innercounter(1)))) # (!\Svmot_anglev[1]~input_o\ & (\Svmot_anglev[0]~input_o\ & (!innercounter(1) & !innercounter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Svmot_anglev[0]~input_o\,
	datab => \Svmot_anglev[1]~input_o\,
	datac => innercounter(1),
	datad => innercounter(0),
	combout => \PWM_SVmot~4_combout\);

-- Location: LCCOMB_X77_Y34_N20
\PWM_SVmot~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~5_combout\ = (\Svmot_anglev[2]~input_o\ & ((\PWM_SVmot~4_combout\) # (!innercounter(2)))) # (!\Svmot_anglev[2]~input_o\ & (!innercounter(2) & \PWM_SVmot~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Svmot_anglev[2]~input_o\,
	datac => innercounter(2),
	datad => \PWM_SVmot~4_combout\,
	combout => \PWM_SVmot~5_combout\);

-- Location: LCCOMB_X77_Y34_N18
\PWM_SVmot~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~6_combout\ = (\Svmot_anglev[3]~input_o\ & ((\PWM_SVmot~5_combout\) # (!innercounter(3)))) # (!\Svmot_anglev[3]~input_o\ & (!innercounter(3) & \PWM_SVmot~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Svmot_anglev[3]~input_o\,
	datac => innercounter(3),
	datad => \PWM_SVmot~5_combout\,
	combout => \PWM_SVmot~6_combout\);

-- Location: LCCOMB_X77_Y34_N8
\PWM_SVmot~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~7_combout\ = (\flag~q\ & (\PWM_SVmot~reg0_q\)) # (!\flag~q\ & ((\PWM_SVmot~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_SVmot~reg0_q\,
	datab => \flag~q\,
	datad => \PWM_SVmot~6_combout\,
	combout => \PWM_SVmot~7_combout\);

-- Location: LCCOMB_X76_Y34_N18
\PWM_SVmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~1_combout\ = (((!counter(2) & !counter(1))) # (!counter(3))) # (!counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \PWM_SVmot~1_combout\);

-- Location: LCCOMB_X76_Y34_N4
\PWM_SVmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~2_combout\ = (!counter(7) & (((!counter(5) & \PWM_SVmot~1_combout\)) # (!counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(5),
	datad => \PWM_SVmot~1_combout\,
	combout => \PWM_SVmot~2_combout\);

-- Location: LCCOMB_X77_Y34_N6
\PWM_SVmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~3_combout\ = (\process_0~0_combout\ & (\PWM_SVmot~2_combout\)) # (!\process_0~0_combout\ & ((!\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \PWM_SVmot~2_combout\,
	datad => \LessThan2~2_combout\,
	combout => \PWM_SVmot~3_combout\);

-- Location: LCCOMB_X77_Y34_N12
\PWM_SVmot~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~9_combout\ = (\PWM_SVmot~0_combout\ & ((\PWM_SVmot~3_combout\) # ((\PWM_SVmot~7_combout\ & \PWM_SVmot~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_SVmot~0_combout\,
	datab => \PWM_SVmot~7_combout\,
	datac => \PWM_SVmot~8_combout\,
	datad => \PWM_SVmot~3_combout\,
	combout => \PWM_SVmot~9_combout\);

-- Location: FF_X77_Y34_N13
\PWM_SVmot~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \PWM_SVmot~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_SVmot~reg0_q\);

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

ww_PWM_SVmot <= \PWM_SVmot~output_o\;
END structure;


