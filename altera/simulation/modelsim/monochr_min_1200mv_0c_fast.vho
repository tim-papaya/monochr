-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "05/08/2020 17:17:46"

-- 
-- Device: Altera EP4CE10F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	monochr IS
    PORT (
	ccd_data : IN std_logic_vector(10 DOWNTO 0);
	CLK : IN std_logic;
	clk_ccd : BUFFER std_logic;
	rog_ccd : BUFFER std_logic;
	SHUT : BUFFER std_logic;
	clk_adc : BUFFER std_logic;
	KEY_START : IN std_logic;
	CLK_USB : IN std_logic;
	TXE_USB : IN std_logic;
	DATA_USB : BUFFER std_logic_vector(7 DOWNTO 0);
	OE_USB : BUFFER std_logic;
	WR_USB : BUFFER std_logic
	);
END monochr;

-- Design Ports Information
-- ccd_data[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ccd	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rog_ccd	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHUT	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_adc	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_START	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TXE_USB	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_USB[7]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE_USB	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_USB	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_USB	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF monochr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ccd_data : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_clk_ccd : std_logic;
SIGNAL ww_rog_ccd : std_logic;
SIGNAL ww_SHUT : std_logic;
SIGNAL ww_clk_adc : std_logic;
SIGNAL ww_KEY_START : std_logic;
SIGNAL ww_CLK_USB : std_logic;
SIGNAL ww_TXE_USB : std_logic;
SIGNAL ww_DATA_USB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OE_USB : std_logic;
SIGNAL ww_WR_USB : std_logic;
SIGNAL \COMP_CCD|clk_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ccd_data[0]~input_o\ : std_logic;
SIGNAL \ccd_data[1]~input_o\ : std_logic;
SIGNAL \ccd_data[2]~input_o\ : std_logic;
SIGNAL \KEY_START~input_o\ : std_logic;
SIGNAL \TXE_USB~input_o\ : std_logic;
SIGNAL \clk_ccd~output_o\ : std_logic;
SIGNAL \rog_ccd~output_o\ : std_logic;
SIGNAL \SHUT~output_o\ : std_logic;
SIGNAL \clk_adc~output_o\ : std_logic;
SIGNAL \DATA_USB[0]~output_o\ : std_logic;
SIGNAL \DATA_USB[1]~output_o\ : std_logic;
SIGNAL \DATA_USB[2]~output_o\ : std_logic;
SIGNAL \DATA_USB[3]~output_o\ : std_logic;
SIGNAL \DATA_USB[4]~output_o\ : std_logic;
SIGNAL \DATA_USB[5]~output_o\ : std_logic;
SIGNAL \DATA_USB[6]~output_o\ : std_logic;
SIGNAL \DATA_USB[7]~output_o\ : std_logic;
SIGNAL \OE_USB~output_o\ : std_logic;
SIGNAL \WR_USB~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~1\ : std_logic;
SIGNAL \COMP_CCD|Add0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~3\ : std_logic;
SIGNAL \COMP_CCD|Add0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~5\ : std_logic;
SIGNAL \COMP_CCD|Add0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|count~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~7\ : std_logic;
SIGNAL \COMP_CCD|Add0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~9\ : std_logic;
SIGNAL \COMP_CCD|Add0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~11\ : std_logic;
SIGNAL \COMP_CCD|Add0~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~13\ : std_logic;
SIGNAL \COMP_CCD|Add0~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~15\ : std_logic;
SIGNAL \COMP_CCD|Add0~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~17\ : std_logic;
SIGNAL \COMP_CCD|Add0~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~19\ : std_logic;
SIGNAL \COMP_CCD|Add0~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~21\ : std_logic;
SIGNAL \COMP_CCD|Add0~22_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~23\ : std_logic;
SIGNAL \COMP_CCD|Add0~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~25\ : std_logic;
SIGNAL \COMP_CCD|Add0~26_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~27\ : std_logic;
SIGNAL \COMP_CCD|Add0~28_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~29\ : std_logic;
SIGNAL \COMP_CCD|Add0~30_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~31\ : std_logic;
SIGNAL \COMP_CCD|Add0~32_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~33\ : std_logic;
SIGNAL \COMP_CCD|Add0~34_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~35\ : std_logic;
SIGNAL \COMP_CCD|Add0~36_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~37\ : std_logic;
SIGNAL \COMP_CCD|Add0~38_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~39\ : std_logic;
SIGNAL \COMP_CCD|Add0~40_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~41\ : std_logic;
SIGNAL \COMP_CCD|Add0~42_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~43\ : std_logic;
SIGNAL \COMP_CCD|Add0~44_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~45\ : std_logic;
SIGNAL \COMP_CCD|Add0~46_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~47\ : std_logic;
SIGNAL \COMP_CCD|Add0~48_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~49\ : std_logic;
SIGNAL \COMP_CCD|Add0~50_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~51\ : std_logic;
SIGNAL \COMP_CCD|Add0~52_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~53\ : std_logic;
SIGNAL \COMP_CCD|Add0~54_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~55\ : std_logic;
SIGNAL \COMP_CCD|Add0~56_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~57\ : std_logic;
SIGNAL \COMP_CCD|Add0~58_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~59\ : std_logic;
SIGNAL \COMP_CCD|Add0~60_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~61\ : std_logic;
SIGNAL \COMP_CCD|Add0~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_div~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_div~q\ : std_logic;
SIGNAL \COMP_CCD|clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[0]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[0]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~1\ : std_logic;
SIGNAL \COMP_CCD|Add1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[1]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[1]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~3\ : std_logic;
SIGNAL \COMP_CCD|Add1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[2]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[2]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~5\ : std_logic;
SIGNAL \COMP_CCD|Add1~7\ : std_logic;
SIGNAL \COMP_CCD|Add1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[4]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[4]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~9\ : std_logic;
SIGNAL \COMP_CCD|Add1~10_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~11\ : std_logic;
SIGNAL \COMP_CCD|Add1~12_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[6]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[6]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~13\ : std_logic;
SIGNAL \COMP_CCD|Add1~14_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[7]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[7]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~15\ : std_logic;
SIGNAL \COMP_CCD|Add1~16_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[8]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[8]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~17\ : std_logic;
SIGNAL \COMP_CCD|Add1~18_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[9]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[9]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~19\ : std_logic;
SIGNAL \COMP_CCD|Add1~20_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[10]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[10]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~21\ : std_logic;
SIGNAL \COMP_CCD|Add1~22_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[11]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[11]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~23\ : std_logic;
SIGNAL \COMP_CCD|Add1~24_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[12]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[12]~q\ : std_logic;
SIGNAL \COMP_CCD|Equal2~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~6_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~25\ : std_logic;
SIGNAL \COMP_CCD|Add1~26_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[13]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[13]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~27\ : std_logic;
SIGNAL \COMP_CCD|Add1~28_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[14]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[14]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~29\ : std_logic;
SIGNAL \COMP_CCD|Add1~30_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[15]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[15]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~31\ : std_logic;
SIGNAL \COMP_CCD|Add1~32_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[16]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[16]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~33\ : std_logic;
SIGNAL \COMP_CCD|Add1~34_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[17]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[17]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~35\ : std_logic;
SIGNAL \COMP_CCD|Add1~36_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[18]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[18]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~37\ : std_logic;
SIGNAL \COMP_CCD|Add1~38_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[19]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[19]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~39\ : std_logic;
SIGNAL \COMP_CCD|Add1~40_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[20]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[20]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~41\ : std_logic;
SIGNAL \COMP_CCD|Add1~42_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[21]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[21]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~43\ : std_logic;
SIGNAL \COMP_CCD|Add1~44_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[22]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[22]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~45\ : std_logic;
SIGNAL \COMP_CCD|Add1~46_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[23]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[23]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~47\ : std_logic;
SIGNAL \COMP_CCD|Add1~48_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[24]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[24]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~49\ : std_logic;
SIGNAL \COMP_CCD|Add1~50_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[25]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[25]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~51\ : std_logic;
SIGNAL \COMP_CCD|Add1~52_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[26]~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[26]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~53\ : std_logic;
SIGNAL \COMP_CCD|Add1~54_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[27]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[27]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~55\ : std_logic;
SIGNAL \COMP_CCD|Add1~56_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[28]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[28]~q\ : std_logic;
SIGNAL \COMP_CCD|Equal2~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~5_combout\ : std_logic;
SIGNAL \COMP_CCD|start_buf~0_combout\ : std_logic;
SIGNAL \COMP_CCD|start_buf~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~57\ : std_logic;
SIGNAL \COMP_CCD|Add1~59\ : std_logic;
SIGNAL \COMP_CCD|Add1~60_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[30]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[30]~q\ : std_logic;
SIGNAL \COMP_CCD|Add1~61\ : std_logic;
SIGNAL \COMP_CCD|Add1~62_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[31]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[31]~q\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[26]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~9_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[26]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[3]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[3]~q\ : std_logic;
SIGNAL \COMP_CCD|Equal2~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~8_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[31]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~58_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[29]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[29]~q\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_buf~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~5_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~5_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~4_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~4_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~q\ : std_logic;
SIGNAL \COMP_CCD|rog_buf~2_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_buf~3_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_buf~q\ : std_logic;
SIGNAL \COMP_CCD|shut_buf~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~3_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_buf~1_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_buf~q\ : std_logic;
SIGNAL \COMP_CCD|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_div~1_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_div~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_div~q\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_buf~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_buf~q\ : std_logic;
SIGNAL \ccd_data[3]~input_o\ : std_logic;
SIGNAL \ccd_data[4]~input_o\ : std_logic;
SIGNAL \ccd_data[5]~input_o\ : std_logic;
SIGNAL \ccd_data[6]~input_o\ : std_logic;
SIGNAL \ccd_data[7]~input_o\ : std_logic;
SIGNAL \ccd_data[8]~input_o\ : std_logic;
SIGNAL \ccd_data[9]~input_o\ : std_logic;
SIGNAL \ccd_data[10]~input_o\ : std_logic;
SIGNAL \CLK_USB~input_o\ : std_logic;
SIGNAL \COMP_CCD|CCD_READY~0_combout\ : std_logic;
SIGNAL \COMP_CCD|CCD_READY~1_combout\ : std_logic;
SIGNAL \COMP_CCD|CCD_READY~q\ : std_logic;
SIGNAL \COMP_USB|compl_buf~q\ : std_logic;
SIGNAL \COMP_USB|WR~0_combout\ : std_logic;
SIGNAL \COMP_USB|WR~q\ : std_logic;
SIGNAL \COMP_CCD|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|ALT_INV_WR~q\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_adc_buf~q\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\ : std_logic;

BEGIN

ww_ccd_data <= ccd_data;
ww_CLK <= CLK;
clk_ccd <= ww_clk_ccd;
rog_ccd <= ww_rog_ccd;
SHUT <= ww_SHUT;
clk_adc <= ww_clk_adc;
ww_KEY_START <= KEY_START;
ww_CLK_USB <= CLK_USB;
ww_TXE_USB <= TXE_USB;
DATA_USB <= ww_DATA_USB;
OE_USB <= ww_OE_USB;
WR_USB <= ww_WR_USB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\COMP_CCD|clk_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \COMP_CCD|clk_div~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\COMP_USB|ALT_INV_WR~q\ <= NOT \COMP_USB|WR~q\;
\COMP_CCD|ALT_INV_clk_adc_buf~q\ <= NOT \COMP_CCD|clk_adc_buf~q\;
\COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\ <= NOT \COMP_CCD|clk_div~clkctrl_outclk\;

-- Location: IOOBUF_X7_Y24_N16
\clk_ccd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|clk_buf~q\,
	devoe => ww_devoe,
	o => \clk_ccd~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\rog_ccd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|rog_buf~q\,
	devoe => ww_devoe,
	o => \rog_ccd~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\SHUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|shut_buf~q\,
	devoe => ww_devoe,
	o => \SHUT~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\clk_adc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|ALT_INV_clk_adc_buf~q\,
	devoe => ww_devoe,
	o => \clk_adc~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\DATA_USB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[3]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\DATA_USB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[4]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\DATA_USB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[5]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\DATA_USB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[6]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\DATA_USB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[7]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DATA_USB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[8]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\DATA_USB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[9]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\DATA_USB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ccd_data[10]~input_o\,
	devoe => ww_devoe,
	o => \DATA_USB[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\OE_USB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OE_USB~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\WR_USB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_WR~q\,
	devoe => ww_devoe,
	o => \WR_USB~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X11_Y14_N0
\COMP_CCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~0_combout\ = \COMP_CCD|count\(0) $ (VCC)
-- \COMP_CCD|Add0~1\ = CARRY(\COMP_CCD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(0),
	datad => VCC,
	combout => \COMP_CCD|Add0~0_combout\,
	cout => \COMP_CCD|Add0~1\);

-- Location: LCCOMB_X10_Y14_N6
\COMP_CCD|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~1_combout\ = (\COMP_CCD|Add0~0_combout\ & !\COMP_CCD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add0~0_combout\,
	datad => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|count~1_combout\);

-- Location: FF_X10_Y14_N7
\COMP_CCD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(0));

-- Location: LCCOMB_X11_Y14_N2
\COMP_CCD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~2_combout\ = (\COMP_CCD|count\(1) & (!\COMP_CCD|Add0~1\)) # (!\COMP_CCD|count\(1) & ((\COMP_CCD|Add0~1\) # (GND)))
-- \COMP_CCD|Add0~3\ = CARRY((!\COMP_CCD|Add0~1\) # (!\COMP_CCD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(1),
	datad => VCC,
	cin => \COMP_CCD|Add0~1\,
	combout => \COMP_CCD|Add0~2_combout\,
	cout => \COMP_CCD|Add0~3\);

-- Location: FF_X11_Y14_N3
\COMP_CCD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(1));

-- Location: LCCOMB_X11_Y14_N4
\COMP_CCD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~4_combout\ = (\COMP_CCD|count\(2) & (\COMP_CCD|Add0~3\ $ (GND))) # (!\COMP_CCD|count\(2) & (!\COMP_CCD|Add0~3\ & VCC))
-- \COMP_CCD|Add0~5\ = CARRY((\COMP_CCD|count\(2) & !\COMP_CCD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(2),
	datad => VCC,
	cin => \COMP_CCD|Add0~3\,
	combout => \COMP_CCD|Add0~4_combout\,
	cout => \COMP_CCD|Add0~5\);

-- Location: FF_X11_Y14_N5
\COMP_CCD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(2));

-- Location: LCCOMB_X11_Y14_N6
\COMP_CCD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~6_combout\ = (\COMP_CCD|count\(3) & (!\COMP_CCD|Add0~5\)) # (!\COMP_CCD|count\(3) & ((\COMP_CCD|Add0~5\) # (GND)))
-- \COMP_CCD|Add0~7\ = CARRY((!\COMP_CCD|Add0~5\) # (!\COMP_CCD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datad => VCC,
	cin => \COMP_CCD|Add0~5\,
	combout => \COMP_CCD|Add0~6_combout\,
	cout => \COMP_CCD|Add0~7\);

-- Location: LCCOMB_X10_Y14_N16
\COMP_CCD|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~0_combout\ = (\COMP_CCD|Add0~6_combout\ & !\COMP_CCD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add0~6_combout\,
	datad => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|count~0_combout\);

-- Location: FF_X10_Y14_N17
\COMP_CCD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(3));

-- Location: LCCOMB_X11_Y14_N8
\COMP_CCD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~8_combout\ = (\COMP_CCD|count\(4) & (\COMP_CCD|Add0~7\ $ (GND))) # (!\COMP_CCD|count\(4) & (!\COMP_CCD|Add0~7\ & VCC))
-- \COMP_CCD|Add0~9\ = CARRY((\COMP_CCD|count\(4) & !\COMP_CCD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(4),
	datad => VCC,
	cin => \COMP_CCD|Add0~7\,
	combout => \COMP_CCD|Add0~8_combout\,
	cout => \COMP_CCD|Add0~9\);

-- Location: FF_X11_Y14_N9
\COMP_CCD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(4));

-- Location: LCCOMB_X11_Y14_N10
\COMP_CCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~10_combout\ = (\COMP_CCD|count\(5) & (!\COMP_CCD|Add0~9\)) # (!\COMP_CCD|count\(5) & ((\COMP_CCD|Add0~9\) # (GND)))
-- \COMP_CCD|Add0~11\ = CARRY((!\COMP_CCD|Add0~9\) # (!\COMP_CCD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datad => VCC,
	cin => \COMP_CCD|Add0~9\,
	combout => \COMP_CCD|Add0~10_combout\,
	cout => \COMP_CCD|Add0~11\);

-- Location: LCCOMB_X10_Y14_N26
\COMP_CCD|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~2_combout\ = (\COMP_CCD|Add0~10_combout\ & !\COMP_CCD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add0~10_combout\,
	datad => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|count~2_combout\);

-- Location: FF_X11_Y14_N7
\COMP_CCD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(5));

-- Location: LCCOMB_X11_Y14_N12
\COMP_CCD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~12_combout\ = (\COMP_CCD|count\(6) & (\COMP_CCD|Add0~11\ $ (GND))) # (!\COMP_CCD|count\(6) & (!\COMP_CCD|Add0~11\ & VCC))
-- \COMP_CCD|Add0~13\ = CARRY((\COMP_CCD|count\(6) & !\COMP_CCD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datad => VCC,
	cin => \COMP_CCD|Add0~11\,
	combout => \COMP_CCD|Add0~12_combout\,
	cout => \COMP_CCD|Add0~13\);

-- Location: FF_X11_Y14_N13
\COMP_CCD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(6));

-- Location: LCCOMB_X11_Y14_N14
\COMP_CCD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~14_combout\ = (\COMP_CCD|count\(7) & (!\COMP_CCD|Add0~13\)) # (!\COMP_CCD|count\(7) & ((\COMP_CCD|Add0~13\) # (GND)))
-- \COMP_CCD|Add0~15\ = CARRY((!\COMP_CCD|Add0~13\) # (!\COMP_CCD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(7),
	datad => VCC,
	cin => \COMP_CCD|Add0~13\,
	combout => \COMP_CCD|Add0~14_combout\,
	cout => \COMP_CCD|Add0~15\);

-- Location: FF_X11_Y14_N15
\COMP_CCD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(7));

-- Location: LCCOMB_X10_Y14_N22
\COMP_CCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~1_combout\ = (\COMP_CCD|count\(5) & (!\COMP_CCD|count\(7) & (!\COMP_CCD|count\(6) & !\COMP_CCD|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(7),
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|count\(4),
	combout => \COMP_CCD|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y14_N16
\COMP_CCD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~16_combout\ = (\COMP_CCD|count\(8) & (\COMP_CCD|Add0~15\ $ (GND))) # (!\COMP_CCD|count\(8) & (!\COMP_CCD|Add0~15\ & VCC))
-- \COMP_CCD|Add0~17\ = CARRY((\COMP_CCD|count\(8) & !\COMP_CCD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(8),
	datad => VCC,
	cin => \COMP_CCD|Add0~15\,
	combout => \COMP_CCD|Add0~16_combout\,
	cout => \COMP_CCD|Add0~17\);

-- Location: FF_X11_Y14_N17
\COMP_CCD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(8));

-- Location: LCCOMB_X11_Y14_N18
\COMP_CCD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~18_combout\ = (\COMP_CCD|count\(9) & (!\COMP_CCD|Add0~17\)) # (!\COMP_CCD|count\(9) & ((\COMP_CCD|Add0~17\) # (GND)))
-- \COMP_CCD|Add0~19\ = CARRY((!\COMP_CCD|Add0~17\) # (!\COMP_CCD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(9),
	datad => VCC,
	cin => \COMP_CCD|Add0~17\,
	combout => \COMP_CCD|Add0~18_combout\,
	cout => \COMP_CCD|Add0~19\);

-- Location: FF_X11_Y14_N19
\COMP_CCD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(9));

-- Location: LCCOMB_X11_Y14_N20
\COMP_CCD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~20_combout\ = (\COMP_CCD|count\(10) & (\COMP_CCD|Add0~19\ $ (GND))) # (!\COMP_CCD|count\(10) & (!\COMP_CCD|Add0~19\ & VCC))
-- \COMP_CCD|Add0~21\ = CARRY((\COMP_CCD|count\(10) & !\COMP_CCD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(10),
	datad => VCC,
	cin => \COMP_CCD|Add0~19\,
	combout => \COMP_CCD|Add0~20_combout\,
	cout => \COMP_CCD|Add0~21\);

-- Location: FF_X11_Y14_N21
\COMP_CCD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(10));

-- Location: LCCOMB_X11_Y14_N22
\COMP_CCD|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~22_combout\ = (\COMP_CCD|count\(11) & (!\COMP_CCD|Add0~21\)) # (!\COMP_CCD|count\(11) & ((\COMP_CCD|Add0~21\) # (GND)))
-- \COMP_CCD|Add0~23\ = CARRY((!\COMP_CCD|Add0~21\) # (!\COMP_CCD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(11),
	datad => VCC,
	cin => \COMP_CCD|Add0~21\,
	combout => \COMP_CCD|Add0~22_combout\,
	cout => \COMP_CCD|Add0~23\);

-- Location: FF_X11_Y14_N23
\COMP_CCD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(11));

-- Location: LCCOMB_X10_Y14_N20
\COMP_CCD|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~2_combout\ = (!\COMP_CCD|count\(9) & (!\COMP_CCD|count\(8) & (!\COMP_CCD|count\(10) & !\COMP_CCD|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(9),
	datab => \COMP_CCD|count\(8),
	datac => \COMP_CCD|count\(10),
	datad => \COMP_CCD|count\(11),
	combout => \COMP_CCD|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y14_N24
\COMP_CCD|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~24_combout\ = (\COMP_CCD|count\(12) & (\COMP_CCD|Add0~23\ $ (GND))) # (!\COMP_CCD|count\(12) & (!\COMP_CCD|Add0~23\ & VCC))
-- \COMP_CCD|Add0~25\ = CARRY((\COMP_CCD|count\(12) & !\COMP_CCD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(12),
	datad => VCC,
	cin => \COMP_CCD|Add0~23\,
	combout => \COMP_CCD|Add0~24_combout\,
	cout => \COMP_CCD|Add0~25\);

-- Location: FF_X11_Y14_N25
\COMP_CCD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(12));

-- Location: LCCOMB_X11_Y14_N26
\COMP_CCD|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~26_combout\ = (\COMP_CCD|count\(13) & (!\COMP_CCD|Add0~25\)) # (!\COMP_CCD|count\(13) & ((\COMP_CCD|Add0~25\) # (GND)))
-- \COMP_CCD|Add0~27\ = CARRY((!\COMP_CCD|Add0~25\) # (!\COMP_CCD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(13),
	datad => VCC,
	cin => \COMP_CCD|Add0~25\,
	combout => \COMP_CCD|Add0~26_combout\,
	cout => \COMP_CCD|Add0~27\);

-- Location: FF_X11_Y14_N27
\COMP_CCD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(13));

-- Location: LCCOMB_X11_Y14_N28
\COMP_CCD|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~28_combout\ = (\COMP_CCD|count\(14) & (\COMP_CCD|Add0~27\ $ (GND))) # (!\COMP_CCD|count\(14) & (!\COMP_CCD|Add0~27\ & VCC))
-- \COMP_CCD|Add0~29\ = CARRY((\COMP_CCD|count\(14) & !\COMP_CCD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(14),
	datad => VCC,
	cin => \COMP_CCD|Add0~27\,
	combout => \COMP_CCD|Add0~28_combout\,
	cout => \COMP_CCD|Add0~29\);

-- Location: FF_X11_Y14_N29
\COMP_CCD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(14));

-- Location: LCCOMB_X11_Y14_N30
\COMP_CCD|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~30_combout\ = (\COMP_CCD|count\(15) & (!\COMP_CCD|Add0~29\)) # (!\COMP_CCD|count\(15) & ((\COMP_CCD|Add0~29\) # (GND)))
-- \COMP_CCD|Add0~31\ = CARRY((!\COMP_CCD|Add0~29\) # (!\COMP_CCD|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(15),
	datad => VCC,
	cin => \COMP_CCD|Add0~29\,
	combout => \COMP_CCD|Add0~30_combout\,
	cout => \COMP_CCD|Add0~31\);

-- Location: FF_X11_Y14_N31
\COMP_CCD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(15));

-- Location: LCCOMB_X10_Y14_N30
\COMP_CCD|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~3_combout\ = (!\COMP_CCD|count\(12) & (!\COMP_CCD|count\(13) & (!\COMP_CCD|count\(15) & !\COMP_CCD|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|count\(13),
	datac => \COMP_CCD|count\(15),
	datad => \COMP_CCD|count\(14),
	combout => \COMP_CCD|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y14_N28
\COMP_CCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~0_combout\ = (!\COMP_CCD|count\(1) & (\COMP_CCD|count\(3) & (!\COMP_CCD|count\(0) & !\COMP_CCD|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datab => \COMP_CCD|count\(3),
	datac => \COMP_CCD|count\(0),
	datad => \COMP_CCD|count\(2),
	combout => \COMP_CCD|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y14_N12
\COMP_CCD|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~4_combout\ = (\COMP_CCD|Equal0~1_combout\ & (\COMP_CCD|Equal0~2_combout\ & (\COMP_CCD|Equal0~3_combout\ & \COMP_CCD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~1_combout\,
	datab => \COMP_CCD|Equal0~2_combout\,
	datac => \COMP_CCD|Equal0~3_combout\,
	datad => \COMP_CCD|Equal0~0_combout\,
	combout => \COMP_CCD|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y13_N0
\COMP_CCD|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~32_combout\ = (\COMP_CCD|count\(16) & (\COMP_CCD|Add0~31\ $ (GND))) # (!\COMP_CCD|count\(16) & (!\COMP_CCD|Add0~31\ & VCC))
-- \COMP_CCD|Add0~33\ = CARRY((\COMP_CCD|count\(16) & !\COMP_CCD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(16),
	datad => VCC,
	cin => \COMP_CCD|Add0~31\,
	combout => \COMP_CCD|Add0~32_combout\,
	cout => \COMP_CCD|Add0~33\);

-- Location: FF_X11_Y13_N1
\COMP_CCD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(16));

-- Location: LCCOMB_X11_Y13_N2
\COMP_CCD|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~34_combout\ = (\COMP_CCD|count\(17) & (!\COMP_CCD|Add0~33\)) # (!\COMP_CCD|count\(17) & ((\COMP_CCD|Add0~33\) # (GND)))
-- \COMP_CCD|Add0~35\ = CARRY((!\COMP_CCD|Add0~33\) # (!\COMP_CCD|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(17),
	datad => VCC,
	cin => \COMP_CCD|Add0~33\,
	combout => \COMP_CCD|Add0~34_combout\,
	cout => \COMP_CCD|Add0~35\);

-- Location: FF_X11_Y13_N3
\COMP_CCD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(17));

-- Location: LCCOMB_X11_Y13_N4
\COMP_CCD|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~36_combout\ = (\COMP_CCD|count\(18) & (\COMP_CCD|Add0~35\ $ (GND))) # (!\COMP_CCD|count\(18) & (!\COMP_CCD|Add0~35\ & VCC))
-- \COMP_CCD|Add0~37\ = CARRY((\COMP_CCD|count\(18) & !\COMP_CCD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(18),
	datad => VCC,
	cin => \COMP_CCD|Add0~35\,
	combout => \COMP_CCD|Add0~36_combout\,
	cout => \COMP_CCD|Add0~37\);

-- Location: FF_X11_Y13_N5
\COMP_CCD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(18));

-- Location: LCCOMB_X11_Y13_N6
\COMP_CCD|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~38_combout\ = (\COMP_CCD|count\(19) & (!\COMP_CCD|Add0~37\)) # (!\COMP_CCD|count\(19) & ((\COMP_CCD|Add0~37\) # (GND)))
-- \COMP_CCD|Add0~39\ = CARRY((!\COMP_CCD|Add0~37\) # (!\COMP_CCD|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(19),
	datad => VCC,
	cin => \COMP_CCD|Add0~37\,
	combout => \COMP_CCD|Add0~38_combout\,
	cout => \COMP_CCD|Add0~39\);

-- Location: FF_X11_Y13_N7
\COMP_CCD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(19));

-- Location: LCCOMB_X11_Y13_N8
\COMP_CCD|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~40_combout\ = (\COMP_CCD|count\(20) & (\COMP_CCD|Add0~39\ $ (GND))) # (!\COMP_CCD|count\(20) & (!\COMP_CCD|Add0~39\ & VCC))
-- \COMP_CCD|Add0~41\ = CARRY((\COMP_CCD|count\(20) & !\COMP_CCD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(20),
	datad => VCC,
	cin => \COMP_CCD|Add0~39\,
	combout => \COMP_CCD|Add0~40_combout\,
	cout => \COMP_CCD|Add0~41\);

-- Location: FF_X11_Y13_N9
\COMP_CCD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(20));

-- Location: LCCOMB_X11_Y13_N10
\COMP_CCD|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~42_combout\ = (\COMP_CCD|count\(21) & (!\COMP_CCD|Add0~41\)) # (!\COMP_CCD|count\(21) & ((\COMP_CCD|Add0~41\) # (GND)))
-- \COMP_CCD|Add0~43\ = CARRY((!\COMP_CCD|Add0~41\) # (!\COMP_CCD|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(21),
	datad => VCC,
	cin => \COMP_CCD|Add0~41\,
	combout => \COMP_CCD|Add0~42_combout\,
	cout => \COMP_CCD|Add0~43\);

-- Location: FF_X11_Y13_N11
\COMP_CCD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(21));

-- Location: LCCOMB_X11_Y13_N12
\COMP_CCD|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~44_combout\ = (\COMP_CCD|count\(22) & (\COMP_CCD|Add0~43\ $ (GND))) # (!\COMP_CCD|count\(22) & (!\COMP_CCD|Add0~43\ & VCC))
-- \COMP_CCD|Add0~45\ = CARRY((\COMP_CCD|count\(22) & !\COMP_CCD|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(22),
	datad => VCC,
	cin => \COMP_CCD|Add0~43\,
	combout => \COMP_CCD|Add0~44_combout\,
	cout => \COMP_CCD|Add0~45\);

-- Location: FF_X11_Y13_N13
\COMP_CCD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(22));

-- Location: LCCOMB_X11_Y13_N14
\COMP_CCD|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~46_combout\ = (\COMP_CCD|count\(23) & (!\COMP_CCD|Add0~45\)) # (!\COMP_CCD|count\(23) & ((\COMP_CCD|Add0~45\) # (GND)))
-- \COMP_CCD|Add0~47\ = CARRY((!\COMP_CCD|Add0~45\) # (!\COMP_CCD|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(23),
	datad => VCC,
	cin => \COMP_CCD|Add0~45\,
	combout => \COMP_CCD|Add0~46_combout\,
	cout => \COMP_CCD|Add0~47\);

-- Location: FF_X11_Y13_N15
\COMP_CCD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(23));

-- Location: LCCOMB_X10_Y13_N18
\COMP_CCD|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~6_combout\ = (!\COMP_CCD|count\(23) & (!\COMP_CCD|count\(22) & (!\COMP_CCD|count\(20) & !\COMP_CCD|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(23),
	datab => \COMP_CCD|count\(22),
	datac => \COMP_CCD|count\(20),
	datad => \COMP_CCD|count\(21),
	combout => \COMP_CCD|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y13_N8
\COMP_CCD|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~5_combout\ = (!\COMP_CCD|count\(18) & (!\COMP_CCD|count\(19) & (!\COMP_CCD|count\(16) & !\COMP_CCD|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(18),
	datab => \COMP_CCD|count\(19),
	datac => \COMP_CCD|count\(16),
	datad => \COMP_CCD|count\(17),
	combout => \COMP_CCD|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y13_N16
\COMP_CCD|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~48_combout\ = (\COMP_CCD|count\(24) & (\COMP_CCD|Add0~47\ $ (GND))) # (!\COMP_CCD|count\(24) & (!\COMP_CCD|Add0~47\ & VCC))
-- \COMP_CCD|Add0~49\ = CARRY((\COMP_CCD|count\(24) & !\COMP_CCD|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(24),
	datad => VCC,
	cin => \COMP_CCD|Add0~47\,
	combout => \COMP_CCD|Add0~48_combout\,
	cout => \COMP_CCD|Add0~49\);

-- Location: FF_X11_Y13_N17
\COMP_CCD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(24));

-- Location: LCCOMB_X11_Y13_N18
\COMP_CCD|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~50_combout\ = (\COMP_CCD|count\(25) & (!\COMP_CCD|Add0~49\)) # (!\COMP_CCD|count\(25) & ((\COMP_CCD|Add0~49\) # (GND)))
-- \COMP_CCD|Add0~51\ = CARRY((!\COMP_CCD|Add0~49\) # (!\COMP_CCD|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(25),
	datad => VCC,
	cin => \COMP_CCD|Add0~49\,
	combout => \COMP_CCD|Add0~50_combout\,
	cout => \COMP_CCD|Add0~51\);

-- Location: FF_X11_Y13_N19
\COMP_CCD|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(25));

-- Location: LCCOMB_X11_Y13_N20
\COMP_CCD|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~52_combout\ = (\COMP_CCD|count\(26) & (\COMP_CCD|Add0~51\ $ (GND))) # (!\COMP_CCD|count\(26) & (!\COMP_CCD|Add0~51\ & VCC))
-- \COMP_CCD|Add0~53\ = CARRY((\COMP_CCD|count\(26) & !\COMP_CCD|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(26),
	datad => VCC,
	cin => \COMP_CCD|Add0~51\,
	combout => \COMP_CCD|Add0~52_combout\,
	cout => \COMP_CCD|Add0~53\);

-- Location: FF_X11_Y13_N21
\COMP_CCD|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(26));

-- Location: LCCOMB_X11_Y13_N22
\COMP_CCD|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~54_combout\ = (\COMP_CCD|count\(27) & (!\COMP_CCD|Add0~53\)) # (!\COMP_CCD|count\(27) & ((\COMP_CCD|Add0~53\) # (GND)))
-- \COMP_CCD|Add0~55\ = CARRY((!\COMP_CCD|Add0~53\) # (!\COMP_CCD|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(27),
	datad => VCC,
	cin => \COMP_CCD|Add0~53\,
	combout => \COMP_CCD|Add0~54_combout\,
	cout => \COMP_CCD|Add0~55\);

-- Location: FF_X11_Y13_N23
\COMP_CCD|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(27));

-- Location: LCCOMB_X10_Y13_N12
\COMP_CCD|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~7_combout\ = (!\COMP_CCD|count\(26) & !\COMP_CCD|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(26),
	datad => \COMP_CCD|count\(27),
	combout => \COMP_CCD|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y13_N24
\COMP_CCD|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~56_combout\ = (\COMP_CCD|count\(28) & (\COMP_CCD|Add0~55\ $ (GND))) # (!\COMP_CCD|count\(28) & (!\COMP_CCD|Add0~55\ & VCC))
-- \COMP_CCD|Add0~57\ = CARRY((\COMP_CCD|count\(28) & !\COMP_CCD|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(28),
	datad => VCC,
	cin => \COMP_CCD|Add0~55\,
	combout => \COMP_CCD|Add0~56_combout\,
	cout => \COMP_CCD|Add0~57\);

-- Location: FF_X11_Y13_N25
\COMP_CCD|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(28));

-- Location: LCCOMB_X11_Y13_N26
\COMP_CCD|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~58_combout\ = (\COMP_CCD|count\(29) & (!\COMP_CCD|Add0~57\)) # (!\COMP_CCD|count\(29) & ((\COMP_CCD|Add0~57\) # (GND)))
-- \COMP_CCD|Add0~59\ = CARRY((!\COMP_CCD|Add0~57\) # (!\COMP_CCD|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(29),
	datad => VCC,
	cin => \COMP_CCD|Add0~57\,
	combout => \COMP_CCD|Add0~58_combout\,
	cout => \COMP_CCD|Add0~59\);

-- Location: FF_X11_Y13_N27
\COMP_CCD|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(29));

-- Location: LCCOMB_X11_Y13_N28
\COMP_CCD|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~60_combout\ = (\COMP_CCD|count\(30) & (\COMP_CCD|Add0~59\ $ (GND))) # (!\COMP_CCD|count\(30) & (!\COMP_CCD|Add0~59\ & VCC))
-- \COMP_CCD|Add0~61\ = CARRY((\COMP_CCD|count\(30) & !\COMP_CCD|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(30),
	datad => VCC,
	cin => \COMP_CCD|Add0~59\,
	combout => \COMP_CCD|Add0~60_combout\,
	cout => \COMP_CCD|Add0~61\);

-- Location: FF_X11_Y13_N29
\COMP_CCD|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(30));

-- Location: LCCOMB_X11_Y13_N30
\COMP_CCD|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~62_combout\ = \COMP_CCD|count\(31) $ (\COMP_CCD|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	cin => \COMP_CCD|Add0~61\,
	combout => \COMP_CCD|Add0~62_combout\);

-- Location: FF_X11_Y13_N31
\COMP_CCD|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(31));

-- Location: LCCOMB_X10_Y13_N30
\COMP_CCD|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~8_combout\ = (!\COMP_CCD|count\(31) & (!\COMP_CCD|count\(29) & (!\COMP_CCD|count\(28) & !\COMP_CCD|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count\(29),
	datac => \COMP_CCD|count\(28),
	datad => \COMP_CCD|count\(30),
	combout => \COMP_CCD|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y13_N28
\COMP_CCD|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~9_combout\ = (\COMP_CCD|Equal0~7_combout\ & (!\COMP_CCD|count\(25) & (\COMP_CCD|Equal0~8_combout\ & !\COMP_CCD|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~7_combout\,
	datab => \COMP_CCD|count\(25),
	datac => \COMP_CCD|Equal0~8_combout\,
	datad => \COMP_CCD|count\(24),
	combout => \COMP_CCD|Equal0~9_combout\);

-- Location: LCCOMB_X10_Y13_N10
\COMP_CCD|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~10_combout\ = (\COMP_CCD|Equal0~4_combout\ & (\COMP_CCD|Equal0~6_combout\ & (\COMP_CCD|Equal0~5_combout\ & \COMP_CCD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~4_combout\,
	datab => \COMP_CCD|Equal0~6_combout\,
	datac => \COMP_CCD|Equal0~5_combout\,
	datad => \COMP_CCD|Equal0~9_combout\,
	combout => \COMP_CCD|Equal0~10_combout\);

-- Location: LCCOMB_X12_Y13_N30
\COMP_CCD|clk_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_div~0_combout\ = \COMP_CCD|Equal0~10_combout\ $ (\COMP_CCD|clk_div~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal0~10_combout\,
	datac => \COMP_CCD|clk_div~q\,
	combout => \COMP_CCD|clk_div~0_combout\);

-- Location: LCCOMB_X12_Y13_N4
\COMP_CCD|clk_div~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_div~feeder_combout\ = \COMP_CCD|clk_div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|clk_div~0_combout\,
	combout => \COMP_CCD|clk_div~feeder_combout\);

-- Location: FF_X12_Y13_N5
\COMP_CCD|clk_div\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|clk_div~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_div~q\);

-- Location: CLKCTRL_G1
\COMP_CCD|clk_div~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \COMP_CCD|clk_div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \COMP_CCD|clk_div~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y19_N0
\COMP_CCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~0_combout\ = \COMP_CCD|process_2:count[0]~q\ $ (GND)
-- \COMP_CCD|Add1~1\ = CARRY(!\COMP_CCD|process_2:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[0]~q\,
	datad => VCC,
	combout => \COMP_CCD|Add1~0_combout\,
	cout => \COMP_CCD|Add1~1\);

-- Location: LCCOMB_X18_Y19_N14
\COMP_CCD|process_2:count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[0]~0_combout\ = (\COMP_CCD|process_2:count[26]~1_combout\ & (\COMP_CCD|process_2:count[0]~q\ & ((!\COMP_CCD|process_2:count[31]~0_combout\) # (!\COMP_CCD|Add1~0_combout\)))) # (!\COMP_CCD|process_2:count[26]~1_combout\ & 
-- (((!\COMP_CCD|process_2:count[31]~0_combout\)) # (!\COMP_CCD|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[26]~1_combout\,
	datab => \COMP_CCD|Add1~0_combout\,
	datac => \COMP_CCD|process_2:count[0]~q\,
	datad => \COMP_CCD|process_2:count[31]~0_combout\,
	combout => \COMP_CCD|process_2:count[0]~0_combout\);

-- Location: FF_X18_Y19_N15
\COMP_CCD|process_2:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[0]~q\);

-- Location: LCCOMB_X19_Y19_N2
\COMP_CCD|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~2_combout\ = (\COMP_CCD|process_2:count[1]~q\ & ((\COMP_CCD|Add1~1\) # (GND))) # (!\COMP_CCD|process_2:count[1]~q\ & (!\COMP_CCD|Add1~1\))
-- \COMP_CCD|Add1~3\ = CARRY((\COMP_CCD|process_2:count[1]~q\) # (!\COMP_CCD|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[1]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~1\,
	combout => \COMP_CCD|Add1~2_combout\,
	cout => \COMP_CCD|Add1~3\);

-- Location: LCCOMB_X18_Y19_N24
\COMP_CCD|process_2:count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[1]~0_combout\ = (\COMP_CCD|process_2:count[26]~1_combout\ & (\COMP_CCD|process_2:count[1]~q\ & ((!\COMP_CCD|process_2:count[31]~0_combout\) # (!\COMP_CCD|Add1~2_combout\)))) # (!\COMP_CCD|process_2:count[26]~1_combout\ & 
-- (((!\COMP_CCD|process_2:count[31]~0_combout\)) # (!\COMP_CCD|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[26]~1_combout\,
	datab => \COMP_CCD|Add1~2_combout\,
	datac => \COMP_CCD|process_2:count[1]~q\,
	datad => \COMP_CCD|process_2:count[31]~0_combout\,
	combout => \COMP_CCD|process_2:count[1]~0_combout\);

-- Location: FF_X18_Y19_N25
\COMP_CCD|process_2:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[1]~q\);

-- Location: LCCOMB_X19_Y19_N4
\COMP_CCD|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~4_combout\ = (\COMP_CCD|process_2:count[2]~q\ & (\COMP_CCD|Add1~3\ $ (GND))) # (!\COMP_CCD|process_2:count[2]~q\ & (!\COMP_CCD|Add1~3\ & VCC))
-- \COMP_CCD|Add1~5\ = CARRY((\COMP_CCD|process_2:count[2]~q\ & !\COMP_CCD|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[2]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~3\,
	combout => \COMP_CCD|Add1~4_combout\,
	cout => \COMP_CCD|Add1~5\);

-- Location: LCCOMB_X19_Y20_N0
\COMP_CCD|process_2:count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[2]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~4_combout\) # ((\COMP_CCD|process_2:count[2]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[2]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~4_combout\,
	datac => \COMP_CCD|process_2:count[2]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[2]~0_combout\);

-- Location: FF_X19_Y20_N1
\COMP_CCD|process_2:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[2]~q\);

-- Location: LCCOMB_X19_Y19_N6
\COMP_CCD|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~6_combout\ = (\COMP_CCD|process_2:count[3]~q\ & ((\COMP_CCD|Add1~5\) # (GND))) # (!\COMP_CCD|process_2:count[3]~q\ & (!\COMP_CCD|Add1~5\))
-- \COMP_CCD|Add1~7\ = CARRY((\COMP_CCD|process_2:count[3]~q\) # (!\COMP_CCD|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[3]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~5\,
	combout => \COMP_CCD|Add1~6_combout\,
	cout => \COMP_CCD|Add1~7\);

-- Location: LCCOMB_X19_Y19_N8
\COMP_CCD|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~8_combout\ = (\COMP_CCD|process_2:count[4]~q\ & (!\COMP_CCD|Add1~7\ & VCC)) # (!\COMP_CCD|process_2:count[4]~q\ & (\COMP_CCD|Add1~7\ $ (GND)))
-- \COMP_CCD|Add1~9\ = CARRY((!\COMP_CCD|process_2:count[4]~q\ & !\COMP_CCD|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[4]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~7\,
	combout => \COMP_CCD|Add1~8_combout\,
	cout => \COMP_CCD|Add1~9\);

-- Location: LCCOMB_X19_Y21_N22
\COMP_CCD|process_2:count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[4]~0_combout\ = (\COMP_CCD|Add1~8_combout\ & (!\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|process_2:count[4]~q\) # (!\COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~8_combout\ & 
-- (((\COMP_CCD|process_2:count[4]~q\) # (!\COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~8_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[4]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[4]~0_combout\);

-- Location: FF_X19_Y21_N23
\COMP_CCD|process_2:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[4]~q\);

-- Location: LCCOMB_X19_Y19_N10
\COMP_CCD|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~10_combout\ = (\COMP_CCD|process_2:count[5]~q\ & (!\COMP_CCD|Add1~9\)) # (!\COMP_CCD|process_2:count[5]~q\ & ((\COMP_CCD|Add1~9\) # (GND)))
-- \COMP_CCD|Add1~11\ = CARRY((!\COMP_CCD|Add1~9\) # (!\COMP_CCD|process_2:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~9\,
	combout => \COMP_CCD|Add1~10_combout\,
	cout => \COMP_CCD|Add1~11\);

-- Location: LCCOMB_X19_Y21_N8
\COMP_CCD|process_2:count[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~0_combout\ = (\COMP_CCD|Add1~10_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[26]~1_combout\ & \COMP_CCD|process_2:count[5]~q\)))) # (!\COMP_CCD|Add1~10_combout\ & 
-- (\COMP_CCD|process_2:count[26]~1_combout\ & (\COMP_CCD|process_2:count[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~10_combout\,
	datab => \COMP_CCD|process_2:count[26]~1_combout\,
	datac => \COMP_CCD|process_2:count[5]~q\,
	datad => \COMP_CCD|process_2:count[31]~0_combout\,
	combout => \COMP_CCD|process_2:count[5]~0_combout\);

-- Location: FF_X19_Y21_N9
\COMP_CCD|process_2:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[5]~q\);

-- Location: LCCOMB_X19_Y19_N12
\COMP_CCD|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~12_combout\ = (\COMP_CCD|process_2:count[6]~q\ & (!\COMP_CCD|Add1~11\ & VCC)) # (!\COMP_CCD|process_2:count[6]~q\ & (\COMP_CCD|Add1~11\ $ (GND)))
-- \COMP_CCD|Add1~13\ = CARRY((!\COMP_CCD|process_2:count[6]~q\ & !\COMP_CCD|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[6]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~11\,
	combout => \COMP_CCD|Add1~12_combout\,
	cout => \COMP_CCD|Add1~13\);

-- Location: LCCOMB_X18_Y19_N26
\COMP_CCD|process_2:count[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[6]~0_combout\ = (\COMP_CCD|process_2:count[26]~1_combout\ & (\COMP_CCD|process_2:count[6]~q\ & ((!\COMP_CCD|process_2:count[31]~0_combout\) # (!\COMP_CCD|Add1~12_combout\)))) # (!\COMP_CCD|process_2:count[26]~1_combout\ & 
-- (((!\COMP_CCD|process_2:count[31]~0_combout\)) # (!\COMP_CCD|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[26]~1_combout\,
	datab => \COMP_CCD|Add1~12_combout\,
	datac => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|process_2:count[31]~0_combout\,
	combout => \COMP_CCD|process_2:count[6]~0_combout\);

-- Location: FF_X18_Y19_N27
\COMP_CCD|process_2:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[6]~q\);

-- Location: LCCOMB_X19_Y19_N14
\COMP_CCD|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~14_combout\ = (\COMP_CCD|process_2:count[7]~q\ & (!\COMP_CCD|Add1~13\)) # (!\COMP_CCD|process_2:count[7]~q\ & ((\COMP_CCD|Add1~13\) # (GND)))
-- \COMP_CCD|Add1~15\ = CARRY((!\COMP_CCD|Add1~13\) # (!\COMP_CCD|process_2:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~13\,
	combout => \COMP_CCD|Add1~14_combout\,
	cout => \COMP_CCD|Add1~15\);

-- Location: LCCOMB_X19_Y21_N6
\COMP_CCD|process_2:count[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[7]~0_combout\ = (\COMP_CCD|Add1~14_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[7]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~14_combout\ & 
-- (((\COMP_CCD|process_2:count[7]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~14_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[7]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[7]~0_combout\);

-- Location: FF_X19_Y21_N7
\COMP_CCD|process_2:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[7]~q\);

-- Location: LCCOMB_X19_Y19_N16
\COMP_CCD|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~16_combout\ = (\COMP_CCD|process_2:count[8]~q\ & (\COMP_CCD|Add1~15\ $ (GND))) # (!\COMP_CCD|process_2:count[8]~q\ & (!\COMP_CCD|Add1~15\ & VCC))
-- \COMP_CCD|Add1~17\ = CARRY((\COMP_CCD|process_2:count[8]~q\ & !\COMP_CCD|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[8]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~15\,
	combout => \COMP_CCD|Add1~16_combout\,
	cout => \COMP_CCD|Add1~17\);

-- Location: LCCOMB_X18_Y19_N12
\COMP_CCD|process_2:count[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[8]~0_combout\ = (\COMP_CCD|process_2:count[26]~1_combout\ & ((\COMP_CCD|process_2:count[8]~q\) # ((\COMP_CCD|Add1~16_combout\ & \COMP_CCD|process_2:count[31]~0_combout\)))) # (!\COMP_CCD|process_2:count[26]~1_combout\ & 
-- (\COMP_CCD|Add1~16_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[26]~1_combout\,
	datab => \COMP_CCD|Add1~16_combout\,
	datac => \COMP_CCD|process_2:count[8]~q\,
	datad => \COMP_CCD|process_2:count[31]~0_combout\,
	combout => \COMP_CCD|process_2:count[8]~0_combout\);

-- Location: FF_X18_Y19_N13
\COMP_CCD|process_2:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[8]~q\);

-- Location: LCCOMB_X19_Y19_N18
\COMP_CCD|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~18_combout\ = (\COMP_CCD|process_2:count[9]~q\ & (!\COMP_CCD|Add1~17\)) # (!\COMP_CCD|process_2:count[9]~q\ & ((\COMP_CCD|Add1~17\) # (GND)))
-- \COMP_CCD|Add1~19\ = CARRY((!\COMP_CCD|Add1~17\) # (!\COMP_CCD|process_2:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[9]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~17\,
	combout => \COMP_CCD|Add1~18_combout\,
	cout => \COMP_CCD|Add1~19\);

-- Location: LCCOMB_X19_Y21_N18
\COMP_CCD|process_2:count[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[9]~0_combout\ = (\COMP_CCD|Add1~18_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[9]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~18_combout\ & 
-- (((\COMP_CCD|process_2:count[9]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~18_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[9]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[9]~0_combout\);

-- Location: FF_X19_Y21_N19
\COMP_CCD|process_2:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[9]~q\);

-- Location: LCCOMB_X19_Y19_N20
\COMP_CCD|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~20_combout\ = (\COMP_CCD|process_2:count[10]~q\ & (\COMP_CCD|Add1~19\ $ (GND))) # (!\COMP_CCD|process_2:count[10]~q\ & (!\COMP_CCD|Add1~19\ & VCC))
-- \COMP_CCD|Add1~21\ = CARRY((\COMP_CCD|process_2:count[10]~q\ & !\COMP_CCD|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[10]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~19\,
	combout => \COMP_CCD|Add1~20_combout\,
	cout => \COMP_CCD|Add1~21\);

-- Location: LCCOMB_X18_Y18_N12
\COMP_CCD|process_2:count[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[10]~0_combout\ = (\COMP_CCD|Add1~20_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[10]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~20_combout\ & 
-- (((\COMP_CCD|process_2:count[10]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~20_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[10]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[10]~0_combout\);

-- Location: FF_X18_Y18_N13
\COMP_CCD|process_2:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[10]~q\);

-- Location: LCCOMB_X19_Y19_N22
\COMP_CCD|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~22_combout\ = (\COMP_CCD|process_2:count[11]~q\ & (!\COMP_CCD|Add1~21\)) # (!\COMP_CCD|process_2:count[11]~q\ & ((\COMP_CCD|Add1~21\) # (GND)))
-- \COMP_CCD|Add1~23\ = CARRY((!\COMP_CCD|Add1~21\) # (!\COMP_CCD|process_2:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[11]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~21\,
	combout => \COMP_CCD|Add1~22_combout\,
	cout => \COMP_CCD|Add1~23\);

-- Location: LCCOMB_X18_Y18_N22
\COMP_CCD|process_2:count[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[11]~0_combout\ = (\COMP_CCD|Add1~22_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[11]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~22_combout\ & 
-- (((\COMP_CCD|process_2:count[11]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~22_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[11]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[11]~0_combout\);

-- Location: FF_X18_Y18_N23
\COMP_CCD|process_2:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[11]~q\);

-- Location: LCCOMB_X19_Y19_N24
\COMP_CCD|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~24_combout\ = (\COMP_CCD|process_2:count[12]~q\ & (!\COMP_CCD|Add1~23\ & VCC)) # (!\COMP_CCD|process_2:count[12]~q\ & (\COMP_CCD|Add1~23\ $ (GND)))
-- \COMP_CCD|Add1~25\ = CARRY((!\COMP_CCD|process_2:count[12]~q\ & !\COMP_CCD|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[12]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~23\,
	combout => \COMP_CCD|Add1~24_combout\,
	cout => \COMP_CCD|Add1~25\);

-- Location: LCCOMB_X19_Y21_N20
\COMP_CCD|process_2:count[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[12]~0_combout\ = (\COMP_CCD|Add1~24_combout\ & (!\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|process_2:count[12]~q\) # (!\COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~24_combout\ & 
-- (((\COMP_CCD|process_2:count[12]~q\) # (!\COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~24_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[12]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[12]~0_combout\);

-- Location: FF_X19_Y21_N21
\COMP_CCD|process_2:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[12]~q\);

-- Location: LCCOMB_X18_Y19_N20
\COMP_CCD|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~7_combout\ = (!\COMP_CCD|process_2:count[6]~q\ & (!\COMP_CCD|process_2:count[1]~q\ & (!\COMP_CCD|process_2:count[0]~q\ & !\COMP_CCD|process_2:count[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[6]~q\,
	datab => \COMP_CCD|process_2:count[1]~q\,
	datac => \COMP_CCD|process_2:count[0]~q\,
	datad => \COMP_CCD|process_2:count[12]~q\,
	combout => \COMP_CCD|Equal2~7_combout\);

-- Location: LCCOMB_X19_Y21_N4
\COMP_CCD|LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~6_combout\ = (!\COMP_CCD|process_2:count[7]~q\ & !\COMP_CCD|process_2:count[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datad => \COMP_CCD|process_2:count[9]~q\,
	combout => \COMP_CCD|LessThan5~6_combout\);

-- Location: LCCOMB_X18_Y21_N8
\COMP_CCD|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~1_combout\ = (!\COMP_CCD|process_2:count[8]~q\ & (!\COMP_CCD|process_2:count[11]~q\ & (!\COMP_CCD|process_2:count[10]~q\ & \COMP_CCD|LessThan5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[8]~q\,
	datab => \COMP_CCD|process_2:count[11]~q\,
	datac => \COMP_CCD|process_2:count[10]~q\,
	datad => \COMP_CCD|LessThan5~6_combout\,
	combout => \COMP_CCD|LessThan7~1_combout\);

-- Location: LCCOMB_X19_Y19_N26
\COMP_CCD|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~26_combout\ = (\COMP_CCD|process_2:count[13]~q\ & (!\COMP_CCD|Add1~25\)) # (!\COMP_CCD|process_2:count[13]~q\ & ((\COMP_CCD|Add1~25\) # (GND)))
-- \COMP_CCD|Add1~27\ = CARRY((!\COMP_CCD|Add1~25\) # (!\COMP_CCD|process_2:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[13]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~25\,
	combout => \COMP_CCD|Add1~26_combout\,
	cout => \COMP_CCD|Add1~27\);

-- Location: LCCOMB_X18_Y18_N30
\COMP_CCD|process_2:count[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[13]~0_combout\ = (\COMP_CCD|Add1~26_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[13]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~26_combout\ & 
-- (((\COMP_CCD|process_2:count[13]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~26_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[13]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[13]~0_combout\);

-- Location: FF_X18_Y18_N31
\COMP_CCD|process_2:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[13]~q\);

-- Location: LCCOMB_X19_Y19_N28
\COMP_CCD|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~28_combout\ = (\COMP_CCD|process_2:count[14]~q\ & (\COMP_CCD|Add1~27\ $ (GND))) # (!\COMP_CCD|process_2:count[14]~q\ & (!\COMP_CCD|Add1~27\ & VCC))
-- \COMP_CCD|Add1~29\ = CARRY((\COMP_CCD|process_2:count[14]~q\ & !\COMP_CCD|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[14]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~27\,
	combout => \COMP_CCD|Add1~28_combout\,
	cout => \COMP_CCD|Add1~29\);

-- Location: LCCOMB_X18_Y18_N4
\COMP_CCD|process_2:count[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[14]~0_combout\ = (\COMP_CCD|Add1~28_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[14]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~28_combout\ & 
-- (((\COMP_CCD|process_2:count[14]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~28_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[14]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[14]~0_combout\);

-- Location: FF_X18_Y18_N5
\COMP_CCD|process_2:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[14]~q\);

-- Location: LCCOMB_X19_Y19_N30
\COMP_CCD|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~30_combout\ = (\COMP_CCD|process_2:count[15]~q\ & (!\COMP_CCD|Add1~29\)) # (!\COMP_CCD|process_2:count[15]~q\ & ((\COMP_CCD|Add1~29\) # (GND)))
-- \COMP_CCD|Add1~31\ = CARRY((!\COMP_CCD|Add1~29\) # (!\COMP_CCD|process_2:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[15]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~29\,
	combout => \COMP_CCD|Add1~30_combout\,
	cout => \COMP_CCD|Add1~31\);

-- Location: LCCOMB_X18_Y18_N18
\COMP_CCD|process_2:count[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[15]~0_combout\ = (\COMP_CCD|Add1~30_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[15]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~30_combout\ & 
-- (((\COMP_CCD|process_2:count[15]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~30_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[15]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[15]~0_combout\);

-- Location: FF_X18_Y18_N19
\COMP_CCD|process_2:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[15]~q\);

-- Location: LCCOMB_X19_Y18_N0
\COMP_CCD|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~32_combout\ = (\COMP_CCD|process_2:count[16]~q\ & (\COMP_CCD|Add1~31\ $ (GND))) # (!\COMP_CCD|process_2:count[16]~q\ & (!\COMP_CCD|Add1~31\ & VCC))
-- \COMP_CCD|Add1~33\ = CARRY((\COMP_CCD|process_2:count[16]~q\ & !\COMP_CCD|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[16]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~31\,
	combout => \COMP_CCD|Add1~32_combout\,
	cout => \COMP_CCD|Add1~33\);

-- Location: LCCOMB_X18_Y18_N28
\COMP_CCD|process_2:count[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[16]~0_combout\ = (\COMP_CCD|Add1~32_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[16]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~32_combout\ & 
-- (((\COMP_CCD|process_2:count[16]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~32_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[16]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[16]~0_combout\);

-- Location: FF_X18_Y18_N29
\COMP_CCD|process_2:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[16]~q\);

-- Location: LCCOMB_X19_Y18_N2
\COMP_CCD|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~34_combout\ = (\COMP_CCD|process_2:count[17]~q\ & (!\COMP_CCD|Add1~33\)) # (!\COMP_CCD|process_2:count[17]~q\ & ((\COMP_CCD|Add1~33\) # (GND)))
-- \COMP_CCD|Add1~35\ = CARRY((!\COMP_CCD|Add1~33\) # (!\COMP_CCD|process_2:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[17]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~33\,
	combout => \COMP_CCD|Add1~34_combout\,
	cout => \COMP_CCD|Add1~35\);

-- Location: LCCOMB_X17_Y18_N28
\COMP_CCD|process_2:count[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[17]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~34_combout\) # ((\COMP_CCD|process_2:count[17]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[17]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~34_combout\,
	datac => \COMP_CCD|process_2:count[17]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[17]~0_combout\);

-- Location: FF_X17_Y18_N29
\COMP_CCD|process_2:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[17]~q\);

-- Location: LCCOMB_X19_Y18_N4
\COMP_CCD|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~36_combout\ = (\COMP_CCD|process_2:count[18]~q\ & (\COMP_CCD|Add1~35\ $ (GND))) # (!\COMP_CCD|process_2:count[18]~q\ & (!\COMP_CCD|Add1~35\ & VCC))
-- \COMP_CCD|Add1~37\ = CARRY((\COMP_CCD|process_2:count[18]~q\ & !\COMP_CCD|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[18]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~35\,
	combout => \COMP_CCD|Add1~36_combout\,
	cout => \COMP_CCD|Add1~37\);

-- Location: LCCOMB_X17_Y18_N22
\COMP_CCD|process_2:count[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[18]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~36_combout\) # ((\COMP_CCD|process_2:count[18]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[18]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~36_combout\,
	datac => \COMP_CCD|process_2:count[18]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[18]~0_combout\);

-- Location: FF_X17_Y18_N23
\COMP_CCD|process_2:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[18]~q\);

-- Location: LCCOMB_X19_Y18_N6
\COMP_CCD|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~38_combout\ = (\COMP_CCD|process_2:count[19]~q\ & (!\COMP_CCD|Add1~37\)) # (!\COMP_CCD|process_2:count[19]~q\ & ((\COMP_CCD|Add1~37\) # (GND)))
-- \COMP_CCD|Add1~39\ = CARRY((!\COMP_CCD|Add1~37\) # (!\COMP_CCD|process_2:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[19]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~37\,
	combout => \COMP_CCD|Add1~38_combout\,
	cout => \COMP_CCD|Add1~39\);

-- Location: LCCOMB_X17_Y18_N24
\COMP_CCD|process_2:count[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[19]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~38_combout\) # ((\COMP_CCD|process_2:count[19]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[19]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~38_combout\,
	datac => \COMP_CCD|process_2:count[19]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[19]~0_combout\);

-- Location: FF_X17_Y18_N25
\COMP_CCD|process_2:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[19]~q\);

-- Location: LCCOMB_X19_Y18_N8
\COMP_CCD|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~40_combout\ = (\COMP_CCD|process_2:count[20]~q\ & (\COMP_CCD|Add1~39\ $ (GND))) # (!\COMP_CCD|process_2:count[20]~q\ & (!\COMP_CCD|Add1~39\ & VCC))
-- \COMP_CCD|Add1~41\ = CARRY((\COMP_CCD|process_2:count[20]~q\ & !\COMP_CCD|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[20]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~39\,
	combout => \COMP_CCD|Add1~40_combout\,
	cout => \COMP_CCD|Add1~41\);

-- Location: LCCOMB_X17_Y18_N26
\COMP_CCD|process_2:count[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[20]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~40_combout\) # ((\COMP_CCD|process_2:count[20]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[20]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~40_combout\,
	datac => \COMP_CCD|process_2:count[20]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[20]~0_combout\);

-- Location: FF_X17_Y18_N27
\COMP_CCD|process_2:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[20]~q\);

-- Location: LCCOMB_X19_Y18_N10
\COMP_CCD|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~42_combout\ = (\COMP_CCD|process_2:count[21]~q\ & (!\COMP_CCD|Add1~41\)) # (!\COMP_CCD|process_2:count[21]~q\ & ((\COMP_CCD|Add1~41\) # (GND)))
-- \COMP_CCD|Add1~43\ = CARRY((!\COMP_CCD|Add1~41\) # (!\COMP_CCD|process_2:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[21]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~41\,
	combout => \COMP_CCD|Add1~42_combout\,
	cout => \COMP_CCD|Add1~43\);

-- Location: LCCOMB_X17_Y18_N14
\COMP_CCD|process_2:count[21]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[21]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~42_combout\) # ((\COMP_CCD|process_2:count[21]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[21]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~42_combout\,
	datac => \COMP_CCD|process_2:count[21]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[21]~0_combout\);

-- Location: FF_X17_Y18_N15
\COMP_CCD|process_2:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[21]~q\);

-- Location: LCCOMB_X19_Y18_N12
\COMP_CCD|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~44_combout\ = (\COMP_CCD|process_2:count[22]~q\ & (\COMP_CCD|Add1~43\ $ (GND))) # (!\COMP_CCD|process_2:count[22]~q\ & (!\COMP_CCD|Add1~43\ & VCC))
-- \COMP_CCD|Add1~45\ = CARRY((\COMP_CCD|process_2:count[22]~q\ & !\COMP_CCD|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[22]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~43\,
	combout => \COMP_CCD|Add1~44_combout\,
	cout => \COMP_CCD|Add1~45\);

-- Location: LCCOMB_X17_Y18_N8
\COMP_CCD|process_2:count[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[22]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~44_combout\) # ((\COMP_CCD|process_2:count[22]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[22]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~44_combout\,
	datac => \COMP_CCD|process_2:count[22]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[22]~0_combout\);

-- Location: FF_X17_Y18_N9
\COMP_CCD|process_2:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[22]~q\);

-- Location: LCCOMB_X19_Y18_N14
\COMP_CCD|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~46_combout\ = (\COMP_CCD|process_2:count[23]~q\ & (!\COMP_CCD|Add1~45\)) # (!\COMP_CCD|process_2:count[23]~q\ & ((\COMP_CCD|Add1~45\) # (GND)))
-- \COMP_CCD|Add1~47\ = CARRY((!\COMP_CCD|Add1~45\) # (!\COMP_CCD|process_2:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[23]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~45\,
	combout => \COMP_CCD|Add1~46_combout\,
	cout => \COMP_CCD|Add1~47\);

-- Location: LCCOMB_X17_Y18_N6
\COMP_CCD|process_2:count[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[23]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~46_combout\) # ((\COMP_CCD|process_2:count[23]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[23]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~46_combout\,
	datac => \COMP_CCD|process_2:count[23]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[23]~0_combout\);

-- Location: FF_X17_Y18_N7
\COMP_CCD|process_2:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[23]~q\);

-- Location: LCCOMB_X19_Y18_N16
\COMP_CCD|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~48_combout\ = (\COMP_CCD|process_2:count[24]~q\ & (\COMP_CCD|Add1~47\ $ (GND))) # (!\COMP_CCD|process_2:count[24]~q\ & (!\COMP_CCD|Add1~47\ & VCC))
-- \COMP_CCD|Add1~49\ = CARRY((\COMP_CCD|process_2:count[24]~q\ & !\COMP_CCD|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[24]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~47\,
	combout => \COMP_CCD|Add1~48_combout\,
	cout => \COMP_CCD|Add1~49\);

-- Location: LCCOMB_X17_Y18_N20
\COMP_CCD|process_2:count[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[24]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~48_combout\) # ((\COMP_CCD|process_2:count[24]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[24]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~48_combout\,
	datac => \COMP_CCD|process_2:count[24]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[24]~0_combout\);

-- Location: FF_X17_Y18_N21
\COMP_CCD|process_2:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[24]~q\);

-- Location: LCCOMB_X19_Y18_N18
\COMP_CCD|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~50_combout\ = (\COMP_CCD|process_2:count[25]~q\ & (!\COMP_CCD|Add1~49\)) # (!\COMP_CCD|process_2:count[25]~q\ & ((\COMP_CCD|Add1~49\) # (GND)))
-- \COMP_CCD|Add1~51\ = CARRY((!\COMP_CCD|Add1~49\) # (!\COMP_CCD|process_2:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[25]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~49\,
	combout => \COMP_CCD|Add1~50_combout\,
	cout => \COMP_CCD|Add1~51\);

-- Location: LCCOMB_X17_Y18_N4
\COMP_CCD|process_2:count[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[25]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~50_combout\) # ((\COMP_CCD|process_2:count[25]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[25]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~50_combout\,
	datac => \COMP_CCD|process_2:count[25]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[25]~0_combout\);

-- Location: FF_X17_Y18_N5
\COMP_CCD|process_2:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[25]~q\);

-- Location: LCCOMB_X19_Y18_N20
\COMP_CCD|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~52_combout\ = (\COMP_CCD|process_2:count[26]~q\ & (\COMP_CCD|Add1~51\ $ (GND))) # (!\COMP_CCD|process_2:count[26]~q\ & (!\COMP_CCD|Add1~51\ & VCC))
-- \COMP_CCD|Add1~53\ = CARRY((\COMP_CCD|process_2:count[26]~q\ & !\COMP_CCD|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[26]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~51\,
	combout => \COMP_CCD|Add1~52_combout\,
	cout => \COMP_CCD|Add1~53\);

-- Location: LCCOMB_X17_Y18_N18
\COMP_CCD|process_2:count[26]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[26]~2_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~52_combout\) # ((\COMP_CCD|process_2:count[26]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[26]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~52_combout\,
	datac => \COMP_CCD|process_2:count[26]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[26]~2_combout\);

-- Location: FF_X17_Y18_N19
\COMP_CCD|process_2:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[26]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[26]~q\);

-- Location: LCCOMB_X19_Y18_N22
\COMP_CCD|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~54_combout\ = (\COMP_CCD|process_2:count[27]~q\ & (!\COMP_CCD|Add1~53\)) # (!\COMP_CCD|process_2:count[27]~q\ & ((\COMP_CCD|Add1~53\) # (GND)))
-- \COMP_CCD|Add1~55\ = CARRY((!\COMP_CCD|Add1~53\) # (!\COMP_CCD|process_2:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[27]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~53\,
	combout => \COMP_CCD|Add1~54_combout\,
	cout => \COMP_CCD|Add1~55\);

-- Location: LCCOMB_X18_Y18_N8
\COMP_CCD|process_2:count[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[27]~0_combout\ = (\COMP_CCD|Add1~54_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[27]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~54_combout\ & 
-- (((\COMP_CCD|process_2:count[27]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~54_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[27]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[27]~0_combout\);

-- Location: FF_X18_Y18_N9
\COMP_CCD|process_2:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[27]~q\);

-- Location: LCCOMB_X19_Y18_N24
\COMP_CCD|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~56_combout\ = (\COMP_CCD|process_2:count[28]~q\ & (\COMP_CCD|Add1~55\ $ (GND))) # (!\COMP_CCD|process_2:count[28]~q\ & (!\COMP_CCD|Add1~55\ & VCC))
-- \COMP_CCD|Add1~57\ = CARRY((\COMP_CCD|process_2:count[28]~q\ & !\COMP_CCD|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[28]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~55\,
	combout => \COMP_CCD|Add1~56_combout\,
	cout => \COMP_CCD|Add1~57\);

-- Location: LCCOMB_X18_Y18_N14
\COMP_CCD|process_2:count[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[28]~0_combout\ = (\COMP_CCD|Add1~56_combout\ & ((\COMP_CCD|process_2:count[31]~0_combout\) # ((\COMP_CCD|process_2:count[28]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|Add1~56_combout\ & 
-- (((\COMP_CCD|process_2:count[28]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~56_combout\,
	datab => \COMP_CCD|process_2:count[31]~0_combout\,
	datac => \COMP_CCD|process_2:count[28]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[28]~0_combout\);

-- Location: FF_X18_Y18_N15
\COMP_CCD|process_2:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[28]~q\);

-- Location: LCCOMB_X17_Y18_N12
\COMP_CCD|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~1_combout\ = (!\COMP_CCD|process_2:count[18]~q\ & (!\COMP_CCD|process_2:count[19]~q\ & (!\COMP_CCD|process_2:count[20]~q\ & !\COMP_CCD|process_2:count[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[18]~q\,
	datab => \COMP_CCD|process_2:count[19]~q\,
	datac => \COMP_CCD|process_2:count[20]~q\,
	datad => \COMP_CCD|process_2:count[17]~q\,
	combout => \COMP_CCD|Equal2~1_combout\);

-- Location: LCCOMB_X17_Y18_N16
\COMP_CCD|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~3_combout\ = (!\COMP_CCD|process_2:count[25]~q\ & !\COMP_CCD|process_2:count[26]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_2:count[25]~q\,
	datad => \COMP_CCD|process_2:count[26]~q\,
	combout => \COMP_CCD|Equal2~3_combout\);

-- Location: LCCOMB_X17_Y18_N30
\COMP_CCD|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~2_combout\ = (!\COMP_CCD|process_2:count[23]~q\ & (!\COMP_CCD|process_2:count[21]~q\ & (!\COMP_CCD|process_2:count[22]~q\ & !\COMP_CCD|process_2:count[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[23]~q\,
	datab => \COMP_CCD|process_2:count[21]~q\,
	datac => \COMP_CCD|process_2:count[22]~q\,
	datad => \COMP_CCD|process_2:count[24]~q\,
	combout => \COMP_CCD|Equal2~2_combout\);

-- Location: LCCOMB_X18_Y18_N26
\COMP_CCD|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~0_combout\ = (!\COMP_CCD|process_2:count[13]~q\ & (!\COMP_CCD|process_2:count[15]~q\ & (!\COMP_CCD|process_2:count[14]~q\ & !\COMP_CCD|process_2:count[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[13]~q\,
	datab => \COMP_CCD|process_2:count[15]~q\,
	datac => \COMP_CCD|process_2:count[14]~q\,
	datad => \COMP_CCD|process_2:count[16]~q\,
	combout => \COMP_CCD|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y18_N10
\COMP_CCD|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~4_combout\ = (\COMP_CCD|Equal2~1_combout\ & (\COMP_CCD|Equal2~3_combout\ & (\COMP_CCD|Equal2~2_combout\ & \COMP_CCD|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~1_combout\,
	datab => \COMP_CCD|Equal2~3_combout\,
	datac => \COMP_CCD|Equal2~2_combout\,
	datad => \COMP_CCD|Equal2~0_combout\,
	combout => \COMP_CCD|Equal2~4_combout\);

-- Location: LCCOMB_X17_Y21_N24
\COMP_CCD|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~3_combout\ = (!\COMP_CCD|process_2:count[27]~q\ & (!\COMP_CCD|process_2:count[28]~q\ & \COMP_CCD|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[27]~q\,
	datac => \COMP_CCD|process_2:count[28]~q\,
	datad => \COMP_CCD|Equal2~4_combout\,
	combout => \COMP_CCD|LessThan3~3_combout\);

-- Location: LCCOMB_X17_Y21_N12
\COMP_CCD|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~5_combout\ = (!\COMP_CCD|process_2:count[5]~q\ & (\COMP_CCD|LessThan7~1_combout\ & \COMP_CCD|LessThan3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~q\,
	datac => \COMP_CCD|LessThan7~1_combout\,
	datad => \COMP_CCD|LessThan3~3_combout\,
	combout => \COMP_CCD|Equal2~5_combout\);

-- Location: LCCOMB_X18_Y20_N0
\COMP_CCD|start_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|start_buf~0_combout\ = \COMP_CCD|start_buf~q\ $ (((\COMP_CCD|Equal2~8_combout\ & (\COMP_CCD|Equal2~7_combout\ & \COMP_CCD|Equal2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~8_combout\,
	datab => \COMP_CCD|Equal2~7_combout\,
	datac => \COMP_CCD|start_buf~q\,
	datad => \COMP_CCD|Equal2~5_combout\,
	combout => \COMP_CCD|start_buf~0_combout\);

-- Location: FF_X18_Y20_N1
\COMP_CCD|start_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|start_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|start_buf~q\);

-- Location: LCCOMB_X19_Y18_N26
\COMP_CCD|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~58_combout\ = (\COMP_CCD|process_2:count[29]~q\ & (!\COMP_CCD|Add1~57\)) # (!\COMP_CCD|process_2:count[29]~q\ & ((\COMP_CCD|Add1~57\) # (GND)))
-- \COMP_CCD|Add1~59\ = CARRY((!\COMP_CCD|Add1~57\) # (!\COMP_CCD|process_2:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~57\,
	combout => \COMP_CCD|Add1~58_combout\,
	cout => \COMP_CCD|Add1~59\);

-- Location: LCCOMB_X19_Y18_N28
\COMP_CCD|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~60_combout\ = (\COMP_CCD|process_2:count[30]~q\ & (\COMP_CCD|Add1~59\ $ (GND))) # (!\COMP_CCD|process_2:count[30]~q\ & (!\COMP_CCD|Add1~59\ & VCC))
-- \COMP_CCD|Add1~61\ = CARRY((\COMP_CCD|process_2:count[30]~q\ & !\COMP_CCD|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[30]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add1~59\,
	combout => \COMP_CCD|Add1~60_combout\,
	cout => \COMP_CCD|Add1~61\);

-- Location: LCCOMB_X19_Y20_N10
\COMP_CCD|process_2:count[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[30]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~60_combout\) # ((\COMP_CCD|process_2:count[30]~q\ & \COMP_CCD|process_2:count[26]~1_combout\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (((\COMP_CCD|process_2:count[30]~q\ & \COMP_CCD|process_2:count[26]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|Add1~60_combout\,
	datac => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|process_2:count[26]~1_combout\,
	combout => \COMP_CCD|process_2:count[30]~0_combout\);

-- Location: FF_X19_Y20_N11
\COMP_CCD|process_2:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[30]~q\);

-- Location: LCCOMB_X19_Y18_N30
\COMP_CCD|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~62_combout\ = \COMP_CCD|Add1~61\ $ (\COMP_CCD|process_2:count[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|process_2:count[31]~q\,
	cin => \COMP_CCD|Add1~61\,
	combout => \COMP_CCD|Add1~62_combout\);

-- Location: LCCOMB_X19_Y20_N30
\COMP_CCD|process_2:count[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[31]~1_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~62_combout\) # ((\COMP_CCD|process_2:count[26]~1_combout\ & \COMP_CCD|process_2:count[31]~q\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (\COMP_CCD|process_2:count[26]~1_combout\ & (\COMP_CCD|process_2:count[31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|process_2:count[26]~1_combout\,
	datac => \COMP_CCD|process_2:count[31]~q\,
	datad => \COMP_CCD|Add1~62_combout\,
	combout => \COMP_CCD|process_2:count[31]~1_combout\);

-- Location: FF_X19_Y20_N31
\COMP_CCD|process_2:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[31]~q\);

-- Location: LCCOMB_X18_Y19_N18
\COMP_CCD|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~2_combout\ = (!\COMP_CCD|process_2:count[2]~q\ & ((\COMP_CCD|process_2:count[1]~q\) # (\COMP_CCD|process_2:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[1]~q\,
	datac => \COMP_CCD|process_2:count[0]~q\,
	datad => \COMP_CCD|process_2:count[2]~q\,
	combout => \COMP_CCD|LessThan1~2_combout\);

-- Location: LCCOMB_X18_Y21_N10
\COMP_CCD|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~2_combout\ = (\COMP_CCD|process_2:count[6]~q\) # ((!\COMP_CCD|process_2:count[5]~q\ & ((\COMP_CCD|process_2:count[3]~q\) # (\COMP_CCD|process_2:count[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[6]~q\,
	datab => \COMP_CCD|process_2:count[3]~q\,
	datac => \COMP_CCD|process_2:count[4]~q\,
	datad => \COMP_CCD|process_2:count[5]~q\,
	combout => \COMP_CCD|LessThan7~2_combout\);

-- Location: LCCOMB_X18_Y21_N26
\COMP_CCD|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~3_combout\ = (\COMP_CCD|LessThan7~1_combout\ & ((\COMP_CCD|LessThan7~2_combout\) # ((!\COMP_CCD|process_2:count[5]~q\ & \COMP_CCD|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[5]~q\,
	datab => \COMP_CCD|LessThan7~1_combout\,
	datac => \COMP_CCD|LessThan1~2_combout\,
	datad => \COMP_CCD|LessThan7~2_combout\,
	combout => \COMP_CCD|LessThan7~3_combout\);

-- Location: LCCOMB_X18_Y21_N0
\COMP_CCD|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~0_combout\ = (!\COMP_CCD|process_2:count[30]~q\ & !\COMP_CCD|process_2:count[29]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|process_2:count[29]~q\,
	combout => \COMP_CCD|LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y21_N6
\COMP_CCD|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~0_combout\ = (\COMP_CCD|LessThan1~0_combout\ & (!\COMP_CCD|process_2:count[27]~q\ & (\COMP_CCD|Equal2~4_combout\ & !\COMP_CCD|process_2:count[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan1~0_combout\,
	datab => \COMP_CCD|process_2:count[27]~q\,
	datac => \COMP_CCD|Equal2~4_combout\,
	datad => \COMP_CCD|process_2:count[28]~q\,
	combout => \COMP_CCD|LessThan7~0_combout\);

-- Location: LCCOMB_X18_Y21_N22
\COMP_CCD|process_2:count[26]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[26]~0_combout\ = (\COMP_CCD|process_2:count[31]~q\) # ((\COMP_CCD|LessThan7~0_combout\ & ((\COMP_CCD|process_2:count[12]~q\) # (\COMP_CCD|LessThan7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|process_2:count[31]~q\,
	datac => \COMP_CCD|LessThan7~3_combout\,
	datad => \COMP_CCD|LessThan7~0_combout\,
	combout => \COMP_CCD|process_2:count[26]~0_combout\);

-- Location: LCCOMB_X18_Y21_N12
\COMP_CCD|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~9_combout\ = (\COMP_CCD|Equal2~8_combout\ & (\COMP_CCD|Equal2~7_combout\ & \COMP_CCD|Equal2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~8_combout\,
	datac => \COMP_CCD|Equal2~7_combout\,
	datad => \COMP_CCD|Equal2~5_combout\,
	combout => \COMP_CCD|Equal2~9_combout\);

-- Location: LCCOMB_X18_Y21_N20
\COMP_CCD|process_2:count[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[26]~1_combout\ = (\COMP_CCD|Equal2~9_combout\ & (\COMP_CCD|start_buf~q\)) # (!\COMP_CCD|Equal2~9_combout\ & ((!\COMP_CCD|process_2:count[26]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|start_buf~q\,
	datac => \COMP_CCD|process_2:count[26]~0_combout\,
	datad => \COMP_CCD|Equal2~9_combout\,
	combout => \COMP_CCD|process_2:count[26]~1_combout\);

-- Location: LCCOMB_X18_Y19_N16
\COMP_CCD|process_2:count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[3]~0_combout\ = (\COMP_CCD|process_2:count[26]~1_combout\ & (\COMP_CCD|process_2:count[3]~q\ & ((!\COMP_CCD|process_2:count[31]~0_combout\) # (!\COMP_CCD|Add1~6_combout\)))) # (!\COMP_CCD|process_2:count[26]~1_combout\ & 
-- (((!\COMP_CCD|process_2:count[31]~0_combout\)) # (!\COMP_CCD|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[26]~1_combout\,
	datab => \COMP_CCD|Add1~6_combout\,
	datac => \COMP_CCD|process_2:count[3]~q\,
	datad => \COMP_CCD|process_2:count[31]~0_combout\,
	combout => \COMP_CCD|process_2:count[3]~0_combout\);

-- Location: FF_X18_Y19_N17
\COMP_CCD|process_2:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[3]~q\);

-- Location: LCCOMB_X19_Y20_N24
\COMP_CCD|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~6_combout\ = (!\COMP_CCD|process_2:count[30]~q\ & (!\COMP_CCD|process_2:count[31]~q\ & !\COMP_CCD|process_2:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[30]~q\,
	datac => \COMP_CCD|process_2:count[31]~q\,
	datad => \COMP_CCD|process_2:count[29]~q\,
	combout => \COMP_CCD|Equal2~6_combout\);

-- Location: LCCOMB_X19_Y20_N2
\COMP_CCD|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~8_combout\ = (!\COMP_CCD|process_2:count[3]~q\ & (!\COMP_CCD|process_2:count[4]~q\ & (!\COMP_CCD|process_2:count[2]~q\ & \COMP_CCD|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[3]~q\,
	datab => \COMP_CCD|process_2:count[4]~q\,
	datac => \COMP_CCD|process_2:count[2]~q\,
	datad => \COMP_CCD|Equal2~6_combout\,
	combout => \COMP_CCD|Equal2~8_combout\);

-- Location: LCCOMB_X18_Y21_N28
\COMP_CCD|process_2:count[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[31]~0_combout\ = (\COMP_CCD|process_2:count[26]~0_combout\ & (((!\COMP_CCD|Equal2~5_combout\) # (!\COMP_CCD|Equal2~7_combout\)) # (!\COMP_CCD|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~8_combout\,
	datab => \COMP_CCD|Equal2~7_combout\,
	datac => \COMP_CCD|process_2:count[26]~0_combout\,
	datad => \COMP_CCD|Equal2~5_combout\,
	combout => \COMP_CCD|process_2:count[31]~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\COMP_CCD|process_2:count[29]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[29]~0_combout\ = (\COMP_CCD|process_2:count[31]~0_combout\ & ((\COMP_CCD|Add1~58_combout\) # ((\COMP_CCD|process_2:count[26]~1_combout\ & \COMP_CCD|process_2:count[29]~q\)))) # (!\COMP_CCD|process_2:count[31]~0_combout\ & 
-- (\COMP_CCD|process_2:count[26]~1_combout\ & (\COMP_CCD|process_2:count[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~0_combout\,
	datab => \COMP_CCD|process_2:count[26]~1_combout\,
	datac => \COMP_CCD|process_2:count[29]~q\,
	datad => \COMP_CCD|Add1~58_combout\,
	combout => \COMP_CCD|process_2:count[29]~0_combout\);

-- Location: FF_X19_Y20_N29
\COMP_CCD|process_2:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[29]~q\);

-- Location: LCCOMB_X18_Y19_N4
\COMP_CCD|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~1_combout\ = (\COMP_CCD|process_2:count[3]~q\ & (\COMP_CCD|process_2:count[6]~q\ & \COMP_CCD|process_2:count[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[3]~q\,
	datac => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|process_2:count[4]~q\,
	combout => \COMP_CCD|LessThan1~1_combout\);

-- Location: LCCOMB_X17_Y21_N30
\COMP_CCD|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~3_combout\ = (\COMP_CCD|process_2:count[12]~q\ & (\COMP_CCD|LessThan1~1_combout\ & (\COMP_CCD|LessThan1~2_combout\ & \COMP_CCD|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|LessThan1~1_combout\,
	datac => \COMP_CCD|LessThan1~2_combout\,
	datad => \COMP_CCD|Equal2~5_combout\,
	combout => \COMP_CCD|LessThan1~3_combout\);

-- Location: LCCOMB_X17_Y21_N22
\COMP_CCD|rog_buf~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_buf~4_combout\ = (!\COMP_CCD|process_2:count[31]~q\ & ((\COMP_CCD|process_2:count[29]~q\) # ((\COMP_CCD|process_2:count[30]~q\) # (!\COMP_CCD|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datab => \COMP_CCD|process_2:count[30]~q\,
	datac => \COMP_CCD|LessThan1~3_combout\,
	datad => \COMP_CCD|process_2:count[31]~q\,
	combout => \COMP_CCD|rog_buf~4_combout\);

-- Location: LCCOMB_X19_Y21_N16
\COMP_CCD|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~1_combout\ = ((\COMP_CCD|process_2:count[4]~q\ & ((\COMP_CCD|process_2:count[3]~q\) # (!\COMP_CCD|process_2:count[2]~q\)))) # (!\COMP_CCD|process_2:count[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[4]~q\,
	datab => \COMP_CCD|process_2:count[2]~q\,
	datac => \COMP_CCD|process_2:count[5]~q\,
	datad => \COMP_CCD|process_2:count[3]~q\,
	combout => \COMP_CCD|LessThan5~1_combout\);

-- Location: LCCOMB_X19_Y21_N10
\COMP_CCD|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~2_combout\ = (!\COMP_CCD|process_2:count[9]~q\ & (\COMP_CCD|process_2:count[6]~q\ & \COMP_CCD|LessThan5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[9]~q\,
	datac => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|LessThan5~1_combout\,
	combout => \COMP_CCD|LessThan5~2_combout\);

-- Location: LCCOMB_X18_Y18_N16
\COMP_CCD|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~0_combout\ = (\COMP_CCD|process_2:count[11]~q\ & \COMP_CCD|process_2:count[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_2:count[11]~q\,
	datad => \COMP_CCD|process_2:count[10]~q\,
	combout => \COMP_CCD|LessThan5~0_combout\);

-- Location: LCCOMB_X18_Y21_N24
\COMP_CCD|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~3_combout\ = ((!\COMP_CCD|process_2:count[9]~q\ & ((!\COMP_CCD|process_2:count[7]~q\) # (!\COMP_CCD|process_2:count[8]~q\)))) # (!\COMP_CCD|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[8]~q\,
	datab => \COMP_CCD|process_2:count[7]~q\,
	datac => \COMP_CCD|process_2:count[9]~q\,
	datad => \COMP_CCD|LessThan5~0_combout\,
	combout => \COMP_CCD|LessThan5~3_combout\);

-- Location: LCCOMB_X17_Y21_N6
\COMP_CCD|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~4_combout\ = (\COMP_CCD|Equal2~4_combout\ & (\COMP_CCD|process_2:count[12]~q\ & ((\COMP_CCD|LessThan5~2_combout\) # (\COMP_CCD|LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~4_combout\,
	datab => \COMP_CCD|process_2:count[12]~q\,
	datac => \COMP_CCD|LessThan5~2_combout\,
	datad => \COMP_CCD|LessThan5~3_combout\,
	combout => \COMP_CCD|LessThan5~4_combout\);

-- Location: LCCOMB_X17_Y21_N4
\COMP_CCD|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~5_combout\ = (!\COMP_CCD|process_2:count[29]~q\ & (!\COMP_CCD|process_2:count[27]~q\ & (!\COMP_CCD|process_2:count[28]~q\ & \COMP_CCD|LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datab => \COMP_CCD|process_2:count[27]~q\,
	datac => \COMP_CCD|process_2:count[28]~q\,
	datad => \COMP_CCD|LessThan5~4_combout\,
	combout => \COMP_CCD|LessThan5~5_combout\);

-- Location: LCCOMB_X17_Y21_N18
\COMP_CCD|clk_buf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_buf~2_combout\ = (\COMP_CCD|LessThan5~5_combout\ & !\COMP_CCD|process_2:count[30]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|LessThan5~5_combout\,
	datad => \COMP_CCD|process_2:count[30]~q\,
	combout => \COMP_CCD|clk_buf~2_combout\);

-- Location: LCCOMB_X19_Y21_N28
\COMP_CCD|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~1_combout\ = (((!\COMP_CCD|process_2:count[5]~q\ & \COMP_CCD|process_2:count[6]~q\)) # (!\COMP_CCD|process_2:count[8]~q\)) # (!\COMP_CCD|process_2:count[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datab => \COMP_CCD|process_2:count[5]~q\,
	datac => \COMP_CCD|process_2:count[8]~q\,
	datad => \COMP_CCD|process_2:count[6]~q\,
	combout => \COMP_CCD|LessThan3~1_combout\);

-- Location: LCCOMB_X18_Y19_N6
\COMP_CCD|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~0_combout\ = (\COMP_CCD|LessThan1~1_combout\ & ((\COMP_CCD|process_2:count[0]~q\) # ((\COMP_CCD|process_2:count[1]~q\) # (!\COMP_CCD|process_2:count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[0]~q\,
	datab => \COMP_CCD|process_2:count[1]~q\,
	datac => \COMP_CCD|LessThan1~1_combout\,
	datad => \COMP_CCD|process_2:count[2]~q\,
	combout => \COMP_CCD|LessThan3~0_combout\);

-- Location: LCCOMB_X17_Y21_N10
\COMP_CCD|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~2_combout\ = ((!\COMP_CCD|process_2:count[9]~q\ & ((\COMP_CCD|LessThan3~1_combout\) # (\COMP_CCD|LessThan3~0_combout\)))) # (!\COMP_CCD|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[9]~q\,
	datab => \COMP_CCD|LessThan3~1_combout\,
	datac => \COMP_CCD|LessThan5~0_combout\,
	datad => \COMP_CCD|LessThan3~0_combout\,
	combout => \COMP_CCD|LessThan3~2_combout\);

-- Location: LCCOMB_X17_Y21_N2
\COMP_CCD|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~5_combout\ = (\COMP_CCD|process_2:count[12]~q\ & (\COMP_CCD|LessThan3~3_combout\ & \COMP_CCD|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|LessThan3~3_combout\,
	datad => \COMP_CCD|LessThan3~2_combout\,
	combout => \COMP_CCD|LessThan3~5_combout\);

-- Location: LCCOMB_X17_Y21_N8
\COMP_CCD|clk_buf~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_buf~5_combout\ = (!\COMP_CCD|clk_buf~q\ & ((\COMP_CCD|process_2:count[29]~q\) # ((\COMP_CCD|process_2:count[30]~q\) # (!\COMP_CCD|LessThan3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datab => \COMP_CCD|process_2:count[30]~q\,
	datac => \COMP_CCD|clk_buf~q\,
	datad => \COMP_CCD|LessThan3~5_combout\,
	combout => \COMP_CCD|clk_buf~5_combout\);

-- Location: LCCOMB_X17_Y21_N14
\COMP_CCD|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~4_combout\ = (\COMP_CCD|process_2:count[12]~q\ & (\COMP_CCD|LessThan1~0_combout\ & (\COMP_CCD|LessThan3~3_combout\ & \COMP_CCD|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|LessThan1~0_combout\,
	datac => \COMP_CCD|LessThan3~3_combout\,
	datad => \COMP_CCD|LessThan3~2_combout\,
	combout => \COMP_CCD|LessThan3~4_combout\);

-- Location: LCCOMB_X17_Y21_N0
\COMP_CCD|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~0_combout\ = (!\COMP_CCD|process_2:count[12]~q\ & ((\COMP_CCD|process_2:count[7]~q\) # ((\COMP_CCD|process_2:count[9]~q\) # (\COMP_CCD|process_2:count[8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|process_2:count[7]~q\,
	datac => \COMP_CCD|process_2:count[9]~q\,
	datad => \COMP_CCD|process_2:count[8]~q\,
	combout => \COMP_CCD|process_2~0_combout\);

-- Location: LCCOMB_X19_Y21_N24
\COMP_CCD|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~0_combout\ = (!\COMP_CCD|process_2:count[4]~q\ & (!\COMP_CCD|process_2:count[3]~q\ & ((\COMP_CCD|process_2:count[2]~q\) # (!\COMP_CCD|process_2:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[4]~q\,
	datab => \COMP_CCD|process_2:count[2]~q\,
	datac => \COMP_CCD|process_2:count[1]~q\,
	datad => \COMP_CCD|process_2:count[3]~q\,
	combout => \COMP_CCD|LessThan6~0_combout\);

-- Location: LCCOMB_X19_Y21_N14
\COMP_CCD|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~1_combout\ = (!\COMP_CCD|process_2:count[6]~q\ & (!\COMP_CCD|process_2:count[12]~q\ & ((\COMP_CCD|process_2:count[5]~q\) # (\COMP_CCD|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[5]~q\,
	datab => \COMP_CCD|process_2:count[6]~q\,
	datac => \COMP_CCD|process_2:count[12]~q\,
	datad => \COMP_CCD|LessThan6~0_combout\,
	combout => \COMP_CCD|LessThan6~1_combout\);

-- Location: LCCOMB_X17_Y21_N16
\COMP_CCD|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~1_combout\ = (\COMP_CCD|LessThan5~4_combout\) # ((!\COMP_CCD|process_2:count[12]~q\ & ((\COMP_CCD|process_2:count[11]~q\) # (\COMP_CCD|process_2:count[10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|process_2:count[11]~q\,
	datac => \COMP_CCD|process_2:count[10]~q\,
	datad => \COMP_CCD|LessThan5~4_combout\,
	combout => \COMP_CCD|process_2~1_combout\);

-- Location: LCCOMB_X17_Y21_N26
\COMP_CCD|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~2_combout\ = ((\COMP_CCD|process_2~0_combout\) # ((\COMP_CCD|LessThan6~1_combout\) # (\COMP_CCD|process_2~1_combout\))) # (!\COMP_CCD|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan7~0_combout\,
	datab => \COMP_CCD|process_2~0_combout\,
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|process_2~1_combout\,
	combout => \COMP_CCD|process_2~2_combout\);

-- Location: LCCOMB_X17_Y21_N20
\COMP_CCD|clk_buf~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_buf~3_combout\ = (\COMP_CCD|LessThan3~4_combout\ & (\COMP_CCD|clk_buf~q\)) # (!\COMP_CCD|LessThan3~4_combout\ & (!\COMP_CCD|clk_buf~2_combout\ & ((\COMP_CCD|clk_buf~q\) # (\COMP_CCD|process_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_buf~q\,
	datab => \COMP_CCD|LessThan3~4_combout\,
	datac => \COMP_CCD|process_2~2_combout\,
	datad => \COMP_CCD|clk_buf~2_combout\,
	combout => \COMP_CCD|clk_buf~3_combout\);

-- Location: LCCOMB_X17_Y21_N28
\COMP_CCD|clk_buf~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_buf~4_combout\ = (\COMP_CCD|rog_buf~4_combout\ & (!\COMP_CCD|clk_buf~3_combout\ & ((!\COMP_CCD|clk_buf~5_combout\) # (!\COMP_CCD|clk_buf~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_buf~4_combout\,
	datab => \COMP_CCD|clk_buf~2_combout\,
	datac => \COMP_CCD|clk_buf~5_combout\,
	datad => \COMP_CCD|clk_buf~3_combout\,
	combout => \COMP_CCD|clk_buf~4_combout\);

-- Location: FF_X17_Y21_N29
\COMP_CCD|clk_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|clk_buf~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_buf~q\);

-- Location: LCCOMB_X16_Y21_N6
\COMP_CCD|rog_buf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_buf~2_combout\ = (\COMP_CCD|process_2:count[12]~q\ & (!\COMP_CCD|process_2:count[29]~q\ & (\COMP_CCD|LessThan3~2_combout\ & \COMP_CCD|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|process_2:count[29]~q\,
	datac => \COMP_CCD|LessThan3~2_combout\,
	datad => \COMP_CCD|LessThan3~3_combout\,
	combout => \COMP_CCD|rog_buf~2_combout\);

-- Location: LCCOMB_X16_Y21_N8
\COMP_CCD|rog_buf~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_buf~3_combout\ = ((!\COMP_CCD|rog_buf~2_combout\ & (\COMP_CCD|clk_buf~2_combout\ & \COMP_CCD|rog_buf~q\))) # (!\COMP_CCD|rog_buf~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_buf~2_combout\,
	datab => \COMP_CCD|clk_buf~2_combout\,
	datac => \COMP_CCD|rog_buf~q\,
	datad => \COMP_CCD|rog_buf~4_combout\,
	combout => \COMP_CCD|rog_buf~3_combout\);

-- Location: FF_X16_Y21_N9
\COMP_CCD|rog_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|rog_buf~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|rog_buf~q\);

-- Location: LCCOMB_X18_Y21_N4
\COMP_CCD|shut_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_buf~0_combout\ = ((!\COMP_CCD|process_2~2_combout\ & !\COMP_CCD|process_2:count[31]~q\)) # (!\COMP_CCD|shut_buf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|shut_buf~q\,
	datac => \COMP_CCD|process_2~2_combout\,
	datad => \COMP_CCD|process_2:count[31]~q\,
	combout => \COMP_CCD|shut_buf~0_combout\);

-- Location: LCCOMB_X18_Y21_N16
\COMP_CCD|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~3_combout\ = (\COMP_CCD|LessThan1~3_combout\) # ((!\COMP_CCD|LessThan3~5_combout\) # (!\COMP_CCD|Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|LessThan1~3_combout\,
	datac => \COMP_CCD|Equal2~6_combout\,
	datad => \COMP_CCD|LessThan3~5_combout\,
	combout => \COMP_CCD|process_2~3_combout\);

-- Location: LCCOMB_X18_Y21_N18
\COMP_CCD|shut_buf~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_buf~1_combout\ = (\COMP_CCD|process_2~3_combout\ & (((!\COMP_CCD|LessThan3~5_combout\ & \COMP_CCD|clk_buf~2_combout\)) # (!\COMP_CCD|shut_buf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~5_combout\,
	datab => \COMP_CCD|clk_buf~2_combout\,
	datac => \COMP_CCD|shut_buf~0_combout\,
	datad => \COMP_CCD|process_2~3_combout\,
	combout => \COMP_CCD|shut_buf~1_combout\);

-- Location: FF_X18_Y21_N19
\COMP_CCD|shut_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|shut_buf~1_combout\,
	ena => \COMP_CCD|rog_buf~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|shut_buf~q\);

-- Location: LCCOMB_X12_Y13_N22
\COMP_CCD|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~0_combout\ = (!\COMP_CCD|Add0~44_combout\ & (!\COMP_CCD|Add0~38_combout\ & (!\COMP_CCD|Add0~40_combout\ & !\COMP_CCD|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~44_combout\,
	datab => \COMP_CCD|Add0~38_combout\,
	datac => \COMP_CCD|Add0~40_combout\,
	datad => \COMP_CCD|Add0~42_combout\,
	combout => \COMP_CCD|Equal1~0_combout\);

-- Location: LCCOMB_X12_Y13_N28
\COMP_CCD|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~1_combout\ = (!\COMP_CCD|Add0~48_combout\ & (!\COMP_CCD|Add0~46_combout\ & (\COMP_CCD|Equal1~0_combout\ & !\COMP_CCD|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~48_combout\,
	datab => \COMP_CCD|Add0~46_combout\,
	datac => \COMP_CCD|Equal1~0_combout\,
	datad => \COMP_CCD|Add0~50_combout\,
	combout => \COMP_CCD|Equal1~1_combout\);

-- Location: LCCOMB_X12_Y13_N24
\COMP_CCD|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~2_combout\ = (!\COMP_CCD|Add0~56_combout\ & (!\COMP_CCD|Add0~54_combout\ & (!\COMP_CCD|Add0~52_combout\ & \COMP_CCD|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~56_combout\,
	datab => \COMP_CCD|Add0~54_combout\,
	datac => \COMP_CCD|Add0~52_combout\,
	datad => \COMP_CCD|Equal1~1_combout\,
	combout => \COMP_CCD|Equal1~2_combout\);

-- Location: LCCOMB_X12_Y13_N26
\COMP_CCD|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~3_combout\ = (!\COMP_CCD|Add0~58_combout\ & (!\COMP_CCD|Add0~60_combout\ & (!\COMP_CCD|Add0~62_combout\ & \COMP_CCD|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~58_combout\,
	datab => \COMP_CCD|Add0~60_combout\,
	datac => \COMP_CCD|Add0~62_combout\,
	datad => \COMP_CCD|Equal1~2_combout\,
	combout => \COMP_CCD|Equal1~3_combout\);

-- Location: LCCOMB_X12_Y14_N30
\COMP_CCD|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~5_combout\ = (!\COMP_CCD|Add0~14_combout\ & (!\COMP_CCD|Add0~18_combout\ & (!\COMP_CCD|Add0~16_combout\ & !\COMP_CCD|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~14_combout\,
	datab => \COMP_CCD|Add0~18_combout\,
	datac => \COMP_CCD|Add0~16_combout\,
	datad => \COMP_CCD|Add0~20_combout\,
	combout => \COMP_CCD|Equal1~5_combout\);

-- Location: LCCOMB_X12_Y14_N8
\COMP_CCD|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~4_combout\ = (\COMP_CCD|Add0~2_combout\ & (!\COMP_CCD|Add0~8_combout\ & (!\COMP_CCD|Add0~4_combout\ & !\COMP_CCD|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~2_combout\,
	datab => \COMP_CCD|Add0~8_combout\,
	datac => \COMP_CCD|Add0~4_combout\,
	datad => \COMP_CCD|Add0~12_combout\,
	combout => \COMP_CCD|Equal1~4_combout\);

-- Location: LCCOMB_X12_Y14_N4
\COMP_CCD|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~6_combout\ = (!\COMP_CCD|Add0~26_combout\ & (!\COMP_CCD|Add0~24_combout\ & (!\COMP_CCD|Add0~22_combout\ & !\COMP_CCD|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~26_combout\,
	datab => \COMP_CCD|Add0~24_combout\,
	datac => \COMP_CCD|Add0~22_combout\,
	datad => \COMP_CCD|Add0~28_combout\,
	combout => \COMP_CCD|Equal1~6_combout\);

-- Location: LCCOMB_X12_Y14_N10
\COMP_CCD|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~7_combout\ = (!\COMP_CCD|Add0~32_combout\ & (!\COMP_CCD|Add0~34_combout\ & (!\COMP_CCD|Add0~30_combout\ & !\COMP_CCD|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~32_combout\,
	datab => \COMP_CCD|Add0~34_combout\,
	datac => \COMP_CCD|Add0~30_combout\,
	datad => \COMP_CCD|Add0~36_combout\,
	combout => \COMP_CCD|Equal1~7_combout\);

-- Location: LCCOMB_X12_Y14_N20
\COMP_CCD|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~8_combout\ = (\COMP_CCD|Equal1~5_combout\ & (\COMP_CCD|Equal1~4_combout\ & (\COMP_CCD|Equal1~6_combout\ & \COMP_CCD|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~5_combout\,
	datab => \COMP_CCD|Equal1~4_combout\,
	datac => \COMP_CCD|Equal1~6_combout\,
	datad => \COMP_CCD|Equal1~7_combout\,
	combout => \COMP_CCD|Equal1~8_combout\);

-- Location: LCCOMB_X12_Y13_N20
\COMP_CCD|clk_adc_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_adc_div~0_combout\ = (!\COMP_CCD|Add0~0_combout\ & (!\COMP_CCD|Equal0~10_combout\ & (!\COMP_CCD|Add0~10_combout\ & \COMP_CCD|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~0_combout\,
	datab => \COMP_CCD|Equal0~10_combout\,
	datac => \COMP_CCD|Add0~10_combout\,
	datad => \COMP_CCD|Equal1~8_combout\,
	combout => \COMP_CCD|clk_adc_div~0_combout\);

-- Location: LCCOMB_X12_Y13_N2
\COMP_CCD|clk_adc_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_adc_div~1_combout\ = \COMP_CCD|clk_adc_div~q\ $ (((\COMP_CCD|Add0~6_combout\ & (\COMP_CCD|Equal1~3_combout\ & \COMP_CCD|clk_adc_div~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_adc_div~q\,
	datab => \COMP_CCD|Add0~6_combout\,
	datac => \COMP_CCD|Equal1~3_combout\,
	datad => \COMP_CCD|clk_adc_div~0_combout\,
	combout => \COMP_CCD|clk_adc_div~1_combout\);

-- Location: LCCOMB_X12_Y13_N12
\COMP_CCD|clk_adc_div~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_adc_div~feeder_combout\ = \COMP_CCD|clk_adc_div~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|clk_adc_div~1_combout\,
	combout => \COMP_CCD|clk_adc_div~feeder_combout\);

-- Location: FF_X12_Y13_N13
\COMP_CCD|clk_adc_div\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|clk_adc_div~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_adc_div~q\);

-- Location: LCCOMB_X12_Y13_N16
\COMP_CCD|clk_adc_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_adc_buf~0_combout\ = !\COMP_CCD|clk_adc_buf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|clk_adc_buf~q\,
	combout => \COMP_CCD|clk_adc_buf~0_combout\);

-- Location: FF_X12_Y13_N17
\COMP_CCD|clk_adc_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|clk_adc_div~q\,
	d => \COMP_CCD|clk_adc_buf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_adc_buf~q\);

-- Location: IOIBUF_X7_Y24_N1
\ccd_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(3),
	o => \ccd_data[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\ccd_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(4),
	o => \ccd_data[4]~input_o\);

-- Location: IOIBUF_X3_Y24_N8
\ccd_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(5),
	o => \ccd_data[5]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\ccd_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(6),
	o => \ccd_data[6]~input_o\);

-- Location: IOIBUF_X30_Y24_N8
\ccd_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(7),
	o => \ccd_data[7]~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\ccd_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(8),
	o => \ccd_data[8]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\ccd_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(9),
	o => \ccd_data[9]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\ccd_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(10),
	o => \ccd_data[10]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\CLK_USB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_USB,
	o => \CLK_USB~input_o\);

-- Location: LCCOMB_X18_Y21_N2
\COMP_CCD|CCD_READY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|CCD_READY~0_combout\ = (!\COMP_CCD|process_2~2_combout\ & ((\COMP_CCD|LessThan3~5_combout\) # (!\COMP_CCD|LessThan5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|LessThan5~5_combout\,
	datac => \COMP_CCD|process_2~2_combout\,
	datad => \COMP_CCD|LessThan3~5_combout\,
	combout => \COMP_CCD|CCD_READY~0_combout\);

-- Location: LCCOMB_X18_Y21_N14
\COMP_CCD|CCD_READY~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|CCD_READY~1_combout\ = (\COMP_CCD|CCD_READY~0_combout\ & (\COMP_CCD|clk_buf~q\)) # (!\COMP_CCD|CCD_READY~0_combout\ & ((\COMP_CCD|process_2~3_combout\ & ((\COMP_CCD|CCD_READY~q\))) # (!\COMP_CCD|process_2~3_combout\ & (\COMP_CCD|clk_buf~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_buf~q\,
	datab => \COMP_CCD|CCD_READY~0_combout\,
	datac => \COMP_CCD|CCD_READY~q\,
	datad => \COMP_CCD|process_2~3_combout\,
	combout => \COMP_CCD|CCD_READY~1_combout\);

-- Location: FF_X18_Y21_N15
\COMP_CCD|CCD_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|CCD_READY~1_combout\,
	ena => \COMP_CCD|rog_buf~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|CCD_READY~q\);

-- Location: FF_X18_Y21_N1
\COMP_USB|compl_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	asdata => \COMP_CCD|CCD_READY~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|compl_buf~q\);

-- Location: LCCOMB_X18_Y21_N30
\COMP_USB|WR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|WR~0_combout\ = (\COMP_CCD|CCD_READY~q\ & !\COMP_USB|compl_buf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|CCD_READY~q\,
	datad => \COMP_USB|compl_buf~q\,
	combout => \COMP_USB|WR~0_combout\);

-- Location: FF_X18_Y21_N31
\COMP_USB|WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	d => \COMP_USB|WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|WR~q\);

-- Location: IOIBUF_X34_Y12_N22
\ccd_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(0),
	o => \ccd_data[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\ccd_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(1),
	o => \ccd_data[1]~input_o\);

-- Location: IOIBUF_X13_Y24_N8
\ccd_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ccd_data(2),
	o => \ccd_data[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\KEY_START~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_START,
	o => \KEY_START~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\TXE_USB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TXE_USB,
	o => \TXE_USB~input_o\);

ww_clk_ccd <= \clk_ccd~output_o\;

ww_rog_ccd <= \rog_ccd~output_o\;

ww_SHUT <= \SHUT~output_o\;

ww_clk_adc <= \clk_adc~output_o\;

ww_DATA_USB(0) <= \DATA_USB[0]~output_o\;

ww_DATA_USB(1) <= \DATA_USB[1]~output_o\;

ww_DATA_USB(2) <= \DATA_USB[2]~output_o\;

ww_DATA_USB(3) <= \DATA_USB[3]~output_o\;

ww_DATA_USB(4) <= \DATA_USB[4]~output_o\;

ww_DATA_USB(5) <= \DATA_USB[5]~output_o\;

ww_DATA_USB(6) <= \DATA_USB[6]~output_o\;

ww_DATA_USB(7) <= \DATA_USB[7]~output_o\;

ww_OE_USB <= \OE_USB~output_o\;

ww_WR_USB <= \WR_USB~output_o\;
END structure;


