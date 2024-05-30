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

-- DATE "05/30/2024 16:43:10"

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
	PWM_DCmot_rev : OUT std_logic
	);
END Main;

-- Design Ports Information
-- PWM_SVmot	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_DCmot	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_DCmot_rev	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \inst7|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~8_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~0_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~9_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data_R~q\ : std_logic;
SIGNAL \inst1|r_RX_Data~feeder_combout\ : std_logic;
SIGNAL \inst1|r_RX_Data~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[0]~15_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~1_combout\ : std_logic;
SIGNAL \inst1|Decoder0~5_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \inst1|r_SM_Main~7_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \inst1|Selector19~1_combout\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \inst1|r_Clk_Count[3]~41_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[3]~43_combout\ : std_logic;
SIGNAL \inst1|r_Clk_Count[3]~42_combout\ : std_logic;
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
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~1_combout\ : std_logic;
SIGNAL \inst1|Selector14~2_combout\ : std_logic;
SIGNAL \inst1|Selector19~2_combout\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Selector19~3_combout\ : std_logic;
SIGNAL \inst1|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~1_combout\ : std_logic;
SIGNAL \inst1|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[2]~1_combout\ : std_logic;
SIGNAL \inst1|Decoder0~3_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[1]~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~4_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[0]~3_combout\ : std_logic;
SIGNAL \inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[3]~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~10_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~0_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~1_combout\ : std_logic;
SIGNAL \inst|flag~0_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst|PWM_SVmot~3_combout\ : std_logic;
SIGNAL \inst|innercounter~4_combout\ : std_logic;
SIGNAL \inst|innercounter[3]~3_combout\ : std_logic;
SIGNAL \inst|innercounter~5_combout\ : std_logic;
SIGNAL \inst|innercounter~6_combout\ : std_logic;
SIGNAL \inst|innercounter~2_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~1_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~2_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~4_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~5_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~6_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~7_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~11_combout\ : std_logic;
SIGNAL \inst|PWM_SVmot~q\ : std_logic;
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|r_RX_Byte[7]~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~0_combout\ : std_logic;
SIGNAL \inst5|U0|flag[0]~2_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~0_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~1\ : std_logic;
SIGNAL \inst5|U0|Add0~2_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~3\ : std_logic;
SIGNAL \inst5|U0|Add0~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~5\ : std_logic;
SIGNAL \inst5|U0|Add0~6_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~7\ : std_logic;
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
SIGNAL \inst5|U0|counter~2_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~19\ : std_logic;
SIGNAL \inst5|U0|Add0~20_combout\ : std_logic;
SIGNAL \inst5|U0|counter~3_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~21\ : std_logic;
SIGNAL \inst5|U0|Add0~22_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~23\ : std_logic;
SIGNAL \inst5|U0|Add0~24_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~25\ : std_logic;
SIGNAL \inst5|U0|Add0~26_combout\ : std_logic;
SIGNAL \inst5|U0|counter~0_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add0~8_combout\ : std_logic;
SIGNAL \inst5|U0|counter~4_combout\ : std_logic;
SIGNAL \inst5|U0|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~0_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|U0|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~1_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter[2]~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~1\ : std_logic;
SIGNAL \inst5|U0|Add2~2_combout\ : std_logic;
SIGNAL \inst5|U0|flag~0_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~3\ : std_logic;
SIGNAL \inst5|U0|Add2~4_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~5\ : std_logic;
SIGNAL \inst5|U0|Add2~6_combout\ : std_logic;
SIGNAL \inst5|U0|flag~1_combout\ : std_logic;
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
SIGNAL \inst5|U0|Add2~55\ : std_logic;
SIGNAL \inst5|U0|Add2~56_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~57\ : std_logic;
SIGNAL \inst5|U0|Add2~58_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~59\ : std_logic;
SIGNAL \inst5|U0|Add2~60_combout\ : std_logic;
SIGNAL \inst5|U0|Add2~61\ : std_logic;
SIGNAL \inst5|U0|Add2~62_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~8_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~7_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~5_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~6_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~9_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~3_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~1_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~2_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~4_combout\ : std_logic;
SIGNAL \inst5|U0|Equal1~10_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter~3_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter[2]~1_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter~2_combout\ : std_logic;
SIGNAL \inst5|U0|innercounter~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~7_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[5]~6_combout\ : std_logic;
SIGNAL \inst1|Decoder0~8_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[4]~7_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~6_combout\ : std_logic;
SIGNAL \inst1|r_RX_Byte[6]~5_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~3_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~4_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~5_combout\ : std_logic;
SIGNAL \inst5|U0|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|PWM_DCmot~0_combout\ : std_logic;
SIGNAL \inst5|PWM_DCmot~q\ : std_logic;
SIGNAL \inst5|PWM_DCmot_rev~0_combout\ : std_logic;
SIGNAL \inst5|PWM_DCmot_rev~q\ : std_logic;
SIGNAL \inst5|U0|counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst7|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|U0|flag\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|U0|innercounter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|innercounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);

BEGIN

PWM_SVmot <= ww_PWM_SVmot;
ww_CLK <= CLK;
ww_i_RX_Serial <= i_RX_Serial;
PWM_DCmot <= ww_PWM_DCmot;
PWM_DCmot_rev <= ww_PWM_DCmot_rev;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\inst7|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst7|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst7|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|altpll_component|auto_generated|wire_pll1_clk\(1));

\inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|altpll_component|auto_generated|wire_pll1_clk\(0));

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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X36_Y39_N23
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
\inst7|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
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
	c2_high => 20,
	c2_initial => 1,
	c2_low => 20,
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
	clk1_divide_by => 5000,
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
	fbin => \inst7|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst7|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst7|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst7|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y21_N4
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X58_Y21_N5
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X58_Y21_N6
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(1) & (!\inst|Add0~1\)) # (!\inst|counter\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X58_Y21_N7
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X58_Y21_N8
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

-- Location: FF_X58_Y21_N9
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X58_Y21_N10
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(3) & (!\inst|Add0~5\)) # (!\inst|counter\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X58_Y21_N0
\inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (!\inst|Equal0~2_combout\ & \inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X58_Y21_N1
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X58_Y21_N12
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

-- Location: LCCOMB_X58_Y21_N14
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|counter\(5) & (!\inst|Add0~9\)) # (!\inst|counter\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X58_Y21_N15
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X58_Y21_N16
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

-- Location: LCCOMB_X58_Y21_N26
\inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (!\inst|Equal0~2_combout\ & \inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|counter~3_combout\);

-- Location: FF_X58_Y21_N27
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X58_Y21_N18
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

-- Location: FF_X58_Y21_N19
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X58_Y21_N20
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|counter\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|counter\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|counter\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X58_Y21_N21
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X58_Y21_N22
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = \inst|counter\(9) $ (\inst|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\);

-- Location: LCCOMB_X58_Y21_N24
\inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (!\inst|Equal0~2_combout\ & \inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datac => \inst|Add0~18_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X58_Y21_N25
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X58_Y21_N28
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(2) & (\inst|counter\(4) & (\inst|counter\(0) & \inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(4),
	datac => \inst|counter\(0),
	datad => \inst|counter\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y21_N26
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter\(5) & (!\inst|counter\(3) & (!\inst|counter\(8) & !\inst|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datab => \inst|counter\(3),
	datac => \inst|counter\(8),
	datad => \inst|counter\(7),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y21_N30
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|counter\(9) & (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & \inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|counter\(6),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y21_N2
\inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|Equal0~2_combout\ & \inst|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X58_Y21_N3
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X57_Y21_N4
\inst|PWM_SVmot~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~8_combout\ = (\inst|counter\(6)) # ((\inst|counter\(4) & \inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datac => \inst|counter\(6),
	datad => \inst|counter\(5),
	combout => \inst|PWM_SVmot~8_combout\);

-- Location: LCCOMB_X57_Y21_N24
\inst|PWM_SVmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~0_combout\ = (!\inst|counter\(9) & (!\inst|counter\(8) & !\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(9),
	datac => \inst|counter\(8),
	datad => \inst|counter\(7),
	combout => \inst|PWM_SVmot~0_combout\);

-- Location: LCCOMB_X57_Y21_N6
\inst|PWM_SVmot~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~9_combout\ = (((!\inst|counter\(1) & !\inst|counter\(0))) # (!\inst|counter\(2))) # (!\inst|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(3),
	datac => \inst|counter\(2),
	datad => \inst|counter\(0),
	combout => \inst|PWM_SVmot~9_combout\);

-- Location: LCCOMB_X57_Y21_N12
\inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst|counter\(4) & (\inst|counter\(3) & (\inst|counter\(2) & \inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(3),
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|LessThan2~0_combout\);

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

-- Location: LCCOMB_X52_Y21_N16
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

-- Location: FF_X52_Y21_N17
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

-- Location: LCCOMB_X52_Y21_N14
\inst1|r_RX_Data~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Data~feeder_combout\ = \inst1|r_RX_Data_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|r_RX_Data_R~q\,
	combout => \inst1|r_RX_Data~feeder_combout\);

-- Location: FF_X52_Y21_N15
\inst1|r_RX_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Data~q\);

-- Location: LCCOMB_X51_Y21_N4
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

-- Location: LCCOMB_X50_Y21_N12
\inst1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|r_Clk_Count\(3) & (((!\inst1|r_Clk_Count\(0)) # (!\inst1|r_Clk_Count\(2))) # (!\inst1|r_Clk_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(1),
	datab => \inst1|r_Clk_Count\(3),
	datac => \inst1|r_Clk_Count\(2),
	datad => \inst1|r_Clk_Count\(0),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y21_N18
\inst1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ((!\inst1|r_Clk_Count\(5) & ((\inst1|LessThan1~0_combout\) # (!\inst1|r_Clk_Count\(4))))) # (!\inst1|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|r_Clk_Count\(4),
	datac => \inst1|r_Clk_Count\(5),
	datad => \inst1|r_Clk_Count\(6),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y21_N8
\inst1|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|r_Clk_Count\(11) & (!\inst1|r_Clk_Count\(7) & (!\inst1|r_Clk_Count\(8) & !\inst1|r_Clk_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datab => \inst1|r_Clk_Count\(7),
	datac => \inst1|r_Clk_Count\(8),
	datad => \inst1|r_Clk_Count\(9),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X50_Y21_N6
\inst1|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (\inst1|r_Clk_Count\(11) & (\inst1|LessThan1~1_combout\ & (\inst1|LessThan1~2_combout\))) # (!\inst1|r_Clk_Count\(11) & (((\inst1|LessThan1~1_combout\ & \inst1|LessThan1~2_combout\)) # (!\inst1|r_Clk_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datab => \inst1|LessThan1~1_combout\,
	datac => \inst1|LessThan1~2_combout\,
	datad => \inst1|r_Clk_Count\(10),
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X54_Y21_N16
\inst1|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (\inst1|r_Clk_Count\(12) & (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & !\inst1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datac => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X54_Y21_N24
\inst1|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~1_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Bit_Index\(0) $ (((!\inst1|LessThan1~3_combout\ & \inst1|Selector16~0_combout\))))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((\inst1|r_Bit_Index\(0) & 
-- \inst1|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|r_Bit_Index\(0),
	datad => \inst1|Selector16~0_combout\,
	combout => \inst1|Selector16~1_combout\);

-- Location: FF_X54_Y21_N25
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

-- Location: LCCOMB_X54_Y21_N6
\inst1|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~5_combout\ = (\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & (\inst1|r_Bit_Index\(1) & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(2),
	datab => \inst1|Decoder0~0_combout\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~5_combout\);

-- Location: LCCOMB_X52_Y21_N20
\inst1|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\inst1|Decoder0~5_combout\) # ((\inst1|r_SM_Main.s_RX_Stop_Bit~q\ & ((\inst1|LessThan1~3_combout\) # (!\inst1|r_Clk_Count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~3_combout\,
	datab => \inst1|r_Clk_Count\(12),
	datac => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst1|Decoder0~5_combout\,
	combout => \inst1|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: FF_X52_Y21_N21
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

-- Location: LCCOMB_X52_Y21_N10
\inst1|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_SM_Main~7_combout\ = (\inst1|r_Clk_Count\(12) & (!\inst1|LessThan1~3_combout\ & \inst1|r_SM_Main.s_RX_Stop_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(12),
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \inst1|r_SM_Main~7_combout\);

-- Location: FF_X52_Y21_N11
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

-- Location: LCCOMB_X51_Y21_N2
\inst1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|r_Clk_Count\(11) & (!\inst1|r_Clk_Count\(10) & (\inst1|r_Clk_Count\(9) & !\inst1|r_Clk_Count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datab => \inst1|r_Clk_Count\(10),
	datac => \inst1|r_Clk_Count\(9),
	datad => \inst1|r_Clk_Count\(6),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y21_N30
\inst1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|r_Clk_Count\(3) & (!\inst1|r_Clk_Count\(2) & (\inst1|r_Clk_Count\(5) & !\inst1|r_Clk_Count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(3),
	datab => \inst1|r_Clk_Count\(2),
	datac => \inst1|r_Clk_Count\(5),
	datad => \inst1|r_Clk_Count\(4),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y21_N0
\inst1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|r_Clk_Count\(1) & (!\inst1|r_Clk_Count\(7) & (\inst1|r_Clk_Count\(0) & !\inst1|r_Clk_Count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(1),
	datab => \inst1|r_Clk_Count\(7),
	datac => \inst1|r_Clk_Count\(0),
	datad => \inst1|r_Clk_Count\(8),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y21_N2
\inst1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~0_combout\ & !\inst1|r_Clk_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|r_Clk_Count\(12),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y21_N8
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

-- Location: FF_X52_Y21_N9
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

-- Location: LCCOMB_X52_Y21_N12
\inst1|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~1_combout\ = (\inst1|r_SM_Main.s_RX_Start_Bit~q\ & \inst1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Selector19~1_combout\);

-- Location: LCCOMB_X52_Y21_N26
\inst1|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((\inst1|r_SM_Main.s_Idle~q\ & !\inst1|Selector19~1_combout\)) # (!\inst1|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Cleanup~q\,
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_SM_Main.s_Idle~q\,
	datad => \inst1|Selector19~1_combout\,
	combout => \inst1|Selector17~0_combout\);

-- Location: FF_X52_Y21_N27
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

-- Location: LCCOMB_X52_Y21_N22
\inst1|r_Clk_Count[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[3]~41_combout\ = (\inst1|r_Clk_Count\(12) & (!\inst1|LessThan1~3_combout\ & ((\inst1|r_SM_Main.s_RX_Data_Bits~q\) # (\inst1|r_SM_Main.s_RX_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst1|r_Clk_Count\(12),
	datac => \inst1|LessThan1~3_combout\,
	datad => \inst1|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \inst1|r_Clk_Count[3]~41_combout\);

-- Location: LCCOMB_X52_Y21_N30
\inst1|r_Clk_Count[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[3]~43_combout\ = ((\inst1|r_Clk_Count[3]~41_combout\) # ((\inst1|r_SM_Main.s_RX_Start_Bit~q\ & \inst1|Equal0~3_combout\))) # (!\inst1|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Idle~q\,
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst1|r_Clk_Count[3]~41_combout\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|r_Clk_Count[3]~43_combout\);

-- Location: LCCOMB_X52_Y21_N24
\inst1|r_Clk_Count[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[3]~42_combout\ = (!\inst1|r_SM_Main.s_Cleanup~q\ & (((!\inst1|Equal0~3_combout\) # (!\inst1|r_RX_Data~q\)) # (!\inst1|r_SM_Main.s_RX_Start_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_Cleanup~q\,
	datab => \inst1|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst1|r_RX_Data~q\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|r_Clk_Count[3]~42_combout\);

-- Location: FF_X51_Y21_N5
\inst1|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[0]~15_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(0));

-- Location: LCCOMB_X51_Y21_N6
\inst1|r_Clk_Count[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[1]~17_combout\ = (\inst1|r_Clk_Count\(1) & (!\inst1|r_Clk_Count[0]~16\)) # (!\inst1|r_Clk_Count\(1) & ((\inst1|r_Clk_Count[0]~16\) # (GND)))
-- \inst1|r_Clk_Count[1]~18\ = CARRY((!\inst1|r_Clk_Count[0]~16\) # (!\inst1|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(1),
	datad => VCC,
	cin => \inst1|r_Clk_Count[0]~16\,
	combout => \inst1|r_Clk_Count[1]~17_combout\,
	cout => \inst1|r_Clk_Count[1]~18\);

-- Location: FF_X51_Y21_N7
\inst1|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[1]~17_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(1));

-- Location: LCCOMB_X51_Y21_N8
\inst1|r_Clk_Count[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[2]~19_combout\ = (\inst1|r_Clk_Count\(2) & (\inst1|r_Clk_Count[1]~18\ $ (GND))) # (!\inst1|r_Clk_Count\(2) & (!\inst1|r_Clk_Count[1]~18\ & VCC))
-- \inst1|r_Clk_Count[2]~20\ = CARRY((\inst1|r_Clk_Count\(2) & !\inst1|r_Clk_Count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(2),
	datad => VCC,
	cin => \inst1|r_Clk_Count[1]~18\,
	combout => \inst1|r_Clk_Count[2]~19_combout\,
	cout => \inst1|r_Clk_Count[2]~20\);

-- Location: FF_X51_Y21_N9
\inst1|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[2]~19_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(2));

-- Location: LCCOMB_X51_Y21_N10
\inst1|r_Clk_Count[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[3]~21_combout\ = (\inst1|r_Clk_Count\(3) & (!\inst1|r_Clk_Count[2]~20\)) # (!\inst1|r_Clk_Count\(3) & ((\inst1|r_Clk_Count[2]~20\) # (GND)))
-- \inst1|r_Clk_Count[3]~22\ = CARRY((!\inst1|r_Clk_Count[2]~20\) # (!\inst1|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(3),
	datad => VCC,
	cin => \inst1|r_Clk_Count[2]~20\,
	combout => \inst1|r_Clk_Count[3]~21_combout\,
	cout => \inst1|r_Clk_Count[3]~22\);

-- Location: FF_X51_Y21_N11
\inst1|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[3]~21_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(3));

-- Location: LCCOMB_X51_Y21_N12
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

-- Location: FF_X51_Y21_N13
\inst1|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[4]~23_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(4));

-- Location: LCCOMB_X51_Y21_N14
\inst1|r_Clk_Count[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[5]~25_combout\ = (\inst1|r_Clk_Count\(5) & (!\inst1|r_Clk_Count[4]~24\)) # (!\inst1|r_Clk_Count\(5) & ((\inst1|r_Clk_Count[4]~24\) # (GND)))
-- \inst1|r_Clk_Count[5]~26\ = CARRY((!\inst1|r_Clk_Count[4]~24\) # (!\inst1|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(5),
	datad => VCC,
	cin => \inst1|r_Clk_Count[4]~24\,
	combout => \inst1|r_Clk_Count[5]~25_combout\,
	cout => \inst1|r_Clk_Count[5]~26\);

-- Location: FF_X51_Y21_N15
\inst1|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[5]~25_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(5));

-- Location: LCCOMB_X51_Y21_N16
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

-- Location: FF_X51_Y21_N17
\inst1|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[6]~27_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(6));

-- Location: LCCOMB_X51_Y21_N18
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

-- Location: FF_X51_Y21_N19
\inst1|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[7]~29_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(7));

-- Location: LCCOMB_X51_Y21_N20
\inst1|r_Clk_Count[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[8]~31_combout\ = (\inst1|r_Clk_Count\(8) & (\inst1|r_Clk_Count[7]~30\ $ (GND))) # (!\inst1|r_Clk_Count\(8) & (!\inst1|r_Clk_Count[7]~30\ & VCC))
-- \inst1|r_Clk_Count[8]~32\ = CARRY((\inst1|r_Clk_Count\(8) & !\inst1|r_Clk_Count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(8),
	datad => VCC,
	cin => \inst1|r_Clk_Count[7]~30\,
	combout => \inst1|r_Clk_Count[8]~31_combout\,
	cout => \inst1|r_Clk_Count[8]~32\);

-- Location: FF_X51_Y21_N21
\inst1|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[8]~31_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(8));

-- Location: LCCOMB_X51_Y21_N22
\inst1|r_Clk_Count[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[9]~33_combout\ = (\inst1|r_Clk_Count\(9) & (!\inst1|r_Clk_Count[8]~32\)) # (!\inst1|r_Clk_Count\(9) & ((\inst1|r_Clk_Count[8]~32\) # (GND)))
-- \inst1|r_Clk_Count[9]~34\ = CARRY((!\inst1|r_Clk_Count[8]~32\) # (!\inst1|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(9),
	datad => VCC,
	cin => \inst1|r_Clk_Count[8]~32\,
	combout => \inst1|r_Clk_Count[9]~33_combout\,
	cout => \inst1|r_Clk_Count[9]~34\);

-- Location: FF_X51_Y21_N23
\inst1|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[9]~33_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(9));

-- Location: LCCOMB_X51_Y21_N24
\inst1|r_Clk_Count[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[10]~35_combout\ = (\inst1|r_Clk_Count\(10) & (\inst1|r_Clk_Count[9]~34\ $ (GND))) # (!\inst1|r_Clk_Count\(10) & (!\inst1|r_Clk_Count[9]~34\ & VCC))
-- \inst1|r_Clk_Count[10]~36\ = CARRY((\inst1|r_Clk_Count\(10) & !\inst1|r_Clk_Count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Clk_Count\(10),
	datad => VCC,
	cin => \inst1|r_Clk_Count[9]~34\,
	combout => \inst1|r_Clk_Count[10]~35_combout\,
	cout => \inst1|r_Clk_Count[10]~36\);

-- Location: FF_X51_Y21_N25
\inst1|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[10]~35_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(10));

-- Location: LCCOMB_X51_Y21_N26
\inst1|r_Clk_Count[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[11]~37_combout\ = (\inst1|r_Clk_Count\(11) & (!\inst1|r_Clk_Count[10]~36\)) # (!\inst1|r_Clk_Count\(11) & ((\inst1|r_Clk_Count[10]~36\) # (GND)))
-- \inst1|r_Clk_Count[11]~38\ = CARRY((!\inst1|r_Clk_Count[10]~36\) # (!\inst1|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(11),
	datad => VCC,
	cin => \inst1|r_Clk_Count[10]~36\,
	combout => \inst1|r_Clk_Count[11]~37_combout\,
	cout => \inst1|r_Clk_Count[11]~38\);

-- Location: FF_X51_Y21_N27
\inst1|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[11]~37_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(11));

-- Location: LCCOMB_X51_Y21_N28
\inst1|r_Clk_Count[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_Clk_Count[12]~39_combout\ = \inst1|r_Clk_Count[11]~38\ $ (!\inst1|r_Clk_Count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|r_Clk_Count\(12),
	cin => \inst1|r_Clk_Count[11]~38\,
	combout => \inst1|r_Clk_Count[12]~39_combout\);

-- Location: FF_X51_Y21_N29
\inst1|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_Clk_Count[12]~39_combout\,
	sclr => \inst1|r_Clk_Count[3]~43_combout\,
	ena => \inst1|r_Clk_Count[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_Clk_Count\(12));

-- Location: LCCOMB_X54_Y21_N12
\inst1|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Clk_Count\(12))) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datac => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|r_SM_Main.s_Idle~q\,
	combout => \inst1|Selector16~0_combout\);

-- Location: LCCOMB_X54_Y21_N10
\inst1|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|Selector16~0_combout\ & ((\inst1|LessThan1~3_combout\) # ((!\inst1|r_Bit_Index\(0)) # (!\inst1|r_SM_Main.s_RX_Data_Bits~q\)))) # (!\inst1|Selector16~0_combout\ & (((\inst1|r_SM_Main.s_RX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector16~0_combout\,
	datab => \inst1|LessThan1~3_combout\,
	datac => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector14~0_combout\);

-- Location: LCCOMB_X54_Y21_N20
\inst1|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~1_combout\ = (\inst1|r_Bit_Index\(0) & (\inst1|r_Bit_Index\(2) $ (\inst1|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector14~1_combout\);

-- Location: LCCOMB_X54_Y21_N4
\inst1|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector14~2_combout\ = (\inst1|Selector14~0_combout\ & ((\inst1|r_Bit_Index\(2)) # ((\inst1|Selector14~1_combout\ & \inst1|Decoder0~0_combout\)))) # (!\inst1|Selector14~0_combout\ & (\inst1|Selector14~1_combout\ & ((\inst1|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector14~0_combout\,
	datab => \inst1|Selector14~1_combout\,
	datac => \inst1|r_Bit_Index\(2),
	datad => \inst1|Decoder0~0_combout\,
	combout => \inst1|Selector14~2_combout\);

-- Location: FF_X54_Y21_N5
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

-- Location: LCCOMB_X54_Y21_N26
\inst1|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~2_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (((!\inst1|r_Bit_Index\(0)) # (!\inst1|r_Bit_Index\(1))) # (!\inst1|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector19~2_combout\);

-- Location: LCCOMB_X54_Y21_N22
\inst1|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = (\inst1|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst1|LessThan1~3_combout\) # (!\inst1|r_Clk_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Clk_Count\(12),
	datac => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Selector19~0_combout\);

-- Location: LCCOMB_X54_Y21_N18
\inst1|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector19~3_combout\ = (\inst1|Selector19~2_combout\) # ((\inst1|Selector19~0_combout\) # ((!\inst1|r_RX_Data~q\ & \inst1|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~2_combout\,
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|Selector19~0_combout\,
	datad => \inst1|Selector19~1_combout\,
	combout => \inst1|Selector19~3_combout\);

-- Location: FF_X54_Y21_N19
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

-- Location: LCCOMB_X54_Y21_N28
\inst1|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = (\inst1|r_Bit_Index\(1) & ((\inst1|Selector19~0_combout\) # ((\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))) # (!\inst1|r_Bit_Index\(1) & (((\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~0_combout\,
	datab => \inst1|Decoder0~0_combout\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Selector15~0_combout\);

-- Location: LCCOMB_X54_Y21_N14
\inst1|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector15~1_combout\ = (\inst1|Selector15~0_combout\) # ((!\inst1|r_SM_Main.s_RX_Data_Bits~q\ & (\inst1|r_Bit_Index\(1) & \inst1|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst1|Selector15~0_combout\,
	datac => \inst1|r_Bit_Index\(1),
	datad => \inst1|r_SM_Main.s_Idle~q\,
	combout => \inst1|Selector15~1_combout\);

-- Location: FF_X54_Y21_N15
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

-- Location: LCCOMB_X55_Y21_N10
\inst1|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~2_combout\ = (\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(1),
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~2_combout\);

-- Location: LCCOMB_X55_Y21_N26
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

-- Location: FF_X55_Y21_N27
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

-- Location: LCCOMB_X55_Y21_N20
\inst1|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~3_combout\ = (!\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(1),
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~3_combout\);

-- Location: LCCOMB_X55_Y21_N6
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

-- Location: FF_X55_Y21_N7
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

-- Location: LCCOMB_X55_Y21_N2
\inst1|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~4_combout\ = (!\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(1),
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~4_combout\);

-- Location: LCCOMB_X55_Y21_N4
\inst1|r_RX_Byte[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[0]~3_combout\ = (\inst1|Decoder0~4_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~4_combout\ & ((\inst1|r_RX_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(0),
	datad => \inst1|Decoder0~4_combout\,
	combout => \inst1|r_RX_Byte[0]~3_combout\);

-- Location: FF_X55_Y21_N5
\inst1|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(0));

-- Location: LCCOMB_X55_Y21_N28
\inst1|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~1_combout\ = (\inst1|r_Bit_Index\(1) & (!\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(1),
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X55_Y21_N12
\inst1|r_RX_Byte[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[3]~0_combout\ = (\inst1|Decoder0~1_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~1_combout\ & ((\inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(3),
	datad => \inst1|Decoder0~1_combout\,
	combout => \inst1|r_RX_Byte[3]~0_combout\);

-- Location: FF_X55_Y21_N13
\inst1|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(3));

-- Location: LCCOMB_X56_Y21_N18
\inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst1|r_RX_Byte\(2) & (\inst1|r_RX_Byte\(1) & (\inst1|r_RX_Byte\(0) & !\inst1|r_RX_Byte\(3)))) # (!\inst1|r_RX_Byte\(2) & (!\inst1|r_RX_Byte\(1) & (!\inst1|r_RX_Byte\(0) & \inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(2),
	datab => \inst1|r_RX_Byte\(1),
	datac => \inst1|r_RX_Byte\(0),
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X56_Y21_N8
\inst|PWM_SVmot~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~10_combout\ = (\inst|counter\(5) & (((!\inst|process_0~0_combout\)) # (!\inst|PWM_SVmot~9_combout\))) # (!\inst|counter\(5) & (((\inst|LessThan2~0_combout\ & !\inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PWM_SVmot~9_combout\,
	datab => \inst|LessThan2~0_combout\,
	datac => \inst|counter\(5),
	datad => \inst|process_0~0_combout\,
	combout => \inst|PWM_SVmot~10_combout\);

-- Location: LCCOMB_X57_Y21_N2
\inst|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (((!\inst|counter\(5)) # (!\inst|counter\(2))) # (!\inst|counter\(3))) # (!\inst|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(3),
	datac => \inst|counter\(2),
	datad => \inst|counter\(5),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X56_Y21_N30
\inst|innercounter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~0_combout\ = (!\inst|counter\(6) & ((\inst|counter\(5)) # (\inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(5),
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|counter\(6),
	combout => \inst|innercounter[3]~0_combout\);

-- Location: LCCOMB_X56_Y21_N20
\inst|innercounter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~1_combout\ = (\inst|LessThan3~0_combout\ & (\inst|PWM_SVmot~0_combout\ & (\inst|innercounter[3]~0_combout\ & !\inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~0_combout\,
	datab => \inst|PWM_SVmot~0_combout\,
	datac => \inst|innercounter[3]~0_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|innercounter[3]~1_combout\);

-- Location: LCCOMB_X56_Y21_N26
\inst|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|flag~0_combout\ = \inst|flag~q\ $ (\inst|innercounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|flag~q\,
	datad => \inst|innercounter[3]~1_combout\,
	combout => \inst|flag~0_combout\);

-- Location: FF_X56_Y21_N27
\inst|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag~q\);

-- Location: LCCOMB_X56_Y21_N16
\inst|PWM_SVmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~3_combout\ = (\inst|LessThan3~0_combout\ & (!\inst|counter\(6) & !\inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~0_combout\,
	datab => \inst|counter\(6),
	datad => \inst|process_0~0_combout\,
	combout => \inst|PWM_SVmot~3_combout\);

-- Location: LCCOMB_X56_Y21_N22
\inst|innercounter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~4_combout\ = (\inst|innercounter\(1) & ((\inst|innercounter\(2) & (!\inst|innercounter\(3) & \inst|innercounter\(0))) # (!\inst|innercounter\(2) & (\inst|innercounter\(3))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(3)))))

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
	combout => \inst|innercounter~4_combout\);

-- Location: LCCOMB_X56_Y21_N14
\inst|innercounter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter[3]~3_combout\ = (!\inst|flag~q\ & \inst|innercounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|flag~q\,
	datad => \inst|innercounter[3]~1_combout\,
	combout => \inst|innercounter[3]~3_combout\);

-- Location: FF_X56_Y21_N23
\inst|innercounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~4_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(3));

-- Location: LCCOMB_X56_Y21_N6
\inst|innercounter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~5_combout\ = (!\inst|innercounter\(0) & (((!\inst|innercounter\(3)) # (!\inst|innercounter\(2))) # (!\inst|innercounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(1),
	datab => \inst|innercounter\(2),
	datac => \inst|innercounter\(0),
	datad => \inst|innercounter\(3),
	combout => \inst|innercounter~5_combout\);

-- Location: FF_X56_Y21_N7
\inst|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~5_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(0));

-- Location: LCCOMB_X56_Y21_N0
\inst|innercounter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~6_combout\ = (\inst|innercounter\(0) & (((!\inst|innercounter\(1))))) # (!\inst|innercounter\(0) & (\inst|innercounter\(1) & ((!\inst|innercounter\(3)) # (!\inst|innercounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|innercounter\(0),
	datab => \inst|innercounter\(2),
	datac => \inst|innercounter\(1),
	datad => \inst|innercounter\(3),
	combout => \inst|innercounter~6_combout\);

-- Location: FF_X56_Y21_N1
\inst|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~6_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(1));

-- Location: LCCOMB_X56_Y21_N28
\inst|innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|innercounter~2_combout\ = (\inst|innercounter\(1) & ((\inst|innercounter\(2) & (!\inst|innercounter\(3) & !\inst|innercounter\(0))) # (!\inst|innercounter\(2) & ((\inst|innercounter\(0)))))) # (!\inst|innercounter\(1) & (((\inst|innercounter\(2)))))

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
	combout => \inst|innercounter~2_combout\);

-- Location: FF_X56_Y21_N29
\inst|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|innercounter~2_combout\,
	ena => \inst|innercounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|innercounter\(2));

-- Location: LCCOMB_X55_Y21_N24
\inst|PWM_SVmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~1_combout\ = (\inst1|r_RX_Byte\(2) & (\inst|innercounter\(3) $ (!\inst1|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|innercounter\(3),
	datac => \inst1|r_RX_Byte\(2),
	datad => \inst1|r_RX_Byte\(3),
	combout => \inst|PWM_SVmot~1_combout\);

-- Location: LCCOMB_X56_Y21_N4
\inst|PWM_SVmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~2_combout\ = (\inst|flag~q\ & (\inst|PWM_SVmot~q\)) # (!\inst|flag~q\ & (((!\inst|innercounter\(2) & \inst|PWM_SVmot~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PWM_SVmot~q\,
	datab => \inst|innercounter\(2),
	datac => \inst|flag~q\,
	datad => \inst|PWM_SVmot~1_combout\,
	combout => \inst|PWM_SVmot~2_combout\);

-- Location: LCCOMB_X55_Y21_N14
\inst|PWM_SVmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~4_combout\ = (\inst|innercounter\(1) & (!\inst|innercounter\(0) & (\inst1|r_RX_Byte\(0) & \inst1|r_RX_Byte\(1)))) # (!\inst|innercounter\(1) & ((\inst1|r_RX_Byte\(1)) # ((!\inst|innercounter\(0) & \inst1|r_RX_Byte\(0)))))

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
	combout => \inst|PWM_SVmot~4_combout\);

-- Location: LCCOMB_X56_Y21_N10
\inst|PWM_SVmot~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~5_combout\ = (\inst|PWM_SVmot~4_combout\ & (\inst|innercounter\(2) $ (!\inst1|r_RX_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|innercounter\(2),
	datac => \inst1|r_RX_Byte\(2),
	datad => \inst|PWM_SVmot~4_combout\,
	combout => \inst|PWM_SVmot~5_combout\);

-- Location: LCCOMB_X56_Y21_N24
\inst|PWM_SVmot~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~6_combout\ = (\inst1|r_RX_Byte\(3) & ((\inst|PWM_SVmot~5_combout\) # (!\inst|innercounter\(3)))) # (!\inst1|r_RX_Byte\(3) & (!\inst|innercounter\(3) & \inst|PWM_SVmot~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(3),
	datac => \inst|innercounter\(3),
	datad => \inst|PWM_SVmot~5_combout\,
	combout => \inst|PWM_SVmot~6_combout\);

-- Location: LCCOMB_X56_Y21_N2
\inst|PWM_SVmot~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~7_combout\ = (\inst|PWM_SVmot~3_combout\ & ((\inst|PWM_SVmot~2_combout\) # ((!\inst|flag~q\ & \inst|PWM_SVmot~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~q\,
	datab => \inst|PWM_SVmot~3_combout\,
	datac => \inst|PWM_SVmot~2_combout\,
	datad => \inst|PWM_SVmot~6_combout\,
	combout => \inst|PWM_SVmot~7_combout\);

-- Location: LCCOMB_X56_Y21_N12
\inst|PWM_SVmot~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PWM_SVmot~11_combout\ = (\inst|PWM_SVmot~0_combout\ & ((\inst|PWM_SVmot~7_combout\) # ((!\inst|PWM_SVmot~8_combout\ & !\inst|PWM_SVmot~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PWM_SVmot~8_combout\,
	datab => \inst|PWM_SVmot~0_combout\,
	datac => \inst|PWM_SVmot~10_combout\,
	datad => \inst|PWM_SVmot~7_combout\,
	combout => \inst|PWM_SVmot~11_combout\);

-- Location: FF_X56_Y21_N13
\inst|PWM_SVmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|PWM_SVmot~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PWM_SVmot~q\);

-- Location: CLKCTRL_G19
\inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y21_N4
\inst1|r_RX_Byte[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[7]~4_combout\ = (\inst1|Decoder0~5_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~5_combout\ & ((\inst1|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(7),
	datad => \inst1|Decoder0~5_combout\,
	combout => \inst1|r_RX_Byte[7]~4_combout\);

-- Location: FF_X52_Y21_N5
\inst1|r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(7));

-- Location: LCCOMB_X57_Y29_N0
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

-- Location: LCCOMB_X56_Y29_N6
\inst5|U0|flag[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|flag[0]~2_combout\ = !\inst5|U0|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U0|Add2~0_combout\,
	combout => \inst5|U0|flag[0]~2_combout\);

-- Location: LCCOMB_X57_Y31_N4
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

-- Location: FF_X57_Y31_N5
\inst5|U0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(0));

-- Location: LCCOMB_X57_Y31_N6
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

-- Location: FF_X57_Y31_N7
\inst5|U0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(1));

-- Location: LCCOMB_X57_Y31_N8
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

-- Location: FF_X57_Y31_N9
\inst5|U0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(2));

-- Location: LCCOMB_X57_Y31_N10
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

-- Location: FF_X57_Y31_N11
\inst5|U0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(3));

-- Location: LCCOMB_X57_Y31_N12
\inst5|U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~8_combout\ = (\inst5|U0|counter\(4) & (\inst5|U0|Add0~7\ $ (GND))) # (!\inst5|U0|counter\(4) & (!\inst5|U0|Add0~7\ & VCC))
-- \inst5|U0|Add0~9\ = CARRY((\inst5|U0|counter\(4) & !\inst5|U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(4),
	datad => VCC,
	cin => \inst5|U0|Add0~7\,
	combout => \inst5|U0|Add0~8_combout\,
	cout => \inst5|U0|Add0~9\);

-- Location: LCCOMB_X57_Y31_N14
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

-- Location: FF_X57_Y31_N15
\inst5|U0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(5));

-- Location: LCCOMB_X57_Y31_N16
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

-- Location: FF_X57_Y31_N17
\inst5|U0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(6));

-- Location: LCCOMB_X57_Y31_N18
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

-- Location: FF_X57_Y31_N19
\inst5|U0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(7));

-- Location: LCCOMB_X57_Y31_N20
\inst5|U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~16_combout\ = (\inst5|U0|counter\(8) & (\inst5|U0|Add0~15\ $ (GND))) # (!\inst5|U0|counter\(8) & (!\inst5|U0|Add0~15\ & VCC))
-- \inst5|U0|Add0~17\ = CARRY((\inst5|U0|counter\(8) & !\inst5|U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(8),
	datad => VCC,
	cin => \inst5|U0|Add0~15\,
	combout => \inst5|U0|Add0~16_combout\,
	cout => \inst5|U0|Add0~17\);

-- Location: LCCOMB_X56_Y31_N20
\inst5|U0|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~1_combout\ = (!\inst5|U0|Equal0~4_combout\ & \inst5|U0|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~4_combout\,
	datac => \inst5|U0|Add0~16_combout\,
	combout => \inst5|U0|counter~1_combout\);

-- Location: FF_X56_Y31_N21
\inst5|U0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(8));

-- Location: LCCOMB_X57_Y31_N22
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

-- Location: LCCOMB_X56_Y31_N30
\inst5|U0|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~2_combout\ = (!\inst5|U0|Equal0~4_combout\ & \inst5|U0|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U0|Equal0~4_combout\,
	datad => \inst5|U0|Add0~18_combout\,
	combout => \inst5|U0|counter~2_combout\);

-- Location: FF_X56_Y31_N31
\inst5|U0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(9));

-- Location: LCCOMB_X57_Y31_N24
\inst5|U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add0~20_combout\ = (\inst5|U0|counter\(10) & (\inst5|U0|Add0~19\ $ (GND))) # (!\inst5|U0|counter\(10) & (!\inst5|U0|Add0~19\ & VCC))
-- \inst5|U0|Add0~21\ = CARRY((\inst5|U0|counter\(10) & !\inst5|U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(10),
	datad => VCC,
	cin => \inst5|U0|Add0~19\,
	combout => \inst5|U0|Add0~20_combout\,
	cout => \inst5|U0|Add0~21\);

-- Location: LCCOMB_X56_Y31_N4
\inst5|U0|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~3_combout\ = (!\inst5|U0|Equal0~4_combout\ & \inst5|U0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U0|Equal0~4_combout\,
	datad => \inst5|U0|Add0~20_combout\,
	combout => \inst5|U0|counter~3_combout\);

-- Location: FF_X56_Y31_N5
\inst5|U0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(10));

-- Location: LCCOMB_X57_Y31_N26
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

-- Location: FF_X57_Y31_N27
\inst5|U0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(11));

-- Location: LCCOMB_X57_Y31_N28
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

-- Location: FF_X57_Y31_N29
\inst5|U0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(12));

-- Location: LCCOMB_X56_Y31_N12
\inst5|U0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~3_combout\ = (\inst5|U0|counter\(8) & (!\inst5|U0|counter\(12) & (\inst5|U0|counter\(9) & !\inst5|U0|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(8),
	datab => \inst5|U0|counter\(12),
	datac => \inst5|U0|counter\(9),
	datad => \inst5|U0|counter\(11),
	combout => \inst5|U0|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y31_N30
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

-- Location: LCCOMB_X56_Y31_N8
\inst5|U0|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~0_combout\ = (!\inst5|U0|Equal0~4_combout\ & \inst5|U0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~4_combout\,
	datac => \inst5|U0|Add0~26_combout\,
	combout => \inst5|U0|counter~0_combout\);

-- Location: FF_X56_Y31_N9
\inst5|U0|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(13));

-- Location: LCCOMB_X57_Y31_N2
\inst5|U0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~1_combout\ = (\inst5|U0|counter\(2) & (\inst5|U0|counter\(0) & \inst5|U0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(2),
	datac => \inst5|U0|counter\(0),
	datad => \inst5|U0|counter\(1),
	combout => \inst5|U0|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y31_N18
\inst5|U0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~2_combout\ = (\inst5|U0|Equal0~0_combout\ & (\inst5|U0|counter\(3) & \inst5|U0|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~0_combout\,
	datac => \inst5|U0|counter\(3),
	datad => \inst5|U0|Equal0~1_combout\,
	combout => \inst5|U0|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y31_N26
\inst5|U0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~4_combout\ = (\inst5|U0|Equal0~3_combout\ & (\inst5|U0|counter\(13) & (\inst5|U0|counter\(10) & \inst5|U0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~3_combout\,
	datab => \inst5|U0|counter\(13),
	datac => \inst5|U0|counter\(10),
	datad => \inst5|U0|Equal0~2_combout\,
	combout => \inst5|U0|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y31_N24
\inst5|U0|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|counter~4_combout\ = (!\inst5|U0|Equal0~4_combout\ & \inst5|U0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~4_combout\,
	datac => \inst5|U0|Add0~8_combout\,
	combout => \inst5|U0|counter~4_combout\);

-- Location: FF_X56_Y31_N25
\inst5|U0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|counter\(4));

-- Location: LCCOMB_X56_Y31_N10
\inst5|U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal0~0_combout\ = (!\inst5|U0|counter\(4) & (!\inst5|U0|counter\(7) & (!\inst5|U0|counter\(5) & !\inst5|U0|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(4),
	datab => \inst5|U0|counter\(7),
	datac => \inst5|U0|counter\(5),
	datad => \inst5|U0|counter\(6),
	combout => \inst5|U0|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y31_N14
\inst5|U0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~0_combout\ = (!\inst5|U0|counter\(9) & (!\inst5|U0|counter\(8) & !\inst5|U0|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(9),
	datab => \inst5|U0|counter\(8),
	datac => \inst5|U0|counter\(10),
	combout => \inst5|U0|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y31_N28
\inst5|U0|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan0~1_combout\ = (\inst5|U0|Equal0~0_combout\ & (\inst5|U0|LessThan0~0_combout\ & (!\inst5|U0|counter\(3) & !\inst5|U0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal0~0_combout\,
	datab => \inst5|U0|LessThan0~0_combout\,
	datac => \inst5|U0|counter\(3),
	datad => \inst5|U0|Equal0~1_combout\,
	combout => \inst5|U0|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y31_N6
\inst5|U0|PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~0_combout\ = (!\inst5|U0|counter\(12) & (!\inst5|U0|counter\(13) & !\inst5|U0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|counter\(12),
	datac => \inst5|U0|counter\(13),
	datad => \inst5|U0|counter\(11),
	combout => \inst5|U0|PWM_DCmot~0_combout\);

-- Location: LCCOMB_X57_Y31_N0
\inst5|U0|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan1~0_combout\ = (((!\inst5|U0|counter\(1) & !\inst5|U0|counter\(0))) # (!\inst5|U0|counter\(3))) # (!\inst5|U0|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(1),
	datab => \inst5|U0|counter\(2),
	datac => \inst5|U0|counter\(0),
	datad => \inst5|U0|counter\(3),
	combout => \inst5|U0|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y31_N22
\inst5|U0|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|LessThan1~1_combout\ = ((!\inst5|U0|counter\(4) & (\inst5|U0|LessThan1~0_combout\ & !\inst5|U0|counter\(5)))) # (!\inst5|U0|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|counter\(4),
	datab => \inst5|U0|LessThan1~0_combout\,
	datac => \inst5|U0|counter\(5),
	datad => \inst5|U0|counter\(6),
	combout => \inst5|U0|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y31_N16
\inst5|U0|PWM_DCmot~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~1_combout\ = (\inst5|U0|PWM_DCmot~0_combout\ & (\inst5|U0|LessThan0~0_combout\ & (\inst5|U0|LessThan1~1_combout\ & !\inst5|U0|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|PWM_DCmot~0_combout\,
	datab => \inst5|U0|LessThan0~0_combout\,
	datac => \inst5|U0|LessThan1~1_combout\,
	datad => \inst5|U0|counter\(7),
	combout => \inst5|U0|PWM_DCmot~1_combout\);

-- Location: LCCOMB_X55_Y29_N4
\inst5|U0|innercounter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter[2]~4_combout\ = (!\inst5|U0|LessThan0~1_combout\ & \inst5|U0|PWM_DCmot~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U0|LessThan0~1_combout\,
	datad => \inst5|U0|PWM_DCmot~1_combout\,
	combout => \inst5|U0|innercounter[2]~4_combout\);

-- Location: FF_X56_Y29_N7
\inst5|U0|flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|flag[0]~2_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(0));

-- Location: LCCOMB_X57_Y29_N2
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

-- Location: LCCOMB_X56_Y29_N16
\inst5|U0|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|flag~0_combout\ = (\inst5|U0|Equal1~10_combout\) # (\inst5|U0|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U0|Equal1~10_combout\,
	datad => \inst5|U0|Add2~2_combout\,
	combout => \inst5|U0|flag~0_combout\);

-- Location: FF_X56_Y29_N17
\inst5|U0|flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|flag~0_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(1));

-- Location: LCCOMB_X57_Y29_N4
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

-- Location: FF_X57_Y29_N5
\inst5|U0|flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~4_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(2));

-- Location: LCCOMB_X57_Y29_N6
\inst5|U0|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Add2~6_combout\ = (\inst5|U0|flag\(3) & (\inst5|U0|Add2~5\ & VCC)) # (!\inst5|U0|flag\(3) & (!\inst5|U0|Add2~5\))
-- \inst5|U0|Add2~7\ = CARRY((!\inst5|U0|flag\(3) & !\inst5|U0|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(3),
	datad => VCC,
	cin => \inst5|U0|Add2~5\,
	combout => \inst5|U0|Add2~6_combout\,
	cout => \inst5|U0|Add2~7\);

-- Location: LCCOMB_X56_Y29_N24
\inst5|U0|flag~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|flag~1_combout\ = (\inst5|U0|Equal1~10_combout\) # (\inst5|U0|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|U0|Equal1~10_combout\,
	datad => \inst5|U0|Add2~6_combout\,
	combout => \inst5|U0|flag~1_combout\);

-- Location: FF_X56_Y29_N25
\inst5|U0|flag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|flag~1_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(3));

-- Location: LCCOMB_X57_Y29_N8
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

-- Location: FF_X57_Y29_N9
\inst5|U0|flag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~8_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(4));

-- Location: LCCOMB_X57_Y29_N10
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

-- Location: FF_X57_Y29_N11
\inst5|U0|flag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~10_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(5));

-- Location: LCCOMB_X57_Y29_N12
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

-- Location: FF_X57_Y29_N13
\inst5|U0|flag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~12_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(6));

-- Location: LCCOMB_X57_Y29_N14
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

-- Location: FF_X57_Y29_N15
\inst5|U0|flag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~14_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(7));

-- Location: LCCOMB_X57_Y29_N16
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

-- Location: FF_X57_Y29_N17
\inst5|U0|flag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~16_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(8));

-- Location: LCCOMB_X57_Y29_N18
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

-- Location: FF_X57_Y29_N19
\inst5|U0|flag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~18_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(9));

-- Location: LCCOMB_X57_Y29_N20
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

-- Location: FF_X57_Y29_N21
\inst5|U0|flag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~20_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(10));

-- Location: LCCOMB_X57_Y29_N22
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

-- Location: FF_X57_Y29_N23
\inst5|U0|flag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~22_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(11));

-- Location: LCCOMB_X57_Y29_N24
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

-- Location: FF_X57_Y29_N25
\inst5|U0|flag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~24_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(12));

-- Location: LCCOMB_X57_Y29_N26
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

-- Location: FF_X57_Y29_N27
\inst5|U0|flag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~26_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(13));

-- Location: LCCOMB_X57_Y29_N28
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

-- Location: FF_X57_Y29_N29
\inst5|U0|flag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~28_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(14));

-- Location: LCCOMB_X57_Y29_N30
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

-- Location: FF_X57_Y29_N31
\inst5|U0|flag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~30_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(15));

-- Location: LCCOMB_X57_Y28_N0
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

-- Location: FF_X57_Y28_N1
\inst5|U0|flag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~32_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(16));

-- Location: LCCOMB_X57_Y28_N2
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

-- Location: FF_X57_Y28_N3
\inst5|U0|flag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~34_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(17));

-- Location: LCCOMB_X57_Y28_N4
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

-- Location: FF_X57_Y28_N5
\inst5|U0|flag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~36_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(18));

-- Location: LCCOMB_X57_Y28_N6
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

-- Location: FF_X57_Y28_N7
\inst5|U0|flag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~38_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(19));

-- Location: LCCOMB_X57_Y28_N8
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

-- Location: FF_X57_Y28_N9
\inst5|U0|flag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~40_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(20));

-- Location: LCCOMB_X57_Y28_N10
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

-- Location: FF_X57_Y28_N11
\inst5|U0|flag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~42_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(21));

-- Location: LCCOMB_X57_Y28_N12
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

-- Location: FF_X57_Y28_N13
\inst5|U0|flag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~44_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(22));

-- Location: LCCOMB_X57_Y28_N14
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

-- Location: FF_X57_Y28_N15
\inst5|U0|flag[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~46_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(23));

-- Location: LCCOMB_X57_Y28_N16
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

-- Location: FF_X57_Y28_N17
\inst5|U0|flag[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~48_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(24));

-- Location: LCCOMB_X57_Y28_N18
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

-- Location: FF_X57_Y28_N19
\inst5|U0|flag[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~50_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(25));

-- Location: LCCOMB_X57_Y28_N20
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

-- Location: FF_X57_Y28_N21
\inst5|U0|flag[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~52_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(26));

-- Location: LCCOMB_X57_Y28_N22
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

-- Location: FF_X57_Y28_N23
\inst5|U0|flag[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~54_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(27));

-- Location: LCCOMB_X57_Y28_N24
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

-- Location: FF_X57_Y28_N25
\inst5|U0|flag[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~56_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(28));

-- Location: LCCOMB_X57_Y28_N26
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

-- Location: FF_X57_Y28_N27
\inst5|U0|flag[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~58_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(29));

-- Location: LCCOMB_X57_Y28_N28
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

-- Location: FF_X57_Y28_N29
\inst5|U0|flag[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~60_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(30));

-- Location: LCCOMB_X57_Y28_N30
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

-- Location: FF_X57_Y28_N31
\inst5|U0|flag[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|Add2~62_combout\,
	ena => \inst5|U0|innercounter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|flag\(31));

-- Location: LCCOMB_X56_Y28_N10
\inst5|U0|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~8_combout\ = (!\inst5|U0|flag\(29) & (!\inst5|U0|flag\(30) & (!\inst5|U0|flag\(31) & !\inst5|U0|flag\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(29),
	datab => \inst5|U0|flag\(30),
	datac => \inst5|U0|flag\(31),
	datad => \inst5|U0|flag\(28),
	combout => \inst5|U0|Equal1~8_combout\);

-- Location: LCCOMB_X56_Y28_N28
\inst5|U0|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~7_combout\ = (!\inst5|U0|flag\(27) & (!\inst5|U0|flag\(25) & (!\inst5|U0|flag\(26) & !\inst5|U0|flag\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(27),
	datab => \inst5|U0|flag\(25),
	datac => \inst5|U0|flag\(26),
	datad => \inst5|U0|flag\(24),
	combout => \inst5|U0|Equal1~7_combout\);

-- Location: LCCOMB_X56_Y28_N8
\inst5|U0|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~5_combout\ = (!\inst5|U0|flag\(18) & (!\inst5|U0|flag\(19) & (!\inst5|U0|flag\(16) & !\inst5|U0|flag\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(18),
	datab => \inst5|U0|flag\(19),
	datac => \inst5|U0|flag\(16),
	datad => \inst5|U0|flag\(17),
	combout => \inst5|U0|Equal1~5_combout\);

-- Location: LCCOMB_X56_Y28_N18
\inst5|U0|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~6_combout\ = (!\inst5|U0|flag\(21) & (!\inst5|U0|flag\(22) & (!\inst5|U0|flag\(20) & !\inst5|U0|flag\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(21),
	datab => \inst5|U0|flag\(22),
	datac => \inst5|U0|flag\(20),
	datad => \inst5|U0|flag\(23),
	combout => \inst5|U0|Equal1~6_combout\);

-- Location: LCCOMB_X56_Y28_N0
\inst5|U0|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~9_combout\ = (\inst5|U0|Equal1~8_combout\ & (\inst5|U0|Equal1~7_combout\ & (\inst5|U0|Equal1~5_combout\ & \inst5|U0|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal1~8_combout\,
	datab => \inst5|U0|Equal1~7_combout\,
	datac => \inst5|U0|Equal1~5_combout\,
	datad => \inst5|U0|Equal1~6_combout\,
	combout => \inst5|U0|Equal1~9_combout\);

-- Location: LCCOMB_X56_Y29_N28
\inst5|U0|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~3_combout\ = (!\inst5|U0|flag\(11) & (!\inst5|U0|flag\(9) & (!\inst5|U0|flag\(10) & !\inst5|U0|flag\(8))))

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
	combout => \inst5|U0|Equal1~3_combout\);

-- Location: LCCOMB_X56_Y29_N12
\inst5|U0|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~1_combout\ = (!\inst5|U0|flag\(7) & !\inst5|U0|flag\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|flag\(7),
	datac => \inst5|U0|flag\(6),
	combout => \inst5|U0|Equal1~1_combout\);

-- Location: LCCOMB_X56_Y29_N10
\inst5|U0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~0_combout\ = (!\inst5|U0|flag\(2) & (!\inst5|U0|flag\(1) & (!\inst5|U0|flag\(0) & !\inst5|U0|flag\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|flag\(2),
	datab => \inst5|U0|flag\(1),
	datac => \inst5|U0|flag\(0),
	datad => \inst5|U0|flag\(3),
	combout => \inst5|U0|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y29_N22
\inst5|U0|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~2_combout\ = (\inst5|U0|Equal1~1_combout\ & (!\inst5|U0|flag\(5) & (!\inst5|U0|flag\(4) & \inst5|U0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal1~1_combout\,
	datab => \inst5|U0|flag\(5),
	datac => \inst5|U0|flag\(4),
	datad => \inst5|U0|Equal1~0_combout\,
	combout => \inst5|U0|Equal1~2_combout\);

-- Location: LCCOMB_X56_Y29_N18
\inst5|U0|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~4_combout\ = (!\inst5|U0|flag\(13) & (!\inst5|U0|flag\(14) & (!\inst5|U0|flag\(15) & !\inst5|U0|flag\(12))))

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
	combout => \inst5|U0|Equal1~4_combout\);

-- Location: LCCOMB_X56_Y29_N4
\inst5|U0|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|Equal1~10_combout\ = (\inst5|U0|Equal1~9_combout\ & (\inst5|U0|Equal1~3_combout\ & (\inst5|U0|Equal1~2_combout\ & \inst5|U0|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal1~9_combout\,
	datab => \inst5|U0|Equal1~3_combout\,
	datac => \inst5|U0|Equal1~2_combout\,
	datad => \inst5|U0|Equal1~4_combout\,
	combout => \inst5|U0|Equal1~10_combout\);

-- Location: LCCOMB_X55_Y29_N18
\inst5|U0|innercounter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter~3_combout\ = (!\inst5|U0|innercounter\(0) & ((!\inst5|U0|innercounter\(1)) # (!\inst5|U0|innercounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|innercounter\(2),
	datac => \inst5|U0|innercounter\(0),
	datad => \inst5|U0|innercounter\(1),
	combout => \inst5|U0|innercounter~3_combout\);

-- Location: LCCOMB_X55_Y29_N30
\inst5|U0|innercounter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter[2]~1_combout\ = (\inst5|U0|Equal1~10_combout\ & (!\inst5|U0|LessThan0~1_combout\ & \inst5|U0|PWM_DCmot~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal1~10_combout\,
	datac => \inst5|U0|LessThan0~1_combout\,
	datad => \inst5|U0|PWM_DCmot~1_combout\,
	combout => \inst5|U0|innercounter[2]~1_combout\);

-- Location: FF_X55_Y29_N19
\inst5|U0|innercounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|innercounter~3_combout\,
	ena => \inst5|U0|innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|innercounter\(0));

-- Location: LCCOMB_X55_Y29_N12
\inst5|U0|innercounter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter~2_combout\ = (\inst5|U0|innercounter\(1) & (!\inst5|U0|innercounter\(2) & !\inst5|U0|innercounter\(0))) # (!\inst5|U0|innercounter\(1) & ((\inst5|U0|innercounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|innercounter\(2),
	datac => \inst5|U0|innercounter\(1),
	datad => \inst5|U0|innercounter\(0),
	combout => \inst5|U0|innercounter~2_combout\);

-- Location: FF_X55_Y29_N13
\inst5|U0|innercounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|innercounter~2_combout\,
	ena => \inst5|U0|innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|innercounter\(1));

-- Location: LCCOMB_X55_Y29_N10
\inst5|U0|innercounter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|innercounter~0_combout\ = (\inst5|U0|innercounter\(1) & (!\inst5|U0|innercounter\(2) & \inst5|U0|innercounter\(0))) # (!\inst5|U0|innercounter\(1) & (\inst5|U0|innercounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|innercounter\(1),
	datac => \inst5|U0|innercounter\(2),
	datad => \inst5|U0|innercounter\(0),
	combout => \inst5|U0|innercounter~0_combout\);

-- Location: FF_X55_Y29_N11
\inst5|U0|innercounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|innercounter~0_combout\,
	ena => \inst5|U0|innercounter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|innercounter\(2));

-- Location: LCCOMB_X55_Y21_N0
\inst1|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~7_combout\ = (!\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & \inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(1),
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~7_combout\);

-- Location: LCCOMB_X55_Y21_N18
\inst1|r_RX_Byte[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[5]~6_combout\ = (\inst1|Decoder0~7_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~7_combout\ & ((\inst1|r_RX_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(5),
	datad => \inst1|Decoder0~7_combout\,
	combout => \inst1|r_RX_Byte[5]~6_combout\);

-- Location: FF_X55_Y21_N19
\inst1|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(5));

-- Location: LCCOMB_X55_Y21_N30
\inst1|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~8_combout\ = (!\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(1),
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~8_combout\);

-- Location: LCCOMB_X55_Y21_N8
\inst1|r_RX_Byte[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[4]~7_combout\ = (\inst1|Decoder0~8_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~8_combout\ & ((\inst1|r_RX_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst1|Decoder0~8_combout\,
	combout => \inst1|r_RX_Byte[4]~7_combout\);

-- Location: FF_X55_Y21_N9
\inst1|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(4));

-- Location: LCCOMB_X55_Y29_N8
\inst5|U0|PWM_DCmot~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~2_combout\ = (\inst1|r_RX_Byte\(5) & (((!\inst5|U0|innercounter\(0) & \inst1|r_RX_Byte\(4))) # (!\inst5|U0|innercounter\(1)))) # (!\inst1|r_RX_Byte\(5) & (!\inst5|U0|innercounter\(0) & (\inst1|r_RX_Byte\(4) & 
-- !\inst5|U0|innercounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_RX_Byte\(5),
	datab => \inst5|U0|innercounter\(0),
	datac => \inst1|r_RX_Byte\(4),
	datad => \inst5|U0|innercounter\(1),
	combout => \inst5|U0|PWM_DCmot~2_combout\);

-- Location: LCCOMB_X55_Y21_N22
\inst1|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~6_combout\ = (\inst1|r_Bit_Index\(1) & (\inst1|r_Bit_Index\(2) & (\inst1|Decoder0~0_combout\ & !\inst1|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|r_Bit_Index\(1),
	datab => \inst1|r_Bit_Index\(2),
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|r_Bit_Index\(0),
	combout => \inst1|Decoder0~6_combout\);

-- Location: LCCOMB_X55_Y21_N16
\inst1|r_RX_Byte[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|r_RX_Byte[6]~5_combout\ = (\inst1|Decoder0~6_combout\ & (\inst1|r_RX_Data~q\)) # (!\inst1|Decoder0~6_combout\ & ((\inst1|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|r_RX_Data~q\,
	datac => \inst1|r_RX_Byte\(6),
	datad => \inst1|Decoder0~6_combout\,
	combout => \inst1|r_RX_Byte[6]~5_combout\);

-- Location: FF_X55_Y21_N17
\inst1|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|r_RX_Byte[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|r_RX_Byte\(6));

-- Location: LCCOMB_X55_Y29_N22
\inst5|U0|PWM_DCmot~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~3_combout\ = (\inst5|U0|innercounter\(2) & (\inst5|U0|PWM_DCmot~2_combout\ & \inst1|r_RX_Byte\(6))) # (!\inst5|U0|innercounter\(2) & ((\inst5|U0|PWM_DCmot~2_combout\) # (\inst1|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|innercounter\(2),
	datab => \inst5|U0|PWM_DCmot~2_combout\,
	datad => \inst1|r_RX_Byte\(6),
	combout => \inst5|U0|PWM_DCmot~3_combout\);

-- Location: LCCOMB_X55_Y29_N28
\inst5|U0|PWM_DCmot~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~4_combout\ = (\inst5|U0|PWM_DCmot~1_combout\ & ((\inst5|U0|Equal1~10_combout\ & ((\inst5|U0|PWM_DCmot~3_combout\))) # (!\inst5|U0|Equal1~10_combout\ & (\inst5|U0|PWM_DCmot~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|U0|Equal1~10_combout\,
	datab => \inst5|U0|PWM_DCmot~q\,
	datac => \inst5|U0|PWM_DCmot~3_combout\,
	datad => \inst5|U0|PWM_DCmot~1_combout\,
	combout => \inst5|U0|PWM_DCmot~4_combout\);

-- Location: LCCOMB_X55_Y29_N20
\inst5|U0|PWM_DCmot~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|U0|PWM_DCmot~5_combout\ = (\inst5|U0|PWM_DCmot~4_combout\) # ((\inst5|U0|LessThan0~1_combout\ & \inst5|U0|PWM_DCmot~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|U0|PWM_DCmot~4_combout\,
	datac => \inst5|U0|LessThan0~1_combout\,
	datad => \inst5|U0|PWM_DCmot~0_combout\,
	combout => \inst5|U0|PWM_DCmot~5_combout\);

-- Location: FF_X55_Y29_N21
\inst5|U0|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|U0|PWM_DCmot~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|U0|PWM_DCmot~q\);

-- Location: LCCOMB_X46_Y35_N16
\inst5|PWM_DCmot~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PWM_DCmot~0_combout\ = (\inst1|r_RX_Byte\(7) & \inst5|U0|PWM_DCmot~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|r_RX_Byte\(7),
	datad => \inst5|U0|PWM_DCmot~q\,
	combout => \inst5|PWM_DCmot~0_combout\);

-- Location: FF_X46_Y35_N17
\inst5|PWM_DCmot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|PWM_DCmot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PWM_DCmot~q\);

-- Location: LCCOMB_X46_Y35_N26
\inst5|PWM_DCmot_rev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PWM_DCmot_rev~0_combout\ = (!\inst1|r_RX_Byte\(7) & \inst5|U0|PWM_DCmot~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|r_RX_Byte\(7),
	datad => \inst5|U0|PWM_DCmot~q\,
	combout => \inst5|PWM_DCmot_rev~0_combout\);

-- Location: FF_X46_Y35_N27
\inst5|PWM_DCmot_rev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|PWM_DCmot_rev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PWM_DCmot_rev~q\);

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


