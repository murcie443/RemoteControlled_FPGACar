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

-- DATE "05/28/2024 14:30:27"

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

ENTITY 	preliminary_control IS
    PORT (
	CLK3 : IN std_logic;
	o_RX_DV : IN std_logic;
	RX_data_IN : IN std_logic_vector(7 DOWNTO 0);
	RX_data_OUT : OUT std_logic_vector(7 DOWNTO 0);
	EN_SW : IN std_logic
	);
END preliminary_control;

-- Design Ports Information
-- RX_data_OUT[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_SW	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_DV	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK3	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF preliminary_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK3 : std_logic;
SIGNAL ww_o_RX_DV : std_logic;
SIGNAL ww_RX_data_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RX_data_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN_SW : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \RX_data_OUT[0]~output_o\ : std_logic;
SIGNAL \RX_data_OUT[1]~output_o\ : std_logic;
SIGNAL \RX_data_OUT[2]~output_o\ : std_logic;
SIGNAL \RX_data_OUT[3]~output_o\ : std_logic;
SIGNAL \RX_data_OUT[4]~output_o\ : std_logic;
SIGNAL \RX_data_OUT[5]~output_o\ : std_logic;
SIGNAL \RX_data_OUT[6]~output_o\ : std_logic;
SIGNAL \RX_data_OUT[7]~output_o\ : std_logic;
SIGNAL \EN_SW~input_o\ : std_logic;
SIGNAL \RX_data_IN[0]~input_o\ : std_logic;
SIGNAL \CLK3~input_o\ : std_logic;
SIGNAL \CLK3~inputclkctrl_outclk\ : std_logic;
SIGNAL \o_RX_DV~input_o\ : std_logic;
SIGNAL \before~q\ : std_logic;
SIGNAL \check~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~64_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~75_combout\ : std_logic;
SIGNAL \counter[30]~66_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~76_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter~77_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~78_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~79_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter~67_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter~68_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~69_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \counter~70_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \counter~71_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \counter~72_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter~73_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~74_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter~80_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter~81_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~82_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \counter~83_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter~84_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \counter~85_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter~86_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter~87_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \counter~88_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \counter~89_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \counter~90_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \counter~91_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \counter~92_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \counter~93_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \counter~94_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \counter~95_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \counter~96_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \counter~65_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \flag_error~2_combout\ : std_logic;
SIGNAL \flag_error~q\ : std_logic;
SIGNAL \RX_data_OUT~0_combout\ : std_logic;
SIGNAL \RX_data_IN[1]~input_o\ : std_logic;
SIGNAL \RX_data_OUT~1_combout\ : std_logic;
SIGNAL \RX_data_IN[2]~input_o\ : std_logic;
SIGNAL \RX_data_OUT~2_combout\ : std_logic;
SIGNAL \RX_data_IN[3]~input_o\ : std_logic;
SIGNAL \RX_data_OUT~3_combout\ : std_logic;
SIGNAL \RX_data_IN[4]~input_o\ : std_logic;
SIGNAL \RX_data_OUT~4_combout\ : std_logic;
SIGNAL \RX_data_IN[5]~input_o\ : std_logic;
SIGNAL \RX_data_OUT~5_combout\ : std_logic;
SIGNAL \RX_data_IN[6]~input_o\ : std_logic;
SIGNAL \RX_data_OUT~6_combout\ : std_logic;
SIGNAL \RX_data_IN[7]~input_o\ : std_logic;
SIGNAL \RX_data_OUT~7_combout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK3 <= CLK3;
ww_o_RX_DV <= o_RX_DV;
ww_RX_data_IN <= RX_data_IN;
RX_data_OUT <= ww_RX_data_OUT;
ww_EN_SW <= EN_SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK3~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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

-- Location: IOOBUF_X51_Y54_N9
\RX_data_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~0_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\RX_data_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~1_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\RX_data_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~2_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\RX_data_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~3_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\RX_data_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~4_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\RX_data_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~5_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\RX_data_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~6_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\RX_data_OUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_OUT~7_combout\,
	devoe => ww_devoe,
	o => \RX_data_OUT[7]~output_o\);

-- Location: IOIBUF_X56_Y54_N15
\EN_SW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_SW,
	o => \EN_SW~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\RX_data_IN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(0),
	o => \RX_data_IN[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK3,
	o => \CLK3~input_o\);

-- Location: CLKCTRL_G3
\CLK3~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK3~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK3~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y54_N8
\o_RX_DV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_o_RX_DV,
	o => \o_RX_DV~input_o\);

-- Location: FF_X55_Y50_N31
before : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	asdata => \o_RX_DV~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \before~q\);

-- Location: LCCOMB_X55_Y50_N30
\check~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \check~0_combout\ = \o_RX_DV~input_o\ $ (\before~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	combout => \check~0_combout\);

-- Location: LCCOMB_X56_Y51_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (GND)
-- \Add0~1\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X55_Y50_N28
\counter~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~64_combout\ = (!\check~0_combout\ & ((\LessThan0~9_combout\ & ((!\Add0~0_combout\))) # (!\LessThan0~9_combout\ & (counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \check~0_combout\,
	datab => counter(0),
	datac => \Add0~0_combout\,
	datad => \LessThan0~9_combout\,
	combout => \counter~64_combout\);

-- Location: FF_X56_Y51_N19
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	asdata => \counter~64_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X56_Y51_N2
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

-- Location: LCCOMB_X55_Y51_N16
\counter~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~75_combout\ = (\Add0~2_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~2_combout\,
	combout => \counter~75_combout\);

-- Location: LCCOMB_X55_Y50_N2
\counter[30]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[30]~66_combout\ = (\LessThan0~9_combout\) # (\before~q\ $ (\o_RX_DV~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \before~q\,
	datac => \o_RX_DV~input_o\,
	datad => \LessThan0~9_combout\,
	combout => \counter[30]~66_combout\);

-- Location: FF_X55_Y51_N17
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~75_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X56_Y51_N4
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

-- Location: LCCOMB_X55_Y51_N14
\counter~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~76_combout\ = (\Add0~4_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~4_combout\,
	combout => \counter~76_combout\);

-- Location: FF_X55_Y51_N15
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~76_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X56_Y51_N6
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

-- Location: LCCOMB_X55_Y51_N28
\counter~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~77_combout\ = (\Add0~6_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~6_combout\,
	combout => \counter~77_combout\);

-- Location: FF_X55_Y51_N29
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~77_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X56_Y51_N8
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

-- Location: LCCOMB_X55_Y51_N10
\counter~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~78_combout\ = (\Add0~8_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datac => \Add0~8_combout\,
	datad => \o_RX_DV~input_o\,
	combout => \counter~78_combout\);

-- Location: FF_X55_Y51_N11
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~78_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X56_Y51_N10
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

-- Location: LCCOMB_X57_Y51_N0
\counter~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~79_combout\ = (\Add0~10_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~10_combout\,
	combout => \counter~79_combout\);

-- Location: FF_X56_Y51_N27
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	asdata => \counter~79_combout\,
	sload => VCC,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X56_Y51_N12
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

-- Location: LCCOMB_X55_Y51_N0
\counter~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~67_combout\ = (\Add0~12_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datac => \Add0~12_combout\,
	datad => \o_RX_DV~input_o\,
	combout => \counter~67_combout\);

-- Location: FF_X55_Y51_N1
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~67_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X56_Y51_N14
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

-- Location: LCCOMB_X55_Y51_N22
\counter~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~68_combout\ = (\Add0~14_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datac => \Add0~14_combout\,
	datad => \o_RX_DV~input_o\,
	combout => \counter~68_combout\);

-- Location: FF_X55_Y51_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~68_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X56_Y51_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X55_Y51_N12
\counter~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~69_combout\ = (\Add0~16_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~16_combout\,
	combout => \counter~69_combout\);

-- Location: FF_X55_Y51_N13
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~69_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X56_Y51_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X55_Y51_N2
\counter~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~70_combout\ = (\Add0~18_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~18_combout\,
	combout => \counter~70_combout\);

-- Location: FF_X55_Y51_N3
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~70_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X56_Y51_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X55_Y51_N26
\counter~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~71_combout\ = (\Add0~20_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datac => \Add0~20_combout\,
	datad => \o_RX_DV~input_o\,
	combout => \counter~71_combout\);

-- Location: FF_X55_Y51_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~71_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X56_Y51_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X55_Y51_N4
\counter~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~72_combout\ = (\Add0~22_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~22_combout\,
	combout => \counter~72_combout\);

-- Location: FF_X55_Y51_N5
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~72_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X56_Y51_N24
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

-- Location: LCCOMB_X55_Y51_N6
\counter~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~73_combout\ = (\Add0~24_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~24_combout\,
	combout => \counter~73_combout\);

-- Location: FF_X55_Y51_N7
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~73_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X56_Y51_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X55_Y51_N24
\counter~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~74_combout\ = (\Add0~26_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~26_combout\,
	combout => \counter~74_combout\);

-- Location: FF_X55_Y51_N25
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~74_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X56_Y51_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X55_Y50_N14
\counter~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~80_combout\ = (\Add0~28_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \before~q\,
	datac => \o_RX_DV~input_o\,
	datad => \Add0~28_combout\,
	combout => \counter~80_combout\);

-- Location: FF_X55_Y50_N15
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~80_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X56_Y51_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X55_Y50_N0
\counter~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~81_combout\ = (\Add0~30_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \Add0~30_combout\,
	datad => \before~q\,
	combout => \counter~81_combout\);

-- Location: FF_X55_Y50_N1
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~81_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X56_Y50_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X55_Y50_N6
\counter~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~82_combout\ = (\Add0~32_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \Add0~32_combout\,
	datad => \before~q\,
	combout => \counter~82_combout\);

-- Location: FF_X55_Y50_N7
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~82_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X56_Y50_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X55_Y50_N12
\counter~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~83_combout\ = (\Add0~34_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \before~q\,
	datac => \o_RX_DV~input_o\,
	datad => \Add0~34_combout\,
	combout => \counter~83_combout\);

-- Location: FF_X55_Y50_N13
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~83_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X56_Y50_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X57_Y50_N18
\counter~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~84_combout\ = (\Add0~36_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datab => \o_RX_DV~input_o\,
	datac => \Add0~36_combout\,
	combout => \counter~84_combout\);

-- Location: FF_X57_Y50_N19
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~84_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X56_Y50_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X57_Y50_N4
\counter~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~85_combout\ = (\Add0~38_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datab => \o_RX_DV~input_o\,
	datac => \Add0~38_combout\,
	combout => \counter~85_combout\);

-- Location: FF_X57_Y50_N5
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~85_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X56_Y50_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X57_Y50_N30
\counter~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~86_combout\ = (\Add0~40_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~40_combout\,
	combout => \counter~86_combout\);

-- Location: FF_X57_Y50_N31
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~86_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X56_Y50_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X57_Y50_N28
\counter~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~87_combout\ = (\Add0~42_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~42_combout\,
	combout => \counter~87_combout\);

-- Location: FF_X57_Y50_N29
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~87_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X56_Y50_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X55_Y50_N16
\counter~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~88_combout\ = (\Add0~44_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \Add0~44_combout\,
	datad => \before~q\,
	combout => \counter~88_combout\);

-- Location: FF_X55_Y50_N17
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~88_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X56_Y50_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X55_Y50_N18
\counter~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~89_combout\ = (\Add0~46_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \Add0~46_combout\,
	datad => \before~q\,
	combout => \counter~89_combout\);

-- Location: FF_X55_Y50_N19
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~89_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X56_Y50_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X55_Y50_N24
\counter~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~90_combout\ = (\Add0~48_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \before~q\,
	datac => \o_RX_DV~input_o\,
	datad => \Add0~48_combout\,
	combout => \counter~90_combout\);

-- Location: FF_X55_Y50_N25
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~90_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X56_Y50_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X55_Y50_N26
\counter~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~91_combout\ = (\Add0~50_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \before~q\,
	datac => \o_RX_DV~input_o\,
	datad => \Add0~50_combout\,
	combout => \counter~91_combout\);

-- Location: FF_X55_Y50_N27
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~91_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X56_Y50_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X57_Y50_N12
\counter~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~92_combout\ = (\Add0~52_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~52_combout\,
	combout => \counter~92_combout\);

-- Location: FF_X57_Y50_N13
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~92_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X56_Y50_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X57_Y50_N10
\counter~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~93_combout\ = (\Add0~54_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~54_combout\,
	combout => \counter~93_combout\);

-- Location: FF_X57_Y50_N11
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~93_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X56_Y50_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X57_Y50_N8
\counter~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~94_combout\ = (\Add0~56_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~56_combout\,
	combout => \counter~94_combout\);

-- Location: FF_X57_Y50_N9
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~94_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X56_Y50_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X57_Y50_N22
\counter~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~95_combout\ = (\Add0~58_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datab => \o_RX_DV~input_o\,
	datac => \Add0~58_combout\,
	combout => \counter~95_combout\);

-- Location: FF_X57_Y50_N23
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~95_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X56_Y50_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X57_Y50_N26
\counter~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~96_combout\ = (\Add0~60_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \before~q\,
	datad => \Add0~60_combout\,
	combout => \counter~96_combout\);

-- Location: FF_X57_Y50_N27
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~96_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X56_Y50_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X55_Y50_N8
\counter~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~65_combout\ = (\Add0~62_combout\ & (\o_RX_DV~input_o\ $ (!\before~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_RX_DV~input_o\,
	datac => \Add0~62_combout\,
	datad => \before~q\,
	combout => \counter~65_combout\);

-- Location: FF_X55_Y50_N9
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \counter~65_combout\,
	ena => \counter[30]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X55_Y51_N20
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(8) & (!counter(9) & (!counter(7) & !counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(7),
	datad => counter(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y51_N8
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!counter(3) & (!counter(2) & !counter(1)))) # (!counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(3),
	datac => counter(2),
	datad => counter(1),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y51_N18
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(12) & (!counter(11) & (!counter(10) & !counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(11),
	datac => counter(10),
	datad => counter(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y51_N30
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & ((\LessThan0~2_combout\) # (!counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y50_N22
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!counter(17) & (!counter(15) & (!counter(14) & !counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(15),
	datac => counter(14),
	datad => counter(16),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y50_N4
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!counter(25) & (!counter(24) & (!counter(23) & !counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datab => counter(24),
	datac => counter(23),
	datad => counter(22),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X57_Y50_N14
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!counter(20) & (!counter(21) & (!counter(19) & !counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(21),
	datac => counter(19),
	datad => counter(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X57_Y50_N24
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!counter(27) & (!counter(28) & (!counter(29) & !counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datab => counter(28),
	datac => counter(29),
	datad => counter(26),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X55_Y50_N10
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~4_combout\ & (\LessThan0~6_combout\ & (\LessThan0~5_combout\ & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~6_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X55_Y50_N20
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (counter(31)) # ((!counter(30) & (\LessThan0~3_combout\ & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datab => counter(31),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X57_Y50_N16
\flag_error~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flag_error~2_combout\ = (\flag_error~q\ & (\before~q\ $ ((!\o_RX_DV~input_o\)))) # (!\flag_error~q\ & (!\LessThan0~9_combout\ & (\before~q\ $ (!\o_RX_DV~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \before~q\,
	datab => \o_RX_DV~input_o\,
	datac => \flag_error~q\,
	datad => \LessThan0~9_combout\,
	combout => \flag_error~2_combout\);

-- Location: FF_X57_Y50_N17
flag_error : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK3~inputclkctrl_outclk\,
	d => \flag_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag_error~q\);

-- Location: LCCOMB_X55_Y53_N12
\RX_data_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~0_combout\ = (\EN_SW~input_o\ & (\RX_data_IN[0]~input_o\ & !\flag_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN_SW~input_o\,
	datac => \RX_data_IN[0]~input_o\,
	datad => \flag_error~q\,
	combout => \RX_data_OUT~0_combout\);

-- Location: IOIBUF_X56_Y54_N8
\RX_data_IN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(1),
	o => \RX_data_IN[1]~input_o\);

-- Location: LCCOMB_X55_Y53_N22
\RX_data_OUT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~1_combout\ = (\EN_SW~input_o\ & (\RX_data_IN[1]~input_o\ & !\flag_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN_SW~input_o\,
	datac => \RX_data_IN[1]~input_o\,
	datad => \flag_error~q\,
	combout => \RX_data_OUT~1_combout\);

-- Location: IOIBUF_X54_Y54_N22
\RX_data_IN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(2),
	o => \RX_data_IN[2]~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\RX_data_OUT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~2_combout\ = (\EN_SW~input_o\ & (\RX_data_IN[2]~input_o\ & !\flag_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN_SW~input_o\,
	datac => \RX_data_IN[2]~input_o\,
	datad => \flag_error~q\,
	combout => \RX_data_OUT~2_combout\);

-- Location: IOIBUF_X58_Y54_N15
\RX_data_IN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(3),
	o => \RX_data_IN[3]~input_o\);

-- Location: LCCOMB_X55_Y53_N26
\RX_data_OUT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~3_combout\ = (!\flag_error~q\ & (\EN_SW~input_o\ & \RX_data_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag_error~q\,
	datab => \EN_SW~input_o\,
	datad => \RX_data_IN[3]~input_o\,
	combout => \RX_data_OUT~3_combout\);

-- Location: IOIBUF_X58_Y54_N1
\RX_data_IN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(4),
	o => \RX_data_IN[4]~input_o\);

-- Location: LCCOMB_X55_Y53_N4
\RX_data_OUT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~4_combout\ = (!\flag_error~q\ & (\EN_SW~input_o\ & \RX_data_IN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag_error~q\,
	datab => \EN_SW~input_o\,
	datad => \RX_data_IN[4]~input_o\,
	combout => \RX_data_OUT~4_combout\);

-- Location: IOIBUF_X56_Y54_N1
\RX_data_IN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(5),
	o => \RX_data_IN[5]~input_o\);

-- Location: LCCOMB_X55_Y53_N14
\RX_data_OUT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~5_combout\ = (\RX_data_IN[5]~input_o\ & (\EN_SW~input_o\ & !\flag_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_data_IN[5]~input_o\,
	datab => \EN_SW~input_o\,
	datad => \flag_error~q\,
	combout => \RX_data_OUT~5_combout\);

-- Location: IOIBUF_X56_Y54_N22
\RX_data_IN[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(6),
	o => \RX_data_IN[6]~input_o\);

-- Location: LCCOMB_X55_Y53_N28
\RX_data_OUT~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~6_combout\ = (!\flag_error~q\ & (\EN_SW~input_o\ & \RX_data_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag_error~q\,
	datab => \EN_SW~input_o\,
	datad => \RX_data_IN[6]~input_o\,
	combout => \RX_data_OUT~6_combout\);

-- Location: IOIBUF_X51_Y54_N22
\RX_data_IN[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_data_IN(7),
	o => \RX_data_IN[7]~input_o\);

-- Location: LCCOMB_X55_Y53_N10
\RX_data_OUT~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~7_combout\ = (\EN_SW~input_o\ & (\RX_data_IN[7]~input_o\ & !\flag_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN_SW~input_o\,
	datac => \RX_data_IN[7]~input_o\,
	datad => \flag_error~q\,
	combout => \RX_data_OUT~7_combout\);

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

ww_RX_data_OUT(0) <= \RX_data_OUT[0]~output_o\;

ww_RX_data_OUT(1) <= \RX_data_OUT[1]~output_o\;

ww_RX_data_OUT(2) <= \RX_data_OUT[2]~output_o\;

ww_RX_data_OUT(3) <= \RX_data_OUT[3]~output_o\;

ww_RX_data_OUT(4) <= \RX_data_OUT[4]~output_o\;

ww_RX_data_OUT(5) <= \RX_data_OUT[5]~output_o\;

ww_RX_data_OUT(6) <= \RX_data_OUT[6]~output_o\;

ww_RX_data_OUT(7) <= \RX_data_OUT[7]~output_o\;
END structure;


