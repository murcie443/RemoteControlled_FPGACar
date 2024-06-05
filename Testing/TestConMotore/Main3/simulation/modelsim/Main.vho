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

-- DATE "06/05/2024 14:18:45"

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
	PWM_SVmot : OUT std_logic;
	CLK : IN std_logic;
	i_RX_Serial : IN std_logic;
	PWM_DCmot : OUT std_logic;
	PWM_DCmot_rev : OUT std_logic;
	FRONT_LED : OUT std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	BACK_LED : OUT std_logic;
	debug : OUT std_logic_vector(7 DOWNTO 0)
	);
END Main;

-- Design Ports Information
-- PWM_SVmot	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_DCmot	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_DCmot_rev	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FRONT_LED	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BACK_LED	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_PWM_SVmot : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_PWM_DCmot : std_logic;
SIGNAL ww_PWM_DCmot_rev : std_logic;
SIGNAL ww_FRONT_LED : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_BACK_LED : std_logic;
SIGNAL ww_debug : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~2_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~3_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~q\ : std_logic;
SIGNAL \inst1|r_RX_Data~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~1_combout\ : std_logic;
SIGNAL \inst1|Selector19~2_combout\ : std_logic;
SIGNAL \inst1|Selector19~3_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[4]~39_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[4]~40_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main~7_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[4]~41_combout\ : std_logic;
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
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \inst1|Selector19~1_combout\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~1_combout\ : std_logic;
SIGNAL \inst1|Selector14~1_combout\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~7_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[1]~6_combout\ : std_logic;
SIGNAL \inst1|Decoder0~6_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[2]~5_combout\ : std_logic;
SIGNAL \inst1|Decoder0~8_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[0]~7_combout\ : std_logic;
SIGNAL \inst1|Decoder0~5_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[3]~4_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~4_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~1_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~0_combout\ : std_logic;
SIGNAL \inst|flag~0_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst|innercounter~3_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~1_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~2_combout\ : std_logic;
SIGNAL \inst|innercounter~5_combout\ : std_logic;
SIGNAL \inst|innercounter~4_combout\ : std_logic;
SIGNAL \inst|innercounter~0_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~5_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~6_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~7_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~8_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~9_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~q\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|r_RX_Byte[7]~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[6]~1_combout\ : std_logic;
SIGNAL \inst1|Decoder0~3_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[5]~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~4_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[4]~3_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~0_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~1\ : std_logic;
SIGNAL \inst5|U0|Add0~2_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~3\ : std_logic;
SIGNAL \inst5|U0|Add0~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~5\ : std_logic;
SIGNAL \inst5|U0|Add0~6_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~7\ : std_logic;
SIGNAL \inst5|U0|Add0~8_combout\ : std_logic;
SIGNAL \inst5|U0|counter~3_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~9\ : std_logic;
SIGNAL \inst5|U0|Add0~10_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~11\ : std_logic;
SIGNAL \inst5|U0|Add0~12_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~13\ : std_logic;
SIGNAL \inst5|U0|Add0~14_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~15\ : std_logic;
SIGNAL \inst5|U0|Add0~16_combout\ : std_logic;
SIGNAL \inst5|U0|counter~1_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~17\ : std_logic;
SIGNAL \inst5|U0|Add0~18_combout\ : std_logic;
SIGNAL \inst5|U0|counter~0_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~19\ : std_logic;
SIGNAL \inst5|U0|Add0~20_combout\ : std_logic;
SIGNAL \inst5|U0|counter~2_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~21\ : std_logic;
SIGNAL \inst5|U0|Add0~22_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~23\ : std_logic;
SIGNAL \inst5|U0|Add0~24_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~25\ : std_logic;
SIGNAL \inst5|U0|Add0~26_combout\ : std_logic;
SIGNAL \inst5|U0|counter~4_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~0_combout\ : std_logic;
SIGNAL \inst5|U0|flag[0]~1_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter[2]~0_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~1\ : std_logic;
SIGNAL \inst5|U0|Add2~2_combout\ : std_logic;
SIGNAL \inst5|U0|flag~0_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~3\ : std_logic;
SIGNAL \inst5|U0|Add2~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~5\ : std_logic;
SIGNAL \inst5|U0|Add2~6_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~7\ : std_logic;
SIGNAL \inst5|U0|Add2~8_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~9\ : std_logic;
SIGNAL \inst5|U0|Add2~10_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~11\ : std_logic;
SIGNAL \inst5|U0|Add2~12_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~13\ : std_logic;
SIGNAL \inst5|U0|Add2~14_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~15\ : std_logic;
SIGNAL \inst5|U0|Add2~16_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~17\ : std_logic;
SIGNAL \inst5|U0|Add2~18_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~19\ : std_logic;
SIGNAL \inst5|U0|Add2~20_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~21\ : std_logic;
SIGNAL \inst5|U0|Add2~22_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~23\ : std_logic;
SIGNAL \inst5|U0|Add2~24_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~25\ : std_logic;
SIGNAL \inst5|U0|Add2~26_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~27\ : std_logic;
SIGNAL \inst5|U0|Add2~28_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~29\ : std_logic;
SIGNAL \inst5|U0|Add2~30_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~31\ : std_logic;
SIGNAL \inst5|U0|Add2~32_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~33\ : std_logic;
SIGNAL \inst5|U0|Add2~34_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~35\ : std_logic;
SIGNAL \inst5|U0|Add2~36_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~37\ : std_logic;
SIGNAL \inst5|U0|Add2~38_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~39\ : std_logic;
SIGNAL \inst5|U0|Add2~40_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~41\ : std_logic;
SIGNAL \inst5|U0|Add2~42_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~43\ : std_logic;
SIGNAL \inst5|U0|Add2~44_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~45\ : std_logic;
SIGNAL \inst5|U0|Add2~46_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~47\ : std_logic;
SIGNAL \inst5|U0|Add2~48_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~49\ : std_logic;
SIGNAL \inst5|U0|Add2~50_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~51\ : std_logic;
SIGNAL \inst5|U0|Add2~52_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~53\ : std_logic;
SIGNAL \inst5|U0|Add2~54_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~8_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~6_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~5_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~7_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~1_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~2_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~3_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~55\ : std_logic;
SIGNAL \inst5|U0|Add2~56_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~57\ : std_logic;
SIGNAL \inst5|U0|Add2~58_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~59\ : std_logic;
SIGNAL \inst5|U0|Add2~60_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~61\ : std_logic;
SIGNAL \inst5|U0|Add2~62_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~9_combout\ : std_logic;
SIGNAL \inst5|U0|Equal2~10_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter~4_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter[2]~2_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter~1_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter~3_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~0_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~1_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~2_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~3_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|PWM_DCmot~0_combout\ : std_logic;
SIGNAL \inst5|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|U_rev|innercounter~2_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~0_combout\ : std_logic;
SIGNAL \inst5|U_rev|flag[0]~1_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|U_rev|innercounter[2]~4_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~1\ : std_logic;
SIGNAL \inst5|U_rev|Add2~2_combout\ : std_logic;
SIGNAL \inst5|U_rev|flag~0_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~3\ : std_logic;
SIGNAL \inst5|U_rev|Add2~4_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~5\ : std_logic;
SIGNAL \inst5|U_rev|Add2~6_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~7\ : std_logic;
SIGNAL \inst5|U_rev|Add2~8_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~9\ : std_logic;
SIGNAL \inst5|U_rev|Add2~10_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~11\ : std_logic;
SIGNAL \inst5|U_rev|Add2~12_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~13\ : std_logic;
SIGNAL \inst5|U_rev|Add2~14_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~15\ : std_logic;
SIGNAL \inst5|U_rev|Add2~16_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~17\ : std_logic;
SIGNAL \inst5|U_rev|Add2~18_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~19\ : std_logic;
SIGNAL \inst5|U_rev|Add2~20_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~21\ : std_logic;
SIGNAL \inst5|U_rev|Add2~22_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~23\ : std_logic;
SIGNAL \inst5|U_rev|Add2~24_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~25\ : std_logic;
SIGNAL \inst5|U_rev|Add2~26_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~27\ : std_logic;
SIGNAL \inst5|U_rev|Add2~28_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~29\ : std_logic;
SIGNAL \inst5|U_rev|Add2~30_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~31\ : std_logic;
SIGNAL \inst5|U_rev|Add2~32_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~33\ : std_logic;
SIGNAL \inst5|U_rev|Add2~34_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~35\ : std_logic;
SIGNAL \inst5|U_rev|Add2~36_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~37\ : std_logic;
SIGNAL \inst5|U_rev|Add2~38_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~39\ : std_logic;
SIGNAL \inst5|U_rev|Add2~40_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~41\ : std_logic;
SIGNAL \inst5|U_rev|Add2~42_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~43\ : std_logic;
SIGNAL \inst5|U_rev|Add2~44_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~45\ : std_logic;
SIGNAL \inst5|U_rev|Add2~46_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~47\ : std_logic;
SIGNAL \inst5|U_rev|Add2~48_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~49\ : std_logic;
SIGNAL \inst5|U_rev|Add2~50_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~51\ : std_logic;
SIGNAL \inst5|U_rev|Add2~52_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~53\ : std_logic;
SIGNAL \inst5|U_rev|Add2~54_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~8_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~2_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~3_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~1_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~4_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~5_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~6_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~7_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~55\ : std_logic;
SIGNAL \inst5|U_rev|Add2~56_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~57\ : std_logic;
SIGNAL \inst5|U_rev|Add2~58_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~59\ : std_logic;
SIGNAL \inst5|U_rev|Add2~60_combout\ : std_logic;
SIGNAL \inst5|U_rev|Add2~61\ : std_logic;
SIGNAL \inst5|U_rev|Add2~62_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~9_combout\ : std_logic;
SIGNAL \inst5|U_rev|Equal2~10_combout\ : std_logic;
SIGNAL \inst5|U_rev|innercounter[2]~1_combout\ : std_logic;
SIGNAL \inst5|U_rev|innercounter~3_combout\ : std_logic;
SIGNAL \inst5|U_rev|innercounter~0_combout\ : std_logic;
SIGNAL \inst5|U_rev|PWM_DCmot~0_combout\ : std_logic;
SIGNAL \inst5|U_rev|PWM_DCmot~1_combout\ : std_logic;
SIGNAL \inst5|U_rev|PWM_DCmot~2_combout\ : std_logic;
SIGNAL \inst5|U_rev|PWM_DCmot~3_combout\ : std_logic;
SIGNAL \inst5|U_rev|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|PWM_DCmot_rev~0_combout\ : std_logic;
SIGNAL \inst5|PWM_DCmot_rev~q\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|U0|flag\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|innercounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|U0|counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst5|U0|innercounter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|U_rev|innercounter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|U_rev|flag\ : std_logic_vector(31 DOWNTO 0);

BEGIN

PWM_SVmot <= ww_PWM_SVmot;
ww_CLK <= CLK;
ww_i_RX_Serial <= i_RX_Serial;
PWM_DCmot <= ww_PWM_DCmot;
PWM_DCmot_rev <= ww_PWM_DCmot_rev;
FRONT_LED <= ww_FRONT_LED;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
BACK_LED <= ww_BACK_LED;
debug <= ww_debug;
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

-- Location: IOOBUF_X56_Y0_N2
\PWM_SVmot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PWM_SVmot~q\,
	devoe => ww_devoe,
	o => ww_PWM_SVmot);

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
	i => \inst3|Mux0~0_combout\,
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
	i => \inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_BACK_LED);

-- Location: IOOBUF_X56_Y54_N9
\debug[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(7),
	devoe => ww_devoe,
	o => ww_debug(7));

-- Location: IOOBUF_X66_Y54_N23
\debug[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(6),
	devoe => ww_devoe,
	o => ww_debug(6));

-- Location: IOOBUF_X58_Y54_N23
\debug[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(5),
	devoe => ww_devoe,
	o => ww_debug(5));

-- Location: IOOBUF_X56_Y54_N30
\debug[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(4),
	devoe => ww_devoe,
	o => ww_debug(4));

-- Location: IOOBUF_X46_Y54_N9
\debug[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(3),
	devoe => ww_devoe,
	o => ww_debug(3));

-- Location: IOOBUF_X51_Y54_N16
\debug[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(2),
	devoe => ww_devoe,
	o => ww_debug(2));

-- Location: IOOBUF_X46_Y54_N23
\debug[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(1),
	devoe => ww_devoe,
	o => ww_debug(1));

-- Location: IOOBUF_X46_Y54_N2
\debug[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|r_RX_Byte\(0),
	devoe => ww_devoe,
	o => ww_debug(0));

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

-- Location: LCCOMB_X55_Y50_N6
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X55_Y50_N7
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X55_Y50_N8
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

-- Location: FF_X55_Y50_N9
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X55_Y50_N10
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|counter\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|counter\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|counter\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X55_Y50_N11
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X55_Y50_N12
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

-- Location: FF_X55_Y50_N13
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X55_Y50_N14
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

-- Location: LCCOMB_X55_Y50_N16
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

-- Location: LCCOMB_X55_Y50_N18
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

-- Location: FF_X55_Y50_N19
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X55_Y50_N20
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

-- Location: LCCOMB_X55_Y50_N22
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

-- Location: FF_X55_Y50_N23
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X55_Y50_N24
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

-- Location: FF_X55_Y50_N25
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X55_Y50_N28
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(0) & (\inst|counter\(1) & (!\inst|counter\(8) & !\inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|counter\(8),
	datad => \inst|counter\(9),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y50_N16
\inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|Add0~10_combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|Equal0~0_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X54_Y50_N17
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X54_Y50_N4
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter\(4) & (\inst|counter\(2) & (\inst|counter\(3) & \inst|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(2),
	datac => \inst|counter\(3),
	datad => \inst|counter\(5),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y50_N24
\inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (\inst|Add0~14_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|counter~3_combout\);

-- Location: FF_X54_Y50_N25
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X55_Y50_N26
\inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = \inst|Add0~19\ $ (!\inst|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(10),
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\);

-- Location: LCCOMB_X54_Y50_N28
\inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\inst|Add0~20_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Add0~20_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X54_Y50_N29
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X54_Y50_N10
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|counter\(7) & (\inst|counter\(10) & !\inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(7),
	datac => \inst|counter\(10),
	datad => \inst|counter\(6),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y50_N6
\inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (\inst|Add0~8_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X54_Y50_N7
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X54_Y50_N12
\inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst|counter\(7)) # ((\inst|counter\(6) & ((\inst|counter\(4)) # (\inst|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(5),
	datac => \inst|counter\(7),
	datad => \inst|counter\(6),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X55_Y50_N0
\inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (\inst|counter\(3) & ((\inst|counter\(2)) # ((\inst|counter\(0) & \inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(3),
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X54_Y50_N14
\inst|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~2_combout\ = (\inst|LessThan2~0_combout\) # ((\inst|LessThan2~1_combout\ & \inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~0_combout\,
	datac => \inst|LessThan2~1_combout\,
	datad => \inst|counter\(6),
	combout => \inst|LessThan2~2_combout\);

-- Location: LCCOMB_X55_Y50_N30
\inst|PWM_SVmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~2_combout\ = (((!\inst|counter\(2) & !\inst|counter\(1))) # (!\inst|counter\(3))) # (!\inst|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(4),
	datac => \inst|counter\(1),
	datad => \inst|counter\(3),
	combout => \inst|PWM_SVmot~2_combout\);

-- Location: LCCOMB_X54_Y50_N22
\inst|PWM_SVmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~3_combout\ = (!\inst|counter\(7) & (((!\inst|counter\(5) & \inst|PWM_SVmot~2_combout\)) # (!\inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|counter\(5),
	datac => \inst|PWM_SVmot~2_combout\,
	datad => \inst|counter\(6),
	combout => \inst|PWM_SVmot~3_combout\);

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

-- Location: LCCOMB_X52_Y49_N30
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

-- Location: FF_X52_Y49_N31
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

-- Location: FF_X52_Y49_N1
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

-- Location: LCCOMB_X52_Y48_N2
\inst1|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[0]~13_combout\ = \inst1|r_Clk_Count\(0) $ (VCC)
-- \inst1|r_Clk_Count[0]~14\ = CARRY(\inst1|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(0),
	datad => VCC,
	combout => \inst1|r_Clk_Count[0]~13_combout\,
	cout => \inst1|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X52_Y47_N18
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

-- Location: LCCOMB_X52_Y48_N28
\inst1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|r_Clk_Count\(3) & (((!\inst1|r_Clk_Count\(0)) # (!\inst1|r_Clk_Count\(1))) # (!\inst1|r_Clk_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(2),
	datab => \inst1|r_Clk_Count\(3),
	datac => \inst1|r_Clk_Count\(1),
	datad => \inst1|r_Clk_Count\(0),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X52_Y47_N28
\inst1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ((!\inst1|r_Clk_Count\(5) & ((\inst1|LessThan1~0_combout\) # (!\inst1|r_Clk_Count\(4))))) # (!\inst1|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(5),
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|r_Clk_Count\(4),
	datad => \inst1|r_Clk_Count\(6),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X52_Y47_N4
\inst1|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (\inst1|r_Clk_Count\(11) & (\inst1|LessThan1~2_combout\ & ((\inst1|LessThan1~1_combout\)))) # (!\inst1|r_Clk_Count\(11) & (((\inst1|LessThan1~2_combout\ & \inst1|LessThan1~1_combout\)) # (!\inst1|r_Clk_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datab => \inst1|LessThan1~2_combout\,
	datac => \inst1|r_Clk_Count\(10),
	datad => \inst1|LessThan1~1_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X52_Y49_N16
\inst1|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|LessThan1~3_combout\) # (!\inst1|r_Clk_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector19~0_combout\);

-- Location: LCCOMB_X52_Y49_N22
\inst1|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Clk_Count\(12))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|r_SM_Main.s_Idle~q\,
	combout => \inst1|Selector16~0_combout\);

-- Location: LCCOMB_X52_Y50_N6
\inst1|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~1_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Bit_Index\(0) $ (((!\inst1|LessThan1~3_combout\ & \inst1|Selector16~0_combout\))))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((\inst1|r_Bit_Index\(0) & 
-- \inst1|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(0),
	datad => \inst1|Selector16~0_combout\,
	combout => \inst1|Selector16~1_combout\);

-- Location: FF_X52_Y50_N7
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

-- Location: LCCOMB_X52_Y50_N4
\inst1|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~2_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((!\inst1|r_Bit_Index\(0)) # (!\inst1|r_Bit_Index\(1))) # (!\inst1|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector19~2_combout\);

-- Location: LCCOMB_X52_Y49_N14
\inst1|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~3_combout\ = (\inst1|Selector19~0_combout\) # ((\inst1|Selector19~2_combout\) # ((\inst1|Selector19~1_combout\ & !\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~0_combout\,
	datab => \inst1|Selector19~1_combout\,
	datac => \inst1|Selector19~2_combout\,
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|Selector19~3_combout\);

-- Location: FF_X52_Y49_N15
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

-- Location: LCCOMB_X52_Y49_N28
\inst1|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (\inst1|r_Clk_Count\(12) & (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & !\inst1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|LessThan1~3_combout\,
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X52_Y50_N30
\inst1|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~1_combout\ = (\inst1|r_Bit_Index\(2) & (\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X52_Y49_N2
\inst1|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\inst1|Decoder0~1_combout\) # ((\inst1|r_SM_Main.s_RX_Stop_Bit~q\ & ((\inst1|LessThan1~3_combout\) # (!\inst1|r_Clk_Count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~1_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst1|r_Clk_Count\(12),
	combout => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: FF_X52_Y49_N3
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

-- Location: LCCOMB_X52_Y49_N6
\inst1|r_Clk_Count[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[4]~39_combout\ = (\inst1|r_Clk_Count\(12) & ((\inst1|r_SM_Main.s_RX_Data_Bits~q\) # (\inst1|r_SM_Main.s_RX_Stop_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \inst1|r_Clk_Count[4]~39_combout\);

-- Location: LCCOMB_X52_Y49_N18
\inst1|r_Clk_Count[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[4]~40_combout\ = ((\inst1|Selector19~1_combout\) # ((!\inst1|LessThan1~3_combout\ & \inst1|r_Clk_Count[4]~39_combout\))) # (!\inst1|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|Selector19~1_combout\,
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|r_Clk_Count[4]~39_combout\,
	combout => \inst1|r_Clk_Count[4]~40_combout\);

-- Location: LCCOMB_X52_Y49_N20
\inst1|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main~7_combout\ = (\inst1|r_Clk_Count\(12) & (!\inst1|LessThan1~3_combout\ & \inst1|r_SM_Main.s_RX_Stop_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \inst1|r_SM_Main~7_combout\);

-- Location: FF_X52_Y49_N21
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

-- Location: LCCOMB_X52_Y49_N0
\inst1|r_Clk_Count[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[4]~41_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((!\inst1|r_RX_Data~q\) # (!\inst1|r_SM_Main.s_RX_Start_Bit~q\)) # (!\inst1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~3_combout\,
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst1|r_RX_Data~q\,
	datad => \inst1|r_SM_Main.s_Cleanup~q\,
	combout => \inst1|r_Clk_Count[4]~41_combout\);

-- Location: FF_X52_Y48_N3
\inst1|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[0]~13_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(0));

-- Location: LCCOMB_X52_Y48_N4
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

-- Location: FF_X52_Y48_N5
\inst1|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[1]~15_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(1));

-- Location: LCCOMB_X52_Y48_N6
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

-- Location: FF_X52_Y48_N7
\inst1|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[2]~17_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(2));

-- Location: LCCOMB_X52_Y48_N8
\inst1|r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[3]~19_combout\ = (\inst1|r_Clk_Count\(3) & (!\inst1|r_Clk_Count[2]~18\)) # (!\inst1|r_Clk_Count\(3) & ((\inst1|r_Clk_Count[2]~18\) # (GND)))
-- \inst1|r_Clk_Count[3]~20\ = CARRY((!\inst1|r_Clk_Count[2]~18\) # (!\inst1|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(3),
	datad => VCC,
	cin => \inst1|r_Clk_Count[2]~18\,
	combout => \inst1|r_Clk_Count[3]~19_combout\,
	cout => \inst1|r_Clk_Count[3]~20\);

-- Location: FF_X52_Y48_N9
\inst1|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[3]~19_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(3));

-- Location: LCCOMB_X52_Y48_N10
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

-- Location: FF_X52_Y48_N11
\inst1|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[4]~21_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(4));

-- Location: LCCOMB_X52_Y48_N12
\inst1|r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[5]~23_combout\ = (\inst1|r_Clk_Count\(5) & (!\inst1|r_Clk_Count[4]~22\)) # (!\inst1|r_Clk_Count\(5) & ((\inst1|r_Clk_Count[4]~22\) # (GND)))
-- \inst1|r_Clk_Count[5]~24\ = CARRY((!\inst1|r_Clk_Count[4]~22\) # (!\inst1|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(5),
	datad => VCC,
	cin => \inst1|r_Clk_Count[4]~22\,
	combout => \inst1|r_Clk_Count[5]~23_combout\,
	cout => \inst1|r_Clk_Count[5]~24\);

-- Location: FF_X52_Y48_N13
\inst1|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[5]~23_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(5));

-- Location: LCCOMB_X52_Y48_N14
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

-- Location: FF_X52_Y48_N15
\inst1|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[6]~25_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(6));

-- Location: LCCOMB_X52_Y48_N16
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

-- Location: FF_X52_Y48_N17
\inst1|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[7]~27_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(7));

-- Location: LCCOMB_X52_Y48_N18
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

-- Location: FF_X52_Y48_N19
\inst1|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[8]~29_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(8));

-- Location: LCCOMB_X52_Y48_N20
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

-- Location: FF_X52_Y48_N21
\inst1|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[9]~31_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(9));

-- Location: LCCOMB_X52_Y48_N22
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

-- Location: FF_X52_Y48_N23
\inst1|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[10]~33_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(10));

-- Location: LCCOMB_X52_Y48_N24
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

-- Location: FF_X52_Y48_N25
\inst1|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[11]~35_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(11));

-- Location: LCCOMB_X52_Y48_N26
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

-- Location: FF_X52_Y48_N27
\inst1|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[12]~37_combout\,
	sclr => \inst1|r_Clk_Count[4]~40_combout\,
	ena => \inst1|r_Clk_Count[4]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(12));

-- Location: LCCOMB_X52_Y48_N0
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

-- Location: LCCOMB_X52_Y47_N10
\inst1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|r_Clk_Count\(11) & (\inst1|r_Clk_Count\(9) & (!\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datab => \inst1|r_Clk_Count\(9),
	datac => \inst1|r_Clk_Count\(10),
	datad => \inst1|r_Clk_Count\(6),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y48_N30
\inst1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|r_Clk_Count\(2) & (!\inst1|r_Clk_Count\(4) & (\inst1|r_Clk_Count\(3) & \inst1|r_Clk_Count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(2),
	datab => \inst1|r_Clk_Count\(4),
	datac => \inst1|r_Clk_Count\(3),
	datad => \inst1|r_Clk_Count\(5),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y49_N26
\inst1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|r_Clk_Count\(12) & (\inst1|Equal0~0_combout\ & (\inst1|Equal0~2_combout\ & \inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y49_N4
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

-- Location: FF_X52_Y49_N5
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

-- Location: LCCOMB_X52_Y49_N10
\inst1|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~1_combout\ = (\inst1|r_SM_Main.s_RX_Start_Bit~q\ & \inst1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst1|Equal0~3_combout\,
	combout => \inst1|Selector19~1_combout\);

-- Location: LCCOMB_X52_Y49_N12
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

-- Location: FF_X52_Y49_N13
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

-- Location: LCCOMB_X52_Y50_N18
\inst1|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = (\inst1|r_Bit_Index\(1) & ((\inst1|Selector19~0_combout\) # ((\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))) # (!\inst1|r_Bit_Index\(1) & (((\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~0_combout\,
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector15~0_combout\);

-- Location: LCCOMB_X52_Y49_N24
\inst1|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~1_combout\ = (\inst1|Selector15~0_combout\) # ((\inst1|r_SM_Main.s_Idle~q\ & (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & \inst1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|Selector15~0_combout\,
	combout => \inst1|Selector15~1_combout\);

-- Location: FF_X52_Y49_N25
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

-- Location: LCCOMB_X52_Y50_N10
\inst1|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~1_combout\ = (\inst1|r_Bit_Index\(0) & (\inst1|r_Bit_Index\(2) $ (\inst1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector14~1_combout\);

-- Location: LCCOMB_X52_Y50_N16
\inst1|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|LessThan1~3_combout\) # ((!\inst1|r_Bit_Index\(0)) # (!\inst1|Selector16~0_combout\)))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((\inst1|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \inst1|Selector16~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector14~0_combout\);

-- Location: LCCOMB_X52_Y50_N12
\inst1|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~2_combout\ = (\inst1|Selector14~1_combout\ & ((\inst1|Decoder0~0_combout\) # ((\inst1|r_Bit_Index\(2) & \inst1|Selector14~0_combout\)))) # (!\inst1|Selector14~1_combout\ & (((\inst1|r_Bit_Index\(2) & \inst1|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector14~1_combout\,
	datab => \inst1|Decoder0~0_combout\,
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|Selector14~0_combout\,
	combout => \inst1|Selector14~2_combout\);

-- Location: FF_X52_Y50_N13
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

-- Location: LCCOMB_X52_Y50_N14
\inst1|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~7_combout\ = (!\inst1|r_Bit_Index\(2) & (!\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~7_combout\);

-- Location: LCCOMB_X51_Y50_N12
\inst1|r_RX_Byte[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[1]~6_combout\ = (\inst1|Decoder0~7_combout\ & ((\inst1|r_RX_Data~q\))) # (!\inst1|Decoder0~7_combout\ & (\inst1|r_RX_Byte\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~7_combout\,
	datac => \inst1|r_RX_Byte\(1),
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|r_RX_Byte[1]~6_combout\);

-- Location: FF_X51_Y50_N13
\inst1|r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(1));

-- Location: LCCOMB_X52_Y50_N8
\inst1|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~6_combout\ = (!\inst1|r_Bit_Index\(2) & (\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~6_combout\);

-- Location: LCCOMB_X51_Y50_N14
\inst1|r_RX_Byte[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[2]~5_combout\ = (\inst1|Decoder0~6_combout\ & ((\inst1|r_RX_Data~q\))) # (!\inst1|Decoder0~6_combout\ & (\inst1|r_RX_Byte\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~6_combout\,
	datac => \inst1|r_RX_Byte\(2),
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|r_RX_Byte[2]~5_combout\);

-- Location: FF_X51_Y50_N15
\inst1|r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(2));

-- Location: LCCOMB_X52_Y50_N28
\inst1|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~8_combout\ = (!\inst1|r_Bit_Index\(2) & (!\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~8_combout\);

-- Location: LCCOMB_X51_Y50_N30
\inst1|r_RX_Byte[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[0]~7_combout\ = (\inst1|Decoder0~8_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~8_combout\ & ((\inst1|r_RX_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(0),
	datad => \inst1|Decoder0~8_combout\,
	combout => \inst1|r_RX_Byte[0]~7_combout\);

-- Location: FF_X51_Y50_N31
\inst1|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(0));

-- Location: LCCOMB_X52_Y50_N2
\inst1|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~5_combout\ = (!\inst1|r_Bit_Index\(2) & (\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~5_combout\);

-- Location: LCCOMB_X51_Y50_N24
\inst1|r_RX_Byte[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[3]~4_combout\ = (\inst1|Decoder0~5_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~5_combout\ & ((\inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(3),
	datad => \inst1|Decoder0~5_combout\,
	combout => \inst1|r_RX_Byte[3]~4_combout\);

-- Location: FF_X51_Y50_N25
\inst1|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(3));

-- Location: LCCOMB_X51_Y50_N18
\inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst1|r_RX_Byte\(1) & (\inst1|r_RX_Byte\(2) & (\inst1|r_RX_Byte\(0) & !\inst1|r_RX_Byte\(3)))) # (!\inst1|r_RX_Byte\(1) & (!\inst1|r_RX_Byte\(2) & (!\inst1|r_RX_Byte\(0) & \inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(1),
	datab => \inst1|r_RX_Byte\(2),
	datac => \inst1|r_RX_Byte\(0),
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X51_Y50_N6
\inst|PWM_SVmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~4_combout\ = (\inst|process_0~0_combout\ & ((\inst|PWM_SVmot~3_combout\))) # (!\inst|process_0~0_combout\ & (!\inst|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~2_combout\,
	datac => \inst|PWM_SVmot~3_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|PWM_SVmot~4_combout\);

-- Location: LCCOMB_X55_Y50_N4
\inst|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (!\inst|counter\(0) & (!\inst|counter\(4) & (!\inst|counter\(1) & !\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(4),
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X54_Y50_N18
\inst|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = (((!\inst|counter\(4) & !\inst|counter\(3))) # (!\inst|counter\(6))) # (!\inst|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(5),
	datac => \inst|counter\(3),
	datad => \inst|counter\(6),
	combout => \inst|LessThan3~1_combout\);

-- Location: LCCOMB_X51_Y50_N0
\inst|PWM_SVmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~1_combout\ = (!\inst|counter\(7) & (!\inst|process_0~0_combout\ & ((\inst|LessThan3~0_combout\) # (\inst|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~0_combout\,
	datab => \inst|counter\(7),
	datac => \inst|LessThan3~1_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|PWM_SVmot~1_combout\);

-- Location: LCCOMB_X51_Y50_N4
\inst|PWM_SVmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~0_combout\ = (!\inst|counter\(10) & (!\inst|counter\(9) & !\inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datac => \inst|counter\(9),
	datad => \inst|counter\(8),
	combout => \inst|PWM_SVmot~0_combout\);

-- Location: LCCOMB_X51_Y50_N20
\inst|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|flag~0_combout\ = \inst|flag~q\ $ (((\inst|LessThan2~2_combout\ & (\inst|PWM_SVmot~0_combout\ & \inst|PWM_SVmot~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~2_combout\,
	datab => \inst|PWM_SVmot~0_combout\,
	datac => \inst|flag~q\,
	datad => \inst|PWM_SVmot~1_combout\,
	combout => \inst|flag~0_combout\);

-- Location: FF_X51_Y50_N21
\inst|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag~q\);

-- Location: LCCOMB_X50_Y50_N0
\inst|innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~3_combout\ = (!\inst|innercounter\(0) & (((!\inst|innercounter\(2)) # (!\inst|innercounter\(3))) # (!\inst|innercounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(1),
	datab => \inst|innercounter\(3),
	datac => \inst|innercounter\(0),
	datad => \inst|innercounter\(2),
	combout => \inst|innercounter~3_combout\);

-- Location: LCCOMB_X51_Y50_N22
\inst|innercounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~1_combout\ = (!\inst|counter\(7) & (!\inst|flag~q\ & ((\inst|LessThan3~0_combout\) # (\inst|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~0_combout\,
	datab => \inst|counter\(7),
	datac => \inst|LessThan3~1_combout\,
	datad => \inst|flag~q\,
	combout => \inst|innercounter[3]~1_combout\);

-- Location: LCCOMB_X50_Y50_N18
\inst|innercounter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~2_combout\ = (\inst|PWM_SVmot~0_combout\ & (\inst|innercounter[3]~1_combout\ & (\inst|LessThan2~2_combout\ & !\inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PWM_SVmot~0_combout\,
	datab => \inst|innercounter[3]~1_combout\,
	datac => \inst|LessThan2~2_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|innercounter[3]~2_combout\);

-- Location: FF_X50_Y50_N1
\inst|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~3_combout\,
	ena => \inst|innercounter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(0));

-- Location: LCCOMB_X50_Y50_N16
\inst|innercounter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~5_combout\ = (\inst|innercounter\(1) & ((\inst|innercounter\(2) & (!\inst|innercounter\(3) & !\inst|innercounter\(0))) # (!\inst|innercounter\(2) & ((\inst|innercounter\(0)))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(1),
	datab => \inst|innercounter\(3),
	datac => \inst|innercounter\(2),
	datad => \inst|innercounter\(0),
	combout => \inst|innercounter~5_combout\);

-- Location: FF_X50_Y50_N17
\inst|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~5_combout\,
	ena => \inst|innercounter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(2));

-- Location: LCCOMB_X50_Y50_N6
\inst|innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~4_combout\ = (\inst|innercounter\(1) & (!\inst|innercounter\(0) & ((!\inst|innercounter\(3)) # (!\inst|innercounter\(2))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(2),
	datab => \inst|innercounter\(3),
	datac => \inst|innercounter\(1),
	datad => \inst|innercounter\(0),
	combout => \inst|innercounter~4_combout\);

-- Location: FF_X50_Y50_N7
\inst|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~4_combout\,
	ena => \inst|innercounter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(1));

-- Location: LCCOMB_X50_Y50_N14
\inst|innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~0_combout\ = (\inst|innercounter\(1) & ((\inst|innercounter\(2) & (!\inst|innercounter\(3) & \inst|innercounter\(0))) # (!\inst|innercounter\(2) & (\inst|innercounter\(3))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(1),
	datab => \inst|innercounter\(2),
	datac => \inst|innercounter\(3),
	datad => \inst|innercounter\(0),
	combout => \inst|innercounter~0_combout\);

-- Location: FF_X50_Y50_N15
\inst|innercounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~0_combout\,
	ena => \inst|innercounter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(3));

-- Location: LCCOMB_X51_Y50_N10
\inst|PWM_SVmot~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~5_combout\ = (\inst|innercounter\(1) & (!\inst|innercounter\(0) & (\inst1|r_RX_Byte\(0) & \inst1|r_RX_Byte\(1)))) # (!\inst|innercounter\(1) & ((\inst1|r_RX_Byte\(1)) # ((!\inst|innercounter\(0) & \inst1|r_RX_Byte\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(0),
	datab => \inst|innercounter\(1),
	datac => \inst1|r_RX_Byte\(0),
	datad => \inst1|r_RX_Byte\(1),
	combout => \inst|PWM_SVmot~5_combout\);

-- Location: LCCOMB_X51_Y50_N28
\inst|PWM_SVmot~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~6_combout\ = (\inst|innercounter\(2) & (\inst1|r_RX_Byte\(2) & \inst|PWM_SVmot~5_combout\)) # (!\inst|innercounter\(2) & ((\inst1|r_RX_Byte\(2)) # (\inst|PWM_SVmot~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(2),
	datac => \inst1|r_RX_Byte\(2),
	datad => \inst|PWM_SVmot~5_combout\,
	combout => \inst|PWM_SVmot~6_combout\);

-- Location: LCCOMB_X51_Y50_N2
\inst|PWM_SVmot~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~7_combout\ = (\inst|innercounter\(3) & (\inst1|r_RX_Byte\(3) & \inst|PWM_SVmot~6_combout\)) # (!\inst|innercounter\(3) & ((\inst1|r_RX_Byte\(3)) # (\inst|PWM_SVmot~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(3),
	datab => \inst1|r_RX_Byte\(3),
	datad => \inst|PWM_SVmot~6_combout\,
	combout => \inst|PWM_SVmot~7_combout\);

-- Location: LCCOMB_X51_Y50_N16
\inst|PWM_SVmot~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~8_combout\ = (\inst|flag~q\ & (\inst|PWM_SVmot~q\)) # (!\inst|flag~q\ & ((\inst|PWM_SVmot~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|flag~q\,
	datac => \inst|PWM_SVmot~q\,
	datad => \inst|PWM_SVmot~7_combout\,
	combout => \inst|PWM_SVmot~8_combout\);

-- Location: LCCOMB_X51_Y50_N8
\inst|PWM_SVmot~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~9_combout\ = (\inst|PWM_SVmot~0_combout\ & ((\inst|PWM_SVmot~4_combout\) # ((\inst|PWM_SVmot~1_combout\ & \inst|PWM_SVmot~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PWM_SVmot~4_combout\,
	datab => \inst|PWM_SVmot~1_combout\,
	datac => \inst|PWM_SVmot~0_combout\,
	datad => \inst|PWM_SVmot~8_combout\,
	combout => \inst|PWM_SVmot~9_combout\);

-- Location: FF_X51_Y50_N9
\inst|PWM_SVmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|PWM_SVmot~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PWM_SVmot~q\);

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

-- Location: LCCOMB_X52_Y49_N8
\inst1|r_RX_Byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[7]~0_combout\ = (\inst1|Decoder0~1_combout\ & ((\inst1|r_RX_Data~q\))) # (!\inst1|Decoder0~1_combout\ & (\inst1|r_RX_Byte\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~1_combout\,
	datac => \inst1|r_RX_Byte\(7),
	datad => \inst1|r_RX_Data~q\,
	combout => \inst1|r_RX_Byte[7]~0_combout\);

-- Location: FF_X52_Y49_N9
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

-- Location: LCCOMB_X52_Y50_N24
\inst1|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~2_combout\ = (\inst1|r_Bit_Index\(2) & (\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~2_combout\);

-- Location: LCCOMB_X51_Y50_N26
\inst1|r_RX_Byte[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[6]~1_combout\ = (\inst1|Decoder0~2_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~2_combout\ & ((\inst1|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(6),
	datad => \inst1|Decoder0~2_combout\,
	combout => \inst1|r_RX_Byte[6]~1_combout\);

-- Location: FF_X51_Y50_N27
\inst1|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(6));

-- Location: LCCOMB_X52_Y50_N22
\inst1|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~3_combout\ = (\inst1|r_Bit_Index\(2) & (!\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~3_combout\);

-- Location: LCCOMB_X50_Y50_N28
\inst1|r_RX_Byte[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[5]~2_combout\ = (\inst1|Decoder0~3_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~3_combout\ & ((\inst1|r_RX_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst1|Decoder0~3_combout\,
	combout => \inst1|r_RX_Byte[5]~2_combout\);

-- Location: FF_X50_Y50_N29
\inst1|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(5));

-- Location: LCCOMB_X52_Y50_N20
\inst1|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~4_combout\ = (\inst1|r_Bit_Index\(2) & (!\inst1|r_Bit_Index\(1) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|r_Bit_Index\(1),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~4_combout\);

-- Location: LCCOMB_X52_Y50_N0
\inst1|r_RX_Byte[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[4]~3_combout\ = (\inst1|Decoder0~4_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~4_combout\ & ((\inst1|r_RX_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst1|Decoder0~4_combout\,
	combout => \inst1|r_RX_Byte[4]~3_combout\);

-- Location: FF_X52_Y50_N1
\inst1|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(4));

-- Location: LCCOMB_X56_Y51_N12
\inst5|U0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~0_combout\ = (!\inst1|r_RX_Byte\(6) & (!\inst1|r_RX_Byte\(5) & !\inst1|r_RX_Byte\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(6),
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst1|r_RX_Byte\(4),
	combout => \inst5|U0|Equal1~0_combout\);

-- Location: LCCOMB_X55_Y49_N4
\inst5|U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~0_combout\ = \inst5|U0|counter\(0) $ (VCC)
-- \inst5|U0|Add0~1\ = CARRY(\inst5|U0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(0),
	datad => VCC,
	combout => \inst5|U0|Add0~0_combout\,
	cout => \inst5|U0|Add0~1\);

-- Location: FF_X55_Y49_N5
\inst5|U0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(0));

-- Location: LCCOMB_X55_Y49_N6
\inst5|U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~2_combout\ = (\inst5|U0|counter\(1) & (!\inst5|U0|Add0~1\)) # (!\inst5|U0|counter\(1) & ((\inst5|U0|Add0~1\) # (GND)))
-- \inst5|U0|Add0~3\ = CARRY((!\inst5|U0|Add0~1\) # (!\inst5|U0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(1),
	datad => VCC,
	cin => \inst5|U0|Add0~1\,
	combout => \inst5|U0|Add0~2_combout\,
	cout => \inst5|U0|Add0~3\);

-- Location: FF_X55_Y49_N7
\inst5|U0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(1));

-- Location: LCCOMB_X55_Y49_N8
\inst5|U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~4_combout\ = (\inst5|U0|counter\(2) & (\inst5|U0|Add0~3\ $ (GND))) # (!\inst5|U0|counter\(2) & (!\inst5|U0|Add0~3\ & VCC))
-- \inst5|U0|Add0~5\ = CARRY((\inst5|U0|counter\(2) & !\inst5|U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(2),
	datad => VCC,
	cin => \inst5|U0|Add0~3\,
	combout => \inst5|U0|Add0~4_combout\,
	cout => \inst5|U0|Add0~5\);

-- Location: FF_X55_Y49_N9
\inst5|U0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(2));

-- Location: LCCOMB_X55_Y49_N10
\inst5|U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~6_combout\ = (\inst5|U0|counter\(3) & (!\inst5|U0|Add0~5\)) # (!\inst5|U0|counter\(3) & ((\inst5|U0|Add0~5\) # (GND)))
-- \inst5|U0|Add0~7\ = CARRY((!\inst5|U0|Add0~5\) # (!\inst5|U0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(3),
	datad => VCC,
	cin => \inst5|U0|Add0~5\,
	combout => \inst5|U0|Add0~6_combout\,
	cout => \inst5|U0|Add0~7\);

-- Location: FF_X55_Y49_N11
\inst5|U0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(3));

-- Location: LCCOMB_X56_Y49_N30
\inst5|U0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~1_combout\ = (\inst5|U0|counter\(3) & (\inst5|U0|counter\(1) & (\inst5|U0|counter\(0) & \inst5|U0|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(3),
	datab => \inst5|U0|counter\(1),
	datac => \inst5|U0|counter\(0),
	datad => \inst5|U0|counter\(2),
	combout => \inst5|U0|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y49_N0
\inst5|U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~0_combout\ = (!\inst5|U0|counter\(4) & (!\inst5|U0|counter\(6) & (!\inst5|U0|counter\(5) & !\inst5|U0|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(4),
	datab => \inst5|U0|counter\(6),
	datac => \inst5|U0|counter\(5),
	datad => \inst5|U0|counter\(7),
	combout => \inst5|U0|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y49_N0
\inst5|U0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~2_combout\ = (\inst5|U0|counter\(8) & (\inst5|U0|counter\(9) & \inst5|U0|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(8),
	datab => \inst5|U0|counter\(9),
	datac => \inst5|U0|counter\(10),
	combout => \inst5|U0|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y49_N2
\inst5|U0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~3_combout\ = (\inst5|U0|counter\(13) & (!\inst5|U0|counter\(12) & (!\inst5|U0|counter\(11) & \inst5|U0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(13),
	datab => \inst5|U0|counter\(12),
	datac => \inst5|U0|counter\(11),
	datad => \inst5|U0|Equal0~2_combout\,
	combout => \inst5|U0|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y49_N12
\inst5|U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~8_combout\ = (\inst5|U0|counter\(4) & (\inst5|U0|Add0~7\ $ (GND))) # (!\inst5|U0|counter\(4) & (!\inst5|U0|Add0~7\ & VCC))
-- \inst5|U0|Add0~9\ = CARRY((\inst5|U0|counter\(4) & !\inst5|U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(4),
	datad => VCC,
	cin => \inst5|U0|Add0~7\,
	combout => \inst5|U0|Add0~8_combout\,
	cout => \inst5|U0|Add0~9\);

-- Location: LCCOMB_X56_Y49_N20
\inst5|U0|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~3_combout\ = (\inst5|U0|Add0~8_combout\ & (((!\inst5|U0|Equal0~1_combout\) # (!\inst5|U0|Equal0~3_combout\)) # (!\inst5|U0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~0_combout\,
	datab => \inst5|U0|Equal0~3_combout\,
	datac => \inst5|U0|Equal0~1_combout\,
	datad => \inst5|U0|Add0~8_combout\,
	combout => \inst5|U0|counter~3_combout\);

-- Location: FF_X56_Y49_N21
\inst5|U0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(4));

-- Location: LCCOMB_X55_Y49_N14
\inst5|U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~10_combout\ = (\inst5|U0|counter\(5) & (!\inst5|U0|Add0~9\)) # (!\inst5|U0|counter\(5) & ((\inst5|U0|Add0~9\) # (GND)))
-- \inst5|U0|Add0~11\ = CARRY((!\inst5|U0|Add0~9\) # (!\inst5|U0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(5),
	datad => VCC,
	cin => \inst5|U0|Add0~9\,
	combout => \inst5|U0|Add0~10_combout\,
	cout => \inst5|U0|Add0~11\);

-- Location: FF_X55_Y49_N15
\inst5|U0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(5));

-- Location: LCCOMB_X55_Y49_N16
\inst5|U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~12_combout\ = (\inst5|U0|counter\(6) & (\inst5|U0|Add0~11\ $ (GND))) # (!\inst5|U0|counter\(6) & (!\inst5|U0|Add0~11\ & VCC))
-- \inst5|U0|Add0~13\ = CARRY((\inst5|U0|counter\(6) & !\inst5|U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(6),
	datad => VCC,
	cin => \inst5|U0|Add0~11\,
	combout => \inst5|U0|Add0~12_combout\,
	cout => \inst5|U0|Add0~13\);

-- Location: FF_X55_Y49_N17
\inst5|U0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(6));

-- Location: LCCOMB_X55_Y49_N18
\inst5|U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~14_combout\ = (\inst5|U0|counter\(7) & (!\inst5|U0|Add0~13\)) # (!\inst5|U0|counter\(7) & ((\inst5|U0|Add0~13\) # (GND)))
-- \inst5|U0|Add0~15\ = CARRY((!\inst5|U0|Add0~13\) # (!\inst5|U0|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(7),
	datad => VCC,
	cin => \inst5|U0|Add0~13\,
	combout => \inst5|U0|Add0~14_combout\,
	cout => \inst5|U0|Add0~15\);

-- Location: FF_X55_Y49_N19
\inst5|U0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(7));

-- Location: LCCOMB_X55_Y49_N20
\inst5|U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~16_combout\ = (\inst5|U0|counter\(8) & (\inst5|U0|Add0~15\ $ (GND))) # (!\inst5|U0|counter\(8) & (!\inst5|U0|Add0~15\ & VCC))
-- \inst5|U0|Add0~17\ = CARRY((\inst5|U0|counter\(8) & !\inst5|U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(8),
	datad => VCC,
	cin => \inst5|U0|Add0~15\,
	combout => \inst5|U0|Add0~16_combout\,
	cout => \inst5|U0|Add0~17\);

-- Location: LCCOMB_X56_Y49_N6
\inst5|U0|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~1_combout\ = (\inst5|U0|Add0~16_combout\ & (((!\inst5|U0|Equal0~3_combout\) # (!\inst5|U0|Equal0~0_combout\)) # (!\inst5|U0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~1_combout\,
	datab => \inst5|U0|Add0~16_combout\,
	datac => \inst5|U0|Equal0~0_combout\,
	datad => \inst5|U0|Equal0~3_combout\,
	combout => \inst5|U0|counter~1_combout\);

-- Location: FF_X56_Y49_N7
\inst5|U0|counter[8]\ : dffeas
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
	q => \inst5|U0|counter\(8));

-- Location: LCCOMB_X55_Y49_N22
\inst5|U0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~18_combout\ = (\inst5|U0|counter\(9) & (!\inst5|U0|Add0~17\)) # (!\inst5|U0|counter\(9) & ((\inst5|U0|Add0~17\) # (GND)))
-- \inst5|U0|Add0~19\ = CARRY((!\inst5|U0|Add0~17\) # (!\inst5|U0|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(9),
	datad => VCC,
	cin => \inst5|U0|Add0~17\,
	combout => \inst5|U0|Add0~18_combout\,
	cout => \inst5|U0|Add0~19\);

-- Location: LCCOMB_X56_Y49_N28
\inst5|U0|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~0_combout\ = (\inst5|U0|Add0~18_combout\ & (((!\inst5|U0|Equal0~3_combout\) # (!\inst5|U0|Equal0~0_combout\)) # (!\inst5|U0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~1_combout\,
	datab => \inst5|U0|Add0~18_combout\,
	datac => \inst5|U0|Equal0~0_combout\,
	datad => \inst5|U0|Equal0~3_combout\,
	combout => \inst5|U0|counter~0_combout\);

-- Location: FF_X56_Y49_N29
\inst5|U0|counter[9]\ : dffeas
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
	q => \inst5|U0|counter\(9));

-- Location: LCCOMB_X55_Y49_N24
\inst5|U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~20_combout\ = (\inst5|U0|counter\(10) & (\inst5|U0|Add0~19\ $ (GND))) # (!\inst5|U0|counter\(10) & (!\inst5|U0|Add0~19\ & VCC))
-- \inst5|U0|Add0~21\ = CARRY((\inst5|U0|counter\(10) & !\inst5|U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(10),
	datad => VCC,
	cin => \inst5|U0|Add0~19\,
	combout => \inst5|U0|Add0~20_combout\,
	cout => \inst5|U0|Add0~21\);

-- Location: LCCOMB_X56_Y49_N4
\inst5|U0|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~2_combout\ = (\inst5|U0|Add0~20_combout\ & (((!\inst5|U0|Equal0~3_combout\) # (!\inst5|U0|Equal0~0_combout\)) # (!\inst5|U0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~1_combout\,
	datab => \inst5|U0|Add0~20_combout\,
	datac => \inst5|U0|Equal0~0_combout\,
	datad => \inst5|U0|Equal0~3_combout\,
	combout => \inst5|U0|counter~2_combout\);

-- Location: FF_X56_Y49_N5
\inst5|U0|counter[10]\ : dffeas
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
	q => \inst5|U0|counter\(10));

-- Location: LCCOMB_X55_Y49_N26
\inst5|U0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~22_combout\ = (\inst5|U0|counter\(11) & (!\inst5|U0|Add0~21\)) # (!\inst5|U0|counter\(11) & ((\inst5|U0|Add0~21\) # (GND)))
-- \inst5|U0|Add0~23\ = CARRY((!\inst5|U0|Add0~21\) # (!\inst5|U0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(11),
	datad => VCC,
	cin => \inst5|U0|Add0~21\,
	combout => \inst5|U0|Add0~22_combout\,
	cout => \inst5|U0|Add0~23\);

-- Location: FF_X55_Y49_N27
\inst5|U0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(11));

-- Location: LCCOMB_X55_Y49_N28
\inst5|U0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~24_combout\ = (\inst5|U0|counter\(12) & (\inst5|U0|Add0~23\ $ (GND))) # (!\inst5|U0|counter\(12) & (!\inst5|U0|Add0~23\ & VCC))
-- \inst5|U0|Add0~25\ = CARRY((\inst5|U0|counter\(12) & !\inst5|U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(12),
	datad => VCC,
	cin => \inst5|U0|Add0~23\,
	combout => \inst5|U0|Add0~24_combout\,
	cout => \inst5|U0|Add0~25\);

-- Location: FF_X55_Y49_N29
\inst5|U0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(12));

-- Location: LCCOMB_X55_Y49_N30
\inst5|U0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~26_combout\ = \inst5|U0|Add0~25\ $ (\inst5|U0|counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|U0|counter\(13),
	cin => \inst5|U0|Add0~25\,
	combout => \inst5|U0|Add0~26_combout\);

-- Location: LCCOMB_X56_Y49_N26
\inst5|U0|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~4_combout\ = (\inst5|U0|Add0~26_combout\ & (((!\inst5|U0|Equal0~3_combout\) # (!\inst5|U0|Equal0~0_combout\)) # (!\inst5|U0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~1_combout\,
	datab => \inst5|U0|Add0~26_combout\,
	datac => \inst5|U0|Equal0~0_combout\,
	datad => \inst5|U0|Equal0~3_combout\,
	combout => \inst5|U0|counter~4_combout\);

-- Location: FF_X56_Y49_N27
\inst5|U0|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(13));

-- Location: LCCOMB_X56_Y49_N18
\inst5|U0|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan1~0_combout\ = ((!\inst5|U0|Equal0~1_combout\ & \inst5|U0|Equal0~0_combout\)) # (!\inst5|U0|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~1_combout\,
	datac => \inst5|U0|Equal0~0_combout\,
	datad => \inst5|U0|Equal0~2_combout\,
	combout => \inst5|U0|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y49_N16
\inst5|U0|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan1~1_combout\ = ((!\inst5|U0|counter\(12) & (!\inst5|U0|counter\(11) & \inst5|U0|LessThan1~0_combout\))) # (!\inst5|U0|counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(13),
	datab => \inst5|U0|counter\(12),
	datac => \inst5|U0|counter\(11),
	datad => \inst5|U0|LessThan1~0_combout\,
	combout => \inst5|U0|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y49_N10
\inst5|U0|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~1_combout\ = (!\inst5|U0|counter\(3) & (((!\inst5|U0|counter\(1) & !\inst5|U0|counter\(0))) # (!\inst5|U0|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(3),
	datab => \inst5|U0|counter\(1),
	datac => \inst5|U0|counter\(0),
	datad => \inst5|U0|counter\(2),
	combout => \inst5|U0|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y49_N14
\inst5|U0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~0_combout\ = (((!\inst5|U0|counter\(9) & !\inst5|U0|counter\(8))) # (!\inst5|U0|counter\(10))) # (!\inst5|U0|counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(11),
	datab => \inst5|U0|counter\(9),
	datac => \inst5|U0|counter\(10),
	datad => \inst5|U0|counter\(8),
	combout => \inst5|U0|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y49_N12
\inst5|U0|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~2_combout\ = (\inst5|U0|LessThan0~0_combout\) # ((\inst5|U0|LessThan0~1_combout\ & (\inst5|U0|Equal0~0_combout\ & !\inst5|U0|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|LessThan0~1_combout\,
	datab => \inst5|U0|LessThan0~0_combout\,
	datac => \inst5|U0|Equal0~0_combout\,
	datad => \inst5|U0|counter\(9),
	combout => \inst5|U0|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y49_N24
\inst5|U0|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~3_combout\ = (\inst5|U0|LessThan0~2_combout\ & (!\inst5|U0|counter\(12) & !\inst5|U0|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|LessThan0~2_combout\,
	datab => \inst5|U0|counter\(12),
	datac => \inst5|U0|counter\(13),
	combout => \inst5|U0|LessThan0~3_combout\);

-- Location: LCCOMB_X58_Y53_N0
\inst5|U0|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~0_combout\ = \inst5|U0|flag\(0) $ (GND)
-- \inst5|U0|Add2~1\ = CARRY(!\inst5|U0|flag\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(0),
	datad => VCC,
	combout => \inst5|U0|Add2~0_combout\,
	cout => \inst5|U0|Add2~1\);

-- Location: LCCOMB_X57_Y53_N6
\inst5|U0|flag[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|flag[0]~1_combout\ = !\inst5|U0|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U0|Add2~0_combout\,
	combout => \inst5|U0|flag[0]~1_combout\);

-- Location: LCCOMB_X56_Y51_N2
\inst5|U0|innercounter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter[2]~0_combout\ = (\inst5|U0|LessThan1~1_combout\ & (!\inst5|U0|LessThan0~3_combout\ & !\inst5|U0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|LessThan1~1_combout\,
	datac => \inst5|U0|LessThan0~3_combout\,
	datad => \inst5|U0|Equal1~0_combout\,
	combout => \inst5|U0|innercounter[2]~0_combout\);

-- Location: FF_X57_Y53_N7
\inst5|U0|flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|flag[0]~1_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(0));

-- Location: LCCOMB_X58_Y53_N2
\inst5|U0|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~2_combout\ = (\inst5|U0|flag\(1) & (\inst5|U0|Add2~1\ & VCC)) # (!\inst5|U0|flag\(1) & (!\inst5|U0|Add2~1\))
-- \inst5|U0|Add2~3\ = CARRY((!\inst5|U0|flag\(1) & !\inst5|U0|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(1),
	datad => VCC,
	cin => \inst5|U0|Add2~1\,
	combout => \inst5|U0|Add2~2_combout\,
	cout => \inst5|U0|Add2~3\);

-- Location: LCCOMB_X57_Y53_N16
\inst5|U0|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|flag~0_combout\ = (\inst5|U0|Add2~2_combout\) # (\inst5|U0|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Add2~2_combout\,
	datad => \inst5|U0|Equal2~10_combout\,
	combout => \inst5|U0|flag~0_combout\);

-- Location: FF_X57_Y53_N17
\inst5|U0|flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|flag~0_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(1));

-- Location: LCCOMB_X58_Y53_N4
\inst5|U0|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~4_combout\ = (\inst5|U0|flag\(2) & ((GND) # (!\inst5|U0|Add2~3\))) # (!\inst5|U0|flag\(2) & (\inst5|U0|Add2~3\ $ (GND)))
-- \inst5|U0|Add2~5\ = CARRY((\inst5|U0|flag\(2)) # (!\inst5|U0|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(2),
	datad => VCC,
	cin => \inst5|U0|Add2~3\,
	combout => \inst5|U0|Add2~4_combout\,
	cout => \inst5|U0|Add2~5\);

-- Location: FF_X58_Y53_N5
\inst5|U0|flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~4_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(2));

-- Location: LCCOMB_X58_Y53_N6
\inst5|U0|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~6_combout\ = (\inst5|U0|flag\(3) & (\inst5|U0|Add2~5\ & VCC)) # (!\inst5|U0|flag\(3) & (!\inst5|U0|Add2~5\))
-- \inst5|U0|Add2~7\ = CARRY((!\inst5|U0|flag\(3) & !\inst5|U0|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(3),
	datad => VCC,
	cin => \inst5|U0|Add2~5\,
	combout => \inst5|U0|Add2~6_combout\,
	cout => \inst5|U0|Add2~7\);

-- Location: FF_X58_Y53_N7
\inst5|U0|flag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~6_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(3));

-- Location: LCCOMB_X58_Y53_N8
\inst5|U0|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~8_combout\ = (\inst5|U0|flag\(4) & ((GND) # (!\inst5|U0|Add2~7\))) # (!\inst5|U0|flag\(4) & (\inst5|U0|Add2~7\ $ (GND)))
-- \inst5|U0|Add2~9\ = CARRY((\inst5|U0|flag\(4)) # (!\inst5|U0|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(4),
	datad => VCC,
	cin => \inst5|U0|Add2~7\,
	combout => \inst5|U0|Add2~8_combout\,
	cout => \inst5|U0|Add2~9\);

-- Location: FF_X58_Y53_N9
\inst5|U0|flag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~8_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(4));

-- Location: LCCOMB_X58_Y53_N10
\inst5|U0|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~10_combout\ = (\inst5|U0|flag\(5) & (\inst5|U0|Add2~9\ & VCC)) # (!\inst5|U0|flag\(5) & (!\inst5|U0|Add2~9\))
-- \inst5|U0|Add2~11\ = CARRY((!\inst5|U0|flag\(5) & !\inst5|U0|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(5),
	datad => VCC,
	cin => \inst5|U0|Add2~9\,
	combout => \inst5|U0|Add2~10_combout\,
	cout => \inst5|U0|Add2~11\);

-- Location: FF_X58_Y53_N11
\inst5|U0|flag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~10_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(5));

-- Location: LCCOMB_X58_Y53_N12
\inst5|U0|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~12_combout\ = (\inst5|U0|flag\(6) & ((GND) # (!\inst5|U0|Add2~11\))) # (!\inst5|U0|flag\(6) & (\inst5|U0|Add2~11\ $ (GND)))
-- \inst5|U0|Add2~13\ = CARRY((\inst5|U0|flag\(6)) # (!\inst5|U0|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(6),
	datad => VCC,
	cin => \inst5|U0|Add2~11\,
	combout => \inst5|U0|Add2~12_combout\,
	cout => \inst5|U0|Add2~13\);

-- Location: FF_X58_Y53_N13
\inst5|U0|flag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~12_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(6));

-- Location: LCCOMB_X58_Y53_N14
\inst5|U0|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~14_combout\ = (\inst5|U0|flag\(7) & (\inst5|U0|Add2~13\ & VCC)) # (!\inst5|U0|flag\(7) & (!\inst5|U0|Add2~13\))
-- \inst5|U0|Add2~15\ = CARRY((!\inst5|U0|flag\(7) & !\inst5|U0|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(7),
	datad => VCC,
	cin => \inst5|U0|Add2~13\,
	combout => \inst5|U0|Add2~14_combout\,
	cout => \inst5|U0|Add2~15\);

-- Location: FF_X58_Y53_N15
\inst5|U0|flag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~14_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(7));

-- Location: LCCOMB_X58_Y53_N16
\inst5|U0|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~16_combout\ = (\inst5|U0|flag\(8) & ((GND) # (!\inst5|U0|Add2~15\))) # (!\inst5|U0|flag\(8) & (\inst5|U0|Add2~15\ $ (GND)))
-- \inst5|U0|Add2~17\ = CARRY((\inst5|U0|flag\(8)) # (!\inst5|U0|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(8),
	datad => VCC,
	cin => \inst5|U0|Add2~15\,
	combout => \inst5|U0|Add2~16_combout\,
	cout => \inst5|U0|Add2~17\);

-- Location: FF_X58_Y53_N17
\inst5|U0|flag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~16_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(8));

-- Location: LCCOMB_X58_Y53_N18
\inst5|U0|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~18_combout\ = (\inst5|U0|flag\(9) & (\inst5|U0|Add2~17\ & VCC)) # (!\inst5|U0|flag\(9) & (!\inst5|U0|Add2~17\))
-- \inst5|U0|Add2~19\ = CARRY((!\inst5|U0|flag\(9) & !\inst5|U0|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(9),
	datad => VCC,
	cin => \inst5|U0|Add2~17\,
	combout => \inst5|U0|Add2~18_combout\,
	cout => \inst5|U0|Add2~19\);

-- Location: FF_X58_Y53_N19
\inst5|U0|flag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~18_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(9));

-- Location: LCCOMB_X58_Y53_N20
\inst5|U0|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~20_combout\ = (\inst5|U0|flag\(10) & ((GND) # (!\inst5|U0|Add2~19\))) # (!\inst5|U0|flag\(10) & (\inst5|U0|Add2~19\ $ (GND)))
-- \inst5|U0|Add2~21\ = CARRY((\inst5|U0|flag\(10)) # (!\inst5|U0|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(10),
	datad => VCC,
	cin => \inst5|U0|Add2~19\,
	combout => \inst5|U0|Add2~20_combout\,
	cout => \inst5|U0|Add2~21\);

-- Location: FF_X58_Y53_N21
\inst5|U0|flag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~20_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(10));

-- Location: LCCOMB_X58_Y53_N22
\inst5|U0|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~22_combout\ = (\inst5|U0|flag\(11) & (\inst5|U0|Add2~21\ & VCC)) # (!\inst5|U0|flag\(11) & (!\inst5|U0|Add2~21\))
-- \inst5|U0|Add2~23\ = CARRY((!\inst5|U0|flag\(11) & !\inst5|U0|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(11),
	datad => VCC,
	cin => \inst5|U0|Add2~21\,
	combout => \inst5|U0|Add2~22_combout\,
	cout => \inst5|U0|Add2~23\);

-- Location: FF_X58_Y53_N23
\inst5|U0|flag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~22_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(11));

-- Location: LCCOMB_X58_Y53_N24
\inst5|U0|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~24_combout\ = (\inst5|U0|flag\(12) & ((GND) # (!\inst5|U0|Add2~23\))) # (!\inst5|U0|flag\(12) & (\inst5|U0|Add2~23\ $ (GND)))
-- \inst5|U0|Add2~25\ = CARRY((\inst5|U0|flag\(12)) # (!\inst5|U0|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(12),
	datad => VCC,
	cin => \inst5|U0|Add2~23\,
	combout => \inst5|U0|Add2~24_combout\,
	cout => \inst5|U0|Add2~25\);

-- Location: FF_X58_Y53_N25
\inst5|U0|flag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~24_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(12));

-- Location: LCCOMB_X58_Y53_N26
\inst5|U0|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~26_combout\ = (\inst5|U0|flag\(13) & (\inst5|U0|Add2~25\ & VCC)) # (!\inst5|U0|flag\(13) & (!\inst5|U0|Add2~25\))
-- \inst5|U0|Add2~27\ = CARRY((!\inst5|U0|flag\(13) & !\inst5|U0|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(13),
	datad => VCC,
	cin => \inst5|U0|Add2~25\,
	combout => \inst5|U0|Add2~26_combout\,
	cout => \inst5|U0|Add2~27\);

-- Location: FF_X58_Y53_N27
\inst5|U0|flag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~26_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(13));

-- Location: LCCOMB_X58_Y53_N28
\inst5|U0|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~28_combout\ = (\inst5|U0|flag\(14) & ((GND) # (!\inst5|U0|Add2~27\))) # (!\inst5|U0|flag\(14) & (\inst5|U0|Add2~27\ $ (GND)))
-- \inst5|U0|Add2~29\ = CARRY((\inst5|U0|flag\(14)) # (!\inst5|U0|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(14),
	datad => VCC,
	cin => \inst5|U0|Add2~27\,
	combout => \inst5|U0|Add2~28_combout\,
	cout => \inst5|U0|Add2~29\);

-- Location: FF_X58_Y53_N29
\inst5|U0|flag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~28_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(14));

-- Location: LCCOMB_X58_Y53_N30
\inst5|U0|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~30_combout\ = (\inst5|U0|flag\(15) & (\inst5|U0|Add2~29\ & VCC)) # (!\inst5|U0|flag\(15) & (!\inst5|U0|Add2~29\))
-- \inst5|U0|Add2~31\ = CARRY((!\inst5|U0|flag\(15) & !\inst5|U0|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(15),
	datad => VCC,
	cin => \inst5|U0|Add2~29\,
	combout => \inst5|U0|Add2~30_combout\,
	cout => \inst5|U0|Add2~31\);

-- Location: FF_X58_Y53_N31
\inst5|U0|flag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~30_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(15));

-- Location: LCCOMB_X58_Y52_N0
\inst5|U0|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~32_combout\ = (\inst5|U0|flag\(16) & ((GND) # (!\inst5|U0|Add2~31\))) # (!\inst5|U0|flag\(16) & (\inst5|U0|Add2~31\ $ (GND)))
-- \inst5|U0|Add2~33\ = CARRY((\inst5|U0|flag\(16)) # (!\inst5|U0|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(16),
	datad => VCC,
	cin => \inst5|U0|Add2~31\,
	combout => \inst5|U0|Add2~32_combout\,
	cout => \inst5|U0|Add2~33\);

-- Location: FF_X58_Y52_N1
\inst5|U0|flag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~32_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(16));

-- Location: LCCOMB_X58_Y52_N2
\inst5|U0|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~34_combout\ = (\inst5|U0|flag\(17) & (\inst5|U0|Add2~33\ & VCC)) # (!\inst5|U0|flag\(17) & (!\inst5|U0|Add2~33\))
-- \inst5|U0|Add2~35\ = CARRY((!\inst5|U0|flag\(17) & !\inst5|U0|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(17),
	datad => VCC,
	cin => \inst5|U0|Add2~33\,
	combout => \inst5|U0|Add2~34_combout\,
	cout => \inst5|U0|Add2~35\);

-- Location: FF_X58_Y52_N3
\inst5|U0|flag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~34_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(17));

-- Location: LCCOMB_X58_Y52_N4
\inst5|U0|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~36_combout\ = (\inst5|U0|flag\(18) & ((GND) # (!\inst5|U0|Add2~35\))) # (!\inst5|U0|flag\(18) & (\inst5|U0|Add2~35\ $ (GND)))
-- \inst5|U0|Add2~37\ = CARRY((\inst5|U0|flag\(18)) # (!\inst5|U0|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(18),
	datad => VCC,
	cin => \inst5|U0|Add2~35\,
	combout => \inst5|U0|Add2~36_combout\,
	cout => \inst5|U0|Add2~37\);

-- Location: FF_X58_Y52_N5
\inst5|U0|flag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~36_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(18));

-- Location: LCCOMB_X58_Y52_N6
\inst5|U0|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~38_combout\ = (\inst5|U0|flag\(19) & (\inst5|U0|Add2~37\ & VCC)) # (!\inst5|U0|flag\(19) & (!\inst5|U0|Add2~37\))
-- \inst5|U0|Add2~39\ = CARRY((!\inst5|U0|flag\(19) & !\inst5|U0|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(19),
	datad => VCC,
	cin => \inst5|U0|Add2~37\,
	combout => \inst5|U0|Add2~38_combout\,
	cout => \inst5|U0|Add2~39\);

-- Location: FF_X58_Y52_N7
\inst5|U0|flag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~38_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(19));

-- Location: LCCOMB_X58_Y52_N8
\inst5|U0|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~40_combout\ = (\inst5|U0|flag\(20) & ((GND) # (!\inst5|U0|Add2~39\))) # (!\inst5|U0|flag\(20) & (\inst5|U0|Add2~39\ $ (GND)))
-- \inst5|U0|Add2~41\ = CARRY((\inst5|U0|flag\(20)) # (!\inst5|U0|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(20),
	datad => VCC,
	cin => \inst5|U0|Add2~39\,
	combout => \inst5|U0|Add2~40_combout\,
	cout => \inst5|U0|Add2~41\);

-- Location: FF_X58_Y52_N9
\inst5|U0|flag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~40_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(20));

-- Location: LCCOMB_X58_Y52_N10
\inst5|U0|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~42_combout\ = (\inst5|U0|flag\(21) & (\inst5|U0|Add2~41\ & VCC)) # (!\inst5|U0|flag\(21) & (!\inst5|U0|Add2~41\))
-- \inst5|U0|Add2~43\ = CARRY((!\inst5|U0|flag\(21) & !\inst5|U0|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(21),
	datad => VCC,
	cin => \inst5|U0|Add2~41\,
	combout => \inst5|U0|Add2~42_combout\,
	cout => \inst5|U0|Add2~43\);

-- Location: FF_X58_Y52_N11
\inst5|U0|flag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~42_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(21));

-- Location: LCCOMB_X58_Y52_N12
\inst5|U0|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~44_combout\ = (\inst5|U0|flag\(22) & ((GND) # (!\inst5|U0|Add2~43\))) # (!\inst5|U0|flag\(22) & (\inst5|U0|Add2~43\ $ (GND)))
-- \inst5|U0|Add2~45\ = CARRY((\inst5|U0|flag\(22)) # (!\inst5|U0|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(22),
	datad => VCC,
	cin => \inst5|U0|Add2~43\,
	combout => \inst5|U0|Add2~44_combout\,
	cout => \inst5|U0|Add2~45\);

-- Location: FF_X58_Y52_N13
\inst5|U0|flag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~44_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(22));

-- Location: LCCOMB_X58_Y52_N14
\inst5|U0|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~46_combout\ = (\inst5|U0|flag\(23) & (\inst5|U0|Add2~45\ & VCC)) # (!\inst5|U0|flag\(23) & (!\inst5|U0|Add2~45\))
-- \inst5|U0|Add2~47\ = CARRY((!\inst5|U0|flag\(23) & !\inst5|U0|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(23),
	datad => VCC,
	cin => \inst5|U0|Add2~45\,
	combout => \inst5|U0|Add2~46_combout\,
	cout => \inst5|U0|Add2~47\);

-- Location: FF_X58_Y52_N15
\inst5|U0|flag[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~46_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(23));

-- Location: LCCOMB_X58_Y52_N16
\inst5|U0|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~48_combout\ = (\inst5|U0|flag\(24) & ((GND) # (!\inst5|U0|Add2~47\))) # (!\inst5|U0|flag\(24) & (\inst5|U0|Add2~47\ $ (GND)))
-- \inst5|U0|Add2~49\ = CARRY((\inst5|U0|flag\(24)) # (!\inst5|U0|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(24),
	datad => VCC,
	cin => \inst5|U0|Add2~47\,
	combout => \inst5|U0|Add2~48_combout\,
	cout => \inst5|U0|Add2~49\);

-- Location: FF_X58_Y52_N17
\inst5|U0|flag[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~48_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(24));

-- Location: LCCOMB_X58_Y52_N18
\inst5|U0|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~50_combout\ = (\inst5|U0|flag\(25) & (\inst5|U0|Add2~49\ & VCC)) # (!\inst5|U0|flag\(25) & (!\inst5|U0|Add2~49\))
-- \inst5|U0|Add2~51\ = CARRY((!\inst5|U0|flag\(25) & !\inst5|U0|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(25),
	datad => VCC,
	cin => \inst5|U0|Add2~49\,
	combout => \inst5|U0|Add2~50_combout\,
	cout => \inst5|U0|Add2~51\);

-- Location: FF_X58_Y52_N19
\inst5|U0|flag[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~50_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(25));

-- Location: LCCOMB_X58_Y52_N20
\inst5|U0|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~52_combout\ = (\inst5|U0|flag\(26) & ((GND) # (!\inst5|U0|Add2~51\))) # (!\inst5|U0|flag\(26) & (\inst5|U0|Add2~51\ $ (GND)))
-- \inst5|U0|Add2~53\ = CARRY((\inst5|U0|flag\(26)) # (!\inst5|U0|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(26),
	datad => VCC,
	cin => \inst5|U0|Add2~51\,
	combout => \inst5|U0|Add2~52_combout\,
	cout => \inst5|U0|Add2~53\);

-- Location: FF_X58_Y52_N21
\inst5|U0|flag[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~52_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(26));

-- Location: LCCOMB_X58_Y52_N22
\inst5|U0|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~54_combout\ = (\inst5|U0|flag\(27) & (\inst5|U0|Add2~53\ & VCC)) # (!\inst5|U0|flag\(27) & (!\inst5|U0|Add2~53\))
-- \inst5|U0|Add2~55\ = CARRY((!\inst5|U0|flag\(27) & !\inst5|U0|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(27),
	datad => VCC,
	cin => \inst5|U0|Add2~53\,
	combout => \inst5|U0|Add2~54_combout\,
	cout => \inst5|U0|Add2~55\);

-- Location: FF_X58_Y52_N23
\inst5|U0|flag[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~54_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(27));

-- Location: LCCOMB_X59_Y52_N10
\inst5|U0|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~8_combout\ = (!\inst5|U0|flag\(26) & (!\inst5|U0|flag\(27) & (!\inst5|U0|flag\(24) & !\inst5|U0|flag\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(26),
	datab => \inst5|U0|flag\(27),
	datac => \inst5|U0|flag\(24),
	datad => \inst5|U0|flag\(25),
	combout => \inst5|U0|Equal2~8_combout\);

-- Location: LCCOMB_X59_Y52_N18
\inst5|U0|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~6_combout\ = (!\inst5|U0|flag\(22) & (!\inst5|U0|flag\(21) & (!\inst5|U0|flag\(23) & !\inst5|U0|flag\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(22),
	datab => \inst5|U0|flag\(21),
	datac => \inst5|U0|flag\(23),
	datad => \inst5|U0|flag\(20),
	combout => \inst5|U0|Equal2~6_combout\);

-- Location: LCCOMB_X59_Y52_N12
\inst5|U0|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~5_combout\ = (!\inst5|U0|flag\(18) & !\inst5|U0|flag\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(18),
	datac => \inst5|U0|flag\(19),
	combout => \inst5|U0|Equal2~5_combout\);

-- Location: LCCOMB_X59_Y52_N4
\inst5|U0|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~7_combout\ = (!\inst5|U0|flag\(17) & (\inst5|U0|Equal2~6_combout\ & (!\inst5|U0|flag\(16) & \inst5|U0|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(17),
	datab => \inst5|U0|Equal2~6_combout\,
	datac => \inst5|U0|flag\(16),
	datad => \inst5|U0|Equal2~5_combout\,
	combout => \inst5|U0|Equal2~7_combout\);

-- Location: LCCOMB_X57_Y53_N10
\inst5|U0|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~1_combout\ = (!\inst5|U0|flag\(5) & (!\inst5|U0|flag\(6) & (!\inst5|U0|flag\(4) & !\inst5|U0|flag\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(5),
	datab => \inst5|U0|flag\(6),
	datac => \inst5|U0|flag\(4),
	datad => \inst5|U0|flag\(7),
	combout => \inst5|U0|Equal2~1_combout\);

-- Location: LCCOMB_X57_Y53_N28
\inst5|U0|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~0_combout\ = (!\inst5|U0|flag\(3) & (!\inst5|U0|flag\(1) & (!\inst5|U0|flag\(0) & !\inst5|U0|flag\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(3),
	datab => \inst5|U0|flag\(1),
	datac => \inst5|U0|flag\(0),
	datad => \inst5|U0|flag\(2),
	combout => \inst5|U0|Equal2~0_combout\);

-- Location: LCCOMB_X57_Y53_N8
\inst5|U0|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~2_combout\ = (!\inst5|U0|flag\(11) & (!\inst5|U0|flag\(9) & (!\inst5|U0|flag\(10) & !\inst5|U0|flag\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(11),
	datab => \inst5|U0|flag\(9),
	datac => \inst5|U0|flag\(10),
	datad => \inst5|U0|flag\(8),
	combout => \inst5|U0|Equal2~2_combout\);

-- Location: LCCOMB_X57_Y53_N18
\inst5|U0|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~3_combout\ = (!\inst5|U0|flag\(13) & (!\inst5|U0|flag\(14) & (!\inst5|U0|flag\(15) & !\inst5|U0|flag\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(13),
	datab => \inst5|U0|flag\(14),
	datac => \inst5|U0|flag\(15),
	datad => \inst5|U0|flag\(12),
	combout => \inst5|U0|Equal2~3_combout\);

-- Location: LCCOMB_X57_Y53_N20
\inst5|U0|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~4_combout\ = (\inst5|U0|Equal2~1_combout\ & (\inst5|U0|Equal2~0_combout\ & (\inst5|U0|Equal2~2_combout\ & \inst5|U0|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal2~1_combout\,
	datab => \inst5|U0|Equal2~0_combout\,
	datac => \inst5|U0|Equal2~2_combout\,
	datad => \inst5|U0|Equal2~3_combout\,
	combout => \inst5|U0|Equal2~4_combout\);

-- Location: LCCOMB_X58_Y52_N24
\inst5|U0|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~56_combout\ = (\inst5|U0|flag\(28) & ((GND) # (!\inst5|U0|Add2~55\))) # (!\inst5|U0|flag\(28) & (\inst5|U0|Add2~55\ $ (GND)))
-- \inst5|U0|Add2~57\ = CARRY((\inst5|U0|flag\(28)) # (!\inst5|U0|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(28),
	datad => VCC,
	cin => \inst5|U0|Add2~55\,
	combout => \inst5|U0|Add2~56_combout\,
	cout => \inst5|U0|Add2~57\);

-- Location: FF_X58_Y52_N25
\inst5|U0|flag[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~56_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(28));

-- Location: LCCOMB_X58_Y52_N26
\inst5|U0|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~58_combout\ = (\inst5|U0|flag\(29) & (\inst5|U0|Add2~57\ & VCC)) # (!\inst5|U0|flag\(29) & (!\inst5|U0|Add2~57\))
-- \inst5|U0|Add2~59\ = CARRY((!\inst5|U0|flag\(29) & !\inst5|U0|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(29),
	datad => VCC,
	cin => \inst5|U0|Add2~57\,
	combout => \inst5|U0|Add2~58_combout\,
	cout => \inst5|U0|Add2~59\);

-- Location: FF_X58_Y52_N27
\inst5|U0|flag[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~58_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(29));

-- Location: LCCOMB_X58_Y52_N28
\inst5|U0|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~60_combout\ = (\inst5|U0|flag\(30) & ((GND) # (!\inst5|U0|Add2~59\))) # (!\inst5|U0|flag\(30) & (\inst5|U0|Add2~59\ $ (GND)))
-- \inst5|U0|Add2~61\ = CARRY((\inst5|U0|flag\(30)) # (!\inst5|U0|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(30),
	datad => VCC,
	cin => \inst5|U0|Add2~59\,
	combout => \inst5|U0|Add2~60_combout\,
	cout => \inst5|U0|Add2~61\);

-- Location: FF_X58_Y52_N29
\inst5|U0|flag[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~60_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(30));

-- Location: LCCOMB_X58_Y52_N30
\inst5|U0|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~62_combout\ = \inst5|U0|flag\(31) $ (!\inst5|U0|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(31),
	cin => \inst5|U0|Add2~61\,
	combout => \inst5|U0|Add2~62_combout\);

-- Location: FF_X58_Y52_N31
\inst5|U0|flag[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~62_combout\,
	ena => \inst5|U0|innercounter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(31));

-- Location: LCCOMB_X59_Y52_N28
\inst5|U0|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~9_combout\ = (!\inst5|U0|flag\(28) & (!\inst5|U0|flag\(31) & (!\inst5|U0|flag\(29) & !\inst5|U0|flag\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(28),
	datab => \inst5|U0|flag\(31),
	datac => \inst5|U0|flag\(29),
	datad => \inst5|U0|flag\(30),
	combout => \inst5|U0|Equal2~9_combout\);

-- Location: LCCOMB_X59_Y52_N30
\inst5|U0|Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal2~10_combout\ = (\inst5|U0|Equal2~8_combout\ & (\inst5|U0|Equal2~7_combout\ & (\inst5|U0|Equal2~4_combout\ & \inst5|U0|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal2~8_combout\,
	datab => \inst5|U0|Equal2~7_combout\,
	datac => \inst5|U0|Equal2~4_combout\,
	datad => \inst5|U0|Equal2~9_combout\,
	combout => \inst5|U0|Equal2~10_combout\);

-- Location: LCCOMB_X56_Y51_N0
\inst5|U0|innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter~4_combout\ = (!\inst5|U0|innercounter\(0) & ((!\inst5|U0|innercounter\(2)) # (!\inst5|U0|innercounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|innercounter\(1),
	datab => \inst5|U0|innercounter\(2),
	datac => \inst5|U0|innercounter\(0),
	combout => \inst5|U0|innercounter~4_combout\);

-- Location: LCCOMB_X56_Y51_N4
\inst5|U0|innercounter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter[2]~2_combout\ = (!\inst5|U0|Equal1~0_combout\ & (\inst5|U0|LessThan1~1_combout\ & (!\inst5|U0|LessThan0~3_combout\ & \inst5|U0|Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal1~0_combout\,
	datab => \inst5|U0|LessThan1~1_combout\,
	datac => \inst5|U0|LessThan0~3_combout\,
	datad => \inst5|U0|Equal2~10_combout\,
	combout => \inst5|U0|innercounter[2]~2_combout\);

-- Location: FF_X56_Y51_N1
\inst5|U0|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|innercounter~4_combout\,
	ena => \inst5|U0|innercounter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|innercounter\(0));

-- Location: LCCOMB_X56_Y51_N24
\inst5|U0|innercounter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter~1_combout\ = (\inst5|U0|innercounter\(1) & (!\inst5|U0|innercounter\(2) & \inst5|U0|innercounter\(0))) # (!\inst5|U0|innercounter\(1) & (\inst5|U0|innercounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|innercounter\(1),
	datac => \inst5|U0|innercounter\(2),
	datad => \inst5|U0|innercounter\(0),
	combout => \inst5|U0|innercounter~1_combout\);

-- Location: FF_X56_Y51_N25
\inst5|U0|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|innercounter~1_combout\,
	ena => \inst5|U0|innercounter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|innercounter\(2));

-- Location: LCCOMB_X56_Y51_N30
\inst5|U0|innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter~3_combout\ = (\inst5|U0|innercounter\(1) & (!\inst5|U0|innercounter\(2) & !\inst5|U0|innercounter\(0))) # (!\inst5|U0|innercounter\(1) & ((\inst5|U0|innercounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|innercounter\(2),
	datac => \inst5|U0|innercounter\(1),
	datad => \inst5|U0|innercounter\(0),
	combout => \inst5|U0|innercounter~3_combout\);

-- Location: FF_X56_Y51_N31
\inst5|U0|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|innercounter~3_combout\,
	ena => \inst5|U0|innercounter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|innercounter\(1));

-- Location: LCCOMB_X56_Y51_N26
\inst5|U0|PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~0_combout\ = (\inst5|U0|innercounter\(1) & (\inst1|r_RX_Byte\(4) & (\inst1|r_RX_Byte\(5) & !\inst5|U0|innercounter\(0)))) # (!\inst5|U0|innercounter\(1) & ((\inst1|r_RX_Byte\(5)) # ((\inst1|r_RX_Byte\(4) & 
-- !\inst5|U0|innercounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|innercounter\(1),
	datab => \inst1|r_RX_Byte\(4),
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst5|U0|innercounter\(0),
	combout => \inst5|U0|PWM_DCmot~0_combout\);

-- Location: LCCOMB_X56_Y51_N20
\inst5|U0|PWM_DCmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~1_combout\ = (\inst1|r_RX_Byte\(6) & ((\inst5|U0|PWM_DCmot~0_combout\) # (!\inst5|U0|innercounter\(2)))) # (!\inst1|r_RX_Byte\(6) & (\inst5|U0|PWM_DCmot~0_combout\ & !\inst5|U0|innercounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(6),
	datac => \inst5|U0|PWM_DCmot~0_combout\,
	datad => \inst5|U0|innercounter\(2),
	combout => \inst5|U0|PWM_DCmot~1_combout\);

-- Location: LCCOMB_X56_Y51_N18
\inst5|U0|PWM_DCmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~2_combout\ = (\inst5|U0|Equal2~10_combout\ & (\inst5|U0|PWM_DCmot~1_combout\)) # (!\inst5|U0|Equal2~10_combout\ & ((\inst5|U0|PWM_DCmot~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal2~10_combout\,
	datab => \inst5|U0|PWM_DCmot~1_combout\,
	datad => \inst5|U0|PWM_DCmot~q\,
	combout => \inst5|U0|PWM_DCmot~2_combout\);

-- Location: LCCOMB_X56_Y51_N16
\inst5|U0|PWM_DCmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~3_combout\ = (!\inst5|U0|Equal1~0_combout\ & ((\inst5|U0|LessThan0~3_combout\) # ((\inst5|U0|LessThan1~1_combout\ & \inst5|U0|PWM_DCmot~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal1~0_combout\,
	datab => \inst5|U0|LessThan1~1_combout\,
	datac => \inst5|U0|LessThan0~3_combout\,
	datad => \inst5|U0|PWM_DCmot~2_combout\,
	combout => \inst5|U0|PWM_DCmot~3_combout\);

-- Location: FF_X56_Y51_N17
\inst5|U0|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|PWM_DCmot~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|PWM_DCmot~q\);

-- Location: LCCOMB_X59_Y51_N28
\inst5|PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PWM_DCmot~0_combout\ = (\inst1|r_RX_Byte\(7) & \inst5|U0|PWM_DCmot~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(7),
	datad => \inst5|U0|PWM_DCmot~q\,
	combout => \inst5|PWM_DCmot~0_combout\);

-- Location: FF_X59_Y51_N29
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

-- Location: LCCOMB_X56_Y52_N10
\inst5|U_rev|innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|innercounter~2_combout\ = (\inst5|U_rev|innercounter\(0) & (!\inst5|U_rev|innercounter\(1))) # (!\inst5|U_rev|innercounter\(0) & (\inst5|U_rev|innercounter\(1) & !\inst5|U_rev|innercounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|innercounter\(0),
	datac => \inst5|U_rev|innercounter\(1),
	datad => \inst5|U_rev|innercounter\(2),
	combout => \inst5|U_rev|innercounter~2_combout\);

-- Location: LCCOMB_X60_Y51_N0
\inst5|U_rev|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~0_combout\ = \inst5|U_rev|flag\(0) $ (GND)
-- \inst5|U_rev|Add2~1\ = CARRY(!\inst5|U_rev|flag\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(0),
	datad => VCC,
	combout => \inst5|U_rev|Add2~0_combout\,
	cout => \inst5|U_rev|Add2~1\);

-- Location: LCCOMB_X59_Y51_N18
\inst5|U_rev|flag[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|flag[0]~1_combout\ = !\inst5|U_rev|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U_rev|Add2~0_combout\,
	combout => \inst5|U_rev|flag[0]~1_combout\);

-- Location: LCCOMB_X56_Y51_N28
\inst5|U_rev|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal1~0_combout\ = (\inst1|r_RX_Byte\(6) & (\inst1|r_RX_Byte\(5) & \inst1|r_RX_Byte\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(6),
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst1|r_RX_Byte\(4),
	combout => \inst5|U_rev|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y51_N8
\inst5|U_rev|innercounter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|innercounter[2]~4_combout\ = (\inst5|U0|LessThan1~1_combout\ & (!\inst5|U0|LessThan0~3_combout\ & !\inst5|U_rev|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|LessThan1~1_combout\,
	datac => \inst5|U0|LessThan0~3_combout\,
	datad => \inst5|U_rev|Equal1~0_combout\,
	combout => \inst5|U_rev|innercounter[2]~4_combout\);

-- Location: FF_X59_Y51_N19
\inst5|U_rev|flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|flag[0]~1_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(0));

-- Location: LCCOMB_X60_Y51_N2
\inst5|U_rev|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~2_combout\ = (\inst5|U_rev|flag\(1) & (\inst5|U_rev|Add2~1\ & VCC)) # (!\inst5|U_rev|flag\(1) & (!\inst5|U_rev|Add2~1\))
-- \inst5|U_rev|Add2~3\ = CARRY((!\inst5|U_rev|flag\(1) & !\inst5|U_rev|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(1),
	datad => VCC,
	cin => \inst5|U_rev|Add2~1\,
	combout => \inst5|U_rev|Add2~2_combout\,
	cout => \inst5|U_rev|Add2~3\);

-- Location: LCCOMB_X59_Y51_N16
\inst5|U_rev|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|flag~0_combout\ = (\inst5|U_rev|Equal2~10_combout\) # (\inst5|U_rev|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|Equal2~10_combout\,
	datad => \inst5|U_rev|Add2~2_combout\,
	combout => \inst5|U_rev|flag~0_combout\);

-- Location: FF_X59_Y51_N17
\inst5|U_rev|flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|flag~0_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(1));

-- Location: LCCOMB_X60_Y51_N4
\inst5|U_rev|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~4_combout\ = (\inst5|U_rev|flag\(2) & ((GND) # (!\inst5|U_rev|Add2~3\))) # (!\inst5|U_rev|flag\(2) & (\inst5|U_rev|Add2~3\ $ (GND)))
-- \inst5|U_rev|Add2~5\ = CARRY((\inst5|U_rev|flag\(2)) # (!\inst5|U_rev|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(2),
	datad => VCC,
	cin => \inst5|U_rev|Add2~3\,
	combout => \inst5|U_rev|Add2~4_combout\,
	cout => \inst5|U_rev|Add2~5\);

-- Location: FF_X60_Y51_N5
\inst5|U_rev|flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~4_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(2));

-- Location: LCCOMB_X60_Y51_N6
\inst5|U_rev|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~6_combout\ = (\inst5|U_rev|flag\(3) & (\inst5|U_rev|Add2~5\ & VCC)) # (!\inst5|U_rev|flag\(3) & (!\inst5|U_rev|Add2~5\))
-- \inst5|U_rev|Add2~7\ = CARRY((!\inst5|U_rev|flag\(3) & !\inst5|U_rev|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(3),
	datad => VCC,
	cin => \inst5|U_rev|Add2~5\,
	combout => \inst5|U_rev|Add2~6_combout\,
	cout => \inst5|U_rev|Add2~7\);

-- Location: FF_X60_Y51_N7
\inst5|U_rev|flag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~6_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(3));

-- Location: LCCOMB_X60_Y51_N8
\inst5|U_rev|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~8_combout\ = (\inst5|U_rev|flag\(4) & ((GND) # (!\inst5|U_rev|Add2~7\))) # (!\inst5|U_rev|flag\(4) & (\inst5|U_rev|Add2~7\ $ (GND)))
-- \inst5|U_rev|Add2~9\ = CARRY((\inst5|U_rev|flag\(4)) # (!\inst5|U_rev|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(4),
	datad => VCC,
	cin => \inst5|U_rev|Add2~7\,
	combout => \inst5|U_rev|Add2~8_combout\,
	cout => \inst5|U_rev|Add2~9\);

-- Location: FF_X60_Y51_N9
\inst5|U_rev|flag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~8_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(4));

-- Location: LCCOMB_X60_Y51_N10
\inst5|U_rev|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~10_combout\ = (\inst5|U_rev|flag\(5) & (\inst5|U_rev|Add2~9\ & VCC)) # (!\inst5|U_rev|flag\(5) & (!\inst5|U_rev|Add2~9\))
-- \inst5|U_rev|Add2~11\ = CARRY((!\inst5|U_rev|flag\(5) & !\inst5|U_rev|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(5),
	datad => VCC,
	cin => \inst5|U_rev|Add2~9\,
	combout => \inst5|U_rev|Add2~10_combout\,
	cout => \inst5|U_rev|Add2~11\);

-- Location: FF_X60_Y51_N11
\inst5|U_rev|flag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~10_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(5));

-- Location: LCCOMB_X60_Y51_N12
\inst5|U_rev|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~12_combout\ = (\inst5|U_rev|flag\(6) & ((GND) # (!\inst5|U_rev|Add2~11\))) # (!\inst5|U_rev|flag\(6) & (\inst5|U_rev|Add2~11\ $ (GND)))
-- \inst5|U_rev|Add2~13\ = CARRY((\inst5|U_rev|flag\(6)) # (!\inst5|U_rev|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(6),
	datad => VCC,
	cin => \inst5|U_rev|Add2~11\,
	combout => \inst5|U_rev|Add2~12_combout\,
	cout => \inst5|U_rev|Add2~13\);

-- Location: FF_X60_Y51_N13
\inst5|U_rev|flag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~12_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(6));

-- Location: LCCOMB_X60_Y51_N14
\inst5|U_rev|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~14_combout\ = (\inst5|U_rev|flag\(7) & (\inst5|U_rev|Add2~13\ & VCC)) # (!\inst5|U_rev|flag\(7) & (!\inst5|U_rev|Add2~13\))
-- \inst5|U_rev|Add2~15\ = CARRY((!\inst5|U_rev|flag\(7) & !\inst5|U_rev|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(7),
	datad => VCC,
	cin => \inst5|U_rev|Add2~13\,
	combout => \inst5|U_rev|Add2~14_combout\,
	cout => \inst5|U_rev|Add2~15\);

-- Location: FF_X60_Y51_N15
\inst5|U_rev|flag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~14_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(7));

-- Location: LCCOMB_X60_Y51_N16
\inst5|U_rev|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~16_combout\ = (\inst5|U_rev|flag\(8) & ((GND) # (!\inst5|U_rev|Add2~15\))) # (!\inst5|U_rev|flag\(8) & (\inst5|U_rev|Add2~15\ $ (GND)))
-- \inst5|U_rev|Add2~17\ = CARRY((\inst5|U_rev|flag\(8)) # (!\inst5|U_rev|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(8),
	datad => VCC,
	cin => \inst5|U_rev|Add2~15\,
	combout => \inst5|U_rev|Add2~16_combout\,
	cout => \inst5|U_rev|Add2~17\);

-- Location: FF_X60_Y51_N17
\inst5|U_rev|flag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~16_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(8));

-- Location: LCCOMB_X60_Y51_N18
\inst5|U_rev|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~18_combout\ = (\inst5|U_rev|flag\(9) & (\inst5|U_rev|Add2~17\ & VCC)) # (!\inst5|U_rev|flag\(9) & (!\inst5|U_rev|Add2~17\))
-- \inst5|U_rev|Add2~19\ = CARRY((!\inst5|U_rev|flag\(9) & !\inst5|U_rev|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(9),
	datad => VCC,
	cin => \inst5|U_rev|Add2~17\,
	combout => \inst5|U_rev|Add2~18_combout\,
	cout => \inst5|U_rev|Add2~19\);

-- Location: FF_X60_Y51_N19
\inst5|U_rev|flag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~18_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(9));

-- Location: LCCOMB_X60_Y51_N20
\inst5|U_rev|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~20_combout\ = (\inst5|U_rev|flag\(10) & ((GND) # (!\inst5|U_rev|Add2~19\))) # (!\inst5|U_rev|flag\(10) & (\inst5|U_rev|Add2~19\ $ (GND)))
-- \inst5|U_rev|Add2~21\ = CARRY((\inst5|U_rev|flag\(10)) # (!\inst5|U_rev|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(10),
	datad => VCC,
	cin => \inst5|U_rev|Add2~19\,
	combout => \inst5|U_rev|Add2~20_combout\,
	cout => \inst5|U_rev|Add2~21\);

-- Location: FF_X60_Y51_N21
\inst5|U_rev|flag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~20_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(10));

-- Location: LCCOMB_X60_Y51_N22
\inst5|U_rev|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~22_combout\ = (\inst5|U_rev|flag\(11) & (\inst5|U_rev|Add2~21\ & VCC)) # (!\inst5|U_rev|flag\(11) & (!\inst5|U_rev|Add2~21\))
-- \inst5|U_rev|Add2~23\ = CARRY((!\inst5|U_rev|flag\(11) & !\inst5|U_rev|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(11),
	datad => VCC,
	cin => \inst5|U_rev|Add2~21\,
	combout => \inst5|U_rev|Add2~22_combout\,
	cout => \inst5|U_rev|Add2~23\);

-- Location: FF_X60_Y51_N23
\inst5|U_rev|flag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~22_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(11));

-- Location: LCCOMB_X60_Y51_N24
\inst5|U_rev|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~24_combout\ = (\inst5|U_rev|flag\(12) & ((GND) # (!\inst5|U_rev|Add2~23\))) # (!\inst5|U_rev|flag\(12) & (\inst5|U_rev|Add2~23\ $ (GND)))
-- \inst5|U_rev|Add2~25\ = CARRY((\inst5|U_rev|flag\(12)) # (!\inst5|U_rev|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(12),
	datad => VCC,
	cin => \inst5|U_rev|Add2~23\,
	combout => \inst5|U_rev|Add2~24_combout\,
	cout => \inst5|U_rev|Add2~25\);

-- Location: FF_X60_Y51_N25
\inst5|U_rev|flag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~24_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(12));

-- Location: LCCOMB_X60_Y51_N26
\inst5|U_rev|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~26_combout\ = (\inst5|U_rev|flag\(13) & (\inst5|U_rev|Add2~25\ & VCC)) # (!\inst5|U_rev|flag\(13) & (!\inst5|U_rev|Add2~25\))
-- \inst5|U_rev|Add2~27\ = CARRY((!\inst5|U_rev|flag\(13) & !\inst5|U_rev|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(13),
	datad => VCC,
	cin => \inst5|U_rev|Add2~25\,
	combout => \inst5|U_rev|Add2~26_combout\,
	cout => \inst5|U_rev|Add2~27\);

-- Location: FF_X60_Y51_N27
\inst5|U_rev|flag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~26_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(13));

-- Location: LCCOMB_X60_Y51_N28
\inst5|U_rev|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~28_combout\ = (\inst5|U_rev|flag\(14) & ((GND) # (!\inst5|U_rev|Add2~27\))) # (!\inst5|U_rev|flag\(14) & (\inst5|U_rev|Add2~27\ $ (GND)))
-- \inst5|U_rev|Add2~29\ = CARRY((\inst5|U_rev|flag\(14)) # (!\inst5|U_rev|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(14),
	datad => VCC,
	cin => \inst5|U_rev|Add2~27\,
	combout => \inst5|U_rev|Add2~28_combout\,
	cout => \inst5|U_rev|Add2~29\);

-- Location: FF_X60_Y51_N29
\inst5|U_rev|flag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~28_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(14));

-- Location: LCCOMB_X60_Y51_N30
\inst5|U_rev|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~30_combout\ = (\inst5|U_rev|flag\(15) & (\inst5|U_rev|Add2~29\ & VCC)) # (!\inst5|U_rev|flag\(15) & (!\inst5|U_rev|Add2~29\))
-- \inst5|U_rev|Add2~31\ = CARRY((!\inst5|U_rev|flag\(15) & !\inst5|U_rev|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(15),
	datad => VCC,
	cin => \inst5|U_rev|Add2~29\,
	combout => \inst5|U_rev|Add2~30_combout\,
	cout => \inst5|U_rev|Add2~31\);

-- Location: FF_X60_Y51_N31
\inst5|U_rev|flag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~30_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(15));

-- Location: LCCOMB_X60_Y50_N0
\inst5|U_rev|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~32_combout\ = (\inst5|U_rev|flag\(16) & ((GND) # (!\inst5|U_rev|Add2~31\))) # (!\inst5|U_rev|flag\(16) & (\inst5|U_rev|Add2~31\ $ (GND)))
-- \inst5|U_rev|Add2~33\ = CARRY((\inst5|U_rev|flag\(16)) # (!\inst5|U_rev|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(16),
	datad => VCC,
	cin => \inst5|U_rev|Add2~31\,
	combout => \inst5|U_rev|Add2~32_combout\,
	cout => \inst5|U_rev|Add2~33\);

-- Location: FF_X60_Y50_N1
\inst5|U_rev|flag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~32_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(16));

-- Location: LCCOMB_X60_Y50_N2
\inst5|U_rev|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~34_combout\ = (\inst5|U_rev|flag\(17) & (\inst5|U_rev|Add2~33\ & VCC)) # (!\inst5|U_rev|flag\(17) & (!\inst5|U_rev|Add2~33\))
-- \inst5|U_rev|Add2~35\ = CARRY((!\inst5|U_rev|flag\(17) & !\inst5|U_rev|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(17),
	datad => VCC,
	cin => \inst5|U_rev|Add2~33\,
	combout => \inst5|U_rev|Add2~34_combout\,
	cout => \inst5|U_rev|Add2~35\);

-- Location: FF_X60_Y50_N3
\inst5|U_rev|flag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~34_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(17));

-- Location: LCCOMB_X60_Y50_N4
\inst5|U_rev|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~36_combout\ = (\inst5|U_rev|flag\(18) & ((GND) # (!\inst5|U_rev|Add2~35\))) # (!\inst5|U_rev|flag\(18) & (\inst5|U_rev|Add2~35\ $ (GND)))
-- \inst5|U_rev|Add2~37\ = CARRY((\inst5|U_rev|flag\(18)) # (!\inst5|U_rev|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(18),
	datad => VCC,
	cin => \inst5|U_rev|Add2~35\,
	combout => \inst5|U_rev|Add2~36_combout\,
	cout => \inst5|U_rev|Add2~37\);

-- Location: FF_X60_Y50_N5
\inst5|U_rev|flag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~36_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(18));

-- Location: LCCOMB_X60_Y50_N6
\inst5|U_rev|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~38_combout\ = (\inst5|U_rev|flag\(19) & (\inst5|U_rev|Add2~37\ & VCC)) # (!\inst5|U_rev|flag\(19) & (!\inst5|U_rev|Add2~37\))
-- \inst5|U_rev|Add2~39\ = CARRY((!\inst5|U_rev|flag\(19) & !\inst5|U_rev|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(19),
	datad => VCC,
	cin => \inst5|U_rev|Add2~37\,
	combout => \inst5|U_rev|Add2~38_combout\,
	cout => \inst5|U_rev|Add2~39\);

-- Location: FF_X60_Y50_N7
\inst5|U_rev|flag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~38_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(19));

-- Location: LCCOMB_X60_Y50_N8
\inst5|U_rev|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~40_combout\ = (\inst5|U_rev|flag\(20) & ((GND) # (!\inst5|U_rev|Add2~39\))) # (!\inst5|U_rev|flag\(20) & (\inst5|U_rev|Add2~39\ $ (GND)))
-- \inst5|U_rev|Add2~41\ = CARRY((\inst5|U_rev|flag\(20)) # (!\inst5|U_rev|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(20),
	datad => VCC,
	cin => \inst5|U_rev|Add2~39\,
	combout => \inst5|U_rev|Add2~40_combout\,
	cout => \inst5|U_rev|Add2~41\);

-- Location: FF_X60_Y50_N9
\inst5|U_rev|flag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~40_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(20));

-- Location: LCCOMB_X60_Y50_N10
\inst5|U_rev|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~42_combout\ = (\inst5|U_rev|flag\(21) & (\inst5|U_rev|Add2~41\ & VCC)) # (!\inst5|U_rev|flag\(21) & (!\inst5|U_rev|Add2~41\))
-- \inst5|U_rev|Add2~43\ = CARRY((!\inst5|U_rev|flag\(21) & !\inst5|U_rev|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(21),
	datad => VCC,
	cin => \inst5|U_rev|Add2~41\,
	combout => \inst5|U_rev|Add2~42_combout\,
	cout => \inst5|U_rev|Add2~43\);

-- Location: FF_X60_Y50_N11
\inst5|U_rev|flag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~42_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(21));

-- Location: LCCOMB_X60_Y50_N12
\inst5|U_rev|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~44_combout\ = (\inst5|U_rev|flag\(22) & ((GND) # (!\inst5|U_rev|Add2~43\))) # (!\inst5|U_rev|flag\(22) & (\inst5|U_rev|Add2~43\ $ (GND)))
-- \inst5|U_rev|Add2~45\ = CARRY((\inst5|U_rev|flag\(22)) # (!\inst5|U_rev|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(22),
	datad => VCC,
	cin => \inst5|U_rev|Add2~43\,
	combout => \inst5|U_rev|Add2~44_combout\,
	cout => \inst5|U_rev|Add2~45\);

-- Location: FF_X60_Y50_N13
\inst5|U_rev|flag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~44_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(22));

-- Location: LCCOMB_X60_Y50_N14
\inst5|U_rev|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~46_combout\ = (\inst5|U_rev|flag\(23) & (\inst5|U_rev|Add2~45\ & VCC)) # (!\inst5|U_rev|flag\(23) & (!\inst5|U_rev|Add2~45\))
-- \inst5|U_rev|Add2~47\ = CARRY((!\inst5|U_rev|flag\(23) & !\inst5|U_rev|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(23),
	datad => VCC,
	cin => \inst5|U_rev|Add2~45\,
	combout => \inst5|U_rev|Add2~46_combout\,
	cout => \inst5|U_rev|Add2~47\);

-- Location: FF_X60_Y50_N15
\inst5|U_rev|flag[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~46_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(23));

-- Location: LCCOMB_X60_Y50_N16
\inst5|U_rev|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~48_combout\ = (\inst5|U_rev|flag\(24) & ((GND) # (!\inst5|U_rev|Add2~47\))) # (!\inst5|U_rev|flag\(24) & (\inst5|U_rev|Add2~47\ $ (GND)))
-- \inst5|U_rev|Add2~49\ = CARRY((\inst5|U_rev|flag\(24)) # (!\inst5|U_rev|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(24),
	datad => VCC,
	cin => \inst5|U_rev|Add2~47\,
	combout => \inst5|U_rev|Add2~48_combout\,
	cout => \inst5|U_rev|Add2~49\);

-- Location: FF_X60_Y50_N17
\inst5|U_rev|flag[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~48_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(24));

-- Location: LCCOMB_X60_Y50_N18
\inst5|U_rev|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~50_combout\ = (\inst5|U_rev|flag\(25) & (\inst5|U_rev|Add2~49\ & VCC)) # (!\inst5|U_rev|flag\(25) & (!\inst5|U_rev|Add2~49\))
-- \inst5|U_rev|Add2~51\ = CARRY((!\inst5|U_rev|flag\(25) & !\inst5|U_rev|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(25),
	datad => VCC,
	cin => \inst5|U_rev|Add2~49\,
	combout => \inst5|U_rev|Add2~50_combout\,
	cout => \inst5|U_rev|Add2~51\);

-- Location: FF_X60_Y50_N19
\inst5|U_rev|flag[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~50_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(25));

-- Location: LCCOMB_X60_Y50_N20
\inst5|U_rev|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~52_combout\ = (\inst5|U_rev|flag\(26) & ((GND) # (!\inst5|U_rev|Add2~51\))) # (!\inst5|U_rev|flag\(26) & (\inst5|U_rev|Add2~51\ $ (GND)))
-- \inst5|U_rev|Add2~53\ = CARRY((\inst5|U_rev|flag\(26)) # (!\inst5|U_rev|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(26),
	datad => VCC,
	cin => \inst5|U_rev|Add2~51\,
	combout => \inst5|U_rev|Add2~52_combout\,
	cout => \inst5|U_rev|Add2~53\);

-- Location: FF_X60_Y50_N21
\inst5|U_rev|flag[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~52_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(26));

-- Location: LCCOMB_X60_Y50_N22
\inst5|U_rev|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~54_combout\ = (\inst5|U_rev|flag\(27) & (\inst5|U_rev|Add2~53\ & VCC)) # (!\inst5|U_rev|flag\(27) & (!\inst5|U_rev|Add2~53\))
-- \inst5|U_rev|Add2~55\ = CARRY((!\inst5|U_rev|flag\(27) & !\inst5|U_rev|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(27),
	datad => VCC,
	cin => \inst5|U_rev|Add2~53\,
	combout => \inst5|U_rev|Add2~54_combout\,
	cout => \inst5|U_rev|Add2~55\);

-- Location: FF_X60_Y50_N23
\inst5|U_rev|flag[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~54_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(27));

-- Location: LCCOMB_X59_Y51_N26
\inst5|U_rev|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~8_combout\ = (!\inst5|U_rev|flag\(26) & (!\inst5|U_rev|flag\(27) & (!\inst5|U_rev|flag\(24) & !\inst5|U_rev|flag\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(26),
	datab => \inst5|U_rev|flag\(27),
	datac => \inst5|U_rev|flag\(24),
	datad => \inst5|U_rev|flag\(25),
	combout => \inst5|U_rev|Equal2~8_combout\);

-- Location: LCCOMB_X59_Y51_N12
\inst5|U_rev|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~2_combout\ = (!\inst5|U_rev|flag\(9) & (!\inst5|U_rev|flag\(11) & (!\inst5|U_rev|flag\(10) & !\inst5|U_rev|flag\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(9),
	datab => \inst5|U_rev|flag\(11),
	datac => \inst5|U_rev|flag\(10),
	datad => \inst5|U_rev|flag\(8),
	combout => \inst5|U_rev|Equal2~2_combout\);

-- Location: LCCOMB_X59_Y51_N20
\inst5|U_rev|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~0_combout\ = (!\inst5|U_rev|flag\(2) & (!\inst5|U_rev|flag\(0) & (!\inst5|U_rev|flag\(3) & !\inst5|U_rev|flag\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(2),
	datab => \inst5|U_rev|flag\(0),
	datac => \inst5|U_rev|flag\(3),
	datad => \inst5|U_rev|flag\(1),
	combout => \inst5|U_rev|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y51_N22
\inst5|U_rev|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~3_combout\ = (!\inst5|U_rev|flag\(12) & (!\inst5|U_rev|flag\(13) & (!\inst5|U_rev|flag\(15) & !\inst5|U_rev|flag\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(12),
	datab => \inst5|U_rev|flag\(13),
	datac => \inst5|U_rev|flag\(15),
	datad => \inst5|U_rev|flag\(14),
	combout => \inst5|U_rev|Equal2~3_combout\);

-- Location: LCCOMB_X59_Y51_N10
\inst5|U_rev|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~1_combout\ = (!\inst5|U_rev|flag\(7) & (!\inst5|U_rev|flag\(6) & (!\inst5|U_rev|flag\(5) & !\inst5|U_rev|flag\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(7),
	datab => \inst5|U_rev|flag\(6),
	datac => \inst5|U_rev|flag\(5),
	datad => \inst5|U_rev|flag\(4),
	combout => \inst5|U_rev|Equal2~1_combout\);

-- Location: LCCOMB_X59_Y51_N24
\inst5|U_rev|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~4_combout\ = (\inst5|U_rev|Equal2~2_combout\ & (\inst5|U_rev|Equal2~0_combout\ & (\inst5|U_rev|Equal2~3_combout\ & \inst5|U_rev|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|Equal2~2_combout\,
	datab => \inst5|U_rev|Equal2~0_combout\,
	datac => \inst5|U_rev|Equal2~3_combout\,
	datad => \inst5|U_rev|Equal2~1_combout\,
	combout => \inst5|U_rev|Equal2~4_combout\);

-- Location: LCCOMB_X59_Y51_N6
\inst5|U_rev|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~5_combout\ = (!\inst5|U_rev|flag\(19) & !\inst5|U_rev|flag\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U_rev|flag\(19),
	datad => \inst5|U_rev|flag\(18),
	combout => \inst5|U_rev|Equal2~5_combout\);

-- Location: LCCOMB_X59_Y50_N0
\inst5|U_rev|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~6_combout\ = (!\inst5|U_rev|flag\(23) & (!\inst5|U_rev|flag\(20) & (!\inst5|U_rev|flag\(22) & !\inst5|U_rev|flag\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(23),
	datab => \inst5|U_rev|flag\(20),
	datac => \inst5|U_rev|flag\(22),
	datad => \inst5|U_rev|flag\(21),
	combout => \inst5|U_rev|Equal2~6_combout\);

-- Location: LCCOMB_X59_Y51_N4
\inst5|U_rev|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~7_combout\ = (\inst5|U_rev|Equal2~5_combout\ & (\inst5|U_rev|Equal2~6_combout\ & (!\inst5|U_rev|flag\(17) & !\inst5|U_rev|flag\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|Equal2~5_combout\,
	datab => \inst5|U_rev|Equal2~6_combout\,
	datac => \inst5|U_rev|flag\(17),
	datad => \inst5|U_rev|flag\(16),
	combout => \inst5|U_rev|Equal2~7_combout\);

-- Location: LCCOMB_X60_Y50_N24
\inst5|U_rev|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~56_combout\ = (\inst5|U_rev|flag\(28) & ((GND) # (!\inst5|U_rev|Add2~55\))) # (!\inst5|U_rev|flag\(28) & (\inst5|U_rev|Add2~55\ $ (GND)))
-- \inst5|U_rev|Add2~57\ = CARRY((\inst5|U_rev|flag\(28)) # (!\inst5|U_rev|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(28),
	datad => VCC,
	cin => \inst5|U_rev|Add2~55\,
	combout => \inst5|U_rev|Add2~56_combout\,
	cout => \inst5|U_rev|Add2~57\);

-- Location: FF_X60_Y50_N25
\inst5|U_rev|flag[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~56_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(28));

-- Location: LCCOMB_X60_Y50_N26
\inst5|U_rev|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~58_combout\ = (\inst5|U_rev|flag\(29) & (\inst5|U_rev|Add2~57\ & VCC)) # (!\inst5|U_rev|flag\(29) & (!\inst5|U_rev|Add2~57\))
-- \inst5|U_rev|Add2~59\ = CARRY((!\inst5|U_rev|flag\(29) & !\inst5|U_rev|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(29),
	datad => VCC,
	cin => \inst5|U_rev|Add2~57\,
	combout => \inst5|U_rev|Add2~58_combout\,
	cout => \inst5|U_rev|Add2~59\);

-- Location: FF_X60_Y50_N27
\inst5|U_rev|flag[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~58_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(29));

-- Location: LCCOMB_X60_Y50_N28
\inst5|U_rev|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~60_combout\ = (\inst5|U_rev|flag\(30) & ((GND) # (!\inst5|U_rev|Add2~59\))) # (!\inst5|U_rev|flag\(30) & (\inst5|U_rev|Add2~59\ $ (GND)))
-- \inst5|U_rev|Add2~61\ = CARRY((\inst5|U_rev|flag\(30)) # (!\inst5|U_rev|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|flag\(30),
	datad => VCC,
	cin => \inst5|U_rev|Add2~59\,
	combout => \inst5|U_rev|Add2~60_combout\,
	cout => \inst5|U_rev|Add2~61\);

-- Location: FF_X60_Y50_N29
\inst5|U_rev|flag[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~60_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(30));

-- Location: LCCOMB_X60_Y50_N30
\inst5|U_rev|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Add2~62_combout\ = \inst5|U_rev|flag\(31) $ (!\inst5|U_rev|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(31),
	cin => \inst5|U_rev|Add2~61\,
	combout => \inst5|U_rev|Add2~62_combout\);

-- Location: FF_X60_Y50_N31
\inst5|U_rev|flag[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|Add2~62_combout\,
	ena => \inst5|U_rev|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|flag\(31));

-- Location: LCCOMB_X60_Y49_N20
\inst5|U_rev|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~9_combout\ = (!\inst5|U_rev|flag\(31) & (!\inst5|U_rev|flag\(30) & (!\inst5|U_rev|flag\(29) & !\inst5|U_rev|flag\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|flag\(31),
	datab => \inst5|U_rev|flag\(30),
	datac => \inst5|U_rev|flag\(29),
	datad => \inst5|U_rev|flag\(28),
	combout => \inst5|U_rev|Equal2~9_combout\);

-- Location: LCCOMB_X59_Y51_N0
\inst5|U_rev|Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|Equal2~10_combout\ = (\inst5|U_rev|Equal2~8_combout\ & (\inst5|U_rev|Equal2~4_combout\ & (\inst5|U_rev|Equal2~7_combout\ & \inst5|U_rev|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|Equal2~8_combout\,
	datab => \inst5|U_rev|Equal2~4_combout\,
	datac => \inst5|U_rev|Equal2~7_combout\,
	datad => \inst5|U_rev|Equal2~9_combout\,
	combout => \inst5|U_rev|Equal2~10_combout\);

-- Location: LCCOMB_X56_Y51_N22
\inst5|U_rev|innercounter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|innercounter[2]~1_combout\ = (\inst5|U_rev|Equal2~10_combout\ & (\inst5|U0|LessThan1~1_combout\ & (!\inst5|U0|LessThan0~3_combout\ & !\inst5|U_rev|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|Equal2~10_combout\,
	datab => \inst5|U0|LessThan1~1_combout\,
	datac => \inst5|U0|LessThan0~3_combout\,
	datad => \inst5|U_rev|Equal1~0_combout\,
	combout => \inst5|U_rev|innercounter[2]~1_combout\);

-- Location: FF_X56_Y52_N11
\inst5|U_rev|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|innercounter~2_combout\,
	ena => \inst5|U_rev|innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|innercounter\(1));

-- Location: LCCOMB_X56_Y52_N12
\inst5|U_rev|innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|innercounter~3_combout\ = (!\inst5|U_rev|innercounter\(0) & ((!\inst5|U_rev|innercounter\(2)) # (!\inst5|U_rev|innercounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|innercounter\(1),
	datac => \inst5|U_rev|innercounter\(0),
	datad => \inst5|U_rev|innercounter\(2),
	combout => \inst5|U_rev|innercounter~3_combout\);

-- Location: FF_X56_Y52_N13
\inst5|U_rev|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|innercounter~3_combout\,
	ena => \inst5|U_rev|innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|innercounter\(0));

-- Location: LCCOMB_X56_Y52_N28
\inst5|U_rev|innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|innercounter~0_combout\ = (\inst5|U_rev|innercounter\(2) & ((!\inst5|U_rev|innercounter\(1)))) # (!\inst5|U_rev|innercounter\(2) & (\inst5|U_rev|innercounter\(0) & \inst5|U_rev|innercounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|innercounter\(0),
	datac => \inst5|U_rev|innercounter\(2),
	datad => \inst5|U_rev|innercounter\(1),
	combout => \inst5|U_rev|innercounter~0_combout\);

-- Location: FF_X56_Y52_N29
\inst5|U_rev|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|innercounter~0_combout\,
	ena => \inst5|U_rev|innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|innercounter\(2));

-- Location: LCCOMB_X56_Y52_N18
\inst5|U_rev|PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|PWM_DCmot~0_combout\ = (\inst1|r_RX_Byte\(5) & ((\inst5|U_rev|innercounter\(0)) # ((\inst1|r_RX_Byte\(4)) # (\inst5|U_rev|innercounter\(1))))) # (!\inst1|r_RX_Byte\(5) & (\inst5|U_rev|innercounter\(1) & ((\inst5|U_rev|innercounter\(0)) # 
-- (\inst1|r_RX_Byte\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|innercounter\(0),
	datab => \inst1|r_RX_Byte\(4),
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst5|U_rev|innercounter\(1),
	combout => \inst5|U_rev|PWM_DCmot~0_combout\);

-- Location: LCCOMB_X56_Y52_N8
\inst5|U_rev|PWM_DCmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|PWM_DCmot~1_combout\ = (\inst5|U_rev|innercounter\(2) & (!\inst1|r_RX_Byte\(6) & !\inst5|U_rev|PWM_DCmot~0_combout\)) # (!\inst5|U_rev|innercounter\(2) & ((!\inst5|U_rev|PWM_DCmot~0_combout\) # (!\inst1|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|innercounter\(2),
	datac => \inst1|r_RX_Byte\(6),
	datad => \inst5|U_rev|PWM_DCmot~0_combout\,
	combout => \inst5|U_rev|PWM_DCmot~1_combout\);

-- Location: LCCOMB_X56_Y51_N10
\inst5|U_rev|PWM_DCmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|PWM_DCmot~2_combout\ = (\inst5|U_rev|Equal2~10_combout\ & (\inst5|U_rev|PWM_DCmot~1_combout\)) # (!\inst5|U_rev|Equal2~10_combout\ & ((\inst5|U_rev|PWM_DCmot~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U_rev|PWM_DCmot~1_combout\,
	datac => \inst5|U_rev|PWM_DCmot~q\,
	datad => \inst5|U_rev|Equal2~10_combout\,
	combout => \inst5|U_rev|PWM_DCmot~2_combout\);

-- Location: LCCOMB_X56_Y51_N14
\inst5|U_rev|PWM_DCmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U_rev|PWM_DCmot~3_combout\ = (!\inst5|U_rev|Equal1~0_combout\ & ((\inst5|U0|LessThan0~3_combout\) # ((\inst5|U_rev|PWM_DCmot~2_combout\ & \inst5|U0|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U_rev|PWM_DCmot~2_combout\,
	datab => \inst5|U0|LessThan1~1_combout\,
	datac => \inst5|U0|LessThan0~3_combout\,
	datad => \inst5|U_rev|Equal1~0_combout\,
	combout => \inst5|U_rev|PWM_DCmot~3_combout\);

-- Location: FF_X56_Y51_N15
\inst5|U_rev|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U_rev|PWM_DCmot~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U_rev|PWM_DCmot~q\);

-- Location: LCCOMB_X59_Y51_N30
\inst5|PWM_DCmot_rev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PWM_DCmot_rev~0_combout\ = (\inst5|U_rev|PWM_DCmot~q\ & !\inst1|r_RX_Byte\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U_rev|PWM_DCmot~q\,
	datad => \inst1|r_RX_Byte\(7),
	combout => \inst5|PWM_DCmot_rev~0_combout\);

-- Location: FF_X59_Y51_N31
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

-- Location: LCCOMB_X46_Y50_N20
\inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\SW2~input_o\) # (\SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datac => \SW1~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y50_N22
\inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\SW1~input_o\ & ((\SW2~input_o\) # (\inst1|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datac => \SW1~input_o\,
	datad => \inst1|r_RX_Byte\(7),
	combout => \inst3|Mux1~0_combout\);

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


