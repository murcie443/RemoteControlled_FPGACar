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

-- DATE "05/21/2024 00:19:35"

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

ENTITY 	uart_tb IS
    PORT (
	i_Clk : IN std_logic;
	i_RX_Serial : IN std_logic;
	o_RX_Byte : OUT std_logic_vector(7 DOWNTO 0)
	);
END uart_tb;

-- Design Ports Information
-- o_RX_Byte[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[3]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RX_Byte[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_tb IS
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
SIGNAL ww_o_RX_Byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \U1|r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \U1|r_RX_Data_R~q\ : std_logic;
SIGNAL \U1|r_RX_Data~feeder_combout\ : std_logic;
SIGNAL \U1|r_RX_Data~q\ : std_logic;
SIGNAL \U1|r_Clk_Count[0]~7_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[5]~21\ : std_logic;
SIGNAL \U1|r_Clk_Count[6]~22_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Selector12~0_combout\ : std_logic;
SIGNAL \U1|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[0]~17_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[0]~18_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[0]~8\ : std_logic;
SIGNAL \U1|r_Clk_Count[1]~9_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[1]~10\ : std_logic;
SIGNAL \U1|r_Clk_Count[2]~11_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[2]~12\ : std_logic;
SIGNAL \U1|r_Clk_Count[3]~13_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[3]~14\ : std_logic;
SIGNAL \U1|r_Clk_Count[4]~15_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count[4]~16\ : std_logic;
SIGNAL \U1|r_Clk_Count[5]~20_combout\ : std_logic;
SIGNAL \U1|LessThan1~2_combout\ : std_logic;
SIGNAL \U1|Selector10~3_combout\ : std_logic;
SIGNAL \U1|Selector10~2_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Decoder0~0_combout\ : std_logic;
SIGNAL \U1|Decoder0~8_combout\ : std_logic;
SIGNAL \U1|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \U1|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \U1|r_SM_Main~7_combout\ : std_logic;
SIGNAL \U1|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \U1|r_Clk_Count[0]~19_combout\ : std_logic;
SIGNAL \U1|Selector11~0_combout\ : std_logic;
SIGNAL \U1|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \U1|Selector9~2_combout\ : std_logic;
SIGNAL \U1|Selector9~3_combout\ : std_logic;
SIGNAL \U1|Selector13~1_combout\ : std_logic;
SIGNAL \U1|Selector13~0_combout\ : std_logic;
SIGNAL \U1|Selector13~2_combout\ : std_logic;
SIGNAL \U1|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \U1|Selector8~1_combout\ : std_logic;
SIGNAL \U1|Selector8~0_combout\ : std_logic;
SIGNAL \U1|Selector8~2_combout\ : std_logic;
SIGNAL \U1|Decoder0~1_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[0]~0_combout\ : std_logic;
SIGNAL \U1|Decoder0~2_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[1]~1_combout\ : std_logic;
SIGNAL \U1|Decoder0~3_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[2]~2_combout\ : std_logic;
SIGNAL \U1|Decoder0~4_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[3]~3_combout\ : std_logic;
SIGNAL \U1|Decoder0~5_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[4]~4_combout\ : std_logic;
SIGNAL \U1|Decoder0~6_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[5]~5_combout\ : std_logic;
SIGNAL \U1|Decoder0~7_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[6]~6_combout\ : std_logic;
SIGNAL \U1|r_RX_Byte[7]~7_combout\ : std_logic;
SIGNAL \U1|r_Clk_Count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_Clk <= i_Clk;
ww_i_RX_Serial <= i_RX_Serial;
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

-- Location: IOOBUF_X20_Y39_N16
\o_RX_Byte[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(0),
	devoe => ww_devoe,
	o => \o_RX_Byte[0]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\o_RX_Byte[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(1),
	devoe => ww_devoe,
	o => \o_RX_Byte[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\o_RX_Byte[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(2),
	devoe => ww_devoe,
	o => \o_RX_Byte[2]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\o_RX_Byte[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(3),
	devoe => ww_devoe,
	o => \o_RX_Byte[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\o_RX_Byte[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(4),
	devoe => ww_devoe,
	o => \o_RX_Byte[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\o_RX_Byte[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(5),
	devoe => ww_devoe,
	o => \o_RX_Byte[5]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\o_RX_Byte[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(6),
	devoe => ww_devoe,
	o => \o_RX_Byte[6]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\o_RX_Byte[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|r_RX_Byte\(7),
	devoe => ww_devoe,
	o => \o_RX_Byte[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X20_Y39_N8
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

-- Location: LCCOMB_X20_Y38_N10
\U1|r_RX_Data_R~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Data_R~feeder_combout\ = \i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RX_Serial~input_o\,
	combout => \U1|r_RX_Data_R~feeder_combout\);

-- Location: FF_X20_Y38_N11
\U1|r_RX_Data_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Data_R~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Data_R~q\);

-- Location: LCCOMB_X20_Y38_N12
\U1|r_RX_Data~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Data~feeder_combout\ = \U1|r_RX_Data_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|r_RX_Data_R~q\,
	combout => \U1|r_RX_Data~feeder_combout\);

-- Location: FF_X20_Y38_N13
\U1|r_RX_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Data~q\);

-- Location: LCCOMB_X21_Y38_N16
\U1|r_Clk_Count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[0]~7_combout\ = \U1|r_Clk_Count\(0) $ (VCC)
-- \U1|r_Clk_Count[0]~8\ = CARRY(\U1|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|r_Clk_Count\(0),
	datad => VCC,
	combout => \U1|r_Clk_Count[0]~7_combout\,
	cout => \U1|r_Clk_Count[0]~8\);

-- Location: LCCOMB_X21_Y38_N26
\U1|r_Clk_Count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[5]~20_combout\ = (\U1|r_Clk_Count\(5) & (!\U1|r_Clk_Count[4]~16\)) # (!\U1|r_Clk_Count\(5) & ((\U1|r_Clk_Count[4]~16\) # (GND)))
-- \U1|r_Clk_Count[5]~21\ = CARRY((!\U1|r_Clk_Count[4]~16\) # (!\U1|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Clk_Count\(5),
	datad => VCC,
	cin => \U1|r_Clk_Count[4]~16\,
	combout => \U1|r_Clk_Count[5]~20_combout\,
	cout => \U1|r_Clk_Count[5]~21\);

-- Location: LCCOMB_X21_Y38_N28
\U1|r_Clk_Count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[6]~22_combout\ = \U1|r_Clk_Count[5]~21\ $ (!\U1|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|r_Clk_Count\(6),
	cin => \U1|r_Clk_Count[5]~21\,
	combout => \U1|r_Clk_Count[6]~22_combout\);

-- Location: FF_X21_Y38_N29
\U1|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_Clk_Count[6]~22_combout\,
	sclr => \U1|r_Clk_Count[0]~18_combout\,
	ena => \U1|r_Clk_Count[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Clk_Count\(6));

-- Location: LCCOMB_X21_Y38_N2
\U1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|r_Clk_Count\(5) & (!\U1|r_Clk_Count\(1) & (\U1|r_Clk_Count\(4) & !\U1|r_Clk_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Clk_Count\(5),
	datab => \U1|r_Clk_Count\(1),
	datac => \U1|r_Clk_Count\(4),
	datad => \U1|r_Clk_Count\(2),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y38_N6
\U1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|r_Clk_Count\(3) & (!\U1|r_Clk_Count\(6) & (\U1|r_Clk_Count\(0) & \U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Clk_Count\(3),
	datab => \U1|r_Clk_Count\(6),
	datac => \U1|r_Clk_Count\(0),
	datad => \U1|Equal0~1_combout\,
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y38_N14
\U1|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector12~0_combout\ = (\U1|r_RX_Data~q\ & (((\U1|r_SM_Main.s_RX_Start_Bit~q\ & !\U1|Equal0~3_combout\)))) # (!\U1|r_RX_Data~q\ & (((\U1|r_SM_Main.s_RX_Start_Bit~q\ & !\U1|Equal0~3_combout\)) # (!\U1|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datab => \U1|r_SM_Main.s_Idle~q\,
	datac => \U1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Selector12~0_combout\);

-- Location: FF_X20_Y38_N15
\U1|r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X21_Y38_N12
\U1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|r_Clk_Count\(0) & (\U1|r_Clk_Count\(3) & !\U1|r_Clk_Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|r_Clk_Count\(0),
	datac => \U1|r_Clk_Count\(3),
	datad => \U1|r_Clk_Count\(6),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y38_N30
\U1|r_Clk_Count[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[0]~17_combout\ = \U1|r_SM_Main.s_Idle~q\ $ (((\U1|r_SM_Main.s_RX_Start_Bit~q\ & (\U1|Equal0~1_combout\ & \U1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Start_Bit~q\,
	datab => \U1|r_SM_Main.s_Idle~q\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Equal0~2_combout\,
	combout => \U1|r_Clk_Count[0]~17_combout\);

-- Location: LCCOMB_X21_Y38_N0
\U1|r_Clk_Count[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[0]~18_combout\ = \U1|r_Clk_Count[0]~17_combout\ $ ((((!\U1|r_SM_Main.s_RX_Data_Bits~q\ & !\U1|r_SM_Main.s_RX_Stop_Bit~q\)) # (!\U1|Selector10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \U1|r_SM_Main.s_RX_Stop_Bit~q\,
	datac => \U1|r_Clk_Count[0]~17_combout\,
	datad => \U1|Selector10~3_combout\,
	combout => \U1|r_Clk_Count[0]~18_combout\);

-- Location: FF_X21_Y38_N17
\U1|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_Clk_Count[0]~7_combout\,
	sclr => \U1|r_Clk_Count[0]~18_combout\,
	ena => \U1|r_Clk_Count[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Clk_Count\(0));

-- Location: LCCOMB_X21_Y38_N18
\U1|r_Clk_Count[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[1]~9_combout\ = (\U1|r_Clk_Count\(1) & (!\U1|r_Clk_Count[0]~8\)) # (!\U1|r_Clk_Count\(1) & ((\U1|r_Clk_Count[0]~8\) # (GND)))
-- \U1|r_Clk_Count[1]~10\ = CARRY((!\U1|r_Clk_Count[0]~8\) # (!\U1|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Clk_Count\(1),
	datad => VCC,
	cin => \U1|r_Clk_Count[0]~8\,
	combout => \U1|r_Clk_Count[1]~9_combout\,
	cout => \U1|r_Clk_Count[1]~10\);

-- Location: FF_X21_Y38_N19
\U1|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_Clk_Count[1]~9_combout\,
	sclr => \U1|r_Clk_Count[0]~18_combout\,
	ena => \U1|r_Clk_Count[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Clk_Count\(1));

-- Location: LCCOMB_X21_Y38_N20
\U1|r_Clk_Count[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[2]~11_combout\ = (\U1|r_Clk_Count\(2) & (\U1|r_Clk_Count[1]~10\ $ (GND))) # (!\U1|r_Clk_Count\(2) & (!\U1|r_Clk_Count[1]~10\ & VCC))
-- \U1|r_Clk_Count[2]~12\ = CARRY((\U1|r_Clk_Count\(2) & !\U1|r_Clk_Count[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Clk_Count\(2),
	datad => VCC,
	cin => \U1|r_Clk_Count[1]~10\,
	combout => \U1|r_Clk_Count[2]~11_combout\,
	cout => \U1|r_Clk_Count[2]~12\);

-- Location: FF_X21_Y38_N21
\U1|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_Clk_Count[2]~11_combout\,
	sclr => \U1|r_Clk_Count[0]~18_combout\,
	ena => \U1|r_Clk_Count[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Clk_Count\(2));

-- Location: LCCOMB_X21_Y38_N22
\U1|r_Clk_Count[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[3]~13_combout\ = (\U1|r_Clk_Count\(3) & (!\U1|r_Clk_Count[2]~12\)) # (!\U1|r_Clk_Count\(3) & ((\U1|r_Clk_Count[2]~12\) # (GND)))
-- \U1|r_Clk_Count[3]~14\ = CARRY((!\U1|r_Clk_Count[2]~12\) # (!\U1|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|r_Clk_Count\(3),
	datad => VCC,
	cin => \U1|r_Clk_Count[2]~12\,
	combout => \U1|r_Clk_Count[3]~13_combout\,
	cout => \U1|r_Clk_Count[3]~14\);

-- Location: FF_X21_Y38_N23
\U1|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_Clk_Count[3]~13_combout\,
	sclr => \U1|r_Clk_Count[0]~18_combout\,
	ena => \U1|r_Clk_Count[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Clk_Count\(3));

-- Location: LCCOMB_X21_Y38_N24
\U1|r_Clk_Count[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[4]~15_combout\ = (\U1|r_Clk_Count\(4) & (\U1|r_Clk_Count[3]~14\ $ (GND))) # (!\U1|r_Clk_Count\(4) & (!\U1|r_Clk_Count[3]~14\ & VCC))
-- \U1|r_Clk_Count[4]~16\ = CARRY((\U1|r_Clk_Count\(4) & !\U1|r_Clk_Count[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|r_Clk_Count\(4),
	datad => VCC,
	cin => \U1|r_Clk_Count[3]~14\,
	combout => \U1|r_Clk_Count[4]~15_combout\,
	cout => \U1|r_Clk_Count[4]~16\);

-- Location: FF_X21_Y38_N25
\U1|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_Clk_Count[4]~15_combout\,
	sclr => \U1|r_Clk_Count[0]~18_combout\,
	ena => \U1|r_Clk_Count[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Clk_Count\(4));

-- Location: FF_X21_Y38_N27
\U1|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_Clk_Count[5]~20_combout\,
	sclr => \U1|r_Clk_Count[0]~18_combout\,
	ena => \U1|r_Clk_Count[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Clk_Count\(5));

-- Location: LCCOMB_X21_Y38_N14
\U1|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan1~2_combout\ = (!\U1|r_Clk_Count\(1) & (!\U1|r_Clk_Count\(3) & !\U1|r_Clk_Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|r_Clk_Count\(1),
	datac => \U1|r_Clk_Count\(3),
	datad => \U1|r_Clk_Count\(2),
	combout => \U1|LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y38_N10
\U1|Selector10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector10~3_combout\ = (\U1|r_Clk_Count\(5) & (\U1|r_Clk_Count\(6) & (!\U1|LessThan1~2_combout\ & \U1|r_Clk_Count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Clk_Count\(5),
	datab => \U1|r_Clk_Count\(6),
	datac => \U1|LessThan1~2_combout\,
	datad => \U1|r_Clk_Count\(4),
	combout => \U1|Selector10~3_combout\);

-- Location: LCCOMB_X20_Y38_N18
\U1|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector10~2_combout\ = (\U1|r_SM_Main.s_RX_Data_Bits~q\ & (\U1|Selector10~3_combout\ $ ((\U1|r_Bit_Index\(0))))) # (!\U1|r_SM_Main.s_RX_Data_Bits~q\ & (((\U1|r_Bit_Index\(0) & \U1|r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \U1|Selector10~3_combout\,
	datac => \U1|r_Bit_Index\(0),
	datad => \U1|r_SM_Main.s_Idle~q\,
	combout => \U1|Selector10~2_combout\);

-- Location: FF_X20_Y38_N19
\U1|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Bit_Index\(0));

-- Location: LCCOMB_X21_Y38_N8
\U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|r_Clk_Count\(5) & \U1|r_Clk_Count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|r_Clk_Count\(5),
	datad => \U1|r_Clk_Count\(4),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y38_N4
\U1|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~0_combout\ = (\U1|r_SM_Main.s_RX_Data_Bits~q\ & (\U1|r_Clk_Count\(6) & (!\U1|LessThan1~2_combout\ & \U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \U1|r_Clk_Count\(6),
	datac => \U1|LessThan1~2_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|Decoder0~0_combout\);

-- Location: LCCOMB_X22_Y38_N24
\U1|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~8_combout\ = (\U1|r_Bit_Index\(2) & (\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & \U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y38_N22
\U1|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\U1|Decoder0~8_combout\) # ((!\U1|Selector10~3_combout\ & \U1|r_SM_Main.s_RX_Stop_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector10~3_combout\,
	datac => \U1|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \U1|Decoder0~8_combout\,
	combout => \U1|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: FF_X22_Y38_N23
\U1|r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X20_Y38_N0
\U1|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_SM_Main~7_combout\ = (\U1|r_SM_Main.s_RX_Stop_Bit~q\ & (!\U1|LessThan1~2_combout\ & (\U1|Equal0~0_combout\ & \U1|r_Clk_Count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Stop_Bit~q\,
	datab => \U1|LessThan1~2_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|r_Clk_Count\(6),
	combout => \U1|r_SM_Main~7_combout\);

-- Location: FF_X20_Y38_N1
\U1|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X20_Y38_N6
\U1|r_Clk_Count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_Clk_Count[0]~19_combout\ = (!\U1|r_SM_Main.s_Cleanup~q\ & (((!\U1|Equal0~3_combout\) # (!\U1|r_SM_Main.s_RX_Start_Bit~q\)) # (!\U1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datab => \U1|r_SM_Main.s_Cleanup~q\,
	datac => \U1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|r_Clk_Count[0]~19_combout\);

-- Location: LCCOMB_X20_Y38_N24
\U1|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector11~0_combout\ = (\U1|r_Clk_Count[0]~19_combout\ & ((\U1|r_SM_Main.s_Idle~q\) # (!\U1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_SM_Main.s_Idle~q\,
	datad => \U1|r_Clk_Count[0]~19_combout\,
	combout => \U1|Selector11~0_combout\);

-- Location: FF_X20_Y38_N25
\U1|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X20_Y38_N2
\U1|Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector9~2_combout\ = (\U1|r_SM_Main.s_RX_Data_Bits~q\ & (\U1|r_Bit_Index\(1) $ (((\U1|Selector10~3_combout\ & \U1|r_Bit_Index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \U1|r_Bit_Index\(1),
	datac => \U1|Selector10~3_combout\,
	datad => \U1|r_Bit_Index\(0),
	combout => \U1|Selector9~2_combout\);

-- Location: LCCOMB_X20_Y38_N4
\U1|Selector9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector9~3_combout\ = (\U1|Selector9~2_combout\) # ((!\U1|r_SM_Main.s_RX_Data_Bits~q\ & (\U1|r_SM_Main.s_Idle~q\ & \U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \U1|r_SM_Main.s_Idle~q\,
	datac => \U1|r_Bit_Index\(1),
	datad => \U1|Selector9~2_combout\,
	combout => \U1|Selector9~3_combout\);

-- Location: FF_X20_Y38_N5
\U1|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Bit_Index\(1));

-- Location: LCCOMB_X20_Y38_N22
\U1|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector13~1_combout\ = (\U1|r_SM_Main.s_RX_Data_Bits~q\ & (((!\U1|r_Bit_Index\(0)) # (!\U1|r_Bit_Index\(1))) # (!\U1|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(1),
	datac => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \U1|r_Bit_Index\(0),
	combout => \U1|Selector13~1_combout\);

-- Location: LCCOMB_X20_Y38_N28
\U1|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector13~0_combout\ = (!\U1|r_RX_Data~q\ & (\U1|r_SM_Main.s_RX_Start_Bit~q\ & (\U1|Equal0~2_combout\ & \U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datab => \U1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \U1|Equal0~2_combout\,
	datad => \U1|Equal0~1_combout\,
	combout => \U1|Selector13~0_combout\);

-- Location: LCCOMB_X20_Y38_N8
\U1|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector13~2_combout\ = (\U1|Selector13~1_combout\) # ((\U1|Selector13~0_combout\) # ((!\U1|Selector10~3_combout\ & \U1|r_SM_Main.s_RX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector13~1_combout\,
	datab => \U1|Selector10~3_combout\,
	datac => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \U1|Selector13~0_combout\,
	combout => \U1|Selector13~2_combout\);

-- Location: FF_X20_Y38_N9
\U1|r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X20_Y38_N20
\U1|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector8~1_combout\ = (\U1|r_SM_Main.s_RX_Data_Bits~q\ & (((!\U1|r_Bit_Index\(0)) # (!\U1|Selector10~3_combout\)))) # (!\U1|r_SM_Main.s_RX_Data_Bits~q\ & (\U1|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \U1|r_SM_Main.s_Idle~q\,
	datac => \U1|Selector10~3_combout\,
	datad => \U1|r_Bit_Index\(0),
	combout => \U1|Selector8~1_combout\);

-- Location: LCCOMB_X20_Y38_N16
\U1|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector8~0_combout\ = (\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & (\U1|r_Bit_Index\(2) $ (\U1|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|r_Bit_Index\(1),
	datad => \U1|Decoder0~0_combout\,
	combout => \U1|Selector8~0_combout\);

-- Location: LCCOMB_X20_Y38_N26
\U1|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector8~2_combout\ = (\U1|Selector8~0_combout\) # ((\U1|Selector8~1_combout\ & \U1|r_Bit_Index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector8~1_combout\,
	datac => \U1|r_Bit_Index\(2),
	datad => \U1|Selector8~0_combout\,
	combout => \U1|Selector8~2_combout\);

-- Location: FF_X20_Y38_N27
\U1|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_Bit_Index\(2));

-- Location: LCCOMB_X22_Y38_N10
\U1|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~1_combout\ = (!\U1|r_Bit_Index\(2) & (!\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & !\U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y38_N8
\U1|r_RX_Byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[0]~0_combout\ = (\U1|Decoder0~1_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~1_combout\ & ((\U1|r_RX_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(0),
	datad => \U1|Decoder0~1_combout\,
	combout => \U1|r_RX_Byte[0]~0_combout\);

-- Location: FF_X22_Y38_N9
\U1|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(0));

-- Location: LCCOMB_X22_Y38_N20
\U1|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~2_combout\ = (!\U1|r_Bit_Index\(2) & (\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & !\U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y38_N2
\U1|r_RX_Byte[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[1]~1_combout\ = (\U1|Decoder0~2_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~2_combout\ & ((\U1|r_RX_Byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(1),
	datad => \U1|Decoder0~2_combout\,
	combout => \U1|r_RX_Byte[1]~1_combout\);

-- Location: FF_X22_Y38_N3
\U1|r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(1));

-- Location: LCCOMB_X22_Y38_N18
\U1|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~3_combout\ = (!\U1|r_Bit_Index\(2) & (!\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & \U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y38_N4
\U1|r_RX_Byte[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[2]~2_combout\ = (\U1|Decoder0~3_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~3_combout\ & ((\U1|r_RX_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(2),
	datad => \U1|Decoder0~3_combout\,
	combout => \U1|r_RX_Byte[2]~2_combout\);

-- Location: FF_X22_Y38_N5
\U1|r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(2));

-- Location: LCCOMB_X22_Y38_N12
\U1|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~4_combout\ = (!\U1|r_Bit_Index\(2) & (\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & \U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~4_combout\);

-- Location: LCCOMB_X22_Y38_N26
\U1|r_RX_Byte[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[3]~3_combout\ = (\U1|Decoder0~4_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~4_combout\ & ((\U1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(3),
	datad => \U1|Decoder0~4_combout\,
	combout => \U1|r_RX_Byte[3]~3_combout\);

-- Location: FF_X22_Y38_N27
\U1|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(3));

-- Location: LCCOMB_X22_Y38_N14
\U1|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~5_combout\ = (\U1|r_Bit_Index\(2) & (!\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & !\U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y38_N16
\U1|r_RX_Byte[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[4]~4_combout\ = (\U1|Decoder0~5_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~5_combout\ & ((\U1|r_RX_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(4),
	datad => \U1|Decoder0~5_combout\,
	combout => \U1|r_RX_Byte[4]~4_combout\);

-- Location: FF_X23_Y38_N17
\U1|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(4));

-- Location: LCCOMB_X22_Y38_N0
\U1|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~6_combout\ = (\U1|r_Bit_Index\(2) & (\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & !\U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y38_N28
\U1|r_RX_Byte[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[5]~5_combout\ = (\U1|Decoder0~6_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~6_combout\ & ((\U1|r_RX_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(5),
	datad => \U1|Decoder0~6_combout\,
	combout => \U1|r_RX_Byte[5]~5_combout\);

-- Location: FF_X22_Y38_N29
\U1|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(5));

-- Location: LCCOMB_X22_Y38_N6
\U1|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Decoder0~7_combout\ = (\U1|r_Bit_Index\(2) & (!\U1|r_Bit_Index\(0) & (\U1|Decoder0~0_combout\ & \U1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_Bit_Index\(2),
	datab => \U1|r_Bit_Index\(0),
	datac => \U1|Decoder0~0_combout\,
	datad => \U1|r_Bit_Index\(1),
	combout => \U1|Decoder0~7_combout\);

-- Location: LCCOMB_X22_Y38_N30
\U1|r_RX_Byte[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[6]~6_combout\ = (\U1|Decoder0~7_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~7_combout\ & ((\U1|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(6),
	datad => \U1|Decoder0~7_combout\,
	combout => \U1|r_RX_Byte[6]~6_combout\);

-- Location: FF_X22_Y38_N31
\U1|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(6));

-- Location: LCCOMB_X22_Y38_N16
\U1|r_RX_Byte[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|r_RX_Byte[7]~7_combout\ = (\U1|Decoder0~8_combout\ & (\U1|r_RX_Data~q\)) # (!\U1|Decoder0~8_combout\ & ((\U1|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|r_RX_Data~q\,
	datac => \U1|r_RX_Byte\(7),
	datad => \U1|Decoder0~8_combout\,
	combout => \U1|r_RX_Byte[7]~7_combout\);

-- Location: FF_X22_Y38_N17
\U1|r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \U1|r_RX_Byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|r_RX_Byte\(7));

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

ww_o_RX_Byte(0) <= \o_RX_Byte[0]~output_o\;

ww_o_RX_Byte(1) <= \o_RX_Byte[1]~output_o\;

ww_o_RX_Byte(2) <= \o_RX_Byte[2]~output_o\;

ww_o_RX_Byte(3) <= \o_RX_Byte[3]~output_o\;

ww_o_RX_Byte(4) <= \o_RX_Byte[4]~output_o\;

ww_o_RX_Byte(5) <= \o_RX_Byte[5]~output_o\;

ww_o_RX_Byte(6) <= \o_RX_Byte[6]~output_o\;

ww_o_RX_Byte(7) <= \o_RX_Byte[7]~output_o\;
END structure;


