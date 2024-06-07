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

-- DATE "06/07/2024 19:59:31"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	preliminary_control IS
    PORT (
	RX_data_IN : IN std_logic_vector(7 DOWNTO 0);
	RX_data_OUT : OUT std_logic_vector(7 DOWNTO 0);
	EN_SW : IN std_logic
	);
END preliminary_control;

-- Design Ports Information
-- RX_data_OUT[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_OUT[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_SW	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_IN[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_RX_data_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RX_data_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN_SW : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \RX_data_IN[0]~input_o\ : std_logic;
SIGNAL \EN_SW~input_o\ : std_logic;
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

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RX_data_IN <= RX_data_IN;
RX_data_OUT <= ww_RX_data_OUT;
ww_EN_SW <= EN_SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X49_Y54_N16
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

-- Location: IOOBUF_X46_Y54_N2
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

-- Location: IOOBUF_X49_Y54_N2
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X50_Y53_N0
\RX_data_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~0_combout\ = (\RX_data_IN[0]~input_o\) # (!\EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_data_IN[0]~input_o\,
	datad => \EN_SW~input_o\,
	combout => \RX_data_OUT~0_combout\);

-- Location: IOIBUF_X54_Y54_N8
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

-- Location: LCCOMB_X50_Y53_N26
\RX_data_OUT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~1_combout\ = (\RX_data_IN[1]~input_o\) # (!\EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN_SW~input_o\,
	datac => \RX_data_IN[1]~input_o\,
	combout => \RX_data_OUT~1_combout\);

-- Location: IOIBUF_X49_Y54_N22
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

-- Location: LCCOMB_X50_Y53_N20
\RX_data_OUT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~2_combout\ = (\RX_data_IN[2]~input_o\) # (!\EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_data_IN[2]~input_o\,
	datad => \EN_SW~input_o\,
	combout => \RX_data_OUT~2_combout\);

-- Location: IOIBUF_X51_Y54_N15
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

-- Location: LCCOMB_X50_Y53_N30
\RX_data_OUT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~3_combout\ = (\RX_data_IN[3]~input_o\ & \EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_data_IN[3]~input_o\,
	datad => \EN_SW~input_o\,
	combout => \RX_data_OUT~3_combout\);

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: LCCOMB_X50_Y53_N24
\RX_data_OUT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~4_combout\ = (\RX_data_IN[4]~input_o\) # (!\EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_data_IN[4]~input_o\,
	datad => \EN_SW~input_o\,
	combout => \RX_data_OUT~4_combout\);

-- Location: IOIBUF_X51_Y54_N8
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

-- Location: LCCOMB_X50_Y53_N2
\RX_data_OUT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~5_combout\ = (\RX_data_IN[5]~input_o\) # (!\EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_data_IN[5]~input_o\,
	datad => \EN_SW~input_o\,
	combout => \RX_data_OUT~5_combout\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X50_Y53_N12
\RX_data_OUT~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~6_combout\ = (\RX_data_IN[6]~input_o\) # (!\EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_data_IN[6]~input_o\,
	datad => \EN_SW~input_o\,
	combout => \RX_data_OUT~6_combout\);

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X50_Y53_N6
\RX_data_OUT~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_data_OUT~7_combout\ = (\RX_data_IN[7]~input_o\ & \EN_SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_data_IN[7]~input_o\,
	datad => \EN_SW~input_o\,
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


