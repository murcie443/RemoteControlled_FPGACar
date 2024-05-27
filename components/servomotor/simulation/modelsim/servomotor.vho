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

-- DATE "05/27/2024 17:41:05"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	servomotor IS
    PORT (
	CLK2 : IN std_logic;
	Svmot_anglev : IN std_logic_vector(3 DOWNTO 0);
	PWM_SVmot : OUT std_logic
	);
END servomotor;

-- Design Ports Information
-- PWM_SVmot	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Svmot_anglev[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK2	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF servomotor IS
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
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter[2]~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter[4]~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter[6]~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter[7]~12_combout\ : std_logic;
SIGNAL \PWM_SVmot~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \innercounter~3_combout\ : std_logic;
SIGNAL \innercounter[3]~1_combout\ : std_logic;
SIGNAL \innercounter~0_combout\ : std_logic;
SIGNAL \innercounter~2_combout\ : std_logic;
SIGNAL \innercounter~4_combout\ : std_logic;
SIGNAL \Svmot_anglev[2]~input_o\ : std_logic;
SIGNAL \Svmot_anglev[1]~input_o\ : std_logic;
SIGNAL \Svmot_anglev[0]~input_o\ : std_logic;
SIGNAL \PWM_SVmot~1_combout\ : std_logic;
SIGNAL \PWM_SVmot~2_combout\ : std_logic;
SIGNAL \Svmot_anglev[3]~input_o\ : std_logic;
SIGNAL \PWM_SVmot~3_combout\ : std_logic;
SIGNAL \PWM_SVmot~4_combout\ : std_logic;
SIGNAL \PWM_SVmot~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(8 DOWNTO 0);
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

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X22_Y39_N16
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

-- Location: LCCOMB_X22_Y38_N12
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (GND)
-- \Add0~1\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X22_Y38_N14
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & (\Add0~1\ & VCC))
-- \Add0~3\ = CARRY((counter(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y38_N20
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (!\Add0~2_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => counter(8),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X23_Y38_N21
\counter[1]\ : dffeas
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
	q => counter(1));

-- Location: LCCOMB_X22_Y38_N16
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & ((GND) # (!\Add0~3\)))
-- \Add0~5\ = CARRY((!\Add0~3\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X23_Y38_N14
\counter[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~6_combout\ = !\Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	combout => \counter[2]~6_combout\);

-- Location: FF_X23_Y38_N15
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X22_Y38_N18
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & (\Add0~5\ & VCC))
-- \Add0~7\ = CARRY((counter(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X22_Y38_N2
\counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (!\Add0~6_combout\ & (((!\Equal0~1_combout\) # (!counter(8))) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => counter(8),
	datac => \Equal0~1_combout\,
	datad => \Add0~6_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X22_Y38_N3
\counter[3]\ : dffeas
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
	q => counter(3));

-- Location: LCCOMB_X23_Y38_N2
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(6) & (counter(1) & (!counter(7) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(1),
	datac => counter(7),
	datad => counter(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y38_N26
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & (\Add0~13\ & VCC))
-- \Add0~15\ = CARRY((counter(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X22_Y38_N28
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \Add0~15\ $ (!counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(8),
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X22_Y38_N30
\counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (!\Add0~16_combout\ & (((!counter(8)) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => counter(8),
	datad => \Add0~16_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X22_Y38_N31
\counter[8]\ : dffeas
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
	q => counter(8));

-- Location: LCCOMB_X22_Y38_N10
\counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (!\Add0~0_combout\ & (((!\Equal0~0_combout\) # (!counter(8))) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => counter(8),
	datac => \Add0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X22_Y38_N11
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X22_Y38_N20
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & ((GND) # (!\Add0~7\)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X22_Y38_N8
\counter[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~5_combout\ = !\Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \counter[4]~5_combout\);

-- Location: FF_X22_Y38_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X23_Y38_N4
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(0) & (!counter(2) & (counter(5) & !counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(5),
	datad => counter(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y38_N22
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & (\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((counter(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X22_Y38_N0
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (!\Add0~10_combout\ & (((!\Equal0~0_combout\) # (!counter(8))) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => counter(8),
	datac => \Add0~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X22_Y38_N1
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

-- Location: LCCOMB_X22_Y38_N24
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & ((GND) # (!\Add0~11\)))
-- \Add0~13\ = CARRY((!\Add0~11\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X22_Y38_N4
\counter[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~11_combout\ = !\Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~12_combout\,
	combout => \counter[6]~11_combout\);

-- Location: FF_X22_Y38_N5
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X22_Y38_N6
\counter[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~12_combout\ = !\Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \counter[7]~12_combout\);

-- Location: FF_X22_Y38_N7
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X21_Y38_N24
\PWM_SVmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~0_combout\ = (!counter(7) & (!counter(8) & !counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datac => counter(8),
	datad => counter(6),
	combout => \PWM_SVmot~0_combout\);

-- Location: LCCOMB_X23_Y38_N10
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter(1) & (counter(2) & counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(2),
	datad => counter(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y38_N16
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!counter(5) & ((!\LessThan0~0_combout\) # (!counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datac => counter(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y38_N26
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter(4)) # ((counter(5)) # ((counter(0) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(0),
	datac => counter(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y38_N28
\innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~3_combout\ = (!innercounter(0) & (((!innercounter(3)) # (!innercounter(2))) # (!innercounter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(1),
	datab => innercounter(2),
	datac => innercounter(0),
	datad => innercounter(3),
	combout => \innercounter~3_combout\);

-- Location: LCCOMB_X23_Y38_N18
\innercounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter[3]~1_combout\ = (\LessThan1~0_combout\ & (\LessThan0~1_combout\ & \PWM_SVmot~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \PWM_SVmot~0_combout\,
	combout => \innercounter[3]~1_combout\);

-- Location: FF_X23_Y38_N29
\innercounter[0]\ : dffeas
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
	q => innercounter(0));

-- Location: LCCOMB_X23_Y38_N24
\innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~0_combout\ = (innercounter(1) & ((innercounter(0) & (!innercounter(2))) # (!innercounter(0) & (innercounter(2) & !innercounter(3))))) # (!innercounter(1) & (((innercounter(2)))))

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
	combout => \innercounter~0_combout\);

-- Location: FF_X23_Y38_N25
\innercounter[2]\ : dffeas
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
	q => innercounter(2));

-- Location: LCCOMB_X23_Y38_N22
\innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~2_combout\ = (innercounter(1) & (!innercounter(0) & ((!innercounter(2)) # (!innercounter(3))))) # (!innercounter(1) & (((innercounter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(3),
	datab => innercounter(2),
	datac => innercounter(1),
	datad => innercounter(0),
	combout => \innercounter~2_combout\);

-- Location: FF_X23_Y38_N23
\innercounter[1]\ : dffeas
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
	q => innercounter(1));

-- Location: LCCOMB_X23_Y38_N6
\innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~4_combout\ = (innercounter(1) & ((innercounter(2) & (!innercounter(3) & innercounter(0))) # (!innercounter(2) & (innercounter(3))))) # (!innercounter(1) & (((innercounter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(1),
	datab => innercounter(2),
	datac => innercounter(3),
	datad => innercounter(0),
	combout => \innercounter~4_combout\);

-- Location: FF_X23_Y38_N7
\innercounter[3]\ : dffeas
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
	q => innercounter(3));

-- Location: IOIBUF_X24_Y39_N15
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

-- Location: IOIBUF_X24_Y39_N1
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

-- Location: IOIBUF_X24_Y39_N22
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

-- Location: LCCOMB_X23_Y38_N30
\PWM_SVmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~1_combout\ = (\Svmot_anglev[1]~input_o\ & ((\Svmot_anglev[0]~input_o\) # ((innercounter(1)) # (innercounter(0))))) # (!\Svmot_anglev[1]~input_o\ & (innercounter(1) & ((\Svmot_anglev[0]~input_o\) # (innercounter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Svmot_anglev[1]~input_o\,
	datab => \Svmot_anglev[0]~input_o\,
	datac => innercounter(1),
	datad => innercounter(0),
	combout => \PWM_SVmot~1_combout\);

-- Location: LCCOMB_X23_Y38_N8
\PWM_SVmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~2_combout\ = (\Svmot_anglev[2]~input_o\ & (!\PWM_SVmot~1_combout\ & !innercounter(2))) # (!\Svmot_anglev[2]~input_o\ & ((!innercounter(2)) # (!\PWM_SVmot~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Svmot_anglev[2]~input_o\,
	datac => \PWM_SVmot~1_combout\,
	datad => innercounter(2),
	combout => \PWM_SVmot~2_combout\);

-- Location: IOIBUF_X24_Y39_N29
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

-- Location: LCCOMB_X23_Y38_N12
\PWM_SVmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~3_combout\ = (innercounter(3) & ((\Svmot_anglev[3]~input_o\) # (!\PWM_SVmot~2_combout\))) # (!innercounter(3) & (!\PWM_SVmot~2_combout\ & \Svmot_anglev[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(3),
	datac => \PWM_SVmot~2_combout\,
	datad => \Svmot_anglev[3]~input_o\,
	combout => \PWM_SVmot~3_combout\);

-- Location: LCCOMB_X23_Y38_N0
\PWM_SVmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_SVmot~4_combout\ = (\PWM_SVmot~0_combout\ & (((\LessThan1~0_combout\ & !\PWM_SVmot~3_combout\)) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_SVmot~0_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \PWM_SVmot~3_combout\,
	combout => \PWM_SVmot~4_combout\);

-- Location: FF_X23_Y38_N1
\PWM_SVmot~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2~inputclkctrl_outclk\,
	d => \PWM_SVmot~4_combout\,
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


