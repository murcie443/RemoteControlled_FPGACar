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

-- DATE "05/29/2024 22:26:12"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	DCmot_PWM_cntrl IS
    PORT (
	CLK1 : IN std_logic;
	DCmot_speedv : IN std_logic_vector(2 DOWNTO 0);
	PWM_DCmot : OUT std_logic
	);
END DCmot_PWM_cntrl;

-- Design Ports Information
-- PWM_DCmot	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DCmot_speedv[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DCmot_speedv[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DCmot_speedv[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK1	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DCmot_PWM_cntrl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_DCmot_speedv : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PWM_DCmot : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \PWM_DCmot~output_o\ : std_logic;
SIGNAL \CLK1~input_o\ : std_logic;
SIGNAL \CLK1~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \PWM_DCmot~4_combout\ : std_logic;
SIGNAL \PWM_DCmot~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \PWM_DCmot~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \innercounter~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \flag[0]~2_combout\ : std_logic;
SIGNAL \innercounter[2]~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \flag~1_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \innercounter[2]~1_combout\ : std_logic;
SIGNAL \innercounter~3_combout\ : std_logic;
SIGNAL \innercounter~0_combout\ : std_logic;
SIGNAL \DCmot_speedv[2]~input_o\ : std_logic;
SIGNAL \DCmot_speedv[1]~input_o\ : std_logic;
SIGNAL \DCmot_speedv[0]~input_o\ : std_logic;
SIGNAL \PWM_DCmot~0_combout\ : std_logic;
SIGNAL \PWM_DCmot~1_combout\ : std_logic;
SIGNAL \PWM_DCmot~2_combout\ : std_logic;
SIGNAL \PWM_DCmot~6_combout\ : std_logic;
SIGNAL \PWM_DCmot~reg0_q\ : std_logic;
SIGNAL innercounter : std_logic_vector(2 DOWNTO 0);
SIGNAL flag : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(13 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK1 <= CLK1;
ww_DCmot_speedv <= DCmot_speedv;
PWM_DCmot <= ww_PWM_DCmot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK1~input_o\);
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

-- Location: IOOBUF_X22_Y39_N23
\PWM_DCmot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_DCmot~reg0_q\,
	devoe => ww_devoe,
	o => \PWM_DCmot~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK1,
	o => \CLK1~input_o\);

-- Location: CLKCTRL_G3
\CLK1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK1~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y37_N0
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

-- Location: FF_X18_Y37_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X18_Y37_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X18_Y37_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X18_Y37_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X18_Y37_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X18_Y37_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X18_Y37_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X18_Y37_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y37_N4
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~8_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X19_Y37_N5
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X18_Y37_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X18_Y37_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X18_Y37_N12
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

-- Location: FF_X18_Y37_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X18_Y37_N14
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

-- Location: FF_X18_Y37_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X18_Y37_N16
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

-- Location: LCCOMB_X17_Y37_N6
\counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (!\Equal0~4_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datad => \Add0~16_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X17_Y37_N7
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X18_Y37_N18
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

-- Location: LCCOMB_X18_Y37_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X17_Y37_N28
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~20_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X17_Y37_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X18_Y37_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X18_Y37_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X18_Y37_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X18_Y37_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X18_Y37_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \Add0~25\ $ (counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(13),
	cin => \Add0~25\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X18_Y37_N28
\counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~26_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X18_Y37_N29
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X17_Y37_N30
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(8) & (counter(9) & (!counter(12) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(12),
	datad => counter(11),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X19_Y37_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(7) & (!counter(4) & (!counter(6) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(4),
	datac => counter(6),
	datad => counter(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y37_N24
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(0) & (counter(2) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y37_N14
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(3) & (\Equal0~0_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y37_N12
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (counter(13) & (counter(10) & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(10),
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y37_N20
\counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (!\Equal0~4_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datad => \Add0~18_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X17_Y37_N21
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X19_Y37_N28
\PWM_DCmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_DCmot~4_combout\ = (!counter(9) & (!counter(11) & (!counter(8) & !counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(11),
	datac => counter(8),
	datad => counter(12),
	combout => \PWM_DCmot~4_combout\);

-- Location: LCCOMB_X19_Y37_N30
\PWM_DCmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_DCmot~3_combout\ = (!counter(7) & (!counter(13) & !counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(13),
	datad => counter(10),
	combout => \PWM_DCmot~3_combout\);

-- Location: LCCOMB_X18_Y37_N30
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!counter(1) & !counter(0))) # (!counter(2))) # (!counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(2),
	datad => counter(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y37_N6
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((!counter(5) & (!counter(4) & \LessThan1~0_combout\))) # (!counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(6),
	datac => counter(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y37_N10
\PWM_DCmot~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_DCmot~5_combout\ = (\PWM_DCmot~4_combout\ & (\PWM_DCmot~3_combout\ & \LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM_DCmot~4_combout\,
	datac => \PWM_DCmot~3_combout\,
	datad => \LessThan1~1_combout\,
	combout => \PWM_DCmot~5_combout\);

-- Location: LCCOMB_X19_Y37_N8
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(9) & !counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(9),
	datad => counter(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y37_N26
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Equal0~0_combout\ & (!counter(3) & (\LessThan0~0_combout\ & !\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => counter(3),
	datac => \LessThan0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y37_N2
\innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~2_combout\ = (innercounter(0) & (!innercounter(1))) # (!innercounter(0) & (innercounter(1) & !innercounter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => innercounter(0),
	datac => innercounter(1),
	datad => innercounter(2),
	combout => \innercounter~2_combout\);

-- Location: LCCOMB_X20_Y38_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = flag(0) $ (GND)
-- \Add2~1\ = CARRY(!flag(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y38_N0
\flag[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flag[0]~2_combout\ = !\Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \flag[0]~2_combout\);

-- Location: LCCOMB_X19_Y37_N0
\innercounter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter[2]~4_combout\ = (\PWM_DCmot~5_combout\ & ((counter(10)) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datac => \LessThan0~1_combout\,
	datad => \PWM_DCmot~5_combout\,
	combout => \innercounter[2]~4_combout\);

-- Location: FF_X20_Y38_N7
\flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	asdata => \flag[0]~2_combout\,
	sload => VCC,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(0));

-- Location: LCCOMB_X20_Y38_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (flag(1) & (\Add2~1\ & VCC)) # (!flag(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!flag(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X19_Y38_N6
\flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (\Add2~2_combout\) # ((\Equal1~9_combout\ & \Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~9_combout\,
	datac => \Equal1~4_combout\,
	datad => \Add2~2_combout\,
	combout => \flag~0_combout\);

-- Location: FF_X19_Y38_N7
\flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \flag~0_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(1));

-- Location: LCCOMB_X20_Y38_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (flag(2) & ((GND) # (!\Add2~3\))) # (!flag(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((flag(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X20_Y38_N5
\flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(2));

-- Location: LCCOMB_X19_Y38_N22
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!flag(1) & (!flag(3) & (!flag(0) & !flag(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(1),
	datab => flag(3),
	datac => flag(0),
	datad => flag(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X19_Y38_N4
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!flag(4) & (!flag(7) & (!flag(6) & !flag(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(4),
	datab => flag(7),
	datac => flag(6),
	datad => flag(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X19_Y38_N8
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!flag(15) & (!flag(14) & (!flag(12) & !flag(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(15),
	datab => flag(14),
	datac => flag(12),
	datad => flag(13),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X19_Y38_N10
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!flag(10) & (!flag(8) & (!flag(11) & !flag(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(10),
	datab => flag(8),
	datac => flag(11),
	datad => flag(9),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X19_Y38_N30
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X20_Y38_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (flag(3) & (\Add2~5\ & VCC)) # (!flag(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!flag(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X19_Y38_N16
\flag~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flag~1_combout\ = (\Add2~6_combout\) # ((\Equal1~9_combout\ & \Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~9_combout\,
	datac => \Equal1~4_combout\,
	datad => \Add2~6_combout\,
	combout => \flag~1_combout\);

-- Location: FF_X19_Y38_N17
\flag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \flag~1_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(3));

-- Location: LCCOMB_X20_Y38_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (flag(4) & ((GND) # (!\Add2~7\))) # (!flag(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((flag(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X20_Y38_N9
\flag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(4));

-- Location: LCCOMB_X20_Y38_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (flag(5) & (\Add2~9\ & VCC)) # (!flag(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!flag(5) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X20_Y38_N11
\flag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(5));

-- Location: LCCOMB_X20_Y38_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (flag(6) & ((GND) # (!\Add2~11\))) # (!flag(6) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((flag(6)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X20_Y38_N13
\flag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(6));

-- Location: LCCOMB_X20_Y38_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (flag(7) & (\Add2~13\ & VCC)) # (!flag(7) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!flag(7) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X20_Y38_N15
\flag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(7));

-- Location: LCCOMB_X20_Y38_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (flag(8) & ((GND) # (!\Add2~15\))) # (!flag(8) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((flag(8)) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X20_Y38_N17
\flag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(8));

-- Location: LCCOMB_X20_Y38_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (flag(9) & (\Add2~17\ & VCC)) # (!flag(9) & (!\Add2~17\))
-- \Add2~19\ = CARRY((!flag(9) & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X20_Y38_N19
\flag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(9));

-- Location: LCCOMB_X20_Y38_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (flag(10) & ((GND) # (!\Add2~19\))) # (!flag(10) & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((flag(10)) # (!\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X20_Y38_N21
\flag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(10));

-- Location: LCCOMB_X20_Y38_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (flag(11) & (\Add2~21\ & VCC)) # (!flag(11) & (!\Add2~21\))
-- \Add2~23\ = CARRY((!flag(11) & !\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X20_Y38_N23
\flag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(11));

-- Location: LCCOMB_X20_Y38_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (flag(12) & ((GND) # (!\Add2~23\))) # (!flag(12) & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((flag(12)) # (!\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X20_Y38_N25
\flag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(12));

-- Location: LCCOMB_X20_Y38_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (flag(13) & (\Add2~25\ & VCC)) # (!flag(13) & (!\Add2~25\))
-- \Add2~27\ = CARRY((!flag(13) & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X20_Y38_N27
\flag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(13));

-- Location: LCCOMB_X20_Y38_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (flag(14) & ((GND) # (!\Add2~27\))) # (!flag(14) & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((flag(14)) # (!\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X20_Y38_N29
\flag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(14));

-- Location: LCCOMB_X20_Y38_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (flag(15) & (\Add2~29\ & VCC)) # (!flag(15) & (!\Add2~29\))
-- \Add2~31\ = CARRY((!flag(15) & !\Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X20_Y38_N31
\flag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(15));

-- Location: LCCOMB_X20_Y37_N0
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (flag(16) & ((GND) # (!\Add2~31\))) # (!flag(16) & (\Add2~31\ $ (GND)))
-- \Add2~33\ = CARRY((flag(16)) # (!\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X20_Y37_N1
\flag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(16));

-- Location: LCCOMB_X20_Y37_N2
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (flag(17) & (\Add2~33\ & VCC)) # (!flag(17) & (!\Add2~33\))
-- \Add2~35\ = CARRY((!flag(17) & !\Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X20_Y37_N3
\flag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(17));

-- Location: LCCOMB_X20_Y37_N4
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (flag(18) & ((GND) # (!\Add2~35\))) # (!flag(18) & (\Add2~35\ $ (GND)))
-- \Add2~37\ = CARRY((flag(18)) # (!\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X20_Y37_N5
\flag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(18));

-- Location: LCCOMB_X20_Y37_N6
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (flag(19) & (\Add2~37\ & VCC)) # (!flag(19) & (!\Add2~37\))
-- \Add2~39\ = CARRY((!flag(19) & !\Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X20_Y37_N7
\flag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(19));

-- Location: LCCOMB_X20_Y37_N8
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (flag(20) & ((GND) # (!\Add2~39\))) # (!flag(20) & (\Add2~39\ $ (GND)))
-- \Add2~41\ = CARRY((flag(20)) # (!\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X20_Y37_N9
\flag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(20));

-- Location: LCCOMB_X20_Y37_N10
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (flag(21) & (\Add2~41\ & VCC)) # (!flag(21) & (!\Add2~41\))
-- \Add2~43\ = CARRY((!flag(21) & !\Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X20_Y37_N11
\flag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(21));

-- Location: LCCOMB_X20_Y37_N12
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (flag(22) & ((GND) # (!\Add2~43\))) # (!flag(22) & (\Add2~43\ $ (GND)))
-- \Add2~45\ = CARRY((flag(22)) # (!\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X20_Y37_N13
\flag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(22));

-- Location: LCCOMB_X20_Y37_N14
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (flag(23) & (\Add2~45\ & VCC)) # (!flag(23) & (!\Add2~45\))
-- \Add2~47\ = CARRY((!flag(23) & !\Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X20_Y37_N15
\flag[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(23));

-- Location: LCCOMB_X21_Y37_N6
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!flag(23) & (!flag(20) & (!flag(22) & !flag(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(23),
	datab => flag(20),
	datac => flag(22),
	datad => flag(21),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X21_Y37_N28
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!flag(16) & (!flag(19) & (!flag(18) & !flag(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(16),
	datab => flag(19),
	datac => flag(18),
	datad => flag(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X20_Y37_N16
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (flag(24) & ((GND) # (!\Add2~47\))) # (!flag(24) & (\Add2~47\ $ (GND)))
-- \Add2~49\ = CARRY((flag(24)) # (!\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X20_Y37_N17
\flag[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(24));

-- Location: LCCOMB_X20_Y37_N18
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (flag(25) & (\Add2~49\ & VCC)) # (!flag(25) & (!\Add2~49\))
-- \Add2~51\ = CARRY((!flag(25) & !\Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X20_Y37_N19
\flag[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(25));

-- Location: LCCOMB_X20_Y37_N20
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (flag(26) & ((GND) # (!\Add2~51\))) # (!flag(26) & (\Add2~51\ $ (GND)))
-- \Add2~53\ = CARRY((flag(26)) # (!\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X20_Y37_N21
\flag[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(26));

-- Location: LCCOMB_X20_Y37_N22
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (flag(27) & (\Add2~53\ & VCC)) # (!flag(27) & (!\Add2~53\))
-- \Add2~55\ = CARRY((!flag(27) & !\Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X20_Y37_N23
\flag[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(27));

-- Location: LCCOMB_X21_Y37_N4
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!flag(24) & (!flag(25) & (!flag(27) & !flag(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(24),
	datab => flag(25),
	datac => flag(27),
	datad => flag(26),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X20_Y37_N24
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (flag(28) & ((GND) # (!\Add2~55\))) # (!flag(28) & (\Add2~55\ $ (GND)))
-- \Add2~57\ = CARRY((flag(28)) # (!\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X20_Y37_N25
\flag[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(28));

-- Location: LCCOMB_X20_Y37_N26
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (flag(29) & (\Add2~57\ & VCC)) # (!flag(29) & (!\Add2~57\))
-- \Add2~59\ = CARRY((!flag(29) & !\Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X20_Y37_N27
\flag[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(29));

-- Location: LCCOMB_X20_Y37_N28
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (flag(30) & ((GND) # (!\Add2~59\))) # (!flag(30) & (\Add2~59\ $ (GND)))
-- \Add2~61\ = CARRY((flag(30)) # (!\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flag(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X20_Y37_N29
\flag[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(30));

-- Location: LCCOMB_X20_Y37_N30
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = flag(31) $ (!\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flag(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: FF_X20_Y37_N31
\flag[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \Add2~62_combout\,
	ena => \innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag(31));

-- Location: LCCOMB_X21_Y37_N10
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!flag(29) & (!flag(28) & (!flag(30) & !flag(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flag(29),
	datab => flag(28),
	datac => flag(30),
	datad => flag(31),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X21_Y37_N0
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~6_combout\ & (\Equal1~5_combout\ & (\Equal1~7_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X19_Y37_N16
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\ & !counter(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~1_combout\,
	datad => counter(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y37_N18
\innercounter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter[2]~1_combout\ = (\PWM_DCmot~5_combout\ & (\Equal1~9_combout\ & (\Equal1~4_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_DCmot~5_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \innercounter[2]~1_combout\);

-- Location: FF_X19_Y37_N3
\innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \innercounter~2_combout\,
	ena => \innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => innercounter(1));

-- Location: LCCOMB_X19_Y37_N20
\innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~3_combout\ = (!innercounter(0) & ((!innercounter(1)) # (!innercounter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(2),
	datac => innercounter(0),
	datad => innercounter(1),
	combout => \innercounter~3_combout\);

-- Location: FF_X19_Y37_N21
\innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \innercounter~3_combout\,
	ena => \innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => innercounter(0));

-- Location: LCCOMB_X19_Y37_N12
\innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \innercounter~0_combout\ = (innercounter(2) & ((!innercounter(1)))) # (!innercounter(2) & (innercounter(0) & innercounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => innercounter(0),
	datac => innercounter(2),
	datad => innercounter(1),
	combout => \innercounter~0_combout\);

-- Location: FF_X19_Y37_N13
\innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \innercounter~0_combout\,
	ena => \innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => innercounter(2));

-- Location: IOIBUF_X20_Y39_N8
\DCmot_speedv[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DCmot_speedv(2),
	o => \DCmot_speedv[2]~input_o\);

-- Location: IOIBUF_X20_Y39_N15
\DCmot_speedv[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DCmot_speedv(1),
	o => \DCmot_speedv[1]~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\DCmot_speedv[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DCmot_speedv(0),
	o => \DCmot_speedv[0]~input_o\);

-- Location: LCCOMB_X19_Y38_N2
\PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_DCmot~0_combout\ = (\DCmot_speedv[1]~input_o\ & (((\DCmot_speedv[0]~input_o\ & !innercounter(0))) # (!innercounter(1)))) # (!\DCmot_speedv[1]~input_o\ & (\DCmot_speedv[0]~input_o\ & (!innercounter(0) & !innercounter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCmot_speedv[1]~input_o\,
	datab => \DCmot_speedv[0]~input_o\,
	datac => innercounter(0),
	datad => innercounter(1),
	combout => \PWM_DCmot~0_combout\);

-- Location: LCCOMB_X19_Y38_N28
\PWM_DCmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_DCmot~1_combout\ = (innercounter(2) & (\DCmot_speedv[2]~input_o\ & \PWM_DCmot~0_combout\)) # (!innercounter(2) & ((\DCmot_speedv[2]~input_o\) # (\PWM_DCmot~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => innercounter(2),
	datac => \DCmot_speedv[2]~input_o\,
	datad => \PWM_DCmot~0_combout\,
	combout => \PWM_DCmot~1_combout\);

-- Location: LCCOMB_X19_Y38_N20
\PWM_DCmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_DCmot~2_combout\ = (\Equal1~4_combout\ & ((\Equal1~9_combout\ & ((\PWM_DCmot~1_combout\))) # (!\Equal1~9_combout\ & (\PWM_DCmot~reg0_q\)))) # (!\Equal1~4_combout\ & (\PWM_DCmot~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_DCmot~reg0_q\,
	datab => \PWM_DCmot~1_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \PWM_DCmot~2_combout\);

-- Location: LCCOMB_X19_Y38_N12
\PWM_DCmot~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWM_DCmot~6_combout\ = (\PWM_DCmot~5_combout\ & (!\LessThan0~1_combout\ & \PWM_DCmot~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_DCmot~5_combout\,
	datac => \LessThan0~1_combout\,
	datad => \PWM_DCmot~2_combout\,
	combout => \PWM_DCmot~6_combout\);

-- Location: FF_X19_Y38_N13
\PWM_DCmot~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputclkctrl_outclk\,
	d => \PWM_DCmot~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_DCmot~reg0_q\);

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

ww_PWM_DCmot <= \PWM_DCmot~output_o\;
END structure;


