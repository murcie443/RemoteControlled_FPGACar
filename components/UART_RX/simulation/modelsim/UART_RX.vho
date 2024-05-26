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

-- DATE "05/26/2024 15:18:23"

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

ENTITY 	UART_RX IS
    PORT (
	i_Clk : IN std_logic;
	i_RX_Serial : IN std_logic;
	o_RX_DV : BUFFER std_logic;
	o_RX_Byte : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END UART_RX;

-- Design Ports Information
-- o_RX_DV	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_RX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Clk : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_o_RX_DV : std_logic;
SIGNAL ww_o_RX_Byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_RX_DV~output_o\ : std_logic;
SIGNAL \o_RX_Byte[0]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[1]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[2]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[3]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[4]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[5]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[6]~output_o\ : std_logic;
SIGNAL \o_RX_Byte[7]~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \r_RX_Data_R~q\ : std_logic;
SIGNAL \r_RX_Data~q\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \r_SM_Main~7_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~feeder_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \r_Clk_Count[0]~39_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \r_Clk_Count[0]~40_combout\ : std_logic;
SIGNAL \r_Clk_Count[0]~41_combout\ : std_logic;
SIGNAL \r_Clk_Count[0]~14\ : std_logic;
SIGNAL \r_Clk_Count[1]~15_combout\ : std_logic;
SIGNAL \r_Clk_Count[1]~16\ : std_logic;
SIGNAL \r_Clk_Count[2]~17_combout\ : std_logic;
SIGNAL \r_Clk_Count[2]~18\ : std_logic;
SIGNAL \r_Clk_Count[3]~19_combout\ : std_logic;
SIGNAL \r_Clk_Count[3]~20\ : std_logic;
SIGNAL \r_Clk_Count[4]~21_combout\ : std_logic;
SIGNAL \r_Clk_Count[4]~22\ : std_logic;
SIGNAL \r_Clk_Count[5]~23_combout\ : std_logic;
SIGNAL \r_Clk_Count[5]~24\ : std_logic;
SIGNAL \r_Clk_Count[6]~25_combout\ : std_logic;
SIGNAL \r_Clk_Count[6]~26\ : std_logic;
SIGNAL \r_Clk_Count[7]~27_combout\ : std_logic;
SIGNAL \r_Clk_Count[7]~28\ : std_logic;
SIGNAL \r_Clk_Count[8]~29_combout\ : std_logic;
SIGNAL \r_Clk_Count[8]~30\ : std_logic;
SIGNAL \r_Clk_Count[9]~31_combout\ : std_logic;
SIGNAL \r_Clk_Count[9]~32\ : std_logic;
SIGNAL \r_Clk_Count[10]~33_combout\ : std_logic;
SIGNAL \r_Clk_Count[10]~34\ : std_logic;
SIGNAL \r_Clk_Count[11]~35_combout\ : std_logic;
SIGNAL \r_Clk_Count[11]~36\ : std_logic;
SIGNAL \r_Clk_Count[12]~37_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \r_RX_DV~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_RX_Byte[0]~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_RX_Byte[1]~1_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_RX_Byte[2]~2_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_RX_Byte[3]~3_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_RX_Byte[4]~4_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_RX_Byte[5]~5_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_RX_Byte[6]~6_combout\ : std_logic;
SIGNAL \r_RX_Byte[7]~7_combout\ : std_logic;
SIGNAL r_Clk_Count : std_logic_vector(12 DOWNTO 0);
SIGNAL r_RX_Byte : std_logic_vector(7 DOWNTO 0);
SIGNAL r_Bit_Index : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_Clk <= i_Clk;
ww_i_RX_Serial <= i_RX_Serial;
o_RX_DV <= ww_o_RX_DV;
o_RX_Byte <= ww_o_RX_Byte;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X49_Y54_N9
\o_RX_DV~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_RX_DV~q\,
	devoe => ww_devoe,
	o => \o_RX_DV~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\o_RX_Byte[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(0),
	devoe => ww_devoe,
	o => \o_RX_Byte[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\o_RX_Byte[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(1),
	devoe => ww_devoe,
	o => \o_RX_Byte[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\o_RX_Byte[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(2),
	devoe => ww_devoe,
	o => \o_RX_Byte[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\o_RX_Byte[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(3),
	devoe => ww_devoe,
	o => \o_RX_Byte[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\o_RX_Byte[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(4),
	devoe => ww_devoe,
	o => \o_RX_Byte[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\o_RX_Byte[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(5),
	devoe => ww_devoe,
	o => \o_RX_Byte[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\o_RX_Byte[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(6),
	devoe => ww_devoe,
	o => \o_RX_Byte[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\o_RX_Byte[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_RX_Byte(7),
	devoe => ww_devoe,
	o => \o_RX_Byte[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\i_Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clk,
	o => \i_Clk~input_o\);

-- Location: CLKCTRL_G19
\i_Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y53_N6
\r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[0]~13_combout\ = r_Clk_Count(0) $ (VCC)
-- \r_Clk_Count[0]~14\ = CARRY(r_Clk_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(0),
	datad => VCC,
	combout => \r_Clk_Count[0]~13_combout\,
	cout => \r_Clk_Count[0]~14\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X47_Y53_N22
\r_RX_Data_R~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Data_R~feeder_combout\ = \i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RX_Serial~input_o\,
	combout => \r_RX_Data_R~feeder_combout\);

-- Location: FF_X47_Y53_N23
r_RX_Data_R : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Data_R~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data_R~q\);

-- Location: FF_X47_Y53_N13
r_RX_Data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \r_RX_Data_R~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data~q\);

-- Location: LCCOMB_X45_Y53_N4
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!r_Clk_Count(10) & !r_Clk_Count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_Clk_Count(10),
	datad => r_Clk_Count(11),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y53_N8
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ((!r_Clk_Count(5) & !r_Clk_Count(4))) # (!r_Clk_Count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(5),
	datac => r_Clk_Count(4),
	datad => r_Clk_Count(6),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X45_Y53_N14
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!r_Clk_Count(3) & (((!r_Clk_Count(1)) # (!r_Clk_Count(2))) # (!r_Clk_Count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(0),
	datab => r_Clk_Count(3),
	datac => r_Clk_Count(2),
	datad => r_Clk_Count(1),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X45_Y53_N6
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!r_Clk_Count(7) & (!r_Clk_Count(11) & (!r_Clk_Count(8) & !r_Clk_Count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(7),
	datab => r_Clk_Count(11),
	datac => r_Clk_Count(8),
	datad => r_Clk_Count(9),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X45_Y53_N0
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\LessThan1~3_combout\ & ((\LessThan1~4_combout\) # ((!r_Clk_Count(5) & \LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(5),
	datab => \LessThan1~4_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X47_Y53_N18
\r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_SM_Main~7_combout\ = (\r_SM_Main.s_RX_Stop_Bit~q\ & (r_Clk_Count(12) & (!\LessThan1~2_combout\ & !\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Stop_Bit~q\,
	datab => r_Clk_Count(12),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~6_combout\,
	combout => \r_SM_Main~7_combout\);

-- Location: LCCOMB_X47_Y53_N10
\r_SM_Main.s_Cleanup~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_SM_Main.s_Cleanup~feeder_combout\ = \r_SM_Main~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_SM_Main~7_combout\,
	combout => \r_SM_Main.s_Cleanup~feeder_combout\);

-- Location: FF_X47_Y53_N11
\r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_SM_Main.s_Cleanup~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X47_Y53_N16
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!r_Clk_Count(10) & (r_Clk_Count(9) & (!r_Clk_Count(6) & r_Clk_Count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(10),
	datab => r_Clk_Count(9),
	datac => r_Clk_Count(6),
	datad => r_Clk_Count(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X47_Y53_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_Clk_Count(1) & (!r_Clk_Count(7) & (r_Clk_Count(0) & !r_Clk_Count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(1),
	datab => r_Clk_Count(7),
	datac => r_Clk_Count(0),
	datad => r_Clk_Count(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X47_Y53_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!r_Clk_Count(4) & (r_Clk_Count(3) & (r_Clk_Count(5) & !r_Clk_Count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(4),
	datab => r_Clk_Count(3),
	datac => r_Clk_Count(5),
	datad => r_Clk_Count(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X47_Y53_N6
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!r_Clk_Count(12) & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(12),
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X47_Y53_N8
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\r_SM_Main.s_Idle~q\ & (((\r_SM_Main.s_RX_Start_Bit~q\ & !\Equal0~3_combout\)))) # (!\r_SM_Main.s_Idle~q\ & (((\r_SM_Main.s_RX_Start_Bit~q\ & !\Equal0~3_combout\)) # (!\r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_RX_Data~q\,
	datac => \r_SM_Main.s_RX_Start_Bit~q\,
	datad => \Equal0~3_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X47_Y53_N9
\r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X47_Y53_N28
\r_Clk_Count[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[0]~39_combout\ = (\r_SM_Main.s_RX_Start_Bit~q\ & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_SM_Main.s_RX_Start_Bit~q\,
	datad => \Equal0~3_combout\,
	combout => \r_Clk_Count[0]~39_combout\);

-- Location: LCCOMB_X47_Y53_N30
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\r_SM_Main.s_Cleanup~q\ & (((\r_SM_Main.s_Idle~q\ & !\r_Clk_Count[0]~39_combout\)) # (!\r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datab => \r_SM_Main.s_Cleanup~q\,
	datac => \r_SM_Main.s_Idle~q\,
	datad => \r_Clk_Count[0]~39_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X47_Y53_N31
\r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X46_Y53_N2
\r_Clk_Count[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[0]~40_combout\ = \r_SM_Main.s_Idle~q\ $ (\r_Clk_Count[0]~39_combout\ $ (((\Selector0~0_combout\) # (!\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \Selector0~0_combout\,
	datac => \LessThan1~7_combout\,
	datad => \r_Clk_Count[0]~39_combout\,
	combout => \r_Clk_Count[0]~40_combout\);

-- Location: LCCOMB_X47_Y53_N12
\r_Clk_Count[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[0]~41_combout\ = (!\r_SM_Main.s_Cleanup~q\ & (((!\Equal0~3_combout\) # (!\r_RX_Data~q\)) # (!\r_SM_Main.s_RX_Start_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Cleanup~q\,
	datab => \r_SM_Main.s_RX_Start_Bit~q\,
	datac => \r_RX_Data~q\,
	datad => \Equal0~3_combout\,
	combout => \r_Clk_Count[0]~41_combout\);

-- Location: FF_X46_Y53_N7
\r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[0]~13_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(0));

-- Location: LCCOMB_X46_Y53_N8
\r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[1]~15_combout\ = (r_Clk_Count(1) & (!\r_Clk_Count[0]~14\)) # (!r_Clk_Count(1) & ((\r_Clk_Count[0]~14\) # (GND)))
-- \r_Clk_Count[1]~16\ = CARRY((!\r_Clk_Count[0]~14\) # (!r_Clk_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(1),
	datad => VCC,
	cin => \r_Clk_Count[0]~14\,
	combout => \r_Clk_Count[1]~15_combout\,
	cout => \r_Clk_Count[1]~16\);

-- Location: FF_X46_Y53_N9
\r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[1]~15_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(1));

-- Location: LCCOMB_X46_Y53_N10
\r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[2]~17_combout\ = (r_Clk_Count(2) & (\r_Clk_Count[1]~16\ $ (GND))) # (!r_Clk_Count(2) & (!\r_Clk_Count[1]~16\ & VCC))
-- \r_Clk_Count[2]~18\ = CARRY((r_Clk_Count(2) & !\r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(2),
	datad => VCC,
	cin => \r_Clk_Count[1]~16\,
	combout => \r_Clk_Count[2]~17_combout\,
	cout => \r_Clk_Count[2]~18\);

-- Location: FF_X46_Y53_N11
\r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[2]~17_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(2));

-- Location: LCCOMB_X46_Y53_N12
\r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[3]~19_combout\ = (r_Clk_Count(3) & (!\r_Clk_Count[2]~18\)) # (!r_Clk_Count(3) & ((\r_Clk_Count[2]~18\) # (GND)))
-- \r_Clk_Count[3]~20\ = CARRY((!\r_Clk_Count[2]~18\) # (!r_Clk_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(3),
	datad => VCC,
	cin => \r_Clk_Count[2]~18\,
	combout => \r_Clk_Count[3]~19_combout\,
	cout => \r_Clk_Count[3]~20\);

-- Location: FF_X46_Y53_N13
\r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[3]~19_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(3));

-- Location: LCCOMB_X46_Y53_N14
\r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[4]~21_combout\ = (r_Clk_Count(4) & (\r_Clk_Count[3]~20\ $ (GND))) # (!r_Clk_Count(4) & (!\r_Clk_Count[3]~20\ & VCC))
-- \r_Clk_Count[4]~22\ = CARRY((r_Clk_Count(4) & !\r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(4),
	datad => VCC,
	cin => \r_Clk_Count[3]~20\,
	combout => \r_Clk_Count[4]~21_combout\,
	cout => \r_Clk_Count[4]~22\);

-- Location: FF_X46_Y53_N15
\r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[4]~21_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(4));

-- Location: LCCOMB_X46_Y53_N16
\r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[5]~23_combout\ = (r_Clk_Count(5) & (!\r_Clk_Count[4]~22\)) # (!r_Clk_Count(5) & ((\r_Clk_Count[4]~22\) # (GND)))
-- \r_Clk_Count[5]~24\ = CARRY((!\r_Clk_Count[4]~22\) # (!r_Clk_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(5),
	datad => VCC,
	cin => \r_Clk_Count[4]~22\,
	combout => \r_Clk_Count[5]~23_combout\,
	cout => \r_Clk_Count[5]~24\);

-- Location: FF_X46_Y53_N17
\r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[5]~23_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(5));

-- Location: LCCOMB_X46_Y53_N18
\r_Clk_Count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[6]~25_combout\ = (r_Clk_Count(6) & (\r_Clk_Count[5]~24\ $ (GND))) # (!r_Clk_Count(6) & (!\r_Clk_Count[5]~24\ & VCC))
-- \r_Clk_Count[6]~26\ = CARRY((r_Clk_Count(6) & !\r_Clk_Count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(6),
	datad => VCC,
	cin => \r_Clk_Count[5]~24\,
	combout => \r_Clk_Count[6]~25_combout\,
	cout => \r_Clk_Count[6]~26\);

-- Location: FF_X46_Y53_N19
\r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[6]~25_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(6));

-- Location: LCCOMB_X46_Y53_N20
\r_Clk_Count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[7]~27_combout\ = (r_Clk_Count(7) & (!\r_Clk_Count[6]~26\)) # (!r_Clk_Count(7) & ((\r_Clk_Count[6]~26\) # (GND)))
-- \r_Clk_Count[7]~28\ = CARRY((!\r_Clk_Count[6]~26\) # (!r_Clk_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(7),
	datad => VCC,
	cin => \r_Clk_Count[6]~26\,
	combout => \r_Clk_Count[7]~27_combout\,
	cout => \r_Clk_Count[7]~28\);

-- Location: FF_X46_Y53_N21
\r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[7]~27_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(7));

-- Location: LCCOMB_X46_Y53_N22
\r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[8]~29_combout\ = (r_Clk_Count(8) & (\r_Clk_Count[7]~28\ $ (GND))) # (!r_Clk_Count(8) & (!\r_Clk_Count[7]~28\ & VCC))
-- \r_Clk_Count[8]~30\ = CARRY((r_Clk_Count(8) & !\r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(8),
	datad => VCC,
	cin => \r_Clk_Count[7]~28\,
	combout => \r_Clk_Count[8]~29_combout\,
	cout => \r_Clk_Count[8]~30\);

-- Location: FF_X46_Y53_N23
\r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[8]~29_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(8));

-- Location: LCCOMB_X46_Y53_N24
\r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[9]~31_combout\ = (r_Clk_Count(9) & (!\r_Clk_Count[8]~30\)) # (!r_Clk_Count(9) & ((\r_Clk_Count[8]~30\) # (GND)))
-- \r_Clk_Count[9]~32\ = CARRY((!\r_Clk_Count[8]~30\) # (!r_Clk_Count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(9),
	datad => VCC,
	cin => \r_Clk_Count[8]~30\,
	combout => \r_Clk_Count[9]~31_combout\,
	cout => \r_Clk_Count[9]~32\);

-- Location: FF_X46_Y53_N25
\r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[9]~31_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(9));

-- Location: LCCOMB_X46_Y53_N26
\r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[10]~33_combout\ = (r_Clk_Count(10) & (\r_Clk_Count[9]~32\ $ (GND))) # (!r_Clk_Count(10) & (!\r_Clk_Count[9]~32\ & VCC))
-- \r_Clk_Count[10]~34\ = CARRY((r_Clk_Count(10) & !\r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(10),
	datad => VCC,
	cin => \r_Clk_Count[9]~32\,
	combout => \r_Clk_Count[10]~33_combout\,
	cout => \r_Clk_Count[10]~34\);

-- Location: FF_X46_Y53_N27
\r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[10]~33_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(10));

-- Location: LCCOMB_X46_Y53_N28
\r_Clk_Count[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[11]~35_combout\ = (r_Clk_Count(11) & (!\r_Clk_Count[10]~34\)) # (!r_Clk_Count(11) & ((\r_Clk_Count[10]~34\) # (GND)))
-- \r_Clk_Count[11]~36\ = CARRY((!\r_Clk_Count[10]~34\) # (!r_Clk_Count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(11),
	datad => VCC,
	cin => \r_Clk_Count[10]~34\,
	combout => \r_Clk_Count[11]~35_combout\,
	cout => \r_Clk_Count[11]~36\);

-- Location: FF_X46_Y53_N29
\r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[11]~35_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(11));

-- Location: LCCOMB_X46_Y53_N30
\r_Clk_Count[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[12]~37_combout\ = r_Clk_Count(12) $ (!\r_Clk_Count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(12),
	cin => \r_Clk_Count[11]~36\,
	combout => \r_Clk_Count[12]~37_combout\);

-- Location: FF_X46_Y53_N31
\r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_Clk_Count[12]~37_combout\,
	sclr => \r_Clk_Count[0]~40_combout\,
	ena => \r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(12));

-- Location: LCCOMB_X46_Y53_N0
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (r_Clk_Count(6) & ((r_Clk_Count(5)) # ((r_Clk_Count(4) & !\LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(6),
	datab => r_Clk_Count(5),
	datac => r_Clk_Count(4),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X46_Y53_N4
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (r_Clk_Count(12) & (!\LessThan1~2_combout\ & ((\LessThan1~8_combout\) # (!\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(12),
	datab => \LessThan1~3_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X45_Y53_N24
\Selector16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (r_Clk_Count(12) & (!\LessThan1~6_combout\ & ((r_Clk_Count(11)) # (r_Clk_Count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(12),
	datab => r_Clk_Count(11),
	datac => r_Clk_Count(10),
	datad => \LessThan1~6_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X44_Y53_N10
\Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & ((r_Bit_Index(0) $ (\Selector16~3_combout\)))) # (!\r_SM_Main.s_RX_Data_Bits~q\ & (\r_SM_Main.s_Idle~q\ & (r_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(0),
	datad => \Selector16~3_combout\,
	combout => \Selector16~2_combout\);

-- Location: FF_X44_Y53_N11
\r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(0));

-- Location: LCCOMB_X45_Y53_N28
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (r_Clk_Count(12) & (\r_SM_Main.s_RX_Data_Bits~q\ & (!\LessThan1~2_combout\ & !\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(12),
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~6_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X45_Y53_N22
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (r_Bit_Index(0) & (\Decoder0~0_combout\ & (r_Bit_Index(2) $ (r_Bit_Index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X45_Y53_N10
\Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (((!\LessThan1~7_combout\)) # (!r_Bit_Index(0)))) # (!\r_SM_Main.s_RX_Data_Bits~q\ & (((\r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => \r_SM_Main.s_Idle~q\,
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X45_Y53_N18
\Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\Selector14~0_combout\) # ((r_Bit_Index(2) & \Selector14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datac => r_Bit_Index(2),
	datad => \Selector14~1_combout\,
	combout => \Selector14~2_combout\);

-- Location: FF_X45_Y53_N19
\r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(2));

-- Location: LCCOMB_X44_Y53_N14
\Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (((!r_Bit_Index(2)) # (!r_Bit_Index(1))) # (!r_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \r_SM_Main.s_RX_Data_Bits~q\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X47_Y53_N20
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (((\LessThan1~2_combout\) # (\LessThan1~6_combout\)) # (!r_Clk_Count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datab => r_Clk_Count(12),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~6_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X47_Y53_N26
\Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector19~1_combout\) # ((\Selector19~0_combout\) # ((!\r_RX_Data~q\ & \r_Clk_Count[0]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datab => \r_Clk_Count[0]~39_combout\,
	datac => \Selector19~1_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X47_Y53_N27
\r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X45_Y53_N16
\Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (r_Bit_Index(1) $ (((r_Bit_Index(0) & \LessThan1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \LessThan1~7_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X45_Y53_N12
\Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\Selector15~2_combout\) # ((!\r_SM_Main.s_RX_Data_Bits~q\ & (\r_SM_Main.s_Idle~q\ & r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datab => \r_SM_Main.s_Idle~q\,
	datac => r_Bit_Index(1),
	datad => \Selector15~2_combout\,
	combout => \Selector15~3_combout\);

-- Location: FF_X45_Y53_N13
\r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(1));

-- Location: LCCOMB_X45_Y53_N2
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (r_Bit_Index(1) & (r_Bit_Index(2) & (r_Bit_Index(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X45_Y53_N26
\r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\Decoder0~8_combout\) # ((!\LessThan1~7_combout\ & \r_SM_Main.s_RX_Stop_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datac => \r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \Decoder0~8_combout\,
	combout => \r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: FF_X45_Y53_N27
\r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_SM_Main.s_RX_Stop_Bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X45_Y53_N30
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\r_SM_Main.s_RX_Stop_Bit~q\ & !\r_SM_Main.s_RX_Data_Bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \r_SM_Main.s_RX_Data_Bits~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X47_Y53_N24
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\r_SM_Main~7_combout\) # ((\r_RX_DV~q\ & ((\r_SM_Main.s_RX_Start_Bit~q\) # (!\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \r_SM_Main.s_RX_Start_Bit~q\,
	datac => \r_RX_DV~q\,
	datad => \r_SM_Main~7_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X47_Y53_N25
r_RX_DV : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_DV~q\);

-- Location: LCCOMB_X44_Y53_N0
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!r_Bit_Index(0) & (!r_Bit_Index(1) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X44_Y53_N4
\r_RX_Byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[0]~0_combout\ = (\Decoder0~1_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~1_combout\ & ((r_RX_Byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(0),
	datad => \Decoder0~1_combout\,
	combout => \r_RX_Byte[0]~0_combout\);

-- Location: FF_X44_Y53_N5
\r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(0));

-- Location: LCCOMB_X44_Y53_N2
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (r_Bit_Index(0) & (!r_Bit_Index(1) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X44_Y53_N22
\r_RX_Byte[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[1]~1_combout\ = (\Decoder0~2_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~2_combout\ & ((r_RX_Byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(1),
	datad => \Decoder0~2_combout\,
	combout => \r_RX_Byte[1]~1_combout\);

-- Location: FF_X44_Y53_N23
\r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(1));

-- Location: LCCOMB_X44_Y53_N12
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!r_Bit_Index(0) & (r_Bit_Index(1) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X44_Y53_N24
\r_RX_Byte[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[2]~2_combout\ = (\Decoder0~3_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~3_combout\ & ((r_RX_Byte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(2),
	datad => \Decoder0~3_combout\,
	combout => \r_RX_Byte[2]~2_combout\);

-- Location: FF_X44_Y53_N25
\r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(2));

-- Location: LCCOMB_X44_Y53_N18
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (r_Bit_Index(0) & (r_Bit_Index(1) & (!r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X44_Y53_N30
\r_RX_Byte[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[3]~3_combout\ = (\Decoder0~4_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~4_combout\ & ((r_RX_Byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(3),
	datad => \Decoder0~4_combout\,
	combout => \r_RX_Byte[3]~3_combout\);

-- Location: FF_X44_Y53_N31
\r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(3));

-- Location: LCCOMB_X44_Y53_N20
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!r_Bit_Index(0) & (!r_Bit_Index(1) & (r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X44_Y53_N28
\r_RX_Byte[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[4]~4_combout\ = (\Decoder0~5_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~5_combout\ & ((r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(4),
	datad => \Decoder0~5_combout\,
	combout => \r_RX_Byte[4]~4_combout\);

-- Location: FF_X44_Y53_N29
\r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(4));

-- Location: LCCOMB_X44_Y53_N6
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (r_Bit_Index(0) & (!r_Bit_Index(1) & (r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X44_Y53_N26
\r_RX_Byte[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[5]~5_combout\ = (\Decoder0~6_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~6_combout\ & ((r_RX_Byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(5),
	datad => \Decoder0~6_combout\,
	combout => \r_RX_Byte[5]~5_combout\);

-- Location: FF_X44_Y53_N27
\r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(5));

-- Location: LCCOMB_X44_Y53_N16
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!r_Bit_Index(0) & (r_Bit_Index(1) & (r_Bit_Index(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X44_Y53_N8
\r_RX_Byte[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[6]~6_combout\ = (\Decoder0~7_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~7_combout\ & ((r_RX_Byte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_RX_Data~q\,
	datac => r_RX_Byte(6),
	datad => \Decoder0~7_combout\,
	combout => \r_RX_Byte[6]~6_combout\);

-- Location: FF_X44_Y53_N9
\r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(6));

-- Location: LCCOMB_X45_Y53_N20
\r_RX_Byte[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[7]~7_combout\ = (\Decoder0~8_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~8_combout\ & ((r_RX_Byte(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(7),
	datad => \Decoder0~8_combout\,
	combout => \r_RX_Byte[7]~7_combout\);

-- Location: FF_X45_Y53_N21
\r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_RX_Byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(7));

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

ww_o_RX_DV <= \o_RX_DV~output_o\;

ww_o_RX_Byte(0) <= \o_RX_Byte[0]~output_o\;

ww_o_RX_Byte(1) <= \o_RX_Byte[1]~output_o\;

ww_o_RX_Byte(2) <= \o_RX_Byte[2]~output_o\;

ww_o_RX_Byte(3) <= \o_RX_Byte[3]~output_o\;

ww_o_RX_Byte(4) <= \o_RX_Byte[4]~output_o\;

ww_o_RX_Byte(5) <= \o_RX_Byte[5]~output_o\;

ww_o_RX_Byte(6) <= \o_RX_Byte[6]~output_o\;

ww_o_RX_Byte(7) <= \o_RX_Byte[7]~output_o\;
END structure;


