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

-- DATE "06/07/2024 22:16:23"

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
	PWM_DCmot : OUT std_logic;
	CLK : IN std_logic;
	SW0 : IN std_logic;
	i_RX_Serial : IN std_logic;
	PWM_DCmot_rev : OUT std_logic;
	FRONT_LED : OUT std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	BACK_LED : OUT std_logic;
	PWM_SVmot : OUT std_logic
	);
END Main;

-- Design Ports Information
-- PWM_DCmot	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_DCmot_rev	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FRONT_LED	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BACK_LED	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_SVmot	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_PWM_DCmot : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_PWM_DCmot_rev : std_logic;
SIGNAL ww_FRONT_LED : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_BACK_LED : std_logic;
SIGNAL ww_PWM_SVmot : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~q\ : std_logic;
SIGNAL \inst1|r_RX_Data~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[0]~15_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[11]~41_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[11]~43_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[11]~42_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[0]~16\ : std_logic;
SIGNAL \inst1|r_Clk_Count[1]~17_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[1]~18\ : std_logic;
SIGNAL \inst1|r_Clk_Count[2]~19_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[2]~20\ : std_logic;
SIGNAL \inst1|r_Clk_Count[3]~21_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[3]~22\ : std_logic;
SIGNAL \inst1|r_Clk_Count[4]~23_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[4]~24\ : std_logic;
SIGNAL \inst1|r_Clk_Count[5]~25_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[5]~26\ : std_logic;
SIGNAL \inst1|r_Clk_Count[6]~27_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[6]~28\ : std_logic;
SIGNAL \inst1|r_Clk_Count[7]~29_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[7]~30\ : std_logic;
SIGNAL \inst1|r_Clk_Count[8]~31_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[8]~32\ : std_logic;
SIGNAL \inst1|r_Clk_Count[9]~33_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[9]~34\ : std_logic;
SIGNAL \inst1|r_Clk_Count[10]~35_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[10]~36\ : std_logic;
SIGNAL \inst1|r_Clk_Count[11]~37_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[11]~38\ : std_logic;
SIGNAL \inst1|r_Clk_Count[12]~39_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \inst1|r_SM_Main~7_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \inst1|Selector19~1_combout\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~1_combout\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~1_combout\ : std_logic;
SIGNAL \inst1|Selector14~1_combout\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~2_combout\ : std_logic;
SIGNAL \inst1|Selector19~2_combout\ : std_logic;
SIGNAL \inst1|Selector19~3_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[7]~0_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst5|U0|counter~0_combout\ : std_logic;
SIGNAL \inst5|U0|counter~1_combout\ : std_logic;
SIGNAL \inst5|U0|counter~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~7_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[4]~6_combout\ : std_logic;
SIGNAL \inst5|U_rev|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~6_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[5]~5_combout\ : std_logic;
SIGNAL \inst|RX_data_OUT[5]~0_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~8_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[6]~7_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|PWM_DCmot~0_combout\ : std_logic;
SIGNAL \inst5|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|U_rev|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|U_rev|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|U_rev|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|PWM_DCmot_rev~0_combout\ : std_logic;
SIGNAL \inst5|PWM_DCmot_rev~q\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|counter~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|counter~1_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|counter~2_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|counter~3_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[2]~1_combout\ : std_logic;
SIGNAL \inst3|innercounter~5_combout\ : std_logic;
SIGNAL \inst1|Decoder0~5_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[0]~4_combout\ : std_logic;
SIGNAL \inst|RX_data_OUT[0]~1_combout\ : std_logic;
SIGNAL \inst3|LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|LessThan3~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~3_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[1]~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~4_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[3]~3_combout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~14_combout\ : std_logic;
SIGNAL \inst3|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|innercounter[3]~1_combout\ : std_logic;
SIGNAL \inst3|flag~0_combout\ : std_logic;
SIGNAL \inst3|flag~q\ : std_logic;
SIGNAL \inst3|innercounter[3]~2_combout\ : std_logic;
SIGNAL \inst3|innercounter[3]~3_combout\ : std_logic;
SIGNAL \inst3|innercounter~0_combout\ : std_logic;
SIGNAL \inst3|innercounter~6_combout\ : std_logic;
SIGNAL \inst3|innercounter~4_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~4_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~5_combout\ : std_logic;
SIGNAL \inst3|LessThan4~0_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~6_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~7_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~9_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~8_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~10_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~11_combout\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~12_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~1_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~2_combout\ : std_logic;
SIGNAL \inst3|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~3_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~13_combout\ : std_logic;
SIGNAL \inst3|PWM_SVmot~q\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|U0|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|innercounter\ : std_logic_vector(3 DOWNTO 0);

BEGIN

PWM_DCmot <= ww_PWM_DCmot;
ww_CLK <= CLK;
ww_SW0 <= SW0;
ww_i_RX_Serial <= i_RX_Serial;
PWM_DCmot_rev <= ww_PWM_DCmot_rev;
FRONT_LED <= ww_FRONT_LED;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
BACK_LED <= ww_BACK_LED;
PWM_SVmot <= ww_PWM_SVmot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(1));

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: LCCOMB_X44_Y44_N20
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
\PWM_DCmot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|PWM_DCmot~q\,
	devoe => ww_devoe,
	o => ww_PWM_DCmot);

-- Location: IOOBUF_X62_Y0_N16
\PWM_DCmot_rev~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|PWM_DCmot_rev~q\,
	devoe => ww_devoe,
	o => ww_PWM_DCmot_rev);

-- Location: IOOBUF_X34_Y0_N16
\FRONT_LED~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_FRONT_LED);

-- Location: IOOBUF_X34_Y0_N9
\BACK_LED~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_BACK_LED);

-- Location: IOOBUF_X56_Y0_N2
\PWM_SVmot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|PWM_SVmot~q\,
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
\inst2|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
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
	c2_high => 10,
	c2_initial => 1,
	c2_low => 10,
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
	clk1_divide_by => 2500,
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
	fbin => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G19
\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

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

-- Location: LCCOMB_X54_Y4_N8
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

-- Location: FF_X54_Y4_N9
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

-- Location: FF_X54_Y4_N21
\inst1|r_RX_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|r_RX_Data_R~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Data~q\);

-- Location: LCCOMB_X55_Y5_N2
\inst1|r_Clk_Count[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[0]~15_combout\ = \inst1|r_Clk_Count\(0) $ (VCC)
-- \inst1|r_Clk_Count[0]~16\ = CARRY(\inst1|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(0),
	datad => VCC,
	combout => \inst1|r_Clk_Count[0]~15_combout\,
	cout => \inst1|r_Clk_Count[0]~16\);

-- Location: LCCOMB_X55_Y5_N0
\inst1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|r_Clk_Count\(8) & (\inst1|r_Clk_Count\(0) & (\inst1|r_Clk_Count\(1) & !\inst1|r_Clk_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(8),
	datab => \inst1|r_Clk_Count\(0),
	datac => \inst1|r_Clk_Count\(1),
	datad => \inst1|r_Clk_Count\(7),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y5_N18
\inst1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|r_Clk_Count\(3) & (!\inst1|r_Clk_Count\(4) & (!\inst1|r_Clk_Count\(2) & \inst1|r_Clk_Count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(3),
	datab => \inst1|r_Clk_Count\(4),
	datac => \inst1|r_Clk_Count\(2),
	datad => \inst1|r_Clk_Count\(5),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y5_N24
\inst1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|r_Clk_Count\(6) & (!\inst1|r_Clk_Count\(10) & (\inst1|r_Clk_Count\(11) & \inst1|r_Clk_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(6),
	datab => \inst1|r_Clk_Count\(10),
	datac => \inst1|r_Clk_Count\(11),
	datad => \inst1|r_Clk_Count\(9),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y5_N30
\inst1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|Equal0~0_combout\ & (\inst1|Equal0~1_combout\ & (!\inst1|r_Clk_Count\(12) & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|r_Clk_Count\(12),
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y5_N6
\inst1|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|r_Clk_Count\(8) & (!\inst1|r_Clk_Count\(9) & (!\inst1|r_Clk_Count\(7) & !\inst1|r_Clk_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(8),
	datab => \inst1|r_Clk_Count\(9),
	datac => \inst1|r_Clk_Count\(7),
	datad => \inst1|r_Clk_Count\(11),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X55_Y5_N28
\inst1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|r_Clk_Count\(3) & (((!\inst1|r_Clk_Count\(0)) # (!\inst1|r_Clk_Count\(1))) # (!\inst1|r_Clk_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(2),
	datab => \inst1|r_Clk_Count\(1),
	datac => \inst1|r_Clk_Count\(3),
	datad => \inst1|r_Clk_Count\(0),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y5_N8
\inst1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ((!\inst1|r_Clk_Count\(5) & ((\inst1|LessThan1~0_combout\) # (!\inst1|r_Clk_Count\(4))))) # (!\inst1|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(6),
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|r_Clk_Count\(4),
	datad => \inst1|r_Clk_Count\(5),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y5_N20
\inst1|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (\inst1|LessThan1~2_combout\ & ((\inst1|LessThan1~1_combout\) # ((!\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count\(11))))) # (!\inst1|LessThan1~2_combout\ & (!\inst1|r_Clk_Count\(10) & ((!\inst1|r_Clk_Count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~2_combout\,
	datab => \inst1|r_Clk_Count\(10),
	datac => \inst1|LessThan1~1_combout\,
	datad => \inst1|r_Clk_Count\(11),
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X54_Y4_N4
\inst1|r_Clk_Count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[11]~41_combout\ = (\inst1|r_Clk_Count\(12) & (!\inst1|LessThan1~3_combout\ & ((\inst1|r_SM_Main.s_RX_Stop_Bit~q\) # (\inst1|r_SM_Main.s_RX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Clk_Count\(12),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|r_Clk_Count[11]~41_combout\);

-- Location: LCCOMB_X54_Y4_N2
\inst1|r_Clk_Count[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[11]~43_combout\ = ((\inst1|r_Clk_Count[11]~41_combout\) # ((\inst1|Equal0~3_combout\ & \inst1|r_SM_Main.s_RX_Start_Bit~q\))) # (!\inst1|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|Equal0~3_combout\,
	datac => \inst1|r_Clk_Count[11]~41_combout\,
	datad => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	combout => \inst1|r_Clk_Count[11]~43_combout\);

-- Location: LCCOMB_X54_Y4_N20
\inst1|r_Clk_Count[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[11]~42_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((!\inst1|Equal0~3_combout\) # (!\inst1|r_RX_Data~q\)) # (!\inst1|r_SM_Main.s_RX_Start_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datab => \inst1|r_SM_Main.s_Cleanup~q\,
	datac => \inst1|r_RX_Data~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|r_Clk_Count[11]~42_combout\);

-- Location: FF_X55_Y5_N3
\inst1|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[0]~15_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(0));

-- Location: LCCOMB_X55_Y5_N4
\inst1|r_Clk_Count[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[1]~17_combout\ = (\inst1|r_Clk_Count\(1) & (!\inst1|r_Clk_Count[0]~16\)) # (!\inst1|r_Clk_Count\(1) & ((\inst1|r_Clk_Count[0]~16\) # (GND)))
-- \inst1|r_Clk_Count[1]~18\ = CARRY((!\inst1|r_Clk_Count[0]~16\) # (!\inst1|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(1),
	datad => VCC,
	cin => \inst1|r_Clk_Count[0]~16\,
	combout => \inst1|r_Clk_Count[1]~17_combout\,
	cout => \inst1|r_Clk_Count[1]~18\);

-- Location: FF_X55_Y5_N5
\inst1|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[1]~17_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(1));

-- Location: LCCOMB_X55_Y5_N6
\inst1|r_Clk_Count[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[2]~19_combout\ = (\inst1|r_Clk_Count\(2) & (\inst1|r_Clk_Count[1]~18\ $ (GND))) # (!\inst1|r_Clk_Count\(2) & (!\inst1|r_Clk_Count[1]~18\ & VCC))
-- \inst1|r_Clk_Count[2]~20\ = CARRY((\inst1|r_Clk_Count\(2) & !\inst1|r_Clk_Count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(2),
	datad => VCC,
	cin => \inst1|r_Clk_Count[1]~18\,
	combout => \inst1|r_Clk_Count[2]~19_combout\,
	cout => \inst1|r_Clk_Count[2]~20\);

-- Location: FF_X55_Y5_N7
\inst1|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[2]~19_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(2));

-- Location: LCCOMB_X55_Y5_N8
\inst1|r_Clk_Count[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[3]~21_combout\ = (\inst1|r_Clk_Count\(3) & (!\inst1|r_Clk_Count[2]~20\)) # (!\inst1|r_Clk_Count\(3) & ((\inst1|r_Clk_Count[2]~20\) # (GND)))
-- \inst1|r_Clk_Count[3]~22\ = CARRY((!\inst1|r_Clk_Count[2]~20\) # (!\inst1|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(3),
	datad => VCC,
	cin => \inst1|r_Clk_Count[2]~20\,
	combout => \inst1|r_Clk_Count[3]~21_combout\,
	cout => \inst1|r_Clk_Count[3]~22\);

-- Location: FF_X55_Y5_N9
\inst1|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[3]~21_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(3));

-- Location: LCCOMB_X55_Y5_N10
\inst1|r_Clk_Count[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[4]~23_combout\ = (\inst1|r_Clk_Count\(4) & (\inst1|r_Clk_Count[3]~22\ $ (GND))) # (!\inst1|r_Clk_Count\(4) & (!\inst1|r_Clk_Count[3]~22\ & VCC))
-- \inst1|r_Clk_Count[4]~24\ = CARRY((\inst1|r_Clk_Count\(4) & !\inst1|r_Clk_Count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(4),
	datad => VCC,
	cin => \inst1|r_Clk_Count[3]~22\,
	combout => \inst1|r_Clk_Count[4]~23_combout\,
	cout => \inst1|r_Clk_Count[4]~24\);

-- Location: FF_X55_Y5_N11
\inst1|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[4]~23_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(4));

-- Location: LCCOMB_X55_Y5_N12
\inst1|r_Clk_Count[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[5]~25_combout\ = (\inst1|r_Clk_Count\(5) & (!\inst1|r_Clk_Count[4]~24\)) # (!\inst1|r_Clk_Count\(5) & ((\inst1|r_Clk_Count[4]~24\) # (GND)))
-- \inst1|r_Clk_Count[5]~26\ = CARRY((!\inst1|r_Clk_Count[4]~24\) # (!\inst1|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(5),
	datad => VCC,
	cin => \inst1|r_Clk_Count[4]~24\,
	combout => \inst1|r_Clk_Count[5]~25_combout\,
	cout => \inst1|r_Clk_Count[5]~26\);

-- Location: FF_X55_Y5_N13
\inst1|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[5]~25_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(5));

-- Location: LCCOMB_X55_Y5_N14
\inst1|r_Clk_Count[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[6]~27_combout\ = (\inst1|r_Clk_Count\(6) & (\inst1|r_Clk_Count[5]~26\ $ (GND))) # (!\inst1|r_Clk_Count\(6) & (!\inst1|r_Clk_Count[5]~26\ & VCC))
-- \inst1|r_Clk_Count[6]~28\ = CARRY((\inst1|r_Clk_Count\(6) & !\inst1|r_Clk_Count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(6),
	datad => VCC,
	cin => \inst1|r_Clk_Count[5]~26\,
	combout => \inst1|r_Clk_Count[6]~27_combout\,
	cout => \inst1|r_Clk_Count[6]~28\);

-- Location: FF_X55_Y5_N15
\inst1|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[6]~27_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(6));

-- Location: LCCOMB_X55_Y5_N16
\inst1|r_Clk_Count[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[7]~29_combout\ = (\inst1|r_Clk_Count\(7) & (!\inst1|r_Clk_Count[6]~28\)) # (!\inst1|r_Clk_Count\(7) & ((\inst1|r_Clk_Count[6]~28\) # (GND)))
-- \inst1|r_Clk_Count[7]~30\ = CARRY((!\inst1|r_Clk_Count[6]~28\) # (!\inst1|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(7),
	datad => VCC,
	cin => \inst1|r_Clk_Count[6]~28\,
	combout => \inst1|r_Clk_Count[7]~29_combout\,
	cout => \inst1|r_Clk_Count[7]~30\);

-- Location: FF_X55_Y5_N17
\inst1|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[7]~29_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(7));

-- Location: LCCOMB_X55_Y5_N18
\inst1|r_Clk_Count[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[8]~31_combout\ = (\inst1|r_Clk_Count\(8) & (\inst1|r_Clk_Count[7]~30\ $ (GND))) # (!\inst1|r_Clk_Count\(8) & (!\inst1|r_Clk_Count[7]~30\ & VCC))
-- \inst1|r_Clk_Count[8]~32\ = CARRY((\inst1|r_Clk_Count\(8) & !\inst1|r_Clk_Count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(8),
	datad => VCC,
	cin => \inst1|r_Clk_Count[7]~30\,
	combout => \inst1|r_Clk_Count[8]~31_combout\,
	cout => \inst1|r_Clk_Count[8]~32\);

-- Location: FF_X55_Y5_N19
\inst1|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[8]~31_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(8));

-- Location: LCCOMB_X55_Y5_N20
\inst1|r_Clk_Count[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[9]~33_combout\ = (\inst1|r_Clk_Count\(9) & (!\inst1|r_Clk_Count[8]~32\)) # (!\inst1|r_Clk_Count\(9) & ((\inst1|r_Clk_Count[8]~32\) # (GND)))
-- \inst1|r_Clk_Count[9]~34\ = CARRY((!\inst1|r_Clk_Count[8]~32\) # (!\inst1|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(9),
	datad => VCC,
	cin => \inst1|r_Clk_Count[8]~32\,
	combout => \inst1|r_Clk_Count[9]~33_combout\,
	cout => \inst1|r_Clk_Count[9]~34\);

-- Location: FF_X55_Y5_N21
\inst1|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[9]~33_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(9));

-- Location: LCCOMB_X55_Y5_N22
\inst1|r_Clk_Count[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[10]~35_combout\ = (\inst1|r_Clk_Count\(10) & (\inst1|r_Clk_Count[9]~34\ $ (GND))) # (!\inst1|r_Clk_Count\(10) & (!\inst1|r_Clk_Count[9]~34\ & VCC))
-- \inst1|r_Clk_Count[10]~36\ = CARRY((\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(10),
	datad => VCC,
	cin => \inst1|r_Clk_Count[9]~34\,
	combout => \inst1|r_Clk_Count[10]~35_combout\,
	cout => \inst1|r_Clk_Count[10]~36\);

-- Location: FF_X55_Y5_N23
\inst1|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[10]~35_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(10));

-- Location: LCCOMB_X55_Y5_N24
\inst1|r_Clk_Count[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[11]~37_combout\ = (\inst1|r_Clk_Count\(11) & (!\inst1|r_Clk_Count[10]~36\)) # (!\inst1|r_Clk_Count\(11) & ((\inst1|r_Clk_Count[10]~36\) # (GND)))
-- \inst1|r_Clk_Count[11]~38\ = CARRY((!\inst1|r_Clk_Count[10]~36\) # (!\inst1|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(11),
	datad => VCC,
	cin => \inst1|r_Clk_Count[10]~36\,
	combout => \inst1|r_Clk_Count[11]~37_combout\,
	cout => \inst1|r_Clk_Count[11]~38\);

-- Location: FF_X55_Y5_N25
\inst1|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[11]~37_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(11));

-- Location: LCCOMB_X55_Y5_N26
\inst1|r_Clk_Count[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[12]~39_combout\ = \inst1|r_Clk_Count\(12) $ (!\inst1|r_Clk_Count[11]~38\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	cin => \inst1|r_Clk_Count[11]~38\,
	combout => \inst1|r_Clk_Count[12]~39_combout\);

-- Location: FF_X55_Y5_N27
\inst1|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[12]~39_combout\,
	sclr => \inst1|r_Clk_Count[11]~43_combout\,
	ena => \inst1|r_Clk_Count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(12));

-- Location: LCCOMB_X54_Y4_N26
\inst1|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\inst1|Decoder0~1_combout\) # ((\inst1|r_SM_Main.s_RX_Stop_Bit~q\ & ((\inst1|LessThan1~3_combout\) # (!\inst1|r_Clk_Count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst1|Decoder0~1_combout\,
	combout => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: FF_X54_Y4_N27
\inst1|r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X54_Y4_N18
\inst1|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main~7_combout\ = (\inst1|r_SM_Main.s_RX_Stop_Bit~q\ & (\inst1|r_Clk_Count\(12) & !\inst1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datac => \inst1|r_Clk_Count\(12),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|r_SM_Main~7_combout\);

-- Location: FF_X54_Y4_N19
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

-- Location: LCCOMB_X54_Y4_N30
\inst1|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((!\inst1|Selector19~1_combout\ & \inst1|r_SM_Main.s_Idle~q\)) # (!\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~1_combout\,
	datab => \inst1|r_SM_Main.s_Cleanup~q\,
	datac => \inst1|r_SM_Main.s_Idle~q\,
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|Selector17~0_combout\);

-- Location: FF_X54_Y4_N31
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

-- Location: LCCOMB_X54_Y4_N10
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

-- Location: FF_X54_Y4_N11
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

-- Location: LCCOMB_X54_Y4_N6
\inst1|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~1_combout\ = (\inst1|r_SM_Main.s_RX_Start_Bit~q\ & \inst1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Selector19~1_combout\);

-- Location: LCCOMB_X54_Y4_N0
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

-- Location: LCCOMB_X55_Y4_N24
\inst1|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~1_combout\ = (\inst1|Selector16~0_combout\ & (\inst1|r_Bit_Index\(0) $ (((\inst1|r_SM_Main.s_RX_Data_Bits~q\ & !\inst1|LessThan1~3_combout\))))) # (!\inst1|Selector16~0_combout\ & (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & 
-- (\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector16~0_combout\,
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(0),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector16~1_combout\);

-- Location: FF_X55_Y4_N25
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

-- Location: LCCOMB_X54_Y4_N28
\inst1|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|LessThan1~3_combout\) # (!\inst1|r_Clk_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Clk_Count\(12),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector19~0_combout\);

-- Location: LCCOMB_X54_Y4_N22
\inst1|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = (\inst1|r_Bit_Index\(1) & ((\inst1|Selector19~0_combout\) # ((!\inst1|r_Bit_Index\(0) & \inst1|Decoder0~0_combout\)))) # (!\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(0) & ((\inst1|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(0),
	datab => \inst1|Selector19~0_combout\,
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(1),
	combout => \inst1|Selector15~0_combout\);

-- Location: LCCOMB_X54_Y4_N24
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

-- Location: FF_X54_Y4_N25
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

-- Location: LCCOMB_X55_Y4_N20
\inst1|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~1_combout\ = (\inst1|r_Bit_Index\(0) & (\inst1|r_Bit_Index\(1) $ (\inst1|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector14~1_combout\);

-- Location: LCCOMB_X55_Y4_N10
\inst1|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((\inst1|LessThan1~3_combout\) # (!\inst1|Selector16~0_combout\)) # (!\inst1|r_Bit_Index\(0)))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((\inst1|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst1|r_Bit_Index\(0),
	datac => \inst1|Selector16~0_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector14~0_combout\);

-- Location: LCCOMB_X55_Y4_N30
\inst1|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~2_combout\ = (\inst1|Decoder0~0_combout\ & ((\inst1|Selector14~1_combout\) # ((\inst1|r_Bit_Index\(2) & \inst1|Selector14~0_combout\)))) # (!\inst1|Decoder0~0_combout\ & (((\inst1|r_Bit_Index\(2) & \inst1|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|Selector14~1_combout\,
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|Selector14~0_combout\,
	combout => \inst1|Selector14~2_combout\);

-- Location: FF_X55_Y4_N31
\inst1|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Bit_Index\(2));

-- Location: LCCOMB_X55_Y4_N26
\inst1|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~2_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((!\inst1|r_Bit_Index\(0)) # (!\inst1|r_Bit_Index\(2))) # (!\inst1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector19~2_combout\);

-- Location: LCCOMB_X54_Y4_N12
\inst1|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~3_combout\ = (\inst1|Selector19~2_combout\) # ((\inst1|Selector19~0_combout\) # ((\inst1|Selector19~1_combout\ & !\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~1_combout\,
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|Selector19~2_combout\,
	datad => \inst1|Selector19~0_combout\,
	combout => \inst1|Selector19~3_combout\);

-- Location: FF_X54_Y4_N13
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

-- Location: LCCOMB_X54_Y4_N14
\inst1|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Clk_Count\(12) & !\inst1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Clk_Count\(12),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X55_Y4_N4
\inst1|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~1_combout\ = (\inst1|Decoder0~0_combout\ & (\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(2) & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X54_Y4_N16
\inst1|r_RX_Byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[7]~0_combout\ = (\inst1|Decoder0~1_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~1_combout\ & ((\inst1|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(7),
	datad => \inst1|Decoder0~1_combout\,
	combout => \inst1|r_RX_Byte[7]~0_combout\);

-- Location: FF_X54_Y4_N17
\inst1|r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(7));

-- Location: IOIBUF_X51_Y54_N29
\SW0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X59_Y4_N16
\inst5|U0|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~0_combout\ = (!\inst5|U0|counter\(0) & ((!\inst5|U0|counter\(2)) # (!\inst5|U0|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(1),
	datac => \inst5|U0|counter\(0),
	datad => \inst5|U0|counter\(2),
	combout => \inst5|U0|counter~0_combout\);

-- Location: FF_X59_Y4_N17
\inst5|U0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(0));

-- Location: LCCOMB_X59_Y4_N12
\inst5|U0|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~1_combout\ = (\inst5|U0|counter\(1) & (!\inst5|U0|counter\(2) & !\inst5|U0|counter\(0))) # (!\inst5|U0|counter\(1) & ((\inst5|U0|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(2),
	datac => \inst5|U0|counter\(1),
	datad => \inst5|U0|counter\(0),
	combout => \inst5|U0|counter~1_combout\);

-- Location: FF_X59_Y4_N13
\inst5|U0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(1));

-- Location: LCCOMB_X59_Y4_N6
\inst5|U0|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~2_combout\ = (\inst5|U0|counter\(1) & (!\inst5|U0|counter\(2) & \inst5|U0|counter\(0))) # (!\inst5|U0|counter\(1) & (\inst5|U0|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(1),
	datac => \inst5|U0|counter\(2),
	datad => \inst5|U0|counter\(0),
	combout => \inst5|U0|counter~2_combout\);

-- Location: FF_X59_Y4_N7
\inst5|U0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(2));

-- Location: LCCOMB_X55_Y4_N18
\inst1|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~7_combout\ = (\inst1|Decoder0~0_combout\ & (!\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(2) & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~7_combout\);

-- Location: LCCOMB_X56_Y4_N12
\inst1|r_RX_Byte[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[4]~6_combout\ = (\inst1|Decoder0~7_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~7_combout\ & ((\inst1|r_RX_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst1|Decoder0~7_combout\,
	combout => \inst1|r_RX_Byte[4]~6_combout\);

-- Location: FF_X56_Y4_N13
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

-- Location: LCCOMB_X59_Y4_N22
\inst5|U_rev|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|LessThan0~0_combout\ = (\SW0~input_o\ & !\inst1|r_RX_Byte\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~input_o\,
	datad => \inst1|r_RX_Byte\(4),
	combout => \inst5|U_rev|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y4_N12
\inst1|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~6_combout\ = (\inst1|Decoder0~0_combout\ & (!\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(2) & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~6_combout\);

-- Location: LCCOMB_X59_Y4_N0
\inst1|r_RX_Byte[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[5]~5_combout\ = (\inst1|Decoder0~6_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~6_combout\ & ((\inst1|r_RX_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst1|Decoder0~6_combout\,
	combout => \inst1|r_RX_Byte[5]~5_combout\);

-- Location: FF_X59_Y4_N1
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

-- Location: LCCOMB_X59_Y4_N10
\inst|RX_data_OUT[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|RX_data_OUT[5]~0_combout\ = (\inst1|r_RX_Byte\(5)) # (!\SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~input_o\,
	datad => \inst1|r_RX_Byte\(5),
	combout => \inst|RX_data_OUT[5]~0_combout\);

-- Location: LCCOMB_X59_Y4_N14
\inst5|U0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~0_combout\ = (\inst5|U0|counter\(1) & (!\inst5|U0|counter\(0) & (!\inst5|U_rev|LessThan0~0_combout\ & \inst|RX_data_OUT[5]~0_combout\))) # (!\inst5|U0|counter\(1) & ((\inst|RX_data_OUT[5]~0_combout\) # ((!\inst5|U0|counter\(0) & 
-- !\inst5|U_rev|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(1),
	datab => \inst5|U0|counter\(0),
	datac => \inst5|U_rev|LessThan0~0_combout\,
	datad => \inst|RX_data_OUT[5]~0_combout\,
	combout => \inst5|U0|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y4_N8
\inst1|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~8_combout\ = (\inst1|Decoder0~0_combout\ & (\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(2) & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~8_combout\);

-- Location: LCCOMB_X59_Y4_N20
\inst1|r_RX_Byte[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[6]~7_combout\ = (\inst1|Decoder0~8_combout\ & ((\inst1|r_RX_Data~q\))) # (!\inst1|Decoder0~8_combout\ & (\inst1|r_RX_Byte\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~8_combout\,
	datac => \inst1|r_RX_Byte\(6),
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|r_RX_Byte[6]~7_combout\);

-- Location: FF_X59_Y4_N21
\inst1|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(6));

-- Location: LCCOMB_X59_Y4_N24
\inst5|U0|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~1_combout\ = (\inst5|U0|counter\(2) & (\inst5|U0|LessThan0~0_combout\ & ((\inst1|r_RX_Byte\(6)) # (!\SW0~input_o\)))) # (!\inst5|U0|counter\(2) & (((\inst5|U0|LessThan0~0_combout\) # (\inst1|r_RX_Byte\(6))) # (!\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(2),
	datab => \SW0~input_o\,
	datac => \inst5|U0|LessThan0~0_combout\,
	datad => \inst1|r_RX_Byte\(6),
	combout => \inst5|U0|LessThan0~1_combout\);

-- Location: FF_X59_Y4_N25
\inst5|U0|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|PWM_DCmot~q\);

-- Location: LCCOMB_X59_Y4_N4
\inst5|PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PWM_DCmot~0_combout\ = (\inst1|r_RX_Byte\(7) & (\SW0~input_o\ & \inst5|U0|PWM_DCmot~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(7),
	datac => \SW0~input_o\,
	datad => \inst5|U0|PWM_DCmot~q\,
	combout => \inst5|PWM_DCmot~0_combout\);

-- Location: FF_X59_Y4_N5
\inst5|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|PWM_DCmot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PWM_DCmot~q\);

-- Location: LCCOMB_X59_Y4_N28
\inst5|U_rev|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|LessThan0~1_combout\ = (\inst5|U0|counter\(1) & (!\inst5|U0|counter\(0) & (\inst5|U_rev|LessThan0~0_combout\ & !\inst|RX_data_OUT[5]~0_combout\))) # (!\inst5|U0|counter\(1) & (((!\inst5|U0|counter\(0) & \inst5|U_rev|LessThan0~0_combout\)) # 
-- (!\inst|RX_data_OUT[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(1),
	datab => \inst5|U0|counter\(0),
	datac => \inst5|U_rev|LessThan0~0_combout\,
	datad => \inst|RX_data_OUT[5]~0_combout\,
	combout => \inst5|U_rev|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y4_N18
\inst5|U_rev|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|LessThan0~2_combout\ = (\inst5|U0|counter\(2) & (!\inst1|r_RX_Byte\(6) & (\SW0~input_o\ & \inst5|U_rev|LessThan0~1_combout\))) # (!\inst5|U0|counter\(2) & ((\inst5|U_rev|LessThan0~1_combout\) # ((!\inst1|r_RX_Byte\(6) & \SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(2),
	datab => \inst1|r_RX_Byte\(6),
	datac => \SW0~input_o\,
	datad => \inst5|U_rev|LessThan0~1_combout\,
	combout => \inst5|U_rev|LessThan0~2_combout\);

-- Location: FF_X59_Y4_N19
\inst5|U_rev|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|PWM_DCmot~q\);

-- Location: LCCOMB_X59_Y4_N26
\inst5|PWM_DCmot_rev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PWM_DCmot_rev~0_combout\ = (\inst5|U_rev|PWM_DCmot~q\ & ((!\SW0~input_o\) # (!\inst1|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(7),
	datac => \SW0~input_o\,
	datad => \inst5|U_rev|PWM_DCmot~q\,
	combout => \inst5|PWM_DCmot_rev~0_combout\);

-- Location: FF_X59_Y4_N27
\inst5|PWM_DCmot_rev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|PWM_DCmot_rev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PWM_DCmot_rev~q\);

-- Location: IOIBUF_X51_Y54_N22
\SW1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LCCOMB_X47_Y7_N20
\inst9|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\SW1~input_o\) # (\SW2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datac => \SW2~input_o\,
	combout => \inst9|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y7_N14
\inst9|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\SW1~input_o\ & ((\SW2~input_o\) # ((\SW0~input_o\ & \inst1|r_RX_Byte\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW0~input_o\,
	datac => \SW2~input_o\,
	datad => \inst1|r_RX_Byte\(7),
	combout => \inst9|Mux1~0_combout\);

-- Location: CLKCTRL_G18
\inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X60_Y4_N6
\inst3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|counter\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: FF_X60_Y4_N7
\inst3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(0));

-- Location: LCCOMB_X60_Y4_N8
\inst3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|counter\(1) & (!\inst3|Add0~1\)) # (!\inst3|counter\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X60_Y4_N9
\inst3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(1));

-- Location: LCCOMB_X60_Y4_N10
\inst3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|counter\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|counter\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|counter\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X60_Y4_N11
\inst3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(2));

-- Location: LCCOMB_X60_Y4_N12
\inst3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|counter\(3) & (!\inst3|Add0~5\)) # (!\inst3|counter\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X60_Y4_N13
\inst3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(3));

-- Location: LCCOMB_X60_Y4_N14
\inst3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|counter\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|counter\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|counter\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X60_Y4_N24
\inst3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|counter\(9) & (!\inst3|Add0~17\)) # (!\inst3|counter\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X60_Y4_N26
\inst3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = \inst3|Add0~19\ $ (!\inst3|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|counter\(10),
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\);

-- Location: LCCOMB_X59_Y4_N30
\inst3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|counter\(0) & (!\inst3|counter\(9) & (\inst3|counter\(1) & !\inst3|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(0),
	datab => \inst3|counter\(9),
	datac => \inst3|counter\(1),
	datad => \inst3|counter\(8),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y4_N18
\inst3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|counter\(3) & (!\inst3|counter\(4) & (\inst3|counter\(5) & \inst3|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(3),
	datab => \inst3|counter\(4),
	datac => \inst3|counter\(5),
	datad => \inst3|counter\(2),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y4_N16
\inst3|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|counter~0_combout\ = (\inst3|Add0~20_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~20_combout\,
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|counter~0_combout\);

-- Location: FF_X58_Y4_N17
\inst3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(10));

-- Location: LCCOMB_X58_Y4_N28
\inst3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|counter\(6) & (\inst3|counter\(10) & \inst3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(6),
	datab => \inst3|counter\(10),
	datac => \inst3|counter\(7),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y4_N2
\inst3|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|counter~1_combout\ = (\inst3|Add0~8_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~8_combout\,
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|counter~1_combout\);

-- Location: FF_X58_Y4_N3
\inst3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(4));

-- Location: LCCOMB_X60_Y4_N16
\inst3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|counter\(5) & (!\inst3|Add0~9\)) # (!\inst3|counter\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X58_Y4_N8
\inst3|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|counter~2_combout\ = (\inst3|Add0~10_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~10_combout\,
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|counter~2_combout\);

-- Location: FF_X58_Y4_N9
\inst3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(5));

-- Location: LCCOMB_X60_Y4_N18
\inst3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|counter\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|counter\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|counter\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X60_Y4_N19
\inst3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(6));

-- Location: LCCOMB_X60_Y4_N20
\inst3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|counter\(7) & (!\inst3|Add0~13\)) # (!\inst3|counter\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X58_Y4_N26
\inst3|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|counter~3_combout\ = (\inst3|Add0~14_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~14_combout\,
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|counter~3_combout\);

-- Location: FF_X58_Y4_N27
\inst3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(7));

-- Location: LCCOMB_X60_Y4_N22
\inst3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|counter\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|counter\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|counter\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: FF_X60_Y4_N23
\inst3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(8));

-- Location: FF_X60_Y4_N25
\inst3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(9));

-- Location: LCCOMB_X59_Y4_N8
\inst3|PWM_SVmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~0_combout\ = (!\inst3|counter\(9) & (!\inst3|counter\(10) & !\inst3|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(9),
	datac => \inst3|counter\(10),
	datad => \inst3|counter\(8),
	combout => \inst3|PWM_SVmot~0_combout\);

-- Location: LCCOMB_X55_Y4_N28
\inst1|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~2_combout\ = (\inst1|Decoder0~0_combout\ & (\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~2_combout\);

-- Location: LCCOMB_X56_Y4_N20
\inst1|r_RX_Byte[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[2]~1_combout\ = (\inst1|Decoder0~2_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~2_combout\ & ((\inst1|r_RX_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(2),
	datad => \inst1|Decoder0~2_combout\,
	combout => \inst1|r_RX_Byte[2]~1_combout\);

-- Location: FF_X56_Y4_N21
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

-- Location: LCCOMB_X56_Y4_N28
\inst3|innercounter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|innercounter~5_combout\ = (\inst3|innercounter\(1) & (!\inst3|innercounter\(0) & ((!\inst3|innercounter\(3)) # (!\inst3|innercounter\(2))))) # (!\inst3|innercounter\(1) & (((\inst3|innercounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|innercounter\(2),
	datab => \inst3|innercounter\(3),
	datac => \inst3|innercounter\(1),
	datad => \inst3|innercounter\(0),
	combout => \inst3|innercounter~5_combout\);

-- Location: LCCOMB_X55_Y4_N14
\inst1|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~5_combout\ = (\inst1|Decoder0~0_combout\ & (!\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~5_combout\);

-- Location: LCCOMB_X56_Y4_N24
\inst1|r_RX_Byte[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[0]~4_combout\ = (\inst1|Decoder0~5_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~5_combout\ & ((\inst1|r_RX_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(0),
	datad => \inst1|Decoder0~5_combout\,
	combout => \inst1|r_RX_Byte[0]~4_combout\);

-- Location: FF_X56_Y4_N25
\inst1|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(0));

-- Location: LCCOMB_X56_Y4_N26
\inst|RX_data_OUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|RX_data_OUT[0]~1_combout\ = (\inst1|r_RX_Byte\(0)) # (!\SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW0~input_o\,
	datad => \inst1|r_RX_Byte\(0),
	combout => \inst|RX_data_OUT[0]~1_combout\);

-- Location: LCCOMB_X58_Y4_N12
\inst3|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~1_combout\ = (((!\inst3|counter\(3) & !\inst3|counter\(4))) # (!\inst3|counter\(5))) # (!\inst3|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(6),
	datab => \inst3|counter\(5),
	datac => \inst3|counter\(3),
	datad => \inst3|counter\(4),
	combout => \inst3|LessThan3~1_combout\);

-- Location: LCCOMB_X60_Y4_N28
\inst3|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~0_combout\ = (!\inst3|counter\(0) & (!\inst3|counter\(4) & (!\inst3|counter\(1) & !\inst3|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(0),
	datab => \inst3|counter\(4),
	datac => \inst3|counter\(1),
	datad => \inst3|counter\(2),
	combout => \inst3|LessThan3~0_combout\);

-- Location: LCCOMB_X57_Y4_N4
\inst3|LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~2_combout\ = (\inst3|LessThan3~1_combout\) # (\inst3|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LessThan3~1_combout\,
	datad => \inst3|LessThan3~0_combout\,
	combout => \inst3|LessThan3~2_combout\);

-- Location: LCCOMB_X55_Y4_N22
\inst1|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~3_combout\ = (\inst1|Decoder0~0_combout\ & (!\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~3_combout\);

-- Location: LCCOMB_X56_Y4_N30
\inst1|r_RX_Byte[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[1]~2_combout\ = (\inst1|Decoder0~3_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~3_combout\ & ((\inst1|r_RX_Byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst1|Decoder0~3_combout\,
	combout => \inst1|r_RX_Byte[1]~2_combout\);

-- Location: FF_X56_Y4_N31
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

-- Location: LCCOMB_X55_Y4_N0
\inst1|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~4_combout\ = (\inst1|Decoder0~0_combout\ & (\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~4_combout\);

-- Location: LCCOMB_X57_Y4_N2
\inst1|r_RX_Byte[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[3]~3_combout\ = (\inst1|Decoder0~4_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~4_combout\ & ((\inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(3),
	datad => \inst1|Decoder0~4_combout\,
	combout => \inst1|r_RX_Byte[3]~3_combout\);

-- Location: FF_X57_Y4_N3
\inst1|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(3));

-- Location: LCCOMB_X56_Y4_N8
\inst3|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = ((\inst1|r_RX_Byte\(2) & (\inst1|r_RX_Byte\(1) & !\inst1|r_RX_Byte\(3)))) # (!\SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst1|r_RX_Byte\(2),
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X56_Y4_N10
\inst3|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\SW0~input_o\ & (!\inst1|r_RX_Byte\(2) & (!\inst1|r_RX_Byte\(1) & \inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst1|r_RX_Byte\(2),
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y4_N2
\inst3|PWM_SVmot~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~14_combout\ = (!\inst3|counter\(7) & ((\inst|RX_data_OUT[0]~1_combout\ & (!\inst3|Equal2~0_combout\)) # (!\inst|RX_data_OUT[0]~1_combout\ & ((!\inst3|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datab => \inst3|Equal2~0_combout\,
	datac => \inst|RX_data_OUT[0]~1_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|PWM_SVmot~14_combout\);

-- Location: LCCOMB_X59_Y4_N2
\inst3|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~1_combout\ = (\inst3|counter\(3) & ((\inst3|counter\(2)) # ((\inst3|counter\(1) & \inst3|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(3),
	datab => \inst3|counter\(2),
	datac => \inst3|counter\(1),
	datad => \inst3|counter\(0),
	combout => \inst3|LessThan2~1_combout\);

-- Location: LCCOMB_X58_Y4_N20
\inst3|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~0_combout\ = (\inst3|counter\(7)) # ((\inst3|counter\(6) & ((\inst3|counter\(5)) # (\inst3|counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(6),
	datab => \inst3|counter\(5),
	datac => \inst3|counter\(7),
	datad => \inst3|counter\(4),
	combout => \inst3|LessThan2~0_combout\);

-- Location: LCCOMB_X58_Y4_N22
\inst3|innercounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|innercounter[3]~1_combout\ = (\inst3|PWM_SVmot~0_combout\ & ((\inst3|LessThan2~0_combout\) # ((\inst3|LessThan2~1_combout\ & \inst3|counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan2~1_combout\,
	datab => \inst3|PWM_SVmot~0_combout\,
	datac => \inst3|counter\(6),
	datad => \inst3|LessThan2~0_combout\,
	combout => \inst3|innercounter[3]~1_combout\);

-- Location: LCCOMB_X57_Y4_N22
\inst3|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|flag~0_combout\ = \inst3|flag~q\ $ (((\inst3|PWM_SVmot~14_combout\ & (\inst3|LessThan3~2_combout\ & \inst3|innercounter[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PWM_SVmot~14_combout\,
	datab => \inst3|LessThan3~2_combout\,
	datac => \inst3|flag~q\,
	datad => \inst3|innercounter[3]~1_combout\,
	combout => \inst3|flag~0_combout\);

-- Location: FF_X57_Y4_N23
\inst3|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|flag~q\);

-- Location: LCCOMB_X57_Y4_N18
\inst3|innercounter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|innercounter[3]~2_combout\ = (!\inst3|counter\(7) & (\inst3|LessThan3~2_combout\ & (!\inst3|flag~q\ & \inst3|innercounter[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datab => \inst3|LessThan3~2_combout\,
	datac => \inst3|flag~q\,
	datad => \inst3|innercounter[3]~1_combout\,
	combout => \inst3|innercounter[3]~2_combout\);

-- Location: LCCOMB_X56_Y4_N0
\inst3|innercounter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|innercounter[3]~3_combout\ = (\inst3|innercounter[3]~2_combout\ & ((\inst|RX_data_OUT[0]~1_combout\ & (!\inst3|Equal2~0_combout\)) # (!\inst|RX_data_OUT[0]~1_combout\ & ((!\inst3|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RX_data_OUT[0]~1_combout\,
	datab => \inst3|innercounter[3]~2_combout\,
	datac => \inst3|Equal2~0_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|innercounter[3]~3_combout\);

-- Location: FF_X56_Y4_N29
\inst3|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|innercounter~5_combout\,
	ena => \inst3|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|innercounter\(1));

-- Location: LCCOMB_X56_Y4_N4
\inst3|innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|innercounter~0_combout\ = (\inst3|innercounter\(2) & ((\inst3|innercounter\(3) & ((!\inst3|innercounter\(1)))) # (!\inst3|innercounter\(3) & (\inst3|innercounter\(0) & \inst3|innercounter\(1))))) # (!\inst3|innercounter\(2) & 
-- (((\inst3|innercounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|innercounter\(2),
	datab => \inst3|innercounter\(0),
	datac => \inst3|innercounter\(3),
	datad => \inst3|innercounter\(1),
	combout => \inst3|innercounter~0_combout\);

-- Location: FF_X56_Y4_N5
\inst3|innercounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|innercounter~0_combout\,
	ena => \inst3|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|innercounter\(3));

-- Location: LCCOMB_X56_Y4_N18
\inst3|innercounter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|innercounter~6_combout\ = (!\inst3|innercounter\(0) & (((!\inst3|innercounter\(1)) # (!\inst3|innercounter\(3))) # (!\inst3|innercounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|innercounter\(2),
	datab => \inst3|innercounter\(3),
	datac => \inst3|innercounter\(0),
	datad => \inst3|innercounter\(1),
	combout => \inst3|innercounter~6_combout\);

-- Location: FF_X56_Y4_N19
\inst3|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|innercounter~6_combout\,
	ena => \inst3|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|innercounter\(0));

-- Location: LCCOMB_X56_Y4_N6
\inst3|innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|innercounter~4_combout\ = (\inst3|innercounter\(0) & ((\inst3|innercounter\(2) $ (\inst3|innercounter\(1))))) # (!\inst3|innercounter\(0) & (\inst3|innercounter\(2) & ((!\inst3|innercounter\(1)) # (!\inst3|innercounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|innercounter\(0),
	datab => \inst3|innercounter\(3),
	datac => \inst3|innercounter\(2),
	datad => \inst3|innercounter\(1),
	combout => \inst3|innercounter~4_combout\);

-- Location: FF_X56_Y4_N7
\inst3|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|innercounter~4_combout\,
	ena => \inst3|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|innercounter\(2));

-- Location: LCCOMB_X57_Y4_N12
\inst3|PWM_SVmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~4_combout\ = (!\inst3|flag~q\ & (\inst3|innercounter\(3) $ (((!\inst1|r_RX_Byte\(3)) # (!\SW0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst3|innercounter\(3),
	datac => \inst3|flag~q\,
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst3|PWM_SVmot~4_combout\);

-- Location: LCCOMB_X57_Y4_N6
\inst3|PWM_SVmot~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~5_combout\ = (!\inst3|innercounter\(2) & (\inst3|PWM_SVmot~4_combout\ & ((\inst1|r_RX_Byte\(2)) # (!\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst1|r_RX_Byte\(2),
	datac => \inst3|innercounter\(2),
	datad => \inst3|PWM_SVmot~4_combout\,
	combout => \inst3|PWM_SVmot~5_combout\);

-- Location: LCCOMB_X57_Y4_N14
\inst3|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~0_combout\ = \inst3|innercounter\(2) $ (((\inst1|r_RX_Byte\(2)) # (!\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datac => \inst3|innercounter\(2),
	datad => \inst1|r_RX_Byte\(2),
	combout => \inst3|LessThan4~0_combout\);

-- Location: LCCOMB_X57_Y4_N16
\inst3|PWM_SVmot~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~6_combout\ = (\SW0~input_o\ & (!\inst3|innercounter\(3) & (!\inst3|flag~q\ & \inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst3|innercounter\(3),
	datac => \inst3|flag~q\,
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst3|PWM_SVmot~6_combout\);

-- Location: LCCOMB_X57_Y4_N30
\inst3|PWM_SVmot~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~7_combout\ = (\inst3|PWM_SVmot~6_combout\) # ((\inst3|PWM_SVmot~q\ & \inst3|flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|PWM_SVmot~q\,
	datac => \inst3|flag~q\,
	datad => \inst3|PWM_SVmot~6_combout\,
	combout => \inst3|PWM_SVmot~7_combout\);

-- Location: LCCOMB_X56_Y4_N16
\inst3|PWM_SVmot~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~9_combout\ = (\SW0~input_o\ & (\inst1|r_RX_Byte\(0) & (\inst3|innercounter\(1) $ (!\inst1|r_RX_Byte\(1))))) # (!\SW0~input_o\ & (\inst3|innercounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst3|innercounter\(1),
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst1|r_RX_Byte\(0),
	combout => \inst3|PWM_SVmot~9_combout\);

-- Location: LCCOMB_X56_Y4_N22
\inst3|PWM_SVmot~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~8_combout\ = (!\inst3|innercounter\(1) & ((\inst1|r_RX_Byte\(1)) # (!\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~input_o\,
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst3|innercounter\(1),
	combout => \inst3|PWM_SVmot~8_combout\);

-- Location: LCCOMB_X57_Y4_N20
\inst3|PWM_SVmot~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~10_combout\ = (\inst3|PWM_SVmot~4_combout\ & ((\inst3|PWM_SVmot~8_combout\) # ((!\inst3|innercounter\(0) & \inst3|PWM_SVmot~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PWM_SVmot~4_combout\,
	datab => \inst3|innercounter\(0),
	datac => \inst3|PWM_SVmot~9_combout\,
	datad => \inst3|PWM_SVmot~8_combout\,
	combout => \inst3|PWM_SVmot~10_combout\);

-- Location: LCCOMB_X57_Y4_N8
\inst3|PWM_SVmot~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~11_combout\ = (\inst3|PWM_SVmot~5_combout\) # ((\inst3|PWM_SVmot~7_combout\) # ((!\inst3|LessThan4~0_combout\ & \inst3|PWM_SVmot~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PWM_SVmot~5_combout\,
	datab => \inst3|LessThan4~0_combout\,
	datac => \inst3|PWM_SVmot~7_combout\,
	datad => \inst3|PWM_SVmot~10_combout\,
	combout => \inst3|PWM_SVmot~11_combout\);

-- Location: LCCOMB_X56_Y4_N14
\inst3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = (\SW0~input_o\ & ((\inst1|r_RX_Byte\(0) & (\inst3|Equal2~0_combout\)) # (!\inst1|r_RX_Byte\(0) & ((\inst3|Equal1~0_combout\))))) # (!\SW0~input_o\ & (((\inst3|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst1|r_RX_Byte\(0),
	datac => \inst3|Equal2~0_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|process_0~0_combout\);

-- Location: LCCOMB_X57_Y4_N26
\inst3|PWM_SVmot~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~12_combout\ = (!\inst3|counter\(7) & (!\inst3|process_0~0_combout\ & ((\inst3|LessThan3~0_combout\) # (\inst3|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datab => \inst3|LessThan3~0_combout\,
	datac => \inst3|LessThan3~1_combout\,
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|PWM_SVmot~12_combout\);

-- Location: LCCOMB_X60_Y4_N4
\inst3|PWM_SVmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~1_combout\ = (((!\inst3|counter\(1) & !\inst3|counter\(2))) # (!\inst3|counter\(4))) # (!\inst3|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(3),
	datab => \inst3|counter\(4),
	datac => \inst3|counter\(1),
	datad => \inst3|counter\(2),
	combout => \inst3|PWM_SVmot~1_combout\);

-- Location: LCCOMB_X60_Y4_N30
\inst3|PWM_SVmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~2_combout\ = ((!\inst3|counter\(5) & \inst3|PWM_SVmot~1_combout\)) # (!\inst3|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(5),
	datac => \inst3|PWM_SVmot~1_combout\,
	datad => \inst3|counter\(6),
	combout => \inst3|PWM_SVmot~2_combout\);

-- Location: LCCOMB_X58_Y4_N30
\inst3|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~2_combout\ = (\inst3|LessThan2~0_combout\) # ((\inst3|LessThan2~1_combout\ & \inst3|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan2~1_combout\,
	datac => \inst3|counter\(6),
	datad => \inst3|LessThan2~0_combout\,
	combout => \inst3|LessThan2~2_combout\);

-- Location: LCCOMB_X57_Y4_N24
\inst3|PWM_SVmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~3_combout\ = (\inst3|process_0~0_combout\ & (!\inst3|counter\(7) & (\inst3|PWM_SVmot~2_combout\))) # (!\inst3|process_0~0_combout\ & (((!\inst3|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datab => \inst3|PWM_SVmot~2_combout\,
	datac => \inst3|LessThan2~2_combout\,
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|PWM_SVmot~3_combout\);

-- Location: LCCOMB_X57_Y4_N28
\inst3|PWM_SVmot~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|PWM_SVmot~13_combout\ = (\inst3|PWM_SVmot~0_combout\ & ((\inst3|PWM_SVmot~3_combout\) # ((\inst3|PWM_SVmot~11_combout\ & \inst3|PWM_SVmot~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PWM_SVmot~0_combout\,
	datab => \inst3|PWM_SVmot~11_combout\,
	datac => \inst3|PWM_SVmot~12_combout\,
	datad => \inst3|PWM_SVmot~3_combout\,
	combout => \inst3|PWM_SVmot~13_combout\);

-- Location: FF_X57_Y4_N29
\inst3|PWM_SVmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst3|PWM_SVmot~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PWM_SVmot~q\);

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


