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

-- DATE "08/21/2020 16:25:59"

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
	adc_clk : BUFFER std_logic;
	adc_data_in : IN std_logic_vector(11 DOWNTO 0);
	trigger_start : IN std_logic;
	clk50Mhz : IN std_logic;
	ccd_clk : BUFFER std_logic;
	ccd_rog : BUFFER std_logic;
	ccd_shut : BUFFER std_logic;
	usb_clk : IN std_logic;
	usb_txe : IN std_logic;
	usb_data : BUFFER std_logic_vector(7 DOWNTO 0);
	usb_oe : BUFFER std_logic;
	usb_wr : BUFFER std_logic;
	usb_rd : BUFFER std_logic
	);
END monochr;

-- Design Ports Information
-- adc_clk	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_clk	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_rog	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_shut	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_data[7]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_oe	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_wr	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_rd	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_clk	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_txe	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50Mhz	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger_start	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[8]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[10]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[11]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_in[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_adc_clk : std_logic;
SIGNAL ww_adc_data_in : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_trigger_start : std_logic;
SIGNAL ww_clk50Mhz : std_logic;
SIGNAL ww_ccd_clk : std_logic;
SIGNAL ww_ccd_rog : std_logic;
SIGNAL ww_ccd_shut : std_logic;
SIGNAL ww_usb_clk : std_logic;
SIGNAL ww_usb_txe : std_logic;
SIGNAL ww_usb_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_usb_oe : std_logic;
SIGNAL ww_usb_wr : std_logic;
SIGNAL ww_usb_rd : std_logic;
SIGNAL \COMP_CCD|ccd_clk_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_clk~output_o\ : std_logic;
SIGNAL \ccd_clk~output_o\ : std_logic;
SIGNAL \ccd_rog~output_o\ : std_logic;
SIGNAL \ccd_shut~output_o\ : std_logic;
SIGNAL \usb_data[0]~output_o\ : std_logic;
SIGNAL \usb_data[1]~output_o\ : std_logic;
SIGNAL \usb_data[2]~output_o\ : std_logic;
SIGNAL \usb_data[3]~output_o\ : std_logic;
SIGNAL \usb_data[4]~output_o\ : std_logic;
SIGNAL \usb_data[5]~output_o\ : std_logic;
SIGNAL \usb_data[6]~output_o\ : std_logic;
SIGNAL \usb_data[7]~output_o\ : std_logic;
SIGNAL \usb_oe~output_o\ : std_logic;
SIGNAL \usb_wr~output_o\ : std_logic;
SIGNAL \usb_rd~output_o\ : std_logic;
SIGNAL \clk50Mhz~input_o\ : std_logic;
SIGNAL \clk50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add0~41\ : std_logic;
SIGNAL \COMP_CCD|Add0~42_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~43\ : std_logic;
SIGNAL \COMP_CCD|Add0~44_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~45\ : std_logic;
SIGNAL \COMP_CCD|Add0~46_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~47\ : std_logic;
SIGNAL \COMP_CCD|Add0~48_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~49\ : std_logic;
SIGNAL \COMP_CCD|Add0~50_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~51\ : std_logic;
SIGNAL \COMP_CCD|Add0~52_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~53\ : std_logic;
SIGNAL \COMP_CCD|Add0~54_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~1\ : std_logic;
SIGNAL \COMP_CCD|Add0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~3\ : std_logic;
SIGNAL \COMP_CCD|Add0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~5\ : std_logic;
SIGNAL \COMP_CCD|Add0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~7\ : std_logic;
SIGNAL \COMP_CCD|Add0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|count~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~55\ : std_logic;
SIGNAL \COMP_CCD|Add0~56_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~57\ : std_logic;
SIGNAL \COMP_CCD|Add0~58_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~59\ : std_logic;
SIGNAL \COMP_CCD|Add0~60_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~61\ : std_logic;
SIGNAL \COMP_CCD|Add0~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~9\ : std_logic;
SIGNAL \COMP_CCD|Add0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~11\ : std_logic;
SIGNAL \COMP_CCD|Add0~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~13\ : std_logic;
SIGNAL \COMP_CCD|Add0~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~15\ : std_logic;
SIGNAL \COMP_CCD|Add0~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~17\ : std_logic;
SIGNAL \COMP_CCD|Add0~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~19\ : std_logic;
SIGNAL \COMP_CCD|Add0~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~21\ : std_logic;
SIGNAL \COMP_CCD|Add0~22_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~23\ : std_logic;
SIGNAL \COMP_CCD|Add0~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~25\ : std_logic;
SIGNAL \COMP_CCD|Add0~26_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~27\ : std_logic;
SIGNAL \COMP_CCD|Add0~28_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~29\ : std_logic;
SIGNAL \COMP_CCD|Add0~30_combout\ : std_logic;
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
SIGNAL \COMP_CCD|Equal1~5_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~1_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~2_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~3_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~4_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~5_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_div~q\ : std_logic;
SIGNAL \COMP_CCD|ccd_clk_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_clk_div~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_clk_div~q\ : std_logic;
SIGNAL \COMP_CCD|ccd_clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~9\ : std_logic;
SIGNAL \COMP_CCD|Add3~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~89_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~8_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan16~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan16~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan16~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan16~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan16~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan16~5_combout\ : std_logic;
SIGNAL \trigger_start~input_o\ : std_logic;
SIGNAL \COMP_CCD|process_2~11_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~98_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line[25]~99_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~1\ : std_logic;
SIGNAL \COMP_CCD|Add2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~66_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~67_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~3\ : std_logic;
SIGNAL \COMP_CCD|Add2~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~74_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~5\ : std_logic;
SIGNAL \COMP_CCD|Add2~6_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~73_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~7\ : std_logic;
SIGNAL \COMP_CCD|Add2~8_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~72_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~9\ : std_logic;
SIGNAL \COMP_CCD|Add2~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~78_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~11\ : std_logic;
SIGNAL \COMP_CCD|Add2~12_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~77_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~13\ : std_logic;
SIGNAL \COMP_CCD|Add2~14_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~76_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~15\ : std_logic;
SIGNAL \COMP_CCD|Add2~16_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~75_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~17\ : std_logic;
SIGNAL \COMP_CCD|Add2~18_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~82_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~19\ : std_logic;
SIGNAL \COMP_CCD|Add2~20_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~81_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~21\ : std_logic;
SIGNAL \COMP_CCD|Add2~22_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~80_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~23\ : std_logic;
SIGNAL \COMP_CCD|Add2~24_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~79_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~25\ : std_logic;
SIGNAL \COMP_CCD|Add2~26_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~86_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~27\ : std_logic;
SIGNAL \COMP_CCD|Add2~28_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~85_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~29\ : std_logic;
SIGNAL \COMP_CCD|Add2~30_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~84_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~31\ : std_logic;
SIGNAL \COMP_CCD|Add2~32_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~83_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~33\ : std_logic;
SIGNAL \COMP_CCD|Add2~34_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~96_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~35\ : std_logic;
SIGNAL \COMP_CCD|Add2~36_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~95_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~37\ : std_logic;
SIGNAL \COMP_CCD|Add2~38_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~88_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~39\ : std_logic;
SIGNAL \COMP_CCD|Add2~40_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~94_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~41\ : std_logic;
SIGNAL \COMP_CCD|Add2~42_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~71_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~43\ : std_logic;
SIGNAL \COMP_CCD|Add2~44_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~70_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~45\ : std_logic;
SIGNAL \COMP_CCD|Add2~46_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~69_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~47\ : std_logic;
SIGNAL \COMP_CCD|Add2~48_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~68_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~49\ : std_logic;
SIGNAL \COMP_CCD|Add2~50_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~93_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~51\ : std_logic;
SIGNAL \COMP_CCD|Add2~52_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~92_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~53\ : std_logic;
SIGNAL \COMP_CCD|Add2~54_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~91_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~55\ : std_logic;
SIGNAL \COMP_CCD|Add2~56_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~90_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~57\ : std_logic;
SIGNAL \COMP_CCD|Add2~58_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~89_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~59\ : std_logic;
SIGNAL \COMP_CCD|Add2~60_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~97_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~61\ : std_logic;
SIGNAL \COMP_CCD|Add2~62_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~87_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~6_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~8_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~9_combout\ : std_logic;
SIGNAL \COMP_CCD|trigger_start_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|trigger_start_reg~q\ : std_logic;
SIGNAL \COMP_CCD|process_2~10_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~8_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~4_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~3_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~4_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~5_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~6_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~7_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~11\ : std_logic;
SIGNAL \COMP_CCD|Add3~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~90_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[6]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~13\ : std_logic;
SIGNAL \COMP_CCD|Add3~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~72_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[7]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~15\ : std_logic;
SIGNAL \COMP_CCD|Add3~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~68_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[8]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~17\ : std_logic;
SIGNAL \COMP_CCD|Add3~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~69_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[9]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~19\ : std_logic;
SIGNAL \COMP_CCD|Add3~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~70_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[10]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~21\ : std_logic;
SIGNAL \COMP_CCD|Add3~22_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~71_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[11]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[11]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~23\ : std_logic;
SIGNAL \COMP_CCD|Add3~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~73_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[12]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~25\ : std_logic;
SIGNAL \COMP_CCD|Add3~26_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~28_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[13]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~27\ : std_logic;
SIGNAL \COMP_CCD|Add3~29_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~31_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[14]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~30\ : std_logic;
SIGNAL \COMP_CCD|Add3~32_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~34_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[15]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~33\ : std_logic;
SIGNAL \COMP_CCD|Add3~35_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~37_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[16]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~36\ : std_logic;
SIGNAL \COMP_CCD|Add3~38_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~40_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[17]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~39\ : std_logic;
SIGNAL \COMP_CCD|Add3~41_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~43_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[18]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~42\ : std_logic;
SIGNAL \COMP_CCD|Add3~44_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~46_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[19]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~45\ : std_logic;
SIGNAL \COMP_CCD|Add3~47_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~49_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[20]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~48\ : std_logic;
SIGNAL \COMP_CCD|Add3~50_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~52_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[21]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~51\ : std_logic;
SIGNAL \COMP_CCD|Add3~53_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~55_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[22]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~54\ : std_logic;
SIGNAL \COMP_CCD|Add3~56_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~58_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[23]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~57\ : std_logic;
SIGNAL \COMP_CCD|Add3~59_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~61_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[24]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~60\ : std_logic;
SIGNAL \COMP_CCD|Add3~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~64_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[25]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~63\ : std_logic;
SIGNAL \COMP_CCD|Add3~65_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~67_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[26]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~66\ : std_logic;
SIGNAL \COMP_CCD|Add3~74_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~79_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[27]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~75\ : std_logic;
SIGNAL \COMP_CCD|Add3~76_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~78_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[28]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~77\ : std_logic;
SIGNAL \COMP_CCD|Add3~80_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~82_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[29]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~81\ : std_logic;
SIGNAL \COMP_CCD|Add3~83_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~85_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[30]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[30]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~84\ : std_logic;
SIGNAL \COMP_CCD|Add3~91_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~93_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[31]~q\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~95_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[0]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~1\ : std_logic;
SIGNAL \COMP_CCD|Add3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~94_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[1]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~3\ : std_logic;
SIGNAL \COMP_CCD|Add3~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~88_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[2]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~5\ : std_logic;
SIGNAL \COMP_CCD|Add3~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~86_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[3]~q\ : std_logic;
SIGNAL \COMP_CCD|Add3~7\ : std_logic;
SIGNAL \COMP_CCD|Add3~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~87_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[4]~q\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~0_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~12_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan4~0_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~q\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_reg~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|adc_clk_reg~q\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~6_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan9~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan9~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~1_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~7_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~6_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[4]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~q\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~5_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~8_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2~9_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~6_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~7_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~8_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~q\ : std_logic;
SIGNAL \usb_clk~input_o\ : std_logic;
SIGNAL \adc_data_in[0]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~6_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~32_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~96_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[1]~35\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[2]~36_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[2]~37\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[3]~38_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[3]~39\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[4]~40_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[4]~41\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[5]~42_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[5]~43\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[6]~44_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[6]~45\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[7]~46_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[7]~47\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[8]~48_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[8]~49\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~50_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~51\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[10]~52_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[10]~53\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~54_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~55\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[12]~56_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[12]~57\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[13]~58_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[13]~59\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[14]~60_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[14]~61\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~62_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~63\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[16]~64_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[16]~65\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[17]~66_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[17]~67\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[18]~68_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[18]~69\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[19]~70_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[19]~71\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[20]~72_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[20]~73\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[21]~74_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[21]~75\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[22]~76_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[22]~77\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[23]~78_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[23]~79\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[24]~80_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[24]~81\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[25]~82_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[25]~83\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[26]~84_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[26]~85\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[27]~86_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[27]~87\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[28]~88_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[28]~89\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[29]~90_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[29]~91\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[30]~92_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[30]~93\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~94_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~9_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan13~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~97_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~98_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~99_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~33\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[1]~34_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~10_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[7]~2_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~3_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~4_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~5_combout\ : std_logic;
SIGNAL \adc_data_in[8]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~1_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[0]~32_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[25]~84\ : std_logic;
SIGNAL \COMP_USB|switch_write[26]~85_combout\ : std_logic;
SIGNAL \usb_txe~input_o\ : std_logic;
SIGNAL \COMP_USB|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~3_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~4_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~0_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[0]~38_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[26]~86\ : std_logic;
SIGNAL \COMP_USB|switch_write[27]~87_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[27]~88\ : std_logic;
SIGNAL \COMP_USB|switch_write[28]~89_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[28]~90\ : std_logic;
SIGNAL \COMP_USB|switch_write[29]~91_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[29]~92\ : std_logic;
SIGNAL \COMP_USB|switch_write[30]~93_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[30]~94\ : std_logic;
SIGNAL \COMP_USB|switch_write[31]~95_combout\ : std_logic;
SIGNAL \COMP_USB|process_0~5_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~q\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready~q\ : std_logic;
SIGNAL \COMP_USB|process_0~4_combout\ : std_logic;
SIGNAL \COMP_USB|ccd_ready_reg~2_combout\ : std_logic;
SIGNAL \COMP_USB|ccd_ready_reg~q\ : std_logic;
SIGNAL \COMP_USB|process_0~3_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[0]~33\ : std_logic;
SIGNAL \COMP_USB|switch_write[1]~34_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[1]~35\ : std_logic;
SIGNAL \COMP_USB|switch_write[2]~36_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[2]~37\ : std_logic;
SIGNAL \COMP_USB|switch_write[3]~39_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[3]~40\ : std_logic;
SIGNAL \COMP_USB|switch_write[4]~41_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[4]~42\ : std_logic;
SIGNAL \COMP_USB|switch_write[5]~43_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[5]~44\ : std_logic;
SIGNAL \COMP_USB|switch_write[6]~45_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[6]~46\ : std_logic;
SIGNAL \COMP_USB|switch_write[7]~47_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[7]~48\ : std_logic;
SIGNAL \COMP_USB|switch_write[8]~49_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[8]~50\ : std_logic;
SIGNAL \COMP_USB|switch_write[9]~51_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[9]~52\ : std_logic;
SIGNAL \COMP_USB|switch_write[10]~53_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[10]~54\ : std_logic;
SIGNAL \COMP_USB|switch_write[11]~55_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[11]~56\ : std_logic;
SIGNAL \COMP_USB|switch_write[12]~57_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[12]~58\ : std_logic;
SIGNAL \COMP_USB|switch_write[13]~59_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[13]~60\ : std_logic;
SIGNAL \COMP_USB|switch_write[14]~61_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[14]~62\ : std_logic;
SIGNAL \COMP_USB|switch_write[15]~63_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[15]~64\ : std_logic;
SIGNAL \COMP_USB|switch_write[16]~65_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[16]~66\ : std_logic;
SIGNAL \COMP_USB|switch_write[17]~67_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[17]~68\ : std_logic;
SIGNAL \COMP_USB|switch_write[18]~69_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[18]~70\ : std_logic;
SIGNAL \COMP_USB|switch_write[19]~71_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[19]~72\ : std_logic;
SIGNAL \COMP_USB|switch_write[20]~73_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[20]~74\ : std_logic;
SIGNAL \COMP_USB|switch_write[21]~75_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[21]~76\ : std_logic;
SIGNAL \COMP_USB|switch_write[22]~77_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[22]~78\ : std_logic;
SIGNAL \COMP_USB|switch_write[23]~79_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[23]~80\ : std_logic;
SIGNAL \COMP_USB|switch_write[24]~81_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[24]~82\ : std_logic;
SIGNAL \COMP_USB|switch_write[25]~83_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~6_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~5_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~7_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~8_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~9_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~10_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~0_combout\ : std_logic;
SIGNAL \COMP_USB|process_0~2_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~11_combout\ : std_logic;
SIGNAL \COMP_USB|data_out[0]~1_combout\ : std_logic;
SIGNAL \COMP_USB|data_out[0]~2_combout\ : std_logic;
SIGNAL \COMP_USB|data_out[0]~3_combout\ : std_logic;
SIGNAL \adc_data_in[9]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~7_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[7]~8_combout\ : std_logic;
SIGNAL \adc_data_in[1]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~9_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~4_combout\ : std_logic;
SIGNAL \adc_data_in[2]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~11_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out~12_combout\ : std_logic;
SIGNAL \adc_data_in[10]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~10_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~5_combout\ : std_logic;
SIGNAL \adc_data_in[3]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~14_combout\ : std_logic;
SIGNAL \adc_data_in[11]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~13_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~6_combout\ : std_logic;
SIGNAL \adc_data_in[4]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~15_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~7_combout\ : std_logic;
SIGNAL \adc_data_in[5]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~16_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~0_combout\ : std_logic;
SIGNAL \adc_data_in[6]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~17_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~9_combout\ : std_logic;
SIGNAL \adc_data_in[7]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~18_combout\ : std_logic;
SIGNAL \COMP_USB|data_out~10_combout\ : std_logic;
SIGNAL \COMP_USB|wr~1_combout\ : std_logic;
SIGNAL \COMP_USB|wr~0_combout\ : std_logic;
SIGNAL \COMP_USB|wr~2_combout\ : std_logic;
SIGNAL \COMP_USB|wr~q\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|switch_write\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count_line\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \COMP_CCD|data_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \COMP_CCD|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|ALT_INV_adc_clk_div~q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_wr~q\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_usb_clk~input_o\ : std_logic;

BEGIN

adc_clk <= ww_adc_clk;
ww_adc_data_in <= adc_data_in;
ww_trigger_start <= trigger_start;
ww_clk50Mhz <= clk50Mhz;
ccd_clk <= ww_ccd_clk;
ccd_rog <= ww_ccd_rog;
ccd_shut <= ww_ccd_shut;
ww_usb_clk <= usb_clk;
ww_usb_txe <= usb_txe;
usb_data <= ww_usb_data;
usb_oe <= ww_usb_oe;
usb_wr <= ww_usb_wr;
usb_rd <= ww_usb_rd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\COMP_CCD|ccd_clk_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \COMP_CCD|ccd_clk_div~q\);

\clk50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50Mhz~input_o\);
\COMP_CCD|ALT_INV_adc_clk_div~q\ <= NOT \COMP_CCD|adc_clk_div~q\;
\COMP_USB|ALT_INV_wr~q\ <= NOT \COMP_USB|wr~q\;
\COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\ <= NOT \COMP_CCD|ccd_clk_div~clkctrl_outclk\;
\ALT_INV_usb_clk~input_o\ <= NOT \usb_clk~input_o\;

-- Location: IOOBUF_X25_Y24_N16
\adc_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|adc_clk_reg~q\,
	devoe => ww_devoe,
	o => \adc_clk~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\ccd_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|clk_reg~q\,
	devoe => ww_devoe,
	o => \ccd_clk~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\ccd_rog~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|rog_reg~q\,
	devoe => ww_devoe,
	o => \ccd_rog~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\ccd_shut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|shut_reg~q\,
	devoe => ww_devoe,
	o => \ccd_shut~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\usb_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(0),
	devoe => ww_devoe,
	o => \usb_data[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\usb_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(1),
	devoe => ww_devoe,
	o => \usb_data[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\usb_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(2),
	devoe => ww_devoe,
	o => \usb_data[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\usb_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(3),
	devoe => ww_devoe,
	o => \usb_data[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\usb_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(4),
	devoe => ww_devoe,
	o => \usb_data[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\usb_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(5),
	devoe => ww_devoe,
	o => \usb_data[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\usb_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(6),
	devoe => ww_devoe,
	o => \usb_data[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\usb_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data_out\(7),
	devoe => ww_devoe,
	o => \usb_data[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\usb_oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \usb_oe~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\usb_wr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_wr~q\,
	devoe => ww_devoe,
	o => \usb_wr~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\usb_rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \usb_rd~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50Mhz,
	o => \clk50Mhz~input_o\);

-- Location: CLKCTRL_G2
\clk50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50Mhz~inputclkctrl_outclk\);

-- Location: FF_X17_Y6_N9
\COMP_CCD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(20));

-- Location: LCCOMB_X17_Y6_N8
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

-- Location: LCCOMB_X17_Y6_N10
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

-- Location: FF_X17_Y6_N11
\COMP_CCD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(21));

-- Location: LCCOMB_X17_Y6_N12
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

-- Location: FF_X17_Y6_N13
\COMP_CCD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(22));

-- Location: LCCOMB_X17_Y6_N14
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

-- Location: FF_X17_Y6_N15
\COMP_CCD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(23));

-- Location: LCCOMB_X17_Y6_N16
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

-- Location: FF_X17_Y6_N17
\COMP_CCD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(24));

-- Location: LCCOMB_X17_Y6_N18
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

-- Location: FF_X17_Y6_N19
\COMP_CCD|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(25));

-- Location: LCCOMB_X17_Y6_N20
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

-- Location: FF_X17_Y6_N21
\COMP_CCD|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(26));

-- Location: LCCOMB_X17_Y6_N22
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

-- Location: FF_X17_Y6_N23
\COMP_CCD|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(27));

-- Location: LCCOMB_X16_Y6_N6
\COMP_CCD|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~8_combout\ = (!\COMP_CCD|count\(27) & (!\COMP_CCD|count\(24) & (!\COMP_CCD|count\(26) & !\COMP_CCD|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(27),
	datab => \COMP_CCD|count\(24),
	datac => \COMP_CCD|count\(26),
	datad => \COMP_CCD|count\(25),
	combout => \COMP_CCD|Equal0~8_combout\);

-- Location: LCCOMB_X18_Y7_N12
\COMP_CCD|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~2_combout\ = (!\COMP_CCD|count\(8) & (!\COMP_CCD|count\(9) & (!\COMP_CCD|count\(10) & !\COMP_CCD|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(8),
	datab => \COMP_CCD|count\(9),
	datac => \COMP_CCD|count\(10),
	datad => \COMP_CCD|count\(11),
	combout => \COMP_CCD|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y7_N0
\COMP_CCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~0_combout\ = \COMP_CCD|count\(0) $ (VCC)
-- \COMP_CCD|Add0~1\ = CARRY(\COMP_CCD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(0),
	datad => VCC,
	combout => \COMP_CCD|Add0~0_combout\,
	cout => \COMP_CCD|Add0~1\);

-- Location: LCCOMB_X18_Y7_N6
\COMP_CCD|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~3_combout\ = (!\COMP_CCD|Equal0~10_combout\ & \COMP_CCD|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal0~10_combout\,
	datac => \COMP_CCD|Add0~0_combout\,
	combout => \COMP_CCD|count~3_combout\);

-- Location: FF_X18_Y7_N7
\COMP_CCD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(0));

-- Location: LCCOMB_X17_Y7_N2
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

-- Location: LCCOMB_X16_Y7_N0
\COMP_CCD|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~2_combout\ = (!\COMP_CCD|Equal0~10_combout\ & \COMP_CCD|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal0~10_combout\,
	datad => \COMP_CCD|Add0~2_combout\,
	combout => \COMP_CCD|count~2_combout\);

-- Location: FF_X17_Y7_N9
\COMP_CCD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(1));

-- Location: LCCOMB_X17_Y7_N4
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

-- Location: FF_X17_Y7_N5
\COMP_CCD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(2));

-- Location: LCCOMB_X17_Y7_N6
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

-- Location: FF_X17_Y7_N7
\COMP_CCD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(3));

-- Location: LCCOMB_X17_Y7_N8
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

-- Location: LCCOMB_X18_Y7_N28
\COMP_CCD|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~1_combout\ = (!\COMP_CCD|Equal0~10_combout\ & \COMP_CCD|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal0~10_combout\,
	datad => \COMP_CCD|Add0~8_combout\,
	combout => \COMP_CCD|count~1_combout\);

-- Location: FF_X18_Y7_N29
\COMP_CCD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(4));

-- Location: LCCOMB_X18_Y7_N18
\COMP_CCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~1_combout\ = (!\COMP_CCD|count\(6) & (\COMP_CCD|count\(4) & (\COMP_CCD|count\(5) & !\COMP_CCD|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(5),
	datad => \COMP_CCD|count\(7),
	combout => \COMP_CCD|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y7_N22
\COMP_CCD|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~3_combout\ = (!\COMP_CCD|count\(12) & (!\COMP_CCD|count\(15) & (!\COMP_CCD|count\(13) & !\COMP_CCD|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|count\(15),
	datac => \COMP_CCD|count\(13),
	datad => \COMP_CCD|count\(14),
	combout => \COMP_CCD|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y7_N24
\COMP_CCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~0_combout\ = (!\COMP_CCD|count\(3) & (!\COMP_CCD|count\(2) & (\COMP_CCD|count\(1) & !\COMP_CCD|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|count\(1),
	datad => \COMP_CCD|count\(0),
	combout => \COMP_CCD|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y7_N16
\COMP_CCD|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~4_combout\ = (\COMP_CCD|Equal0~2_combout\ & (\COMP_CCD|Equal0~1_combout\ & (\COMP_CCD|Equal0~3_combout\ & \COMP_CCD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~2_combout\,
	datab => \COMP_CCD|Equal0~1_combout\,
	datac => \COMP_CCD|Equal0~3_combout\,
	datad => \COMP_CCD|Equal0~0_combout\,
	combout => \COMP_CCD|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y6_N24
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

-- Location: FF_X17_Y6_N25
\COMP_CCD|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(28));

-- Location: LCCOMB_X17_Y6_N26
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

-- Location: FF_X17_Y6_N27
\COMP_CCD|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(29));

-- Location: LCCOMB_X17_Y6_N28
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

-- Location: FF_X17_Y6_N29
\COMP_CCD|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(30));

-- Location: LCCOMB_X17_Y6_N30
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

-- Location: FF_X17_Y6_N31
\COMP_CCD|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(31));

-- Location: LCCOMB_X16_Y6_N12
\COMP_CCD|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~9_combout\ = (!\COMP_CCD|count\(28) & (!\COMP_CCD|count\(30) & (!\COMP_CCD|count\(31) & !\COMP_CCD|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(28),
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|count\(31),
	datad => \COMP_CCD|count\(29),
	combout => \COMP_CCD|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y6_N28
\COMP_CCD|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~5_combout\ = (!\COMP_CCD|count\(18) & !\COMP_CCD|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(18),
	datad => \COMP_CCD|count\(19),
	combout => \COMP_CCD|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y6_N10
\COMP_CCD|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~6_combout\ = (!\COMP_CCD|count\(22) & (!\COMP_CCD|count\(23) & (!\COMP_CCD|count\(20) & !\COMP_CCD|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(22),
	datab => \COMP_CCD|count\(23),
	datac => \COMP_CCD|count\(20),
	datad => \COMP_CCD|count\(21),
	combout => \COMP_CCD|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y6_N0
\COMP_CCD|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~7_combout\ = (!\COMP_CCD|count\(16) & (\COMP_CCD|Equal0~5_combout\ & (!\COMP_CCD|count\(17) & \COMP_CCD|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(16),
	datab => \COMP_CCD|Equal0~5_combout\,
	datac => \COMP_CCD|count\(17),
	datad => \COMP_CCD|Equal0~6_combout\,
	combout => \COMP_CCD|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y7_N14
\COMP_CCD|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~10_combout\ = (\COMP_CCD|Equal0~8_combout\ & (\COMP_CCD|Equal0~4_combout\ & (\COMP_CCD|Equal0~9_combout\ & \COMP_CCD|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~8_combout\,
	datab => \COMP_CCD|Equal0~4_combout\,
	datac => \COMP_CCD|Equal0~9_combout\,
	datad => \COMP_CCD|Equal0~7_combout\,
	combout => \COMP_CCD|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y7_N10
\COMP_CCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~10_combout\ = (\COMP_CCD|count\(5) & (!\COMP_CCD|Add0~9\)) # (!\COMP_CCD|count\(5) & ((\COMP_CCD|Add0~9\) # (GND)))
-- \COMP_CCD|Add0~11\ = CARRY((!\COMP_CCD|Add0~9\) # (!\COMP_CCD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(5),
	datad => VCC,
	cin => \COMP_CCD|Add0~9\,
	combout => \COMP_CCD|Add0~10_combout\,
	cout => \COMP_CCD|Add0~11\);

-- Location: LCCOMB_X18_Y7_N20
\COMP_CCD|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~0_combout\ = (!\COMP_CCD|Equal0~10_combout\ & \COMP_CCD|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal0~10_combout\,
	datad => \COMP_CCD|Add0~10_combout\,
	combout => \COMP_CCD|count~0_combout\);

-- Location: FF_X17_Y7_N3
\COMP_CCD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(5));

-- Location: LCCOMB_X17_Y7_N12
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

-- Location: FF_X17_Y7_N13
\COMP_CCD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(6));

-- Location: LCCOMB_X17_Y7_N14
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

-- Location: FF_X17_Y7_N15
\COMP_CCD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(7));

-- Location: LCCOMB_X17_Y7_N16
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

-- Location: FF_X17_Y7_N17
\COMP_CCD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(8));

-- Location: LCCOMB_X17_Y7_N18
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

-- Location: FF_X17_Y7_N19
\COMP_CCD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(9));

-- Location: LCCOMB_X17_Y7_N20
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

-- Location: FF_X17_Y7_N21
\COMP_CCD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(10));

-- Location: LCCOMB_X17_Y7_N22
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

-- Location: FF_X17_Y7_N23
\COMP_CCD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(11));

-- Location: LCCOMB_X17_Y7_N24
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

-- Location: FF_X17_Y7_N25
\COMP_CCD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(12));

-- Location: LCCOMB_X17_Y7_N26
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

-- Location: FF_X17_Y7_N27
\COMP_CCD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(13));

-- Location: LCCOMB_X17_Y7_N28
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

-- Location: FF_X17_Y7_N29
\COMP_CCD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(14));

-- Location: LCCOMB_X17_Y7_N30
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

-- Location: FF_X17_Y7_N31
\COMP_CCD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(15));

-- Location: LCCOMB_X17_Y6_N0
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

-- Location: FF_X17_Y6_N1
\COMP_CCD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(16));

-- Location: LCCOMB_X17_Y6_N2
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

-- Location: FF_X17_Y6_N3
\COMP_CCD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(17));

-- Location: LCCOMB_X17_Y6_N4
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

-- Location: FF_X17_Y6_N5
\COMP_CCD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(18));

-- Location: LCCOMB_X17_Y6_N6
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

-- Location: FF_X17_Y6_N7
\COMP_CCD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(19));

-- Location: LCCOMB_X16_Y7_N12
\COMP_CCD|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~5_combout\ = (!\COMP_CCD|Add0~40_combout\ & (!\COMP_CCD|Add0~44_combout\ & (!\COMP_CCD|Add0~42_combout\ & !\COMP_CCD|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~40_combout\,
	datab => \COMP_CCD|Add0~44_combout\,
	datac => \COMP_CCD|Add0~42_combout\,
	datad => \COMP_CCD|Add0~46_combout\,
	combout => \COMP_CCD|Equal1~5_combout\);

-- Location: LCCOMB_X16_Y7_N14
\COMP_CCD|adc_clk_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_div~0_combout\ = (\COMP_CCD|Add0~8_combout\ & (!\COMP_CCD|Add0~2_combout\ & (\COMP_CCD|Add0~0_combout\ & !\COMP_CCD|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~8_combout\,
	datab => \COMP_CCD|Add0~2_combout\,
	datac => \COMP_CCD|Add0~0_combout\,
	datad => \COMP_CCD|Add0~10_combout\,
	combout => \COMP_CCD|adc_clk_div~0_combout\);

-- Location: LCCOMB_X16_Y7_N26
\COMP_CCD|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~1_combout\ = (!\COMP_CCD|Add0~20_combout\ & (!\COMP_CCD|Add0~16_combout\ & (!\COMP_CCD|Add0~18_combout\ & !\COMP_CCD|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~20_combout\,
	datab => \COMP_CCD|Add0~16_combout\,
	datac => \COMP_CCD|Add0~18_combout\,
	datad => \COMP_CCD|Add0~22_combout\,
	combout => \COMP_CCD|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y7_N30
\COMP_CCD|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~0_combout\ = (!\COMP_CCD|Add0~4_combout\ & (\COMP_CCD|Add0~6_combout\ & (!\COMP_CCD|Add0~12_combout\ & !\COMP_CCD|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~4_combout\,
	datab => \COMP_CCD|Add0~6_combout\,
	datac => \COMP_CCD|Add0~12_combout\,
	datad => \COMP_CCD|Add0~14_combout\,
	combout => \COMP_CCD|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y7_N10
\COMP_CCD|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~2_combout\ = (\COMP_CCD|Equal1~1_combout\ & (!\COMP_CCD|Add0~24_combout\ & (\COMP_CCD|Equal1~0_combout\ & !\COMP_CCD|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~1_combout\,
	datab => \COMP_CCD|Add0~24_combout\,
	datac => \COMP_CCD|Equal1~0_combout\,
	datad => \COMP_CCD|Add0~26_combout\,
	combout => \COMP_CCD|Equal1~2_combout\);

-- Location: LCCOMB_X16_Y7_N16
\COMP_CCD|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~3_combout\ = (!\COMP_CCD|Add0~30_combout\ & (!\COMP_CCD|Add0~28_combout\ & (!\COMP_CCD|Add0~32_combout\ & \COMP_CCD|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~30_combout\,
	datab => \COMP_CCD|Add0~28_combout\,
	datac => \COMP_CCD|Add0~32_combout\,
	datad => \COMP_CCD|Equal1~2_combout\,
	combout => \COMP_CCD|Equal1~3_combout\);

-- Location: LCCOMB_X16_Y7_N24
\COMP_CCD|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~4_combout\ = (!\COMP_CCD|Add0~34_combout\ & (!\COMP_CCD|Add0~38_combout\ & (!\COMP_CCD|Add0~36_combout\ & \COMP_CCD|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~34_combout\,
	datab => \COMP_CCD|Add0~38_combout\,
	datac => \COMP_CCD|Add0~36_combout\,
	datad => \COMP_CCD|Equal1~3_combout\,
	combout => \COMP_CCD|Equal1~4_combout\);

-- Location: LCCOMB_X16_Y7_N6
\COMP_CCD|adc_clk_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_div~1_combout\ = \COMP_CCD|adc_clk_div~q\ $ (((\COMP_CCD|Equal0~10_combout\) # ((!\COMP_CCD|Equal1~4_combout\) # (!\COMP_CCD|adc_clk_div~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~10_combout\,
	datab => \COMP_CCD|adc_clk_div~q\,
	datac => \COMP_CCD|adc_clk_div~0_combout\,
	datad => \COMP_CCD|Equal1~4_combout\,
	combout => \COMP_CCD|adc_clk_div~1_combout\);

-- Location: LCCOMB_X16_Y7_N2
\COMP_CCD|adc_clk_div~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_div~2_combout\ = (\COMP_CCD|Add0~50_combout\) # ((\COMP_CCD|Add0~54_combout\) # (\COMP_CCD|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add0~50_combout\,
	datac => \COMP_CCD|Add0~54_combout\,
	datad => \COMP_CCD|Add0~52_combout\,
	combout => \COMP_CCD|adc_clk_div~2_combout\);

-- Location: LCCOMB_X16_Y7_N18
\COMP_CCD|adc_clk_div~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_div~3_combout\ = (\COMP_CCD|Add0~48_combout\) # ((\COMP_CCD|Add0~58_combout\) # ((\COMP_CCD|Add0~56_combout\) # (\COMP_CCD|adc_clk_div~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~48_combout\,
	datab => \COMP_CCD|Add0~58_combout\,
	datac => \COMP_CCD|Add0~56_combout\,
	datad => \COMP_CCD|adc_clk_div~2_combout\,
	combout => \COMP_CCD|adc_clk_div~3_combout\);

-- Location: LCCOMB_X16_Y7_N22
\COMP_CCD|adc_clk_div~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_div~4_combout\ = (\COMP_CCD|Equal1~5_combout\ & ((\COMP_CCD|adc_clk_div~3_combout\ & (!\COMP_CCD|adc_clk_div~q\)) # (!\COMP_CCD|adc_clk_div~3_combout\ & ((\COMP_CCD|adc_clk_div~1_combout\))))) # (!\COMP_CCD|Equal1~5_combout\ & 
-- (!\COMP_CCD|adc_clk_div~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~5_combout\,
	datab => \COMP_CCD|adc_clk_div~q\,
	datac => \COMP_CCD|adc_clk_div~1_combout\,
	datad => \COMP_CCD|adc_clk_div~3_combout\,
	combout => \COMP_CCD|adc_clk_div~4_combout\);

-- Location: LCCOMB_X16_Y7_N28
\COMP_CCD|adc_clk_div~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_div~5_combout\ = (\COMP_CCD|Add0~60_combout\ & (((\COMP_CCD|adc_clk_div~q\)))) # (!\COMP_CCD|Add0~60_combout\ & ((\COMP_CCD|Add0~62_combout\ & ((\COMP_CCD|adc_clk_div~q\))) # (!\COMP_CCD|Add0~62_combout\ & 
-- (!\COMP_CCD|adc_clk_div~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|adc_clk_div~4_combout\,
	datab => \COMP_CCD|Add0~60_combout\,
	datac => \COMP_CCD|adc_clk_div~q\,
	datad => \COMP_CCD|Add0~62_combout\,
	combout => \COMP_CCD|adc_clk_div~5_combout\);

-- Location: LCCOMB_X16_Y7_N8
\COMP_CCD|adc_clk_div~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_div~feeder_combout\ = \COMP_CCD|adc_clk_div~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|adc_clk_div~5_combout\,
	combout => \COMP_CCD|adc_clk_div~feeder_combout\);

-- Location: FF_X16_Y7_N9
\COMP_CCD|adc_clk_div\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|adc_clk_div~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|adc_clk_div~q\);

-- Location: LCCOMB_X16_Y7_N4
\COMP_CCD|ccd_clk_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_clk_div~0_combout\ = \COMP_CCD|Equal0~10_combout\ $ (\COMP_CCD|ccd_clk_div~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal0~10_combout\,
	datad => \COMP_CCD|ccd_clk_div~q\,
	combout => \COMP_CCD|ccd_clk_div~0_combout\);

-- Location: LCCOMB_X16_Y7_N20
\COMP_CCD|ccd_clk_div~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_clk_div~feeder_combout\ = \COMP_CCD|ccd_clk_div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|ccd_clk_div~0_combout\,
	combout => \COMP_CCD|ccd_clk_div~feeder_combout\);

-- Location: FF_X16_Y7_N21
\COMP_CCD|ccd_clk_div\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ccd_clk_div~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ccd_clk_div~q\);

-- Location: CLKCTRL_G0
\COMP_CCD|ccd_clk_div~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \COMP_CCD|ccd_clk_div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \COMP_CCD|ccd_clk_div~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y15_N0
\COMP_CCD|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~0_combout\ = \COMP_CCD|process_2:count[0]~q\ $ (GND)
-- \COMP_CCD|Add3~1\ = CARRY(!\COMP_CCD|process_2:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[0]~q\,
	datad => VCC,
	combout => \COMP_CCD|Add3~0_combout\,
	cout => \COMP_CCD|Add3~1\);

-- Location: LCCOMB_X14_Y15_N8
\COMP_CCD|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~8_combout\ = (\COMP_CCD|process_2:count[4]~q\ & (!\COMP_CCD|Add3~7\ & VCC)) # (!\COMP_CCD|process_2:count[4]~q\ & (\COMP_CCD|Add3~7\ $ (GND)))
-- \COMP_CCD|Add3~9\ = CARRY((!\COMP_CCD|process_2:count[4]~q\ & !\COMP_CCD|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[4]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~7\,
	combout => \COMP_CCD|Add3~8_combout\,
	cout => \COMP_CCD|Add3~9\);

-- Location: LCCOMB_X14_Y15_N10
\COMP_CCD|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~10_combout\ = (\COMP_CCD|process_2:count[5]~q\ & (!\COMP_CCD|Add3~9\)) # (!\COMP_CCD|process_2:count[5]~q\ & ((\COMP_CCD|Add3~9\) # (GND)))
-- \COMP_CCD|Add3~11\ = CARRY((!\COMP_CCD|Add3~9\) # (!\COMP_CCD|process_2:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~9\,
	combout => \COMP_CCD|Add3~10_combout\,
	cout => \COMP_CCD|Add3~11\);

-- Location: LCCOMB_X14_Y16_N20
\COMP_CCD|Add3~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~89_combout\ = (\COMP_CCD|Add3~10_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~10_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~89_combout\);

-- Location: LCCOMB_X14_Y16_N14
\COMP_CCD|LessThan11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~8_combout\ = (!\COMP_CCD|process_2:count[6]~q\ & !\COMP_CCD|process_2:count[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|process_2:count[5]~q\,
	combout => \COMP_CCD|LessThan11~8_combout\);

-- Location: LCCOMB_X14_Y16_N24
\COMP_CCD|process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~4_combout\ = (!\COMP_CCD|process_2:count[3]~q\ & (!\COMP_CCD|process_2:count[1]~q\ & (!\COMP_CCD|process_2:count[2]~q\ & !\COMP_CCD|process_2:count[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[3]~q\,
	datab => \COMP_CCD|process_2:count[1]~q\,
	datac => \COMP_CCD|process_2:count[2]~q\,
	datad => \COMP_CCD|process_2:count[4]~q\,
	combout => \COMP_CCD|process_2~4_combout\);

-- Location: LCCOMB_X13_Y16_N20
\COMP_CCD|LessThan16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan16~3_combout\ = (\COMP_CCD|process_2:count[7]~q\) # ((\COMP_CCD|LessThan11~8_combout\ & ((\COMP_CCD|process_2:count[0]~q\) # (!\COMP_CCD|process_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datab => \COMP_CCD|process_2:count[0]~q\,
	datac => \COMP_CCD|LessThan11~8_combout\,
	datad => \COMP_CCD|process_2~4_combout\,
	combout => \COMP_CCD|LessThan16~3_combout\);

-- Location: LCCOMB_X12_Y16_N4
\COMP_CCD|LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan16~1_combout\ = (!\COMP_CCD|process_2:count[30]~q\ & !\COMP_CCD|process_2:count[29]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|process_2:count[29]~q\,
	combout => \COMP_CCD|LessThan16~1_combout\);

-- Location: LCCOMB_X13_Y16_N12
\COMP_CCD|LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan16~0_combout\ = (!\COMP_CCD|process_2:count[11]~q\ & (!\COMP_CCD|process_2:count[10]~q\ & (!\COMP_CCD|process_2:count[9]~q\ & !\COMP_CCD|process_2:count[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[11]~q\,
	datab => \COMP_CCD|process_2:count[10]~q\,
	datac => \COMP_CCD|process_2:count[9]~q\,
	datad => \COMP_CCD|process_2:count[8]~q\,
	combout => \COMP_CCD|LessThan16~0_combout\);

-- Location: LCCOMB_X13_Y16_N14
\COMP_CCD|LessThan16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan16~4_combout\ = (\COMP_CCD|LessThan16~1_combout\ & ((\COMP_CCD|process_2:count[12]~q\) # ((\COMP_CCD|LessThan16~3_combout\ & \COMP_CCD|LessThan16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|LessThan16~3_combout\,
	datac => \COMP_CCD|LessThan16~1_combout\,
	datad => \COMP_CCD|LessThan16~0_combout\,
	combout => \COMP_CCD|LessThan16~4_combout\);

-- Location: LCCOMB_X14_Y13_N2
\COMP_CCD|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~0_combout\ = (!\COMP_CCD|process_2:count[13]~q\ & (!\COMP_CCD|process_2:count[15]~q\ & (!\COMP_CCD|process_2:count[14]~q\ & !\COMP_CCD|process_2:count[16]~q\)))

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
	combout => \COMP_CCD|LessThan11~0_combout\);

-- Location: LCCOMB_X13_Y15_N0
\COMP_CCD|LessThan11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~2_combout\ = (!\COMP_CCD|process_2:count[24]~q\ & (!\COMP_CCD|process_2:count[22]~q\ & (!\COMP_CCD|process_2:count[23]~q\ & !\COMP_CCD|process_2:count[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[24]~q\,
	datab => \COMP_CCD|process_2:count[22]~q\,
	datac => \COMP_CCD|process_2:count[23]~q\,
	datad => \COMP_CCD|process_2:count[21]~q\,
	combout => \COMP_CCD|LessThan11~2_combout\);

-- Location: LCCOMB_X14_Y13_N20
\COMP_CCD|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~1_combout\ = (!\COMP_CCD|process_2:count[20]~q\ & (!\COMP_CCD|process_2:count[19]~q\ & (!\COMP_CCD|process_2:count[17]~q\ & !\COMP_CCD|process_2:count[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[20]~q\,
	datab => \COMP_CCD|process_2:count[19]~q\,
	datac => \COMP_CCD|process_2:count[17]~q\,
	datad => \COMP_CCD|process_2:count[18]~q\,
	combout => \COMP_CCD|LessThan11~1_combout\);

-- Location: LCCOMB_X13_Y15_N26
\COMP_CCD|LessThan11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~3_combout\ = (!\COMP_CCD|process_2:count[25]~q\ & !\COMP_CCD|process_2:count[26]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_2:count[25]~q\,
	datad => \COMP_CCD|process_2:count[26]~q\,
	combout => \COMP_CCD|LessThan11~3_combout\);

-- Location: LCCOMB_X13_Y16_N0
\COMP_CCD|LessThan11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~4_combout\ = (\COMP_CCD|LessThan11~0_combout\ & (\COMP_CCD|LessThan11~2_combout\ & (\COMP_CCD|LessThan11~1_combout\ & \COMP_CCD|LessThan11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan11~0_combout\,
	datab => \COMP_CCD|LessThan11~2_combout\,
	datac => \COMP_CCD|LessThan11~1_combout\,
	datad => \COMP_CCD|LessThan11~3_combout\,
	combout => \COMP_CCD|LessThan11~4_combout\);

-- Location: LCCOMB_X13_Y16_N10
\COMP_CCD|LessThan16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan16~2_combout\ = (!\COMP_CCD|process_2:count[28]~q\ & (!\COMP_CCD|process_2:count[27]~q\ & \COMP_CCD|LessThan11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[28]~q\,
	datac => \COMP_CCD|process_2:count[27]~q\,
	datad => \COMP_CCD|LessThan11~4_combout\,
	combout => \COMP_CCD|LessThan16~2_combout\);

-- Location: LCCOMB_X13_Y16_N8
\COMP_CCD|LessThan16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan16~5_combout\ = (\COMP_CCD|process_2:count[31]~q\) # ((\COMP_CCD|LessThan16~4_combout\ & \COMP_CCD|LessThan16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~q\,
	datac => \COMP_CCD|LessThan16~4_combout\,
	datad => \COMP_CCD|LessThan16~2_combout\,
	combout => \COMP_CCD|LessThan16~5_combout\);

-- Location: IOIBUF_X34_Y12_N15
\trigger_start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger_start,
	o => \trigger_start~input_o\);

-- Location: LCCOMB_X11_Y14_N8
\COMP_CCD|process_2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~11_combout\ = (\trigger_start~input_o\ & \COMP_CCD|LessThan15~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|LessThan15~9_combout\,
	combout => \COMP_CCD|process_2~11_combout\);

-- Location: LCCOMB_X12_Y14_N0
\COMP_CCD|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~0_combout\ = \COMP_CCD|count_line\(0) $ (VCC)
-- \COMP_CCD|Add2~1\ = CARRY(\COMP_CCD|count_line\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(0),
	datad => VCC,
	combout => \COMP_CCD|Add2~0_combout\,
	cout => \COMP_CCD|Add2~1\);

-- Location: LCCOMB_X13_Y14_N4
\COMP_CCD|count_line~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~98_combout\ = (\COMP_CCD|Add2~0_combout\ & ((\trigger_start~input_o\) # (\COMP_CCD|trigger_start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~0_combout\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~98_combout\);

-- Location: LCCOMB_X11_Y14_N30
\COMP_CCD|count_line[25]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line[25]~99_combout\ = (\COMP_CCD|LessThan16~5_combout\ & (!\COMP_CCD|trigger_start_reg~q\ & (!\trigger_start~input_o\))) # (!\COMP_CCD|LessThan16~5_combout\ & (((!\COMP_CCD|trigger_start_reg~q\ & !\trigger_start~input_o\)) # 
-- (!\COMP_CCD|LessThan15~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan16~5_combout\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|LessThan15~9_combout\,
	combout => \COMP_CCD|count_line[25]~99_combout\);

-- Location: FF_X12_Y14_N1
\COMP_CCD|count_line[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~98_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(0));

-- Location: LCCOMB_X12_Y14_N2
\COMP_CCD|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~2_combout\ = (\COMP_CCD|count_line\(1) & ((\COMP_CCD|Add2~1\) # (GND))) # (!\COMP_CCD|count_line\(1) & (!\COMP_CCD|Add2~1\))
-- \COMP_CCD|Add2~3\ = CARRY((\COMP_CCD|count_line\(1)) # (!\COMP_CCD|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(1),
	datad => VCC,
	cin => \COMP_CCD|Add2~1\,
	combout => \COMP_CCD|Add2~2_combout\,
	cout => \COMP_CCD|Add2~3\);

-- Location: LCCOMB_X11_Y14_N10
\COMP_CCD|count_line~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~66_combout\ = (\COMP_CCD|LessThan15~9_combout\ & (!\COMP_CCD|count_line\(1))) # (!\COMP_CCD|LessThan15~9_combout\ & ((\COMP_CCD|LessThan16~5_combout\ & (!\COMP_CCD|count_line\(1))) # (!\COMP_CCD|LessThan16~5_combout\ & 
-- ((\COMP_CCD|Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(1),
	datab => \COMP_CCD|LessThan15~9_combout\,
	datac => \COMP_CCD|Add2~2_combout\,
	datad => \COMP_CCD|LessThan16~5_combout\,
	combout => \COMP_CCD|count_line~66_combout\);

-- Location: LCCOMB_X11_Y14_N6
\COMP_CCD|count_line~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~67_combout\ = (\COMP_CCD|process_2~10_combout\ & (!\COMP_CCD|count_line~66_combout\ & ((\COMP_CCD|count_line\(1)) # (!\COMP_CCD|process_2~11_combout\)))) # (!\COMP_CCD|process_2~10_combout\ & (((\COMP_CCD|count_line\(1))) # 
-- (!\COMP_CCD|process_2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2~10_combout\,
	datab => \COMP_CCD|process_2~11_combout\,
	datac => \COMP_CCD|count_line\(1),
	datad => \COMP_CCD|count_line~66_combout\,
	combout => \COMP_CCD|count_line~67_combout\);

-- Location: FF_X11_Y14_N7
\COMP_CCD|count_line[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(1));

-- Location: LCCOMB_X12_Y14_N4
\COMP_CCD|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~4_combout\ = (\COMP_CCD|count_line\(2) & (\COMP_CCD|Add2~3\ $ (GND))) # (!\COMP_CCD|count_line\(2) & (!\COMP_CCD|Add2~3\ & VCC))
-- \COMP_CCD|Add2~5\ = CARRY((\COMP_CCD|count_line\(2) & !\COMP_CCD|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(2),
	datad => VCC,
	cin => \COMP_CCD|Add2~3\,
	combout => \COMP_CCD|Add2~4_combout\,
	cout => \COMP_CCD|Add2~5\);

-- Location: LCCOMB_X13_Y14_N20
\COMP_CCD|count_line~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~74_combout\ = (\COMP_CCD|Add2~4_combout\ & ((\trigger_start~input_o\) # (\COMP_CCD|trigger_start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add2~4_combout\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~74_combout\);

-- Location: FF_X12_Y14_N13
\COMP_CCD|count_line[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~74_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(2));

-- Location: LCCOMB_X12_Y14_N6
\COMP_CCD|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~6_combout\ = (\COMP_CCD|count_line\(3) & (!\COMP_CCD|Add2~5\)) # (!\COMP_CCD|count_line\(3) & ((\COMP_CCD|Add2~5\) # (GND)))
-- \COMP_CCD|Add2~7\ = CARRY((!\COMP_CCD|Add2~5\) # (!\COMP_CCD|count_line\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(3),
	datad => VCC,
	cin => \COMP_CCD|Add2~5\,
	combout => \COMP_CCD|Add2~6_combout\,
	cout => \COMP_CCD|Add2~7\);

-- Location: LCCOMB_X13_Y14_N22
\COMP_CCD|count_line~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~73_combout\ = (\COMP_CCD|Add2~6_combout\ & ((\trigger_start~input_o\) # (\COMP_CCD|trigger_start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add2~6_combout\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~73_combout\);

-- Location: FF_X12_Y14_N19
\COMP_CCD|count_line[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~73_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(3));

-- Location: LCCOMB_X12_Y14_N8
\COMP_CCD|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~8_combout\ = (\COMP_CCD|count_line\(4) & (\COMP_CCD|Add2~7\ $ (GND))) # (!\COMP_CCD|count_line\(4) & (!\COMP_CCD|Add2~7\ & VCC))
-- \COMP_CCD|Add2~9\ = CARRY((\COMP_CCD|count_line\(4) & !\COMP_CCD|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(4),
	datad => VCC,
	cin => \COMP_CCD|Add2~7\,
	combout => \COMP_CCD|Add2~8_combout\,
	cout => \COMP_CCD|Add2~9\);

-- Location: LCCOMB_X13_Y14_N16
\COMP_CCD|count_line~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~72_combout\ = (\COMP_CCD|Add2~8_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~8_combout\,
	combout => \COMP_CCD|count_line~72_combout\);

-- Location: FF_X12_Y14_N21
\COMP_CCD|count_line[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~72_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(4));

-- Location: LCCOMB_X12_Y14_N10
\COMP_CCD|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~10_combout\ = (\COMP_CCD|count_line\(5) & (!\COMP_CCD|Add2~9\)) # (!\COMP_CCD|count_line\(5) & ((\COMP_CCD|Add2~9\) # (GND)))
-- \COMP_CCD|Add2~11\ = CARRY((!\COMP_CCD|Add2~9\) # (!\COMP_CCD|count_line\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(5),
	datad => VCC,
	cin => \COMP_CCD|Add2~9\,
	combout => \COMP_CCD|Add2~10_combout\,
	cout => \COMP_CCD|Add2~11\);

-- Location: LCCOMB_X13_Y14_N26
\COMP_CCD|count_line~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~78_combout\ = (\COMP_CCD|Add2~10_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~10_combout\,
	combout => \COMP_CCD|count_line~78_combout\);

-- Location: FF_X12_Y14_N7
\COMP_CCD|count_line[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~78_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(5));

-- Location: LCCOMB_X12_Y14_N12
\COMP_CCD|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~12_combout\ = (\COMP_CCD|count_line\(6) & (\COMP_CCD|Add2~11\ $ (GND))) # (!\COMP_CCD|count_line\(6) & (!\COMP_CCD|Add2~11\ & VCC))
-- \COMP_CCD|Add2~13\ = CARRY((\COMP_CCD|count_line\(6) & !\COMP_CCD|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(6),
	datad => VCC,
	cin => \COMP_CCD|Add2~11\,
	combout => \COMP_CCD|Add2~12_combout\,
	cout => \COMP_CCD|Add2~13\);

-- Location: LCCOMB_X13_Y14_N12
\COMP_CCD|count_line~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~77_combout\ = (\COMP_CCD|Add2~12_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~12_combout\,
	combout => \COMP_CCD|count_line~77_combout\);

-- Location: FF_X12_Y14_N27
\COMP_CCD|count_line[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~77_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(6));

-- Location: LCCOMB_X12_Y14_N14
\COMP_CCD|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~14_combout\ = (\COMP_CCD|count_line\(7) & (!\COMP_CCD|Add2~13\)) # (!\COMP_CCD|count_line\(7) & ((\COMP_CCD|Add2~13\) # (GND)))
-- \COMP_CCD|Add2~15\ = CARRY((!\COMP_CCD|Add2~13\) # (!\COMP_CCD|count_line\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(7),
	datad => VCC,
	cin => \COMP_CCD|Add2~13\,
	combout => \COMP_CCD|Add2~14_combout\,
	cout => \COMP_CCD|Add2~15\);

-- Location: LCCOMB_X13_Y14_N30
\COMP_CCD|count_line~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~76_combout\ = (\COMP_CCD|Add2~14_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~14_combout\,
	combout => \COMP_CCD|count_line~76_combout\);

-- Location: FF_X12_Y14_N5
\COMP_CCD|count_line[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~76_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(7));

-- Location: LCCOMB_X12_Y14_N16
\COMP_CCD|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~16_combout\ = (\COMP_CCD|count_line\(8) & (\COMP_CCD|Add2~15\ $ (GND))) # (!\COMP_CCD|count_line\(8) & (!\COMP_CCD|Add2~15\ & VCC))
-- \COMP_CCD|Add2~17\ = CARRY((\COMP_CCD|count_line\(8) & !\COMP_CCD|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(8),
	datad => VCC,
	cin => \COMP_CCD|Add2~15\,
	combout => \COMP_CCD|Add2~16_combout\,
	cout => \COMP_CCD|Add2~17\);

-- Location: LCCOMB_X11_Y14_N14
\COMP_CCD|count_line~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~75_combout\ = (\COMP_CCD|Add2~16_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~16_combout\,
	combout => \COMP_CCD|count_line~75_combout\);

-- Location: FF_X12_Y14_N15
\COMP_CCD|count_line[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~75_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(8));

-- Location: LCCOMB_X12_Y14_N18
\COMP_CCD|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~18_combout\ = (\COMP_CCD|count_line\(9) & (!\COMP_CCD|Add2~17\)) # (!\COMP_CCD|count_line\(9) & ((\COMP_CCD|Add2~17\) # (GND)))
-- \COMP_CCD|Add2~19\ = CARRY((!\COMP_CCD|Add2~17\) # (!\COMP_CCD|count_line\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(9),
	datad => VCC,
	cin => \COMP_CCD|Add2~17\,
	combout => \COMP_CCD|Add2~18_combout\,
	cout => \COMP_CCD|Add2~19\);

-- Location: LCCOMB_X13_Y14_N28
\COMP_CCD|count_line~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~82_combout\ = (\COMP_CCD|Add2~18_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~18_combout\,
	combout => \COMP_CCD|count_line~82_combout\);

-- Location: FF_X13_Y14_N29
\COMP_CCD|count_line[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~82_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(9));

-- Location: LCCOMB_X12_Y14_N20
\COMP_CCD|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~20_combout\ = (\COMP_CCD|count_line\(10) & (\COMP_CCD|Add2~19\ $ (GND))) # (!\COMP_CCD|count_line\(10) & (!\COMP_CCD|Add2~19\ & VCC))
-- \COMP_CCD|Add2~21\ = CARRY((\COMP_CCD|count_line\(10) & !\COMP_CCD|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(10),
	datad => VCC,
	cin => \COMP_CCD|Add2~19\,
	combout => \COMP_CCD|Add2~20_combout\,
	cout => \COMP_CCD|Add2~21\);

-- Location: LCCOMB_X13_Y14_N14
\COMP_CCD|count_line~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~81_combout\ = (\COMP_CCD|Add2~20_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~20_combout\,
	combout => \COMP_CCD|count_line~81_combout\);

-- Location: FF_X12_Y14_N25
\COMP_CCD|count_line[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~81_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(10));

-- Location: LCCOMB_X12_Y14_N22
\COMP_CCD|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~22_combout\ = (\COMP_CCD|count_line\(11) & (!\COMP_CCD|Add2~21\)) # (!\COMP_CCD|count_line\(11) & ((\COMP_CCD|Add2~21\) # (GND)))
-- \COMP_CCD|Add2~23\ = CARRY((!\COMP_CCD|Add2~21\) # (!\COMP_CCD|count_line\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(11),
	datad => VCC,
	cin => \COMP_CCD|Add2~21\,
	combout => \COMP_CCD|Add2~22_combout\,
	cout => \COMP_CCD|Add2~23\);

-- Location: LCCOMB_X13_Y14_N8
\COMP_CCD|count_line~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~80_combout\ = (\COMP_CCD|Add2~22_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~22_combout\,
	combout => \COMP_CCD|count_line~80_combout\);

-- Location: FF_X12_Y14_N17
\COMP_CCD|count_line[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~80_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(11));

-- Location: LCCOMB_X12_Y14_N24
\COMP_CCD|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~24_combout\ = (\COMP_CCD|count_line\(12) & (\COMP_CCD|Add2~23\ $ (GND))) # (!\COMP_CCD|count_line\(12) & (!\COMP_CCD|Add2~23\ & VCC))
-- \COMP_CCD|Add2~25\ = CARRY((\COMP_CCD|count_line\(12) & !\COMP_CCD|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(12),
	datad => VCC,
	cin => \COMP_CCD|Add2~23\,
	combout => \COMP_CCD|Add2~24_combout\,
	cout => \COMP_CCD|Add2~25\);

-- Location: LCCOMB_X13_Y14_N2
\COMP_CCD|count_line~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~79_combout\ = (\COMP_CCD|Add2~24_combout\ & ((\trigger_start~input_o\) # (\COMP_CCD|trigger_start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add2~24_combout\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~79_combout\);

-- Location: FF_X13_Y14_N3
\COMP_CCD|count_line[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~79_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(12));

-- Location: LCCOMB_X12_Y14_N26
\COMP_CCD|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~26_combout\ = (\COMP_CCD|count_line\(13) & (!\COMP_CCD|Add2~25\)) # (!\COMP_CCD|count_line\(13) & ((\COMP_CCD|Add2~25\) # (GND)))
-- \COMP_CCD|Add2~27\ = CARRY((!\COMP_CCD|Add2~25\) # (!\COMP_CCD|count_line\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(13),
	datad => VCC,
	cin => \COMP_CCD|Add2~25\,
	combout => \COMP_CCD|Add2~26_combout\,
	cout => \COMP_CCD|Add2~27\);

-- Location: LCCOMB_X11_Y14_N16
\COMP_CCD|count_line~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~86_combout\ = (\COMP_CCD|Add2~26_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~26_combout\,
	combout => \COMP_CCD|count_line~86_combout\);

-- Location: FF_X11_Y14_N17
\COMP_CCD|count_line[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~86_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(13));

-- Location: LCCOMB_X12_Y14_N28
\COMP_CCD|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~28_combout\ = (\COMP_CCD|count_line\(14) & (\COMP_CCD|Add2~27\ $ (GND))) # (!\COMP_CCD|count_line\(14) & (!\COMP_CCD|Add2~27\ & VCC))
-- \COMP_CCD|Add2~29\ = CARRY((\COMP_CCD|count_line\(14) & !\COMP_CCD|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(14),
	datad => VCC,
	cin => \COMP_CCD|Add2~27\,
	combout => \COMP_CCD|Add2~28_combout\,
	cout => \COMP_CCD|Add2~29\);

-- Location: LCCOMB_X13_Y14_N10
\COMP_CCD|count_line~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~85_combout\ = (\COMP_CCD|Add2~28_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~28_combout\,
	combout => \COMP_CCD|count_line~85_combout\);

-- Location: FF_X12_Y14_N9
\COMP_CCD|count_line[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~85_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(14));

-- Location: LCCOMB_X12_Y14_N30
\COMP_CCD|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~30_combout\ = (\COMP_CCD|count_line\(15) & (!\COMP_CCD|Add2~29\)) # (!\COMP_CCD|count_line\(15) & ((\COMP_CCD|Add2~29\) # (GND)))
-- \COMP_CCD|Add2~31\ = CARRY((!\COMP_CCD|Add2~29\) # (!\COMP_CCD|count_line\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(15),
	datad => VCC,
	cin => \COMP_CCD|Add2~29\,
	combout => \COMP_CCD|Add2~30_combout\,
	cout => \COMP_CCD|Add2~31\);

-- Location: LCCOMB_X13_Y14_N0
\COMP_CCD|count_line~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~84_combout\ = (\COMP_CCD|Add2~30_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~30_combout\,
	combout => \COMP_CCD|count_line~84_combout\);

-- Location: FF_X12_Y14_N11
\COMP_CCD|count_line[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~84_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(15));

-- Location: LCCOMB_X12_Y13_N0
\COMP_CCD|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~32_combout\ = (\COMP_CCD|count_line\(16) & (\COMP_CCD|Add2~31\ $ (GND))) # (!\COMP_CCD|count_line\(16) & (!\COMP_CCD|Add2~31\ & VCC))
-- \COMP_CCD|Add2~33\ = CARRY((\COMP_CCD|count_line\(16) & !\COMP_CCD|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(16),
	datad => VCC,
	cin => \COMP_CCD|Add2~31\,
	combout => \COMP_CCD|Add2~32_combout\,
	cout => \COMP_CCD|Add2~33\);

-- Location: LCCOMB_X14_Y13_N26
\COMP_CCD|count_line~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~83_combout\ = (\COMP_CCD|Add2~32_combout\ & ((\trigger_start~input_o\) # (\COMP_CCD|trigger_start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger_start~input_o\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|Add2~32_combout\,
	combout => \COMP_CCD|count_line~83_combout\);

-- Location: FF_X12_Y13_N11
\COMP_CCD|count_line[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~83_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(16));

-- Location: LCCOMB_X12_Y13_N2
\COMP_CCD|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~34_combout\ = (\COMP_CCD|count_line\(17) & (!\COMP_CCD|Add2~33\)) # (!\COMP_CCD|count_line\(17) & ((\COMP_CCD|Add2~33\) # (GND)))
-- \COMP_CCD|Add2~35\ = CARRY((!\COMP_CCD|Add2~33\) # (!\COMP_CCD|count_line\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(17),
	datad => VCC,
	cin => \COMP_CCD|Add2~33\,
	combout => \COMP_CCD|Add2~34_combout\,
	cout => \COMP_CCD|Add2~35\);

-- Location: LCCOMB_X11_Y13_N30
\COMP_CCD|count_line~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~96_combout\ = (\COMP_CCD|Add2~34_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~34_combout\,
	combout => \COMP_CCD|count_line~96_combout\);

-- Location: FF_X11_Y14_N15
\COMP_CCD|count_line[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~96_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(17));

-- Location: LCCOMB_X12_Y13_N4
\COMP_CCD|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~36_combout\ = (\COMP_CCD|count_line\(18) & (\COMP_CCD|Add2~35\ $ (GND))) # (!\COMP_CCD|count_line\(18) & (!\COMP_CCD|Add2~35\ & VCC))
-- \COMP_CCD|Add2~37\ = CARRY((\COMP_CCD|count_line\(18) & !\COMP_CCD|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(18),
	datad => VCC,
	cin => \COMP_CCD|Add2~35\,
	combout => \COMP_CCD|Add2~36_combout\,
	cout => \COMP_CCD|Add2~37\);

-- Location: LCCOMB_X11_Y13_N20
\COMP_CCD|count_line~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~95_combout\ = (\COMP_CCD|Add2~36_combout\ & ((\trigger_start~input_o\) # (\COMP_CCD|trigger_start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger_start~input_o\,
	datac => \COMP_CCD|Add2~36_combout\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~95_combout\);

-- Location: FF_X12_Y13_N29
\COMP_CCD|count_line[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~95_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(18));

-- Location: LCCOMB_X12_Y13_N6
\COMP_CCD|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~38_combout\ = (\COMP_CCD|count_line\(19) & (!\COMP_CCD|Add2~37\)) # (!\COMP_CCD|count_line\(19) & ((\COMP_CCD|Add2~37\) # (GND)))
-- \COMP_CCD|Add2~39\ = CARRY((!\COMP_CCD|Add2~37\) # (!\COMP_CCD|count_line\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(19),
	datad => VCC,
	cin => \COMP_CCD|Add2~37\,
	combout => \COMP_CCD|Add2~38_combout\,
	cout => \COMP_CCD|Add2~39\);

-- Location: LCCOMB_X11_Y13_N4
\COMP_CCD|count_line~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~88_combout\ = (\COMP_CCD|Add2~38_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~38_combout\,
	combout => \COMP_CCD|count_line~88_combout\);

-- Location: FF_X12_Y13_N15
\COMP_CCD|count_line[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~88_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(19));

-- Location: LCCOMB_X12_Y13_N8
\COMP_CCD|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~40_combout\ = (\COMP_CCD|count_line\(20) & (\COMP_CCD|Add2~39\ $ (GND))) # (!\COMP_CCD|count_line\(20) & (!\COMP_CCD|Add2~39\ & VCC))
-- \COMP_CCD|Add2~41\ = CARRY((\COMP_CCD|count_line\(20) & !\COMP_CCD|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(20),
	datad => VCC,
	cin => \COMP_CCD|Add2~39\,
	combout => \COMP_CCD|Add2~40_combout\,
	cout => \COMP_CCD|Add2~41\);

-- Location: LCCOMB_X11_Y13_N26
\COMP_CCD|count_line~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~94_combout\ = (\COMP_CCD|Add2~40_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|Add2~40_combout\,
	datad => \trigger_start~input_o\,
	combout => \COMP_CCD|count_line~94_combout\);

-- Location: FF_X12_Y13_N25
\COMP_CCD|count_line[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~94_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(20));

-- Location: LCCOMB_X12_Y13_N10
\COMP_CCD|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~42_combout\ = (\COMP_CCD|count_line\(21) & (!\COMP_CCD|Add2~41\)) # (!\COMP_CCD|count_line\(21) & ((\COMP_CCD|Add2~41\) # (GND)))
-- \COMP_CCD|Add2~43\ = CARRY((!\COMP_CCD|Add2~41\) # (!\COMP_CCD|count_line\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(21),
	datad => VCC,
	cin => \COMP_CCD|Add2~41\,
	combout => \COMP_CCD|Add2~42_combout\,
	cout => \COMP_CCD|Add2~43\);

-- Location: LCCOMB_X11_Y13_N14
\COMP_CCD|count_line~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~71_combout\ = (\COMP_CCD|Add2~42_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datac => \COMP_CCD|Add2~42_combout\,
	combout => \COMP_CCD|count_line~71_combout\);

-- Location: FF_X12_Y13_N21
\COMP_CCD|count_line[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~71_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(21));

-- Location: LCCOMB_X12_Y13_N12
\COMP_CCD|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~44_combout\ = (\COMP_CCD|count_line\(22) & (\COMP_CCD|Add2~43\ $ (GND))) # (!\COMP_CCD|count_line\(22) & (!\COMP_CCD|Add2~43\ & VCC))
-- \COMP_CCD|Add2~45\ = CARRY((\COMP_CCD|count_line\(22) & !\COMP_CCD|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(22),
	datad => VCC,
	cin => \COMP_CCD|Add2~43\,
	combout => \COMP_CCD|Add2~44_combout\,
	cout => \COMP_CCD|Add2~45\);

-- Location: LCCOMB_X11_Y13_N16
\COMP_CCD|count_line~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~70_combout\ = (\COMP_CCD|Add2~44_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~44_combout\,
	combout => \COMP_CCD|count_line~70_combout\);

-- Location: FF_X12_Y13_N5
\COMP_CCD|count_line[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~70_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(22));

-- Location: LCCOMB_X12_Y13_N14
\COMP_CCD|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~46_combout\ = (\COMP_CCD|count_line\(23) & (!\COMP_CCD|Add2~45\)) # (!\COMP_CCD|count_line\(23) & ((\COMP_CCD|Add2~45\) # (GND)))
-- \COMP_CCD|Add2~47\ = CARRY((!\COMP_CCD|Add2~45\) # (!\COMP_CCD|count_line\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(23),
	datad => VCC,
	cin => \COMP_CCD|Add2~45\,
	combout => \COMP_CCD|Add2~46_combout\,
	cout => \COMP_CCD|Add2~47\);

-- Location: LCCOMB_X11_Y13_N6
\COMP_CCD|count_line~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~69_combout\ = (\COMP_CCD|Add2~46_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datac => \COMP_CCD|Add2~46_combout\,
	combout => \COMP_CCD|count_line~69_combout\);

-- Location: FF_X12_Y13_N1
\COMP_CCD|count_line[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~69_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(23));

-- Location: LCCOMB_X12_Y13_N16
\COMP_CCD|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~48_combout\ = (\COMP_CCD|count_line\(24) & (\COMP_CCD|Add2~47\ $ (GND))) # (!\COMP_CCD|count_line\(24) & (!\COMP_CCD|Add2~47\ & VCC))
-- \COMP_CCD|Add2~49\ = CARRY((\COMP_CCD|count_line\(24) & !\COMP_CCD|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(24),
	datad => VCC,
	cin => \COMP_CCD|Add2~47\,
	combout => \COMP_CCD|Add2~48_combout\,
	cout => \COMP_CCD|Add2~49\);

-- Location: LCCOMB_X11_Y13_N24
\COMP_CCD|count_line~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~68_combout\ = (\COMP_CCD|Add2~48_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~48_combout\,
	combout => \COMP_CCD|count_line~68_combout\);

-- Location: FF_X12_Y13_N31
\COMP_CCD|count_line[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~68_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(24));

-- Location: LCCOMB_X11_Y13_N28
\COMP_CCD|LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~0_combout\ = (\COMP_CCD|count_line\(24)) # ((\COMP_CCD|count_line\(23)) # ((\COMP_CCD|count_line\(21)) # (\COMP_CCD|count_line\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(24),
	datab => \COMP_CCD|count_line\(23),
	datac => \COMP_CCD|count_line\(21),
	datad => \COMP_CCD|count_line\(22),
	combout => \COMP_CCD|LessThan15~0_combout\);

-- Location: LCCOMB_X12_Y13_N18
\COMP_CCD|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~50_combout\ = (\COMP_CCD|count_line\(25) & (!\COMP_CCD|Add2~49\)) # (!\COMP_CCD|count_line\(25) & ((\COMP_CCD|Add2~49\) # (GND)))
-- \COMP_CCD|Add2~51\ = CARRY((!\COMP_CCD|Add2~49\) # (!\COMP_CCD|count_line\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(25),
	datad => VCC,
	cin => \COMP_CCD|Add2~49\,
	combout => \COMP_CCD|Add2~50_combout\,
	cout => \COMP_CCD|Add2~51\);

-- Location: LCCOMB_X11_Y13_N8
\COMP_CCD|count_line~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~93_combout\ = (\COMP_CCD|Add2~50_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~50_combout\,
	combout => \COMP_CCD|count_line~93_combout\);

-- Location: FF_X12_Y13_N13
\COMP_CCD|count_line[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~93_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(25));

-- Location: LCCOMB_X12_Y13_N20
\COMP_CCD|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~52_combout\ = (\COMP_CCD|count_line\(26) & (\COMP_CCD|Add2~51\ $ (GND))) # (!\COMP_CCD|count_line\(26) & (!\COMP_CCD|Add2~51\ & VCC))
-- \COMP_CCD|Add2~53\ = CARRY((\COMP_CCD|count_line\(26) & !\COMP_CCD|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(26),
	datad => VCC,
	cin => \COMP_CCD|Add2~51\,
	combout => \COMP_CCD|Add2~52_combout\,
	cout => \COMP_CCD|Add2~53\);

-- Location: LCCOMB_X11_Y13_N22
\COMP_CCD|count_line~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~92_combout\ = (\COMP_CCD|Add2~52_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|Add2~52_combout\,
	datad => \trigger_start~input_o\,
	combout => \COMP_CCD|count_line~92_combout\);

-- Location: FF_X12_Y13_N19
\COMP_CCD|count_line[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|count_line~92_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(26));

-- Location: LCCOMB_X12_Y13_N22
\COMP_CCD|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~54_combout\ = (\COMP_CCD|count_line\(27) & (!\COMP_CCD|Add2~53\)) # (!\COMP_CCD|count_line\(27) & ((\COMP_CCD|Add2~53\) # (GND)))
-- \COMP_CCD|Add2~55\ = CARRY((!\COMP_CCD|Add2~53\) # (!\COMP_CCD|count_line\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(27),
	datad => VCC,
	cin => \COMP_CCD|Add2~53\,
	combout => \COMP_CCD|Add2~54_combout\,
	cout => \COMP_CCD|Add2~55\);

-- Location: LCCOMB_X11_Y13_N12
\COMP_CCD|count_line~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~91_combout\ = (\COMP_CCD|Add2~54_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~54_combout\,
	combout => \COMP_CCD|count_line~91_combout\);

-- Location: FF_X11_Y13_N13
\COMP_CCD|count_line[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~91_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(27));

-- Location: LCCOMB_X12_Y13_N24
\COMP_CCD|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~56_combout\ = (\COMP_CCD|count_line\(28) & (\COMP_CCD|Add2~55\ $ (GND))) # (!\COMP_CCD|count_line\(28) & (!\COMP_CCD|Add2~55\ & VCC))
-- \COMP_CCD|Add2~57\ = CARRY((\COMP_CCD|count_line\(28) & !\COMP_CCD|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(28),
	datad => VCC,
	cin => \COMP_CCD|Add2~55\,
	combout => \COMP_CCD|Add2~56_combout\,
	cout => \COMP_CCD|Add2~57\);

-- Location: LCCOMB_X11_Y13_N18
\COMP_CCD|count_line~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~90_combout\ = (\COMP_CCD|Add2~56_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \COMP_CCD|Add2~56_combout\,
	datad => \trigger_start~input_o\,
	combout => \COMP_CCD|count_line~90_combout\);

-- Location: FF_X11_Y13_N19
\COMP_CCD|count_line[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~90_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(28));

-- Location: LCCOMB_X12_Y13_N26
\COMP_CCD|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~58_combout\ = (\COMP_CCD|count_line\(29) & (!\COMP_CCD|Add2~57\)) # (!\COMP_CCD|count_line\(29) & ((\COMP_CCD|Add2~57\) # (GND)))
-- \COMP_CCD|Add2~59\ = CARRY((!\COMP_CCD|Add2~57\) # (!\COMP_CCD|count_line\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(29),
	datad => VCC,
	cin => \COMP_CCD|Add2~57\,
	combout => \COMP_CCD|Add2~58_combout\,
	cout => \COMP_CCD|Add2~59\);

-- Location: LCCOMB_X11_Y13_N0
\COMP_CCD|count_line~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~89_combout\ = (\COMP_CCD|Add2~58_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~58_combout\,
	combout => \COMP_CCD|count_line~89_combout\);

-- Location: FF_X11_Y13_N1
\COMP_CCD|count_line[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~89_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(29));

-- Location: LCCOMB_X12_Y13_N28
\COMP_CCD|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~60_combout\ = (\COMP_CCD|count_line\(30) & (\COMP_CCD|Add2~59\ $ (GND))) # (!\COMP_CCD|count_line\(30) & (!\COMP_CCD|Add2~59\ & VCC))
-- \COMP_CCD|Add2~61\ = CARRY((\COMP_CCD|count_line\(30) & !\COMP_CCD|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(30),
	datad => VCC,
	cin => \COMP_CCD|Add2~59\,
	combout => \COMP_CCD|Add2~60_combout\,
	cout => \COMP_CCD|Add2~61\);

-- Location: LCCOMB_X11_Y14_N20
\COMP_CCD|count_line~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~97_combout\ = (\COMP_CCD|Add2~60_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|Add2~60_combout\,
	combout => \COMP_CCD|count_line~97_combout\);

-- Location: FF_X11_Y14_N21
\COMP_CCD|count_line[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~97_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(30));

-- Location: LCCOMB_X12_Y13_N30
\COMP_CCD|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~62_combout\ = \COMP_CCD|Add2~61\ $ (\COMP_CCD|count_line\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count_line\(31),
	cin => \COMP_CCD|Add2~61\,
	combout => \COMP_CCD|Add2~62_combout\);

-- Location: LCCOMB_X11_Y13_N2
\COMP_CCD|count_line~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~87_combout\ = (\COMP_CCD|Add2~62_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|Add2~62_combout\,
	datad => \trigger_start~input_o\,
	combout => \COMP_CCD|count_line~87_combout\);

-- Location: FF_X11_Y13_N3
\COMP_CCD|count_line[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_line~87_combout\,
	ena => \COMP_CCD|count_line[25]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(31));

-- Location: LCCOMB_X11_Y14_N26
\COMP_CCD|LessThan15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~4_combout\ = (\COMP_CCD|count_line\(16)) # ((\COMP_CCD|count_line\(14)) # ((\COMP_CCD|count_line\(15)) # (\COMP_CCD|count_line\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(16),
	datab => \COMP_CCD|count_line\(14),
	datac => \COMP_CCD|count_line\(15),
	datad => \COMP_CCD|count_line\(13),
	combout => \COMP_CCD|LessThan15~4_combout\);

-- Location: LCCOMB_X11_Y14_N0
\COMP_CCD|LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~1_combout\ = (\COMP_CCD|count_line\(3)) # ((\COMP_CCD|count_line\(4)) # ((\COMP_CCD|count_line\(2)) # (!\COMP_CCD|count_line\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(3),
	datab => \COMP_CCD|count_line\(4),
	datac => \COMP_CCD|count_line\(2),
	datad => \COMP_CCD|count_line\(1),
	combout => \COMP_CCD|LessThan15~1_combout\);

-- Location: LCCOMB_X11_Y14_N22
\COMP_CCD|LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~2_combout\ = (\COMP_CCD|count_line\(5)) # ((\COMP_CCD|count_line\(6)) # ((\COMP_CCD|count_line\(8)) # (\COMP_CCD|count_line\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(5),
	datab => \COMP_CCD|count_line\(6),
	datac => \COMP_CCD|count_line\(8),
	datad => \COMP_CCD|count_line\(7),
	combout => \COMP_CCD|LessThan15~2_combout\);

-- Location: LCCOMB_X13_Y14_N18
\COMP_CCD|LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~3_combout\ = (\COMP_CCD|count_line\(11)) # ((\COMP_CCD|count_line\(12)) # ((\COMP_CCD|count_line\(10)) # (\COMP_CCD|count_line\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(11),
	datab => \COMP_CCD|count_line\(12),
	datac => \COMP_CCD|count_line\(10),
	datad => \COMP_CCD|count_line\(9),
	combout => \COMP_CCD|LessThan15~3_combout\);

-- Location: LCCOMB_X11_Y14_N4
\COMP_CCD|LessThan15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~5_combout\ = (\COMP_CCD|LessThan15~4_combout\) # ((\COMP_CCD|LessThan15~1_combout\) # ((\COMP_CCD|LessThan15~2_combout\) # (\COMP_CCD|LessThan15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan15~4_combout\,
	datab => \COMP_CCD|LessThan15~1_combout\,
	datac => \COMP_CCD|LessThan15~2_combout\,
	datad => \COMP_CCD|LessThan15~3_combout\,
	combout => \COMP_CCD|LessThan15~5_combout\);

-- Location: LCCOMB_X11_Y13_N10
\COMP_CCD|LessThan15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~6_combout\ = (\COMP_CCD|count_line\(27)) # ((\COMP_CCD|count_line\(28)) # ((\COMP_CCD|count_line\(25)) # (\COMP_CCD|count_line\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(27),
	datab => \COMP_CCD|count_line\(28),
	datac => \COMP_CCD|count_line\(25),
	datad => \COMP_CCD|count_line\(26),
	combout => \COMP_CCD|LessThan15~6_combout\);

-- Location: LCCOMB_X11_Y14_N2
\COMP_CCD|LessThan15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~7_combout\ = (\COMP_CCD|count_line\(18)) # ((\COMP_CCD|count_line\(30)) # ((\COMP_CCD|count_line\(17)) # (\COMP_CCD|count_line\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(18),
	datab => \COMP_CCD|count_line\(30),
	datac => \COMP_CCD|count_line\(17),
	datad => \COMP_CCD|count_line\(20),
	combout => \COMP_CCD|LessThan15~7_combout\);

-- Location: LCCOMB_X11_Y14_N24
\COMP_CCD|LessThan15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~8_combout\ = (\COMP_CCD|count_line\(19)) # ((\COMP_CCD|count_line\(29)) # ((\COMP_CCD|LessThan15~6_combout\) # (\COMP_CCD|LessThan15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(19),
	datab => \COMP_CCD|count_line\(29),
	datac => \COMP_CCD|LessThan15~6_combout\,
	datad => \COMP_CCD|LessThan15~7_combout\,
	combout => \COMP_CCD|LessThan15~8_combout\);

-- Location: LCCOMB_X11_Y14_N18
\COMP_CCD|LessThan15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~9_combout\ = (!\COMP_CCD|count_line\(31) & ((\COMP_CCD|LessThan15~0_combout\) # ((\COMP_CCD|LessThan15~5_combout\) # (\COMP_CCD|LessThan15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan15~0_combout\,
	datab => \COMP_CCD|count_line\(31),
	datac => \COMP_CCD|LessThan15~5_combout\,
	datad => \COMP_CCD|LessThan15~8_combout\,
	combout => \COMP_CCD|LessThan15~9_combout\);

-- Location: LCCOMB_X11_Y14_N28
\COMP_CCD|trigger_start_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|trigger_start_reg~0_combout\ = ((\COMP_CCD|trigger_start_reg~q\ & !\COMP_CCD|LessThan15~9_combout\)) # (!\trigger_start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger_start~input_o\,
	datac => \COMP_CCD|trigger_start_reg~q\,
	datad => \COMP_CCD|LessThan15~9_combout\,
	combout => \COMP_CCD|trigger_start_reg~0_combout\);

-- Location: FF_X11_Y14_N29
\COMP_CCD|trigger_start_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|trigger_start_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|trigger_start_reg~q\);

-- Location: LCCOMB_X13_Y14_N24
\COMP_CCD|process_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~10_combout\ = (\trigger_start~input_o\) # (\COMP_CCD|trigger_start_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|process_2~10_combout\);

-- Location: LCCOMB_X11_Y14_N12
\COMP_CCD|process_2:count[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~8_combout\ = (\COMP_CCD|LessThan15~9_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # (\trigger_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \trigger_start~input_o\,
	datad => \COMP_CCD|LessThan15~9_combout\,
	combout => \COMP_CCD|process_2:count[5]~8_combout\);

-- Location: LCCOMB_X13_Y13_N24
\COMP_CCD|LessThan17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~5_combout\ = (\COMP_CCD|Add2~34_combout\) # ((\COMP_CCD|Add2~36_combout\) # ((\COMP_CCD|Add2~38_combout\) # (\COMP_CCD|Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~34_combout\,
	datab => \COMP_CCD|Add2~36_combout\,
	datac => \COMP_CCD|Add2~38_combout\,
	datad => \COMP_CCD|Add2~40_combout\,
	combout => \COMP_CCD|LessThan17~5_combout\);

-- Location: LCCOMB_X13_Y13_N30
\COMP_CCD|LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~0_combout\ = (\COMP_CCD|Add2~8_combout\) # ((\COMP_CCD|Add2~2_combout\) # ((\COMP_CCD|Add2~4_combout\) # (\COMP_CCD|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~8_combout\,
	datab => \COMP_CCD|Add2~2_combout\,
	datac => \COMP_CCD|Add2~4_combout\,
	datad => \COMP_CCD|Add2~6_combout\,
	combout => \COMP_CCD|LessThan17~0_combout\);

-- Location: LCCOMB_X13_Y13_N20
\COMP_CCD|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~1_combout\ = (\COMP_CCD|Add2~10_combout\) # ((\COMP_CCD|Add2~12_combout\) # ((\COMP_CCD|Add2~14_combout\) # (\COMP_CCD|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~10_combout\,
	datab => \COMP_CCD|Add2~12_combout\,
	datac => \COMP_CCD|Add2~14_combout\,
	datad => \COMP_CCD|Add2~16_combout\,
	combout => \COMP_CCD|LessThan17~1_combout\);

-- Location: LCCOMB_X13_Y13_N26
\COMP_CCD|LessThan17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~2_combout\ = (\COMP_CCD|Add2~18_combout\) # ((\COMP_CCD|Add2~22_combout\) # ((\COMP_CCD|Add2~24_combout\) # (\COMP_CCD|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~18_combout\,
	datab => \COMP_CCD|Add2~22_combout\,
	datac => \COMP_CCD|Add2~24_combout\,
	datad => \COMP_CCD|Add2~20_combout\,
	combout => \COMP_CCD|LessThan17~2_combout\);

-- Location: LCCOMB_X13_Y13_N28
\COMP_CCD|LessThan17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~3_combout\ = (\COMP_CCD|Add2~26_combout\) # ((\COMP_CCD|Add2~30_combout\) # ((\COMP_CCD|Add2~32_combout\) # (\COMP_CCD|Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~26_combout\,
	datab => \COMP_CCD|Add2~30_combout\,
	datac => \COMP_CCD|Add2~32_combout\,
	datad => \COMP_CCD|Add2~28_combout\,
	combout => \COMP_CCD|LessThan17~3_combout\);

-- Location: LCCOMB_X13_Y13_N6
\COMP_CCD|LessThan17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~4_combout\ = (\COMP_CCD|LessThan17~0_combout\) # ((\COMP_CCD|LessThan17~1_combout\) # ((\COMP_CCD|LessThan17~2_combout\) # (\COMP_CCD|LessThan17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan17~0_combout\,
	datab => \COMP_CCD|LessThan17~1_combout\,
	datac => \COMP_CCD|LessThan17~2_combout\,
	datad => \COMP_CCD|LessThan17~3_combout\,
	combout => \COMP_CCD|LessThan17~4_combout\);

-- Location: LCCOMB_X13_Y13_N18
\COMP_CCD|process_2:count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~3_combout\ = (\COMP_CCD|Add2~44_combout\) # ((\COMP_CCD|LessThan17~5_combout\) # ((\COMP_CCD|Add2~42_combout\) # (\COMP_CCD|LessThan17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~44_combout\,
	datab => \COMP_CCD|LessThan17~5_combout\,
	datac => \COMP_CCD|Add2~42_combout\,
	datad => \COMP_CCD|LessThan17~4_combout\,
	combout => \COMP_CCD|process_2:count[5]~3_combout\);

-- Location: LCCOMB_X13_Y13_N16
\COMP_CCD|process_2:count[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~4_combout\ = (\COMP_CCD|Add2~46_combout\) # ((\COMP_CCD|Add2~50_combout\) # ((\COMP_CCD|Add2~48_combout\) # (\COMP_CCD|process_2:count[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~46_combout\,
	datab => \COMP_CCD|Add2~50_combout\,
	datac => \COMP_CCD|Add2~48_combout\,
	datad => \COMP_CCD|process_2:count[5]~3_combout\,
	combout => \COMP_CCD|process_2:count[5]~4_combout\);

-- Location: LCCOMB_X13_Y13_N10
\COMP_CCD|process_2:count[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~5_combout\ = (\COMP_CCD|Add2~56_combout\) # ((\COMP_CCD|Add2~52_combout\) # ((\COMP_CCD|Add2~54_combout\) # (\COMP_CCD|process_2:count[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~56_combout\,
	datab => \COMP_CCD|Add2~52_combout\,
	datac => \COMP_CCD|Add2~54_combout\,
	datad => \COMP_CCD|process_2:count[5]~4_combout\,
	combout => \COMP_CCD|process_2:count[5]~5_combout\);

-- Location: LCCOMB_X13_Y13_N0
\COMP_CCD|process_2:count[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~6_combout\ = (!\COMP_CCD|Add2~62_combout\ & ((\COMP_CCD|Add2~60_combout\) # ((\COMP_CCD|Add2~58_combout\) # (\COMP_CCD|process_2:count[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~62_combout\,
	datab => \COMP_CCD|Add2~60_combout\,
	datac => \COMP_CCD|Add2~58_combout\,
	datad => \COMP_CCD|process_2:count[5]~5_combout\,
	combout => \COMP_CCD|process_2:count[5]~6_combout\);

-- Location: LCCOMB_X13_Y13_N22
\COMP_CCD|process_2:count[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~7_combout\ = (!\COMP_CCD|process_2:count[5]~8_combout\ & ((\COMP_CCD|LessThan16~5_combout\) # ((!\COMP_CCD|process_2:count[5]~6_combout\) # (!\COMP_CCD|process_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan16~5_combout\,
	datab => \COMP_CCD|process_2~10_combout\,
	datac => \COMP_CCD|process_2:count[5]~8_combout\,
	datad => \COMP_CCD|process_2:count[5]~6_combout\,
	combout => \COMP_CCD|process_2:count[5]~7_combout\);

-- Location: FF_X14_Y16_N21
\COMP_CCD|process_2:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~89_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[5]~q\);

-- Location: LCCOMB_X14_Y15_N12
\COMP_CCD|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~12_combout\ = (\COMP_CCD|process_2:count[6]~q\ & (\COMP_CCD|Add3~11\ $ (GND))) # (!\COMP_CCD|process_2:count[6]~q\ & (!\COMP_CCD|Add3~11\ & VCC))
-- \COMP_CCD|Add3~13\ = CARRY((\COMP_CCD|process_2:count[6]~q\ & !\COMP_CCD|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[6]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~11\,
	combout => \COMP_CCD|Add3~12_combout\,
	cout => \COMP_CCD|Add3~13\);

-- Location: LCCOMB_X14_Y16_N2
\COMP_CCD|Add3~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~90_combout\ = (\COMP_CCD|Add3~12_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add3~12_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~90_combout\);

-- Location: FF_X14_Y16_N3
\COMP_CCD|process_2:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~90_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[6]~q\);

-- Location: LCCOMB_X14_Y15_N14
\COMP_CCD|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~14_combout\ = (\COMP_CCD|process_2:count[7]~q\ & ((\COMP_CCD|Add3~13\) # (GND))) # (!\COMP_CCD|process_2:count[7]~q\ & (!\COMP_CCD|Add3~13\))
-- \COMP_CCD|Add3~15\ = CARRY((\COMP_CCD|process_2:count[7]~q\) # (!\COMP_CCD|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~13\,
	combout => \COMP_CCD|Add3~14_combout\,
	cout => \COMP_CCD|Add3~15\);

-- Location: LCCOMB_X14_Y16_N12
\COMP_CCD|Add3~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~72_combout\ = (!\COMP_CCD|process_2:count[5]~2_combout\) # (!\COMP_CCD|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add3~14_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~72_combout\);

-- Location: FF_X14_Y16_N13
\COMP_CCD|process_2:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~72_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[7]~q\);

-- Location: LCCOMB_X14_Y15_N16
\COMP_CCD|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~16_combout\ = (\COMP_CCD|process_2:count[8]~q\ & (\COMP_CCD|Add3~15\ $ (GND))) # (!\COMP_CCD|process_2:count[8]~q\ & (!\COMP_CCD|Add3~15\ & VCC))
-- \COMP_CCD|Add3~17\ = CARRY((\COMP_CCD|process_2:count[8]~q\ & !\COMP_CCD|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[8]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~15\,
	combout => \COMP_CCD|Add3~16_combout\,
	cout => \COMP_CCD|Add3~17\);

-- Location: LCCOMB_X13_Y13_N8
\COMP_CCD|Add3~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~68_combout\ = (\COMP_CCD|Add3~16_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~16_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~68_combout\);

-- Location: FF_X13_Y13_N9
\COMP_CCD|process_2:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~68_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[8]~q\);

-- Location: LCCOMB_X14_Y15_N18
\COMP_CCD|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~18_combout\ = (\COMP_CCD|process_2:count[9]~q\ & (!\COMP_CCD|Add3~17\)) # (!\COMP_CCD|process_2:count[9]~q\ & ((\COMP_CCD|Add3~17\) # (GND)))
-- \COMP_CCD|Add3~19\ = CARRY((!\COMP_CCD|Add3~17\) # (!\COMP_CCD|process_2:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[9]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~17\,
	combout => \COMP_CCD|Add3~18_combout\,
	cout => \COMP_CCD|Add3~19\);

-- Location: LCCOMB_X14_Y16_N8
\COMP_CCD|Add3~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~69_combout\ = (\COMP_CCD|Add3~18_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~18_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~69_combout\);

-- Location: FF_X14_Y16_N9
\COMP_CCD|process_2:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~69_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[9]~q\);

-- Location: LCCOMB_X14_Y15_N20
\COMP_CCD|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~20_combout\ = (\COMP_CCD|process_2:count[10]~q\ & (\COMP_CCD|Add3~19\ $ (GND))) # (!\COMP_CCD|process_2:count[10]~q\ & (!\COMP_CCD|Add3~19\ & VCC))
-- \COMP_CCD|Add3~21\ = CARRY((\COMP_CCD|process_2:count[10]~q\ & !\COMP_CCD|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[10]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~19\,
	combout => \COMP_CCD|Add3~20_combout\,
	cout => \COMP_CCD|Add3~21\);

-- Location: LCCOMB_X14_Y16_N18
\COMP_CCD|Add3~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~70_combout\ = (\COMP_CCD|Add3~20_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~20_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~70_combout\);

-- Location: FF_X14_Y16_N19
\COMP_CCD|process_2:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~70_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[10]~q\);

-- Location: LCCOMB_X14_Y15_N22
\COMP_CCD|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~22_combout\ = (\COMP_CCD|process_2:count[11]~q\ & (!\COMP_CCD|Add3~21\)) # (!\COMP_CCD|process_2:count[11]~q\ & ((\COMP_CCD|Add3~21\) # (GND)))
-- \COMP_CCD|Add3~23\ = CARRY((!\COMP_CCD|Add3~21\) # (!\COMP_CCD|process_2:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[11]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~21\,
	combout => \COMP_CCD|Add3~22_combout\,
	cout => \COMP_CCD|Add3~23\);

-- Location: LCCOMB_X14_Y16_N6
\COMP_CCD|Add3~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~71_combout\ = (\COMP_CCD|Add3~22_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~22_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~71_combout\);

-- Location: LCCOMB_X13_Y16_N30
\COMP_CCD|process_2:count[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[11]~feeder_combout\ = \COMP_CCD|Add3~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|Add3~71_combout\,
	combout => \COMP_CCD|process_2:count[11]~feeder_combout\);

-- Location: FF_X13_Y16_N31
\COMP_CCD|process_2:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[11]~feeder_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[11]~q\);

-- Location: LCCOMB_X14_Y15_N24
\COMP_CCD|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~24_combout\ = (\COMP_CCD|process_2:count[12]~q\ & (!\COMP_CCD|Add3~23\ & VCC)) # (!\COMP_CCD|process_2:count[12]~q\ & (\COMP_CCD|Add3~23\ $ (GND)))
-- \COMP_CCD|Add3~25\ = CARRY((!\COMP_CCD|process_2:count[12]~q\ & !\COMP_CCD|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~23\,
	combout => \COMP_CCD|Add3~24_combout\,
	cout => \COMP_CCD|Add3~25\);

-- Location: LCCOMB_X14_Y16_N26
\COMP_CCD|Add3~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~73_combout\ = (!\COMP_CCD|process_2:count[5]~2_combout\) # (!\COMP_CCD|Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~24_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~73_combout\);

-- Location: FF_X14_Y16_N27
\COMP_CCD|process_2:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~73_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[12]~q\);

-- Location: LCCOMB_X14_Y15_N26
\COMP_CCD|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~26_combout\ = (\COMP_CCD|process_2:count[13]~q\ & (!\COMP_CCD|Add3~25\)) # (!\COMP_CCD|process_2:count[13]~q\ & ((\COMP_CCD|Add3~25\) # (GND)))
-- \COMP_CCD|Add3~27\ = CARRY((!\COMP_CCD|Add3~25\) # (!\COMP_CCD|process_2:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[13]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~25\,
	combout => \COMP_CCD|Add3~26_combout\,
	cout => \COMP_CCD|Add3~27\);

-- Location: LCCOMB_X14_Y13_N6
\COMP_CCD|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~28_combout\ = (\COMP_CCD|Add3~26_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~26_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~28_combout\);

-- Location: FF_X14_Y13_N7
\COMP_CCD|process_2:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~28_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[13]~q\);

-- Location: LCCOMB_X14_Y15_N28
\COMP_CCD|Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~29_combout\ = (\COMP_CCD|process_2:count[14]~q\ & (\COMP_CCD|Add3~27\ $ (GND))) # (!\COMP_CCD|process_2:count[14]~q\ & (!\COMP_CCD|Add3~27\ & VCC))
-- \COMP_CCD|Add3~30\ = CARRY((\COMP_CCD|process_2:count[14]~q\ & !\COMP_CCD|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[14]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~27\,
	combout => \COMP_CCD|Add3~29_combout\,
	cout => \COMP_CCD|Add3~30\);

-- Location: LCCOMB_X14_Y13_N8
\COMP_CCD|Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~31_combout\ = (\COMP_CCD|Add3~29_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~29_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~31_combout\);

-- Location: FF_X14_Y13_N9
\COMP_CCD|process_2:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~31_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[14]~q\);

-- Location: LCCOMB_X14_Y15_N30
\COMP_CCD|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~32_combout\ = (\COMP_CCD|process_2:count[15]~q\ & (!\COMP_CCD|Add3~30\)) # (!\COMP_CCD|process_2:count[15]~q\ & ((\COMP_CCD|Add3~30\) # (GND)))
-- \COMP_CCD|Add3~33\ = CARRY((!\COMP_CCD|Add3~30\) # (!\COMP_CCD|process_2:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[15]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~30\,
	combout => \COMP_CCD|Add3~32_combout\,
	cout => \COMP_CCD|Add3~33\);

-- Location: LCCOMB_X14_Y13_N14
\COMP_CCD|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~34_combout\ = (\COMP_CCD|Add3~32_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~32_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~34_combout\);

-- Location: FF_X14_Y13_N15
\COMP_CCD|process_2:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~34_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[15]~q\);

-- Location: LCCOMB_X14_Y14_N0
\COMP_CCD|Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~35_combout\ = (\COMP_CCD|process_2:count[16]~q\ & (\COMP_CCD|Add3~33\ $ (GND))) # (!\COMP_CCD|process_2:count[16]~q\ & (!\COMP_CCD|Add3~33\ & VCC))
-- \COMP_CCD|Add3~36\ = CARRY((\COMP_CCD|process_2:count[16]~q\ & !\COMP_CCD|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[16]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~33\,
	combout => \COMP_CCD|Add3~35_combout\,
	cout => \COMP_CCD|Add3~36\);

-- Location: LCCOMB_X14_Y13_N0
\COMP_CCD|Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~37_combout\ = (\COMP_CCD|Add3~35_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add3~35_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~37_combout\);

-- Location: FF_X14_Y13_N1
\COMP_CCD|process_2:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~37_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[16]~q\);

-- Location: LCCOMB_X14_Y14_N2
\COMP_CCD|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~38_combout\ = (\COMP_CCD|process_2:count[17]~q\ & (!\COMP_CCD|Add3~36\)) # (!\COMP_CCD|process_2:count[17]~q\ & ((\COMP_CCD|Add3~36\) # (GND)))
-- \COMP_CCD|Add3~39\ = CARRY((!\COMP_CCD|Add3~36\) # (!\COMP_CCD|process_2:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[17]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~36\,
	combout => \COMP_CCD|Add3~38_combout\,
	cout => \COMP_CCD|Add3~39\);

-- Location: LCCOMB_X14_Y13_N4
\COMP_CCD|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~40_combout\ = (\COMP_CCD|Add3~38_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~38_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~40_combout\);

-- Location: FF_X14_Y13_N5
\COMP_CCD|process_2:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~40_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[17]~q\);

-- Location: LCCOMB_X14_Y14_N4
\COMP_CCD|Add3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~41_combout\ = (\COMP_CCD|process_2:count[18]~q\ & (\COMP_CCD|Add3~39\ $ (GND))) # (!\COMP_CCD|process_2:count[18]~q\ & (!\COMP_CCD|Add3~39\ & VCC))
-- \COMP_CCD|Add3~42\ = CARRY((\COMP_CCD|process_2:count[18]~q\ & !\COMP_CCD|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[18]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~39\,
	combout => \COMP_CCD|Add3~41_combout\,
	cout => \COMP_CCD|Add3~42\);

-- Location: LCCOMB_X14_Y13_N18
\COMP_CCD|Add3~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~43_combout\ = (\COMP_CCD|Add3~41_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~41_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~43_combout\);

-- Location: FF_X14_Y13_N19
\COMP_CCD|process_2:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~43_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[18]~q\);

-- Location: LCCOMB_X14_Y14_N6
\COMP_CCD|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~44_combout\ = (\COMP_CCD|process_2:count[19]~q\ & (!\COMP_CCD|Add3~42\)) # (!\COMP_CCD|process_2:count[19]~q\ & ((\COMP_CCD|Add3~42\) # (GND)))
-- \COMP_CCD|Add3~45\ = CARRY((!\COMP_CCD|Add3~42\) # (!\COMP_CCD|process_2:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[19]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~42\,
	combout => \COMP_CCD|Add3~44_combout\,
	cout => \COMP_CCD|Add3~45\);

-- Location: LCCOMB_X14_Y13_N28
\COMP_CCD|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~46_combout\ = (\COMP_CCD|Add3~44_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~44_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~46_combout\);

-- Location: FF_X14_Y13_N29
\COMP_CCD|process_2:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~46_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[19]~q\);

-- Location: LCCOMB_X14_Y14_N8
\COMP_CCD|Add3~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~47_combout\ = (\COMP_CCD|process_2:count[20]~q\ & (\COMP_CCD|Add3~45\ $ (GND))) # (!\COMP_CCD|process_2:count[20]~q\ & (!\COMP_CCD|Add3~45\ & VCC))
-- \COMP_CCD|Add3~48\ = CARRY((\COMP_CCD|process_2:count[20]~q\ & !\COMP_CCD|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[20]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~45\,
	combout => \COMP_CCD|Add3~47_combout\,
	cout => \COMP_CCD|Add3~48\);

-- Location: LCCOMB_X14_Y13_N30
\COMP_CCD|Add3~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~49_combout\ = (\COMP_CCD|process_2:count[5]~2_combout\ & \COMP_CCD|Add3~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~2_combout\,
	datad => \COMP_CCD|Add3~47_combout\,
	combout => \COMP_CCD|Add3~49_combout\);

-- Location: FF_X14_Y13_N31
\COMP_CCD|process_2:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~49_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[20]~q\);

-- Location: LCCOMB_X14_Y14_N10
\COMP_CCD|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~50_combout\ = (\COMP_CCD|process_2:count[21]~q\ & (!\COMP_CCD|Add3~48\)) # (!\COMP_CCD|process_2:count[21]~q\ & ((\COMP_CCD|Add3~48\) # (GND)))
-- \COMP_CCD|Add3~51\ = CARRY((!\COMP_CCD|Add3~48\) # (!\COMP_CCD|process_2:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[21]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~48\,
	combout => \COMP_CCD|Add3~50_combout\,
	cout => \COMP_CCD|Add3~51\);

-- Location: LCCOMB_X13_Y15_N20
\COMP_CCD|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~52_combout\ = (\COMP_CCD|Add3~50_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~50_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~52_combout\);

-- Location: FF_X13_Y15_N21
\COMP_CCD|process_2:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~52_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[21]~q\);

-- Location: LCCOMB_X14_Y14_N12
\COMP_CCD|Add3~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~53_combout\ = (\COMP_CCD|process_2:count[22]~q\ & (\COMP_CCD|Add3~51\ $ (GND))) # (!\COMP_CCD|process_2:count[22]~q\ & (!\COMP_CCD|Add3~51\ & VCC))
-- \COMP_CCD|Add3~54\ = CARRY((\COMP_CCD|process_2:count[22]~q\ & !\COMP_CCD|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[22]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~51\,
	combout => \COMP_CCD|Add3~53_combout\,
	cout => \COMP_CCD|Add3~54\);

-- Location: LCCOMB_X13_Y15_N18
\COMP_CCD|Add3~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~55_combout\ = (\COMP_CCD|Add3~53_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~53_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~55_combout\);

-- Location: FF_X13_Y15_N19
\COMP_CCD|process_2:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~55_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[22]~q\);

-- Location: LCCOMB_X14_Y14_N14
\COMP_CCD|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~56_combout\ = (\COMP_CCD|process_2:count[23]~q\ & (!\COMP_CCD|Add3~54\)) # (!\COMP_CCD|process_2:count[23]~q\ & ((\COMP_CCD|Add3~54\) # (GND)))
-- \COMP_CCD|Add3~57\ = CARRY((!\COMP_CCD|Add3~54\) # (!\COMP_CCD|process_2:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[23]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~54\,
	combout => \COMP_CCD|Add3~56_combout\,
	cout => \COMP_CCD|Add3~57\);

-- Location: LCCOMB_X13_Y15_N4
\COMP_CCD|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~58_combout\ = (\COMP_CCD|Add3~56_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add3~56_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~58_combout\);

-- Location: FF_X13_Y15_N5
\COMP_CCD|process_2:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~58_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[23]~q\);

-- Location: LCCOMB_X14_Y14_N16
\COMP_CCD|Add3~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~59_combout\ = (\COMP_CCD|process_2:count[24]~q\ & (\COMP_CCD|Add3~57\ $ (GND))) # (!\COMP_CCD|process_2:count[24]~q\ & (!\COMP_CCD|Add3~57\ & VCC))
-- \COMP_CCD|Add3~60\ = CARRY((\COMP_CCD|process_2:count[24]~q\ & !\COMP_CCD|Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[24]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~57\,
	combout => \COMP_CCD|Add3~59_combout\,
	cout => \COMP_CCD|Add3~60\);

-- Location: LCCOMB_X13_Y15_N22
\COMP_CCD|Add3~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~61_combout\ = (\COMP_CCD|Add3~59_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~59_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~61_combout\);

-- Location: FF_X13_Y15_N23
\COMP_CCD|process_2:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~61_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[24]~q\);

-- Location: LCCOMB_X14_Y14_N18
\COMP_CCD|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~62_combout\ = (\COMP_CCD|process_2:count[25]~q\ & (!\COMP_CCD|Add3~60\)) # (!\COMP_CCD|process_2:count[25]~q\ & ((\COMP_CCD|Add3~60\) # (GND)))
-- \COMP_CCD|Add3~63\ = CARRY((!\COMP_CCD|Add3~60\) # (!\COMP_CCD|process_2:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[25]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~60\,
	combout => \COMP_CCD|Add3~62_combout\,
	cout => \COMP_CCD|Add3~63\);

-- Location: LCCOMB_X13_Y15_N30
\COMP_CCD|Add3~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~64_combout\ = (\COMP_CCD|Add3~62_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~62_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~64_combout\);

-- Location: FF_X13_Y15_N31
\COMP_CCD|process_2:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~64_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[25]~q\);

-- Location: LCCOMB_X14_Y14_N20
\COMP_CCD|Add3~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~65_combout\ = (\COMP_CCD|process_2:count[26]~q\ & (\COMP_CCD|Add3~63\ $ (GND))) # (!\COMP_CCD|process_2:count[26]~q\ & (!\COMP_CCD|Add3~63\ & VCC))
-- \COMP_CCD|Add3~66\ = CARRY((\COMP_CCD|process_2:count[26]~q\ & !\COMP_CCD|Add3~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[26]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~63\,
	combout => \COMP_CCD|Add3~65_combout\,
	cout => \COMP_CCD|Add3~66\);

-- Location: LCCOMB_X13_Y15_N24
\COMP_CCD|Add3~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~67_combout\ = (\COMP_CCD|Add3~65_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~65_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~67_combout\);

-- Location: FF_X13_Y15_N25
\COMP_CCD|process_2:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~67_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[26]~q\);

-- Location: LCCOMB_X14_Y14_N22
\COMP_CCD|Add3~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~74_combout\ = (\COMP_CCD|process_2:count[27]~q\ & (!\COMP_CCD|Add3~66\)) # (!\COMP_CCD|process_2:count[27]~q\ & ((\COMP_CCD|Add3~66\) # (GND)))
-- \COMP_CCD|Add3~75\ = CARRY((!\COMP_CCD|Add3~66\) # (!\COMP_CCD|process_2:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[27]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~66\,
	combout => \COMP_CCD|Add3~74_combout\,
	cout => \COMP_CCD|Add3~75\);

-- Location: LCCOMB_X14_Y13_N12
\COMP_CCD|Add3~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~79_combout\ = (\COMP_CCD|process_2:count[5]~2_combout\ & \COMP_CCD|Add3~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~2_combout\,
	datad => \COMP_CCD|Add3~74_combout\,
	combout => \COMP_CCD|Add3~79_combout\);

-- Location: FF_X14_Y13_N13
\COMP_CCD|process_2:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~79_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[27]~q\);

-- Location: LCCOMB_X14_Y14_N24
\COMP_CCD|Add3~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~76_combout\ = (\COMP_CCD|process_2:count[28]~q\ & (\COMP_CCD|Add3~75\ $ (GND))) # (!\COMP_CCD|process_2:count[28]~q\ & (!\COMP_CCD|Add3~75\ & VCC))
-- \COMP_CCD|Add3~77\ = CARRY((\COMP_CCD|process_2:count[28]~q\ & !\COMP_CCD|Add3~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[28]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~75\,
	combout => \COMP_CCD|Add3~76_combout\,
	cout => \COMP_CCD|Add3~77\);

-- Location: LCCOMB_X14_Y13_N10
\COMP_CCD|Add3~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~78_combout\ = (\COMP_CCD|process_2:count[5]~2_combout\ & \COMP_CCD|Add3~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~2_combout\,
	datad => \COMP_CCD|Add3~76_combout\,
	combout => \COMP_CCD|Add3~78_combout\);

-- Location: FF_X14_Y13_N11
\COMP_CCD|process_2:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~78_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[28]~q\);

-- Location: LCCOMB_X14_Y14_N26
\COMP_CCD|Add3~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~80_combout\ = (\COMP_CCD|process_2:count[29]~q\ & (!\COMP_CCD|Add3~77\)) # (!\COMP_CCD|process_2:count[29]~q\ & ((\COMP_CCD|Add3~77\) # (GND)))
-- \COMP_CCD|Add3~81\ = CARRY((!\COMP_CCD|Add3~77\) # (!\COMP_CCD|process_2:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~77\,
	combout => \COMP_CCD|Add3~80_combout\,
	cout => \COMP_CCD|Add3~81\);

-- Location: LCCOMB_X12_Y16_N16
\COMP_CCD|Add3~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~82_combout\ = (\COMP_CCD|process_2:count[5]~2_combout\ & \COMP_CCD|Add3~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_2:count[5]~2_combout\,
	datad => \COMP_CCD|Add3~80_combout\,
	combout => \COMP_CCD|Add3~82_combout\);

-- Location: FF_X12_Y16_N17
\COMP_CCD|process_2:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~82_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[29]~q\);

-- Location: LCCOMB_X14_Y14_N28
\COMP_CCD|Add3~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~83_combout\ = (\COMP_CCD|process_2:count[30]~q\ & (\COMP_CCD|Add3~81\ $ (GND))) # (!\COMP_CCD|process_2:count[30]~q\ & (!\COMP_CCD|Add3~81\ & VCC))
-- \COMP_CCD|Add3~84\ = CARRY((\COMP_CCD|process_2:count[30]~q\ & !\COMP_CCD|Add3~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[30]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~81\,
	combout => \COMP_CCD|Add3~83_combout\,
	cout => \COMP_CCD|Add3~84\);

-- Location: LCCOMB_X13_Y16_N18
\COMP_CCD|Add3~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~85_combout\ = (\COMP_CCD|process_2:count[5]~2_combout\ & \COMP_CCD|Add3~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~2_combout\,
	datad => \COMP_CCD|Add3~83_combout\,
	combout => \COMP_CCD|Add3~85_combout\);

-- Location: LCCOMB_X12_Y16_N10
\COMP_CCD|process_2:count[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[30]~feeder_combout\ = \COMP_CCD|Add3~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|Add3~85_combout\,
	combout => \COMP_CCD|process_2:count[30]~feeder_combout\);

-- Location: FF_X12_Y16_N11
\COMP_CCD|process_2:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[30]~feeder_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[30]~q\);

-- Location: LCCOMB_X14_Y14_N30
\COMP_CCD|Add3~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~91_combout\ = \COMP_CCD|process_2:count[31]~q\ $ (\COMP_CCD|Add3~84\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~q\,
	cin => \COMP_CCD|Add3~84\,
	combout => \COMP_CCD|Add3~91_combout\);

-- Location: LCCOMB_X14_Y13_N22
\COMP_CCD|Add3~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~93_combout\ = (\COMP_CCD|Add3~91_combout\ & \COMP_CCD|process_2:count[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~91_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~93_combout\);

-- Location: FF_X14_Y13_N23
\COMP_CCD|process_2:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~93_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[31]~q\);

-- Location: LCCOMB_X14_Y16_N28
\COMP_CCD|process_2:count[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[5]~2_combout\ = (\COMP_CCD|process_2~10_combout\ & ((\COMP_CCD|process_2:count[31]~q\) # ((\COMP_CCD|LessThan16~2_combout\ & \COMP_CCD|LessThan16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~q\,
	datab => \COMP_CCD|LessThan16~2_combout\,
	datac => \COMP_CCD|process_2~10_combout\,
	datad => \COMP_CCD|LessThan16~4_combout\,
	combout => \COMP_CCD|process_2:count[5]~2_combout\);

-- Location: LCCOMB_X13_Y15_N16
\COMP_CCD|Add3~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~95_combout\ = (!\COMP_CCD|process_2:count[5]~2_combout\) # (!\COMP_CCD|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~0_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~95_combout\);

-- Location: FF_X13_Y15_N17
\COMP_CCD|process_2:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~95_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[0]~q\);

-- Location: LCCOMB_X14_Y15_N2
\COMP_CCD|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~2_combout\ = (\COMP_CCD|process_2:count[1]~q\ & ((\COMP_CCD|Add3~1\) # (GND))) # (!\COMP_CCD|process_2:count[1]~q\ & (!\COMP_CCD|Add3~1\))
-- \COMP_CCD|Add3~3\ = CARRY((\COMP_CCD|process_2:count[1]~q\) # (!\COMP_CCD|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[1]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~1\,
	combout => \COMP_CCD|Add3~2_combout\,
	cout => \COMP_CCD|Add3~3\);

-- Location: LCCOMB_X14_Y16_N4
\COMP_CCD|Add3~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~94_combout\ = (!\COMP_CCD|process_2:count[5]~2_combout\) # (!\COMP_CCD|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~2_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~94_combout\);

-- Location: FF_X14_Y16_N5
\COMP_CCD|process_2:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~94_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[1]~q\);

-- Location: LCCOMB_X14_Y15_N4
\COMP_CCD|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~4_combout\ = (\COMP_CCD|process_2:count[2]~q\ & (!\COMP_CCD|Add3~3\ & VCC)) # (!\COMP_CCD|process_2:count[2]~q\ & (\COMP_CCD|Add3~3\ $ (GND)))
-- \COMP_CCD|Add3~5\ = CARRY((!\COMP_CCD|process_2:count[2]~q\ & !\COMP_CCD|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[2]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~3\,
	combout => \COMP_CCD|Add3~4_combout\,
	cout => \COMP_CCD|Add3~5\);

-- Location: LCCOMB_X14_Y16_N30
\COMP_CCD|Add3~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~88_combout\ = (!\COMP_CCD|process_2:count[5]~2_combout\) # (!\COMP_CCD|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~4_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~88_combout\);

-- Location: FF_X14_Y16_N31
\COMP_CCD|process_2:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~88_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[2]~q\);

-- Location: LCCOMB_X14_Y15_N6
\COMP_CCD|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~6_combout\ = (\COMP_CCD|process_2:count[3]~q\ & ((\COMP_CCD|Add3~5\) # (GND))) # (!\COMP_CCD|process_2:count[3]~q\ & (!\COMP_CCD|Add3~5\))
-- \COMP_CCD|Add3~7\ = CARRY((\COMP_CCD|process_2:count[3]~q\) # (!\COMP_CCD|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[3]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add3~5\,
	combout => \COMP_CCD|Add3~6_combout\,
	cout => \COMP_CCD|Add3~7\);

-- Location: LCCOMB_X13_Y16_N2
\COMP_CCD|Add3~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~86_combout\ = (!\COMP_CCD|process_2:count[5]~2_combout\) # (!\COMP_CCD|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~6_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~86_combout\);

-- Location: FF_X13_Y16_N3
\COMP_CCD|process_2:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~86_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[3]~q\);

-- Location: LCCOMB_X14_Y16_N16
\COMP_CCD|Add3~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~87_combout\ = (!\COMP_CCD|process_2:count[5]~2_combout\) # (!\COMP_CCD|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~8_combout\,
	datad => \COMP_CCD|process_2:count[5]~2_combout\,
	combout => \COMP_CCD|Add3~87_combout\);

-- Location: FF_X14_Y16_N17
\COMP_CCD|process_2:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add3~87_combout\,
	ena => \COMP_CCD|process_2:count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[4]~q\);

-- Location: LCCOMB_X12_Y16_N20
\COMP_CCD|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~2_combout\ = (\COMP_CCD|process_2:count[5]~q\ & ((!\COMP_CCD|process_2:count[3]~q\) # (!\COMP_CCD|process_2:count[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[4]~q\,
	datac => \COMP_CCD|process_2:count[3]~q\,
	datad => \COMP_CCD|process_2:count[5]~q\,
	combout => \COMP_CCD|LessThan5~2_combout\);

-- Location: LCCOMB_X13_Y16_N22
\COMP_CCD|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~0_combout\ = (\COMP_CCD|process_2:count[7]~q\ & (\COMP_CCD|process_2:count[12]~q\ & \COMP_CCD|LessThan16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datac => \COMP_CCD|process_2:count[12]~q\,
	datad => \COMP_CCD|LessThan16~0_combout\,
	combout => \COMP_CCD|LessThan1~0_combout\);

-- Location: LCCOMB_X13_Y16_N28
\COMP_CCD|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~1_combout\ = (!\COMP_CCD|process_2:count[27]~q\ & (!\COMP_CCD|process_2:count[28]~q\ & (\COMP_CCD|LessThan1~0_combout\ & \COMP_CCD|LessThan11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[27]~q\,
	datab => \COMP_CCD|process_2:count[28]~q\,
	datac => \COMP_CCD|LessThan1~0_combout\,
	datad => \COMP_CCD|LessThan11~4_combout\,
	combout => \COMP_CCD|LessThan1~1_combout\);

-- Location: LCCOMB_X12_Y16_N30
\COMP_CCD|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~2_combout\ = (!\COMP_CCD|LessThan5~2_combout\ & (!\COMP_CCD|process_2:count[6]~q\ & \COMP_CCD|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|LessThan5~2_combout\,
	datac => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|LessThan1~1_combout\,
	combout => \COMP_CCD|LessThan1~2_combout\);

-- Location: LCCOMB_X11_Y16_N12
\COMP_CCD|clk_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~4_combout\ = (\COMP_CCD|process_2:count[31]~q\) # ((\COMP_CCD|LessThan1~2_combout\ & (!\COMP_CCD|process_2:count[29]~q\ & !\COMP_CCD|process_2:count[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan1~2_combout\,
	datab => \COMP_CCD|process_2:count[29]~q\,
	datac => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|process_2:count[31]~q\,
	combout => \COMP_CCD|clk_reg~4_combout\);

-- Location: LCCOMB_X12_Y16_N8
\COMP_CCD|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~0_combout\ = ((\COMP_CCD|process_2:count[4]~q\ & ((\COMP_CCD|process_2:count[3]~q\) # (\COMP_CCD|process_2:count[2]~q\)))) # (!\COMP_CCD|process_2:count[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[3]~q\,
	datab => \COMP_CCD|process_2:count[5]~q\,
	datac => \COMP_CCD|process_2:count[2]~q\,
	datad => \COMP_CCD|process_2:count[4]~q\,
	combout => \COMP_CCD|LessThan5~0_combout\);

-- Location: LCCOMB_X12_Y16_N22
\COMP_CCD|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~1_combout\ = (\COMP_CCD|LessThan5~0_combout\) # (((\COMP_CCD|process_2:count[4]~q\ & \COMP_CCD|process_2:count[1]~q\)) # (!\COMP_CCD|process_2:count[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[4]~q\,
	datab => \COMP_CCD|LessThan5~0_combout\,
	datac => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|process_2:count[1]~q\,
	combout => \COMP_CCD|LessThan5~1_combout\);

-- Location: LCCOMB_X12_Y16_N14
\COMP_CCD|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~0_combout\ = ((\COMP_CCD|process_2:count[4]~q\ & !\COMP_CCD|process_2:count[5]~q\)) # (!\COMP_CCD|process_2:count[6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[4]~q\,
	datab => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|process_2:count[5]~q\,
	combout => \COMP_CCD|LessThan6~0_combout\);

-- Location: LCCOMB_X12_Y16_N28
\COMP_CCD|shut_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~1_combout\ = (\COMP_CCD|LessThan6~0_combout\ & (\COMP_CCD|LessThan1~1_combout\ & ((\COMP_CCD|process_2:count[29]~q\) # (!\COMP_CCD|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~1_combout\,
	datab => \COMP_CCD|process_2:count[29]~q\,
	datac => \COMP_CCD|LessThan6~0_combout\,
	datad => \COMP_CCD|LessThan1~1_combout\,
	combout => \COMP_CCD|shut_reg~1_combout\);

-- Location: LCCOMB_X11_Y16_N30
\COMP_CCD|process_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~12_combout\ = (\COMP_CCD|process_2:count[29]~q\) # ((\COMP_CCD|process_2:count[31]~q\) # ((\COMP_CCD|process_2:count[30]~q\) # (!\COMP_CCD|shut_reg~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datab => \COMP_CCD|process_2:count[31]~q\,
	datac => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|shut_reg~1_combout\,
	combout => \COMP_CCD|process_2~12_combout\);

-- Location: LCCOMB_X12_Y16_N26
\COMP_CCD|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~0_combout\ = (\COMP_CCD|process_2:count[2]~q\) # (((\COMP_CCD|process_2:count[3]~q\) # (\COMP_CCD|process_2:count[4]~q\)) # (!\COMP_CCD|process_2:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[2]~q\,
	datab => \COMP_CCD|process_2:count[5]~q\,
	datac => \COMP_CCD|process_2:count[3]~q\,
	datad => \COMP_CCD|process_2:count[4]~q\,
	combout => \COMP_CCD|LessThan3~0_combout\);

-- Location: LCCOMB_X12_Y16_N0
\COMP_CCD|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~2_combout\ = (\COMP_CCD|LessThan3~0_combout\ & (\COMP_CCD|LessThan16~1_combout\ & (!\COMP_CCD|process_2:count[6]~q\ & \COMP_CCD|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~0_combout\,
	datab => \COMP_CCD|LessThan16~1_combout\,
	datac => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|LessThan1~1_combout\,
	combout => \COMP_CCD|process_2~2_combout\);

-- Location: LCCOMB_X14_Y16_N10
\COMP_CCD|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan4~0_combout\ = (\COMP_CCD|process_2:count[4]~q\ & (!\COMP_CCD|process_2:count[5]~q\ & ((\COMP_CCD|process_2:count[2]~q\) # (\COMP_CCD|process_2:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[2]~q\,
	datab => \COMP_CCD|process_2:count[1]~q\,
	datac => \COMP_CCD|process_2:count[4]~q\,
	datad => \COMP_CCD|process_2:count[5]~q\,
	combout => \COMP_CCD|LessThan4~0_combout\);

-- Location: LCCOMB_X12_Y16_N12
\COMP_CCD|shut_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~2_combout\ = (!\COMP_CCD|process_2:count[30]~q\ & (((\COMP_CCD|LessThan4~0_combout\ & \COMP_CCD|process_2:count[3]~q\)) # (!\COMP_CCD|process_2:count[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[30]~q\,
	datab => \COMP_CCD|process_2:count[6]~q\,
	datac => \COMP_CCD|LessThan4~0_combout\,
	datad => \COMP_CCD|process_2:count[3]~q\,
	combout => \COMP_CCD|shut_reg~2_combout\);

-- Location: LCCOMB_X12_Y16_N2
\COMP_CCD|shut_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~3_combout\ = (\COMP_CCD|shut_reg~2_combout\ & (!\COMP_CCD|process_2:count[29]~q\ & \COMP_CCD|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|shut_reg~2_combout\,
	datab => \COMP_CCD|process_2:count[29]~q\,
	datad => \COMP_CCD|LessThan1~1_combout\,
	combout => \COMP_CCD|shut_reg~3_combout\);

-- Location: LCCOMB_X12_Y16_N18
\COMP_CCD|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~1_combout\ = (\COMP_CCD|LessThan3~0_combout\ & (!\COMP_CCD|process_2:count[6]~q\ & \COMP_CCD|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~0_combout\,
	datac => \COMP_CCD|process_2:count[6]~q\,
	datad => \COMP_CCD|LessThan1~1_combout\,
	combout => \COMP_CCD|LessThan3~1_combout\);

-- Location: LCCOMB_X11_Y16_N24
\COMP_CCD|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~3_combout\ = ((\COMP_CCD|process_2:count[31]~q\) # (\COMP_CCD|LessThan3~1_combout\)) # (!\COMP_CCD|shut_reg~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|shut_reg~3_combout\,
	datab => \COMP_CCD|process_2:count[31]~q\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|process_2~3_combout\);

-- Location: LCCOMB_X11_Y16_N6
\COMP_CCD|clk_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~2_combout\ = (\COMP_CCD|process_2~2_combout\) # (\COMP_CCD|clk_reg~q\ $ (((!\COMP_CCD|process_2~3_combout\) # (!\COMP_CCD|process_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2~12_combout\,
	datab => \COMP_CCD|process_2~2_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|process_2~3_combout\,
	combout => \COMP_CCD|clk_reg~2_combout\);

-- Location: LCCOMB_X12_Y15_N10
\COMP_CCD|clk_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~3_combout\ = (\COMP_CCD|clk_reg~4_combout\ & (!\COMP_CCD|clk_reg~q\)) # (!\COMP_CCD|clk_reg~4_combout\ & ((!\COMP_CCD|clk_reg~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~4_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|clk_reg~2_combout\,
	combout => \COMP_CCD|clk_reg~3_combout\);

-- Location: FF_X12_Y15_N11
\COMP_CCD|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|clk_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_reg~q\);

-- Location: LCCOMB_X12_Y15_N0
\COMP_CCD|adc_clk_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|adc_clk_reg~feeder_combout\ = \COMP_CCD|clk_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|clk_reg~q\,
	combout => \COMP_CCD|adc_clk_reg~feeder_combout\);

-- Location: FF_X12_Y15_N1
\COMP_CCD|adc_clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_adc_clk_div~q\,
	d => \COMP_CCD|adc_clk_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|adc_clk_reg~q\);

-- Location: LCCOMB_X14_Y16_N0
\COMP_CCD|LessThan11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~5_combout\ = (\COMP_CCD|process_2:count[7]~q\) # ((!\COMP_CCD|process_2:count[6]~q\ & (\COMP_CCD|process_2:count[4]~q\ & !\COMP_CCD|process_2:count[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datab => \COMP_CCD|process_2:count[6]~q\,
	datac => \COMP_CCD|process_2:count[4]~q\,
	datad => \COMP_CCD|process_2:count[5]~q\,
	combout => \COMP_CCD|LessThan11~5_combout\);

-- Location: LCCOMB_X14_Y16_N22
\COMP_CCD|LessThan11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~6_combout\ = (\COMP_CCD|process_2:count[2]~q\ & (!\COMP_CCD|process_2:count[6]~q\ & (\COMP_CCD|process_2:count[1]~q\ & !\COMP_CCD|process_2:count[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[2]~q\,
	datab => \COMP_CCD|process_2:count[6]~q\,
	datac => \COMP_CCD|process_2:count[1]~q\,
	datad => \COMP_CCD|process_2:count[5]~q\,
	combout => \COMP_CCD|LessThan11~6_combout\);

-- Location: LCCOMB_X13_Y16_N24
\COMP_CCD|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan9~0_combout\ = (\COMP_CCD|LessThan16~0_combout\ & ((\COMP_CCD|LessThan11~5_combout\) # ((\COMP_CCD|process_2:count[3]~q\ & \COMP_CCD|LessThan11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan16~0_combout\,
	datab => \COMP_CCD|process_2:count[3]~q\,
	datac => \COMP_CCD|LessThan11~5_combout\,
	datad => \COMP_CCD|LessThan11~6_combout\,
	combout => \COMP_CCD|LessThan9~0_combout\);

-- Location: LCCOMB_X10_Y16_N12
\COMP_CCD|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan9~1_combout\ = (!\COMP_CCD|process_2:count[27]~q\ & (\COMP_CCD|LessThan11~4_combout\ & (\COMP_CCD|LessThan9~0_combout\ & \COMP_CCD|process_2:count[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[27]~q\,
	datab => \COMP_CCD|LessThan11~4_combout\,
	datac => \COMP_CCD|LessThan9~0_combout\,
	datad => \COMP_CCD|process_2:count[12]~q\,
	combout => \COMP_CCD|LessThan9~1_combout\);

-- Location: LCCOMB_X10_Y16_N6
\COMP_CCD|process_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~7_combout\ = (!\COMP_CCD|process_2:count[27]~q\ & (\COMP_CCD|LessThan11~4_combout\ & ((\COMP_CCD|LessThan9~0_combout\) # (\COMP_CCD|process_2:count[12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[27]~q\,
	datab => \COMP_CCD|LessThan11~4_combout\,
	datac => \COMP_CCD|LessThan9~0_combout\,
	datad => \COMP_CCD|process_2:count[12]~q\,
	combout => \COMP_CCD|process_2~7_combout\);

-- Location: LCCOMB_X13_Y16_N6
\COMP_CCD|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~1_combout\ = (\COMP_CCD|LessThan6~0_combout\ & (\COMP_CCD|LessThan1~0_combout\ & \COMP_CCD|LessThan16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan6~0_combout\,
	datac => \COMP_CCD|LessThan1~0_combout\,
	datad => \COMP_CCD|LessThan16~2_combout\,
	combout => \COMP_CCD|LessThan6~1_combout\);

-- Location: LCCOMB_X10_Y16_N16
\COMP_CCD|rog_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~1_combout\ = (!\COMP_CCD|process_2:count[28]~q\ & ((\COMP_CCD|LessThan9~1_combout\ & ((!\COMP_CCD|LessThan6~1_combout\))) # (!\COMP_CCD|LessThan9~1_combout\ & (\COMP_CCD|process_2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan9~1_combout\,
	datab => \COMP_CCD|process_2~7_combout\,
	datac => \COMP_CCD|process_2:count[28]~q\,
	datad => \COMP_CCD|LessThan6~1_combout\,
	combout => \COMP_CCD|rog_reg~1_combout\);

-- Location: LCCOMB_X11_Y16_N4
\COMP_CCD|rog_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~0_combout\ = (!\COMP_CCD|process_2:count[29]~q\ & (\COMP_CCD|rog_reg~q\ & (!\COMP_CCD|process_2:count[30]~q\ & !\COMP_CCD|process_2:count[31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datab => \COMP_CCD|rog_reg~q\,
	datac => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|process_2:count[31]~q\,
	combout => \COMP_CCD|rog_reg~0_combout\);

-- Location: LCCOMB_X13_Y16_N16
\COMP_CCD|process_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~5_combout\ = ((!\COMP_CCD|process_2:count[7]~q\ & ((\COMP_CCD|process_2~4_combout\) # (!\COMP_CCD|LessThan11~8_combout\)))) # (!\COMP_CCD|LessThan16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[7]~q\,
	datab => \COMP_CCD|process_2~4_combout\,
	datac => \COMP_CCD|LessThan11~8_combout\,
	datad => \COMP_CCD|LessThan16~0_combout\,
	combout => \COMP_CCD|process_2~5_combout\);

-- Location: LCCOMB_X13_Y16_N26
\COMP_CCD|LessThan11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~7_combout\ = (\COMP_CCD|LessThan11~4_combout\ & ((\COMP_CCD|LessThan9~0_combout\) # (\COMP_CCD|process_2:count[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|LessThan9~0_combout\,
	datac => \COMP_CCD|process_2:count[12]~q\,
	datad => \COMP_CCD|LessThan11~4_combout\,
	combout => \COMP_CCD|LessThan11~7_combout\);

-- Location: LCCOMB_X13_Y16_N4
\COMP_CCD|process_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~6_combout\ = (\COMP_CCD|LessThan11~7_combout\) # (((!\COMP_CCD|process_2:count[12]~q\ & \COMP_CCD|process_2~5_combout\)) # (!\COMP_CCD|LessThan16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|process_2~5_combout\,
	datac => \COMP_CCD|LessThan11~7_combout\,
	datad => \COMP_CCD|LessThan16~2_combout\,
	combout => \COMP_CCD|process_2~6_combout\);

-- Location: LCCOMB_X11_Y16_N22
\COMP_CCD|rog_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~2_combout\ = (((!\COMP_CCD|rog_reg~1_combout\ & \COMP_CCD|process_2~6_combout\)) # (!\COMP_CCD|process_2~12_combout\)) # (!\COMP_CCD|rog_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_reg~1_combout\,
	datab => \COMP_CCD|rog_reg~0_combout\,
	datac => \COMP_CCD|process_2~12_combout\,
	datad => \COMP_CCD|process_2~6_combout\,
	combout => \COMP_CCD|rog_reg~2_combout\);

-- Location: LCCOMB_X11_Y16_N16
\COMP_CCD|data_out[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[4]~0_combout\ = (!\COMP_CCD|process_2:count[31]~q\ & (((!\COMP_CCD|LessThan1~2_combout\ & !\COMP_CCD|LessThan3~1_combout\)) # (!\COMP_CCD|LessThan16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan16~1_combout\,
	datab => \COMP_CCD|process_2:count[31]~q\,
	datac => \COMP_CCD|LessThan1~2_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|data_out[4]~0_combout\);

-- Location: LCCOMB_X11_Y16_N0
\COMP_CCD|rog_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~3_combout\ = (\COMP_CCD|data_out[4]~0_combout\ & (((!\COMP_CCD|process_2~3_combout\)) # (!\COMP_CCD|rog_reg~2_combout\))) # (!\COMP_CCD|data_out[4]~0_combout\ & (((\COMP_CCD|rog_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_reg~2_combout\,
	datab => \COMP_CCD|data_out[4]~0_combout\,
	datac => \COMP_CCD|rog_reg~q\,
	datad => \COMP_CCD|process_2~3_combout\,
	combout => \COMP_CCD|rog_reg~3_combout\);

-- Location: FF_X11_Y16_N1
\COMP_CCD|rog_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|rog_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|rog_reg~q\);

-- Location: LCCOMB_X11_Y16_N18
\COMP_CCD|shut_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~0_combout\ = (!\COMP_CCD|process_2:count[29]~q\ & (!\COMP_CCD|process_2:count[30]~q\ & !\COMP_CCD|process_2:count[31]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[29]~q\,
	datac => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|process_2:count[31]~q\,
	combout => \COMP_CCD|shut_reg~0_combout\);

-- Location: LCCOMB_X12_Y16_N24
\COMP_CCD|shut_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~4_combout\ = (\COMP_CCD|LessThan3~1_combout\) # ((!\COMP_CCD|shut_reg~q\ & ((\COMP_CCD|shut_reg~1_combout\) # (!\COMP_CCD|process_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|shut_reg~q\,
	datab => \COMP_CCD|LessThan3~1_combout\,
	datac => \COMP_CCD|process_2~6_combout\,
	datad => \COMP_CCD|shut_reg~1_combout\,
	combout => \COMP_CCD|shut_reg~4_combout\);

-- Location: LCCOMB_X11_Y16_N2
\COMP_CCD|shut_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~5_combout\ = (\COMP_CCD|shut_reg~0_combout\ & (!\COMP_CCD|LessThan1~2_combout\ & \COMP_CCD|shut_reg~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|shut_reg~0_combout\,
	datac => \COMP_CCD|LessThan1~2_combout\,
	datad => \COMP_CCD|shut_reg~4_combout\,
	combout => \COMP_CCD|shut_reg~5_combout\);

-- Location: LCCOMB_X10_Y16_N26
\COMP_CCD|process_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~8_combout\ = (\COMP_CCD|LessThan9~1_combout\) # (((\COMP_CCD|process_2:count[28]~q\) # (!\COMP_CCD|process_2~7_combout\)) # (!\COMP_CCD|shut_reg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan9~1_combout\,
	datab => \COMP_CCD|shut_reg~0_combout\,
	datac => \COMP_CCD|process_2:count[28]~q\,
	datad => \COMP_CCD|process_2~7_combout\,
	combout => \COMP_CCD|process_2~8_combout\);

-- Location: LCCOMB_X10_Y16_N24
\COMP_CCD|process_2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2~9_combout\ = (((\COMP_CCD|process_2:count[28]~q\) # (\COMP_CCD|LessThan6~1_combout\)) # (!\COMP_CCD|shut_reg~0_combout\)) # (!\COMP_CCD|LessThan9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan9~1_combout\,
	datab => \COMP_CCD|shut_reg~0_combout\,
	datac => \COMP_CCD|process_2:count[28]~q\,
	datad => \COMP_CCD|LessThan6~1_combout\,
	combout => \COMP_CCD|process_2~9_combout\);

-- Location: LCCOMB_X10_Y16_N10
\COMP_CCD|shut_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~6_combout\ = ((\COMP_CCD|shut_reg~3_combout\) # (!\COMP_CCD|process_2~9_combout\)) # (!\COMP_CCD|process_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2~8_combout\,
	datab => \COMP_CCD|process_2~9_combout\,
	datad => \COMP_CCD|shut_reg~3_combout\,
	combout => \COMP_CCD|shut_reg~6_combout\);

-- Location: LCCOMB_X14_Y13_N24
\COMP_CCD|shut_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~7_combout\ = (\COMP_CCD|shut_reg~6_combout\ & ((\COMP_CCD|process_2:count[29]~q\) # (!\COMP_CCD|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datab => \COMP_CCD|LessThan1~2_combout\,
	datad => \COMP_CCD|shut_reg~6_combout\,
	combout => \COMP_CCD|shut_reg~7_combout\);

-- Location: LCCOMB_X14_Y13_N16
\COMP_CCD|shut_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~8_combout\ = (!\COMP_CCD|shut_reg~5_combout\ & ((\COMP_CCD|process_2:count[31]~q\) # ((\COMP_CCD|shut_reg~q\) # (!\COMP_CCD|shut_reg~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~q\,
	datab => \COMP_CCD|shut_reg~5_combout\,
	datac => \COMP_CCD|shut_reg~q\,
	datad => \COMP_CCD|shut_reg~7_combout\,
	combout => \COMP_CCD|shut_reg~8_combout\);

-- Location: FF_X14_Y13_N17
\COMP_CCD|shut_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|shut_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|shut_reg~q\);

-- Location: IOIBUF_X1_Y0_N15
\usb_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usb_clk,
	o => \usb_clk~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\adc_data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(0),
	o => \adc_data_in[0]~input_o\);

-- Location: LCCOMB_X9_Y20_N30
\COMP_CCD|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~6_combout\ = (\adc_data_in[0]~input_o\) # (\COMP_CCD|process_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_data_in[0]~input_o\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~6_combout\);

-- Location: LCCOMB_X11_Y16_N8
\COMP_CCD|ccd_ready_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~0_combout\ = (\COMP_CCD|process_2~12_combout\ & (((\COMP_CCD|process_2:count[31]~q\) # (\COMP_CCD|LessThan3~1_combout\)) # (!\COMP_CCD|shut_reg~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|shut_reg~3_combout\,
	datab => \COMP_CCD|process_2:count[31]~q\,
	datac => \COMP_CCD|process_2~12_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|ccd_ready_reg~0_combout\);

-- Location: LCCOMB_X9_Y18_N0
\COMP_CCD|count_start_seq[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[0]~32_combout\ = (\COMP_CCD|clk_reg~q\ & (\COMP_CCD|count_start_seq\(0) $ (VCC))) # (!\COMP_CCD|clk_reg~q\ & (\COMP_CCD|count_start_seq\(0) & VCC))
-- \COMP_CCD|count_start_seq[0]~33\ = CARRY((\COMP_CCD|clk_reg~q\ & \COMP_CCD|count_start_seq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~q\,
	datab => \COMP_CCD|count_start_seq\(0),
	datad => VCC,
	combout => \COMP_CCD|count_start_seq[0]~32_combout\,
	cout => \COMP_CCD|count_start_seq[0]~33\);

-- Location: LCCOMB_X10_Y16_N22
\COMP_CCD|count_start_seq[9]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[9]~96_combout\ = ((!\COMP_CCD|process_2~3_combout\) # (!\COMP_CCD|process_2~12_combout\)) # (!\COMP_CCD|process_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2~8_combout\,
	datac => \COMP_CCD|process_2~12_combout\,
	datad => \COMP_CCD|process_2~3_combout\,
	combout => \COMP_CCD|count_start_seq[9]~96_combout\);

-- Location: LCCOMB_X9_Y18_N2
\COMP_CCD|count_start_seq[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[1]~34_combout\ = (\COMP_CCD|count_start_seq\(1) & (!\COMP_CCD|count_start_seq[0]~33\)) # (!\COMP_CCD|count_start_seq\(1) & ((\COMP_CCD|count_start_seq[0]~33\) # (GND)))
-- \COMP_CCD|count_start_seq[1]~35\ = CARRY((!\COMP_CCD|count_start_seq[0]~33\) # (!\COMP_CCD|count_start_seq\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(1),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[0]~33\,
	combout => \COMP_CCD|count_start_seq[1]~34_combout\,
	cout => \COMP_CCD|count_start_seq[1]~35\);

-- Location: LCCOMB_X9_Y18_N4
\COMP_CCD|count_start_seq[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[2]~36_combout\ = (\COMP_CCD|count_start_seq\(2) & (\COMP_CCD|count_start_seq[1]~35\ $ (GND))) # (!\COMP_CCD|count_start_seq\(2) & (!\COMP_CCD|count_start_seq[1]~35\ & VCC))
-- \COMP_CCD|count_start_seq[2]~37\ = CARRY((\COMP_CCD|count_start_seq\(2) & !\COMP_CCD|count_start_seq[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(2),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[1]~35\,
	combout => \COMP_CCD|count_start_seq[2]~36_combout\,
	cout => \COMP_CCD|count_start_seq[2]~37\);

-- Location: FF_X9_Y18_N5
\COMP_CCD|count_start_seq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[2]~36_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(2));

-- Location: LCCOMB_X9_Y18_N6
\COMP_CCD|count_start_seq[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[3]~38_combout\ = (\COMP_CCD|count_start_seq\(3) & (!\COMP_CCD|count_start_seq[2]~37\)) # (!\COMP_CCD|count_start_seq\(3) & ((\COMP_CCD|count_start_seq[2]~37\) # (GND)))
-- \COMP_CCD|count_start_seq[3]~39\ = CARRY((!\COMP_CCD|count_start_seq[2]~37\) # (!\COMP_CCD|count_start_seq\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(3),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[2]~37\,
	combout => \COMP_CCD|count_start_seq[3]~38_combout\,
	cout => \COMP_CCD|count_start_seq[3]~39\);

-- Location: FF_X9_Y18_N7
\COMP_CCD|count_start_seq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[3]~38_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(3));

-- Location: LCCOMB_X9_Y18_N8
\COMP_CCD|count_start_seq[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[4]~40_combout\ = (\COMP_CCD|count_start_seq\(4) & (\COMP_CCD|count_start_seq[3]~39\ $ (GND))) # (!\COMP_CCD|count_start_seq\(4) & (!\COMP_CCD|count_start_seq[3]~39\ & VCC))
-- \COMP_CCD|count_start_seq[4]~41\ = CARRY((\COMP_CCD|count_start_seq\(4) & !\COMP_CCD|count_start_seq[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(4),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[3]~39\,
	combout => \COMP_CCD|count_start_seq[4]~40_combout\,
	cout => \COMP_CCD|count_start_seq[4]~41\);

-- Location: FF_X9_Y18_N9
\COMP_CCD|count_start_seq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[4]~40_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(4));

-- Location: LCCOMB_X9_Y18_N10
\COMP_CCD|count_start_seq[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[5]~42_combout\ = (\COMP_CCD|count_start_seq\(5) & (!\COMP_CCD|count_start_seq[4]~41\)) # (!\COMP_CCD|count_start_seq\(5) & ((\COMP_CCD|count_start_seq[4]~41\) # (GND)))
-- \COMP_CCD|count_start_seq[5]~43\ = CARRY((!\COMP_CCD|count_start_seq[4]~41\) # (!\COMP_CCD|count_start_seq\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(5),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[4]~41\,
	combout => \COMP_CCD|count_start_seq[5]~42_combout\,
	cout => \COMP_CCD|count_start_seq[5]~43\);

-- Location: FF_X9_Y18_N11
\COMP_CCD|count_start_seq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[5]~42_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(5));

-- Location: LCCOMB_X9_Y18_N12
\COMP_CCD|count_start_seq[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[6]~44_combout\ = (\COMP_CCD|count_start_seq\(6) & (\COMP_CCD|count_start_seq[5]~43\ $ (GND))) # (!\COMP_CCD|count_start_seq\(6) & (!\COMP_CCD|count_start_seq[5]~43\ & VCC))
-- \COMP_CCD|count_start_seq[6]~45\ = CARRY((\COMP_CCD|count_start_seq\(6) & !\COMP_CCD|count_start_seq[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(6),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[5]~43\,
	combout => \COMP_CCD|count_start_seq[6]~44_combout\,
	cout => \COMP_CCD|count_start_seq[6]~45\);

-- Location: FF_X9_Y18_N13
\COMP_CCD|count_start_seq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[6]~44_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(6));

-- Location: LCCOMB_X9_Y18_N14
\COMP_CCD|count_start_seq[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[7]~46_combout\ = (\COMP_CCD|count_start_seq\(7) & (!\COMP_CCD|count_start_seq[6]~45\)) # (!\COMP_CCD|count_start_seq\(7) & ((\COMP_CCD|count_start_seq[6]~45\) # (GND)))
-- \COMP_CCD|count_start_seq[7]~47\ = CARRY((!\COMP_CCD|count_start_seq[6]~45\) # (!\COMP_CCD|count_start_seq\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(7),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[6]~45\,
	combout => \COMP_CCD|count_start_seq[7]~46_combout\,
	cout => \COMP_CCD|count_start_seq[7]~47\);

-- Location: FF_X9_Y18_N15
\COMP_CCD|count_start_seq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[7]~46_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(7));

-- Location: LCCOMB_X9_Y18_N16
\COMP_CCD|count_start_seq[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[8]~48_combout\ = (\COMP_CCD|count_start_seq\(8) & (\COMP_CCD|count_start_seq[7]~47\ $ (GND))) # (!\COMP_CCD|count_start_seq\(8) & (!\COMP_CCD|count_start_seq[7]~47\ & VCC))
-- \COMP_CCD|count_start_seq[8]~49\ = CARRY((\COMP_CCD|count_start_seq\(8) & !\COMP_CCD|count_start_seq[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(8),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[7]~47\,
	combout => \COMP_CCD|count_start_seq[8]~48_combout\,
	cout => \COMP_CCD|count_start_seq[8]~49\);

-- Location: FF_X9_Y18_N17
\COMP_CCD|count_start_seq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[8]~48_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(8));

-- Location: LCCOMB_X9_Y18_N18
\COMP_CCD|count_start_seq[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[9]~50_combout\ = (\COMP_CCD|count_start_seq\(9) & (!\COMP_CCD|count_start_seq[8]~49\)) # (!\COMP_CCD|count_start_seq\(9) & ((\COMP_CCD|count_start_seq[8]~49\) # (GND)))
-- \COMP_CCD|count_start_seq[9]~51\ = CARRY((!\COMP_CCD|count_start_seq[8]~49\) # (!\COMP_CCD|count_start_seq\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(9),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[8]~49\,
	combout => \COMP_CCD|count_start_seq[9]~50_combout\,
	cout => \COMP_CCD|count_start_seq[9]~51\);

-- Location: FF_X9_Y18_N19
\COMP_CCD|count_start_seq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[9]~50_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(9));

-- Location: LCCOMB_X9_Y18_N20
\COMP_CCD|count_start_seq[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[10]~52_combout\ = (\COMP_CCD|count_start_seq\(10) & (\COMP_CCD|count_start_seq[9]~51\ $ (GND))) # (!\COMP_CCD|count_start_seq\(10) & (!\COMP_CCD|count_start_seq[9]~51\ & VCC))
-- \COMP_CCD|count_start_seq[10]~53\ = CARRY((\COMP_CCD|count_start_seq\(10) & !\COMP_CCD|count_start_seq[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(10),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[9]~51\,
	combout => \COMP_CCD|count_start_seq[10]~52_combout\,
	cout => \COMP_CCD|count_start_seq[10]~53\);

-- Location: FF_X9_Y18_N21
\COMP_CCD|count_start_seq[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[10]~52_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(10));

-- Location: LCCOMB_X9_Y18_N22
\COMP_CCD|count_start_seq[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[11]~54_combout\ = (\COMP_CCD|count_start_seq\(11) & (!\COMP_CCD|count_start_seq[10]~53\)) # (!\COMP_CCD|count_start_seq\(11) & ((\COMP_CCD|count_start_seq[10]~53\) # (GND)))
-- \COMP_CCD|count_start_seq[11]~55\ = CARRY((!\COMP_CCD|count_start_seq[10]~53\) # (!\COMP_CCD|count_start_seq\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(11),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[10]~53\,
	combout => \COMP_CCD|count_start_seq[11]~54_combout\,
	cout => \COMP_CCD|count_start_seq[11]~55\);

-- Location: FF_X9_Y18_N23
\COMP_CCD|count_start_seq[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[11]~54_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(11));

-- Location: LCCOMB_X9_Y18_N24
\COMP_CCD|count_start_seq[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[12]~56_combout\ = (\COMP_CCD|count_start_seq\(12) & (\COMP_CCD|count_start_seq[11]~55\ $ (GND))) # (!\COMP_CCD|count_start_seq\(12) & (!\COMP_CCD|count_start_seq[11]~55\ & VCC))
-- \COMP_CCD|count_start_seq[12]~57\ = CARRY((\COMP_CCD|count_start_seq\(12) & !\COMP_CCD|count_start_seq[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(12),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[11]~55\,
	combout => \COMP_CCD|count_start_seq[12]~56_combout\,
	cout => \COMP_CCD|count_start_seq[12]~57\);

-- Location: FF_X9_Y18_N25
\COMP_CCD|count_start_seq[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[12]~56_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(12));

-- Location: LCCOMB_X9_Y18_N26
\COMP_CCD|count_start_seq[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[13]~58_combout\ = (\COMP_CCD|count_start_seq\(13) & (!\COMP_CCD|count_start_seq[12]~57\)) # (!\COMP_CCD|count_start_seq\(13) & ((\COMP_CCD|count_start_seq[12]~57\) # (GND)))
-- \COMP_CCD|count_start_seq[13]~59\ = CARRY((!\COMP_CCD|count_start_seq[12]~57\) # (!\COMP_CCD|count_start_seq\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(13),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[12]~57\,
	combout => \COMP_CCD|count_start_seq[13]~58_combout\,
	cout => \COMP_CCD|count_start_seq[13]~59\);

-- Location: FF_X9_Y18_N27
\COMP_CCD|count_start_seq[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[13]~58_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(13));

-- Location: LCCOMB_X9_Y18_N28
\COMP_CCD|count_start_seq[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[14]~60_combout\ = (\COMP_CCD|count_start_seq\(14) & (\COMP_CCD|count_start_seq[13]~59\ $ (GND))) # (!\COMP_CCD|count_start_seq\(14) & (!\COMP_CCD|count_start_seq[13]~59\ & VCC))
-- \COMP_CCD|count_start_seq[14]~61\ = CARRY((\COMP_CCD|count_start_seq\(14) & !\COMP_CCD|count_start_seq[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(14),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[13]~59\,
	combout => \COMP_CCD|count_start_seq[14]~60_combout\,
	cout => \COMP_CCD|count_start_seq[14]~61\);

-- Location: FF_X9_Y18_N29
\COMP_CCD|count_start_seq[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[14]~60_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(14));

-- Location: LCCOMB_X9_Y18_N30
\COMP_CCD|count_start_seq[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[15]~62_combout\ = (\COMP_CCD|count_start_seq\(15) & (!\COMP_CCD|count_start_seq[14]~61\)) # (!\COMP_CCD|count_start_seq\(15) & ((\COMP_CCD|count_start_seq[14]~61\) # (GND)))
-- \COMP_CCD|count_start_seq[15]~63\ = CARRY((!\COMP_CCD|count_start_seq[14]~61\) # (!\COMP_CCD|count_start_seq\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(15),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[14]~61\,
	combout => \COMP_CCD|count_start_seq[15]~62_combout\,
	cout => \COMP_CCD|count_start_seq[15]~63\);

-- Location: FF_X9_Y18_N31
\COMP_CCD|count_start_seq[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[15]~62_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(15));

-- Location: LCCOMB_X9_Y17_N0
\COMP_CCD|count_start_seq[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[16]~64_combout\ = (\COMP_CCD|count_start_seq\(16) & (\COMP_CCD|count_start_seq[15]~63\ $ (GND))) # (!\COMP_CCD|count_start_seq\(16) & (!\COMP_CCD|count_start_seq[15]~63\ & VCC))
-- \COMP_CCD|count_start_seq[16]~65\ = CARRY((\COMP_CCD|count_start_seq\(16) & !\COMP_CCD|count_start_seq[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(16),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[15]~63\,
	combout => \COMP_CCD|count_start_seq[16]~64_combout\,
	cout => \COMP_CCD|count_start_seq[16]~65\);

-- Location: FF_X9_Y17_N1
\COMP_CCD|count_start_seq[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[16]~64_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(16));

-- Location: LCCOMB_X9_Y17_N2
\COMP_CCD|count_start_seq[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[17]~66_combout\ = (\COMP_CCD|count_start_seq\(17) & (!\COMP_CCD|count_start_seq[16]~65\)) # (!\COMP_CCD|count_start_seq\(17) & ((\COMP_CCD|count_start_seq[16]~65\) # (GND)))
-- \COMP_CCD|count_start_seq[17]~67\ = CARRY((!\COMP_CCD|count_start_seq[16]~65\) # (!\COMP_CCD|count_start_seq\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(17),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[16]~65\,
	combout => \COMP_CCD|count_start_seq[17]~66_combout\,
	cout => \COMP_CCD|count_start_seq[17]~67\);

-- Location: FF_X9_Y17_N3
\COMP_CCD|count_start_seq[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[17]~66_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(17));

-- Location: LCCOMB_X9_Y17_N4
\COMP_CCD|count_start_seq[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[18]~68_combout\ = (\COMP_CCD|count_start_seq\(18) & (\COMP_CCD|count_start_seq[17]~67\ $ (GND))) # (!\COMP_CCD|count_start_seq\(18) & (!\COMP_CCD|count_start_seq[17]~67\ & VCC))
-- \COMP_CCD|count_start_seq[18]~69\ = CARRY((\COMP_CCD|count_start_seq\(18) & !\COMP_CCD|count_start_seq[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(18),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[17]~67\,
	combout => \COMP_CCD|count_start_seq[18]~68_combout\,
	cout => \COMP_CCD|count_start_seq[18]~69\);

-- Location: FF_X9_Y17_N5
\COMP_CCD|count_start_seq[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[18]~68_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(18));

-- Location: LCCOMB_X9_Y17_N6
\COMP_CCD|count_start_seq[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[19]~70_combout\ = (\COMP_CCD|count_start_seq\(19) & (!\COMP_CCD|count_start_seq[18]~69\)) # (!\COMP_CCD|count_start_seq\(19) & ((\COMP_CCD|count_start_seq[18]~69\) # (GND)))
-- \COMP_CCD|count_start_seq[19]~71\ = CARRY((!\COMP_CCD|count_start_seq[18]~69\) # (!\COMP_CCD|count_start_seq\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(19),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[18]~69\,
	combout => \COMP_CCD|count_start_seq[19]~70_combout\,
	cout => \COMP_CCD|count_start_seq[19]~71\);

-- Location: FF_X9_Y17_N7
\COMP_CCD|count_start_seq[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[19]~70_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(19));

-- Location: LCCOMB_X9_Y17_N8
\COMP_CCD|count_start_seq[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[20]~72_combout\ = (\COMP_CCD|count_start_seq\(20) & (\COMP_CCD|count_start_seq[19]~71\ $ (GND))) # (!\COMP_CCD|count_start_seq\(20) & (!\COMP_CCD|count_start_seq[19]~71\ & VCC))
-- \COMP_CCD|count_start_seq[20]~73\ = CARRY((\COMP_CCD|count_start_seq\(20) & !\COMP_CCD|count_start_seq[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(20),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[19]~71\,
	combout => \COMP_CCD|count_start_seq[20]~72_combout\,
	cout => \COMP_CCD|count_start_seq[20]~73\);

-- Location: FF_X9_Y17_N9
\COMP_CCD|count_start_seq[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[20]~72_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(20));

-- Location: LCCOMB_X9_Y17_N10
\COMP_CCD|count_start_seq[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[21]~74_combout\ = (\COMP_CCD|count_start_seq\(21) & (!\COMP_CCD|count_start_seq[20]~73\)) # (!\COMP_CCD|count_start_seq\(21) & ((\COMP_CCD|count_start_seq[20]~73\) # (GND)))
-- \COMP_CCD|count_start_seq[21]~75\ = CARRY((!\COMP_CCD|count_start_seq[20]~73\) # (!\COMP_CCD|count_start_seq\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(21),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[20]~73\,
	combout => \COMP_CCD|count_start_seq[21]~74_combout\,
	cout => \COMP_CCD|count_start_seq[21]~75\);

-- Location: FF_X9_Y17_N11
\COMP_CCD|count_start_seq[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[21]~74_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(21));

-- Location: LCCOMB_X9_Y17_N12
\COMP_CCD|count_start_seq[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[22]~76_combout\ = (\COMP_CCD|count_start_seq\(22) & (\COMP_CCD|count_start_seq[21]~75\ $ (GND))) # (!\COMP_CCD|count_start_seq\(22) & (!\COMP_CCD|count_start_seq[21]~75\ & VCC))
-- \COMP_CCD|count_start_seq[22]~77\ = CARRY((\COMP_CCD|count_start_seq\(22) & !\COMP_CCD|count_start_seq[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(22),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[21]~75\,
	combout => \COMP_CCD|count_start_seq[22]~76_combout\,
	cout => \COMP_CCD|count_start_seq[22]~77\);

-- Location: FF_X9_Y17_N13
\COMP_CCD|count_start_seq[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[22]~76_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(22));

-- Location: LCCOMB_X9_Y17_N14
\COMP_CCD|count_start_seq[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[23]~78_combout\ = (\COMP_CCD|count_start_seq\(23) & (!\COMP_CCD|count_start_seq[22]~77\)) # (!\COMP_CCD|count_start_seq\(23) & ((\COMP_CCD|count_start_seq[22]~77\) # (GND)))
-- \COMP_CCD|count_start_seq[23]~79\ = CARRY((!\COMP_CCD|count_start_seq[22]~77\) # (!\COMP_CCD|count_start_seq\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(23),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[22]~77\,
	combout => \COMP_CCD|count_start_seq[23]~78_combout\,
	cout => \COMP_CCD|count_start_seq[23]~79\);

-- Location: FF_X9_Y17_N15
\COMP_CCD|count_start_seq[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[23]~78_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(23));

-- Location: LCCOMB_X9_Y17_N16
\COMP_CCD|count_start_seq[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[24]~80_combout\ = (\COMP_CCD|count_start_seq\(24) & (\COMP_CCD|count_start_seq[23]~79\ $ (GND))) # (!\COMP_CCD|count_start_seq\(24) & (!\COMP_CCD|count_start_seq[23]~79\ & VCC))
-- \COMP_CCD|count_start_seq[24]~81\ = CARRY((\COMP_CCD|count_start_seq\(24) & !\COMP_CCD|count_start_seq[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(24),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[23]~79\,
	combout => \COMP_CCD|count_start_seq[24]~80_combout\,
	cout => \COMP_CCD|count_start_seq[24]~81\);

-- Location: FF_X9_Y17_N17
\COMP_CCD|count_start_seq[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[24]~80_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(24));

-- Location: LCCOMB_X9_Y17_N18
\COMP_CCD|count_start_seq[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[25]~82_combout\ = (\COMP_CCD|count_start_seq\(25) & (!\COMP_CCD|count_start_seq[24]~81\)) # (!\COMP_CCD|count_start_seq\(25) & ((\COMP_CCD|count_start_seq[24]~81\) # (GND)))
-- \COMP_CCD|count_start_seq[25]~83\ = CARRY((!\COMP_CCD|count_start_seq[24]~81\) # (!\COMP_CCD|count_start_seq\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(25),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[24]~81\,
	combout => \COMP_CCD|count_start_seq[25]~82_combout\,
	cout => \COMP_CCD|count_start_seq[25]~83\);

-- Location: FF_X9_Y17_N19
\COMP_CCD|count_start_seq[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[25]~82_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(25));

-- Location: LCCOMB_X9_Y17_N20
\COMP_CCD|count_start_seq[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[26]~84_combout\ = (\COMP_CCD|count_start_seq\(26) & (\COMP_CCD|count_start_seq[25]~83\ $ (GND))) # (!\COMP_CCD|count_start_seq\(26) & (!\COMP_CCD|count_start_seq[25]~83\ & VCC))
-- \COMP_CCD|count_start_seq[26]~85\ = CARRY((\COMP_CCD|count_start_seq\(26) & !\COMP_CCD|count_start_seq[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(26),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[25]~83\,
	combout => \COMP_CCD|count_start_seq[26]~84_combout\,
	cout => \COMP_CCD|count_start_seq[26]~85\);

-- Location: FF_X9_Y17_N21
\COMP_CCD|count_start_seq[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[26]~84_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(26));

-- Location: LCCOMB_X9_Y17_N22
\COMP_CCD|count_start_seq[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[27]~86_combout\ = (\COMP_CCD|count_start_seq\(27) & (!\COMP_CCD|count_start_seq[26]~85\)) # (!\COMP_CCD|count_start_seq\(27) & ((\COMP_CCD|count_start_seq[26]~85\) # (GND)))
-- \COMP_CCD|count_start_seq[27]~87\ = CARRY((!\COMP_CCD|count_start_seq[26]~85\) # (!\COMP_CCD|count_start_seq\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(27),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[26]~85\,
	combout => \COMP_CCD|count_start_seq[27]~86_combout\,
	cout => \COMP_CCD|count_start_seq[27]~87\);

-- Location: FF_X9_Y17_N23
\COMP_CCD|count_start_seq[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[27]~86_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(27));

-- Location: LCCOMB_X9_Y17_N24
\COMP_CCD|count_start_seq[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[28]~88_combout\ = (\COMP_CCD|count_start_seq\(28) & (\COMP_CCD|count_start_seq[27]~87\ $ (GND))) # (!\COMP_CCD|count_start_seq\(28) & (!\COMP_CCD|count_start_seq[27]~87\ & VCC))
-- \COMP_CCD|count_start_seq[28]~89\ = CARRY((\COMP_CCD|count_start_seq\(28) & !\COMP_CCD|count_start_seq[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(28),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[27]~87\,
	combout => \COMP_CCD|count_start_seq[28]~88_combout\,
	cout => \COMP_CCD|count_start_seq[28]~89\);

-- Location: FF_X9_Y17_N25
\COMP_CCD|count_start_seq[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[28]~88_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(28));

-- Location: LCCOMB_X9_Y17_N26
\COMP_CCD|count_start_seq[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[29]~90_combout\ = (\COMP_CCD|count_start_seq\(29) & (!\COMP_CCD|count_start_seq[28]~89\)) # (!\COMP_CCD|count_start_seq\(29) & ((\COMP_CCD|count_start_seq[28]~89\) # (GND)))
-- \COMP_CCD|count_start_seq[29]~91\ = CARRY((!\COMP_CCD|count_start_seq[28]~89\) # (!\COMP_CCD|count_start_seq\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(29),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[28]~89\,
	combout => \COMP_CCD|count_start_seq[29]~90_combout\,
	cout => \COMP_CCD|count_start_seq[29]~91\);

-- Location: FF_X9_Y17_N27
\COMP_CCD|count_start_seq[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[29]~90_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(29));

-- Location: LCCOMB_X9_Y17_N28
\COMP_CCD|count_start_seq[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[30]~92_combout\ = (\COMP_CCD|count_start_seq\(30) & (\COMP_CCD|count_start_seq[29]~91\ $ (GND))) # (!\COMP_CCD|count_start_seq\(30) & (!\COMP_CCD|count_start_seq[29]~91\ & VCC))
-- \COMP_CCD|count_start_seq[30]~93\ = CARRY((\COMP_CCD|count_start_seq\(30) & !\COMP_CCD|count_start_seq[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(30),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[29]~91\,
	combout => \COMP_CCD|count_start_seq[30]~92_combout\,
	cout => \COMP_CCD|count_start_seq[30]~93\);

-- Location: FF_X9_Y17_N29
\COMP_CCD|count_start_seq[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[30]~92_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(30));

-- Location: LCCOMB_X9_Y17_N30
\COMP_CCD|count_start_seq[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~94_combout\ = \COMP_CCD|count_start_seq\(31) $ (\COMP_CCD|count_start_seq[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(31),
	cin => \COMP_CCD|count_start_seq[30]~93\,
	combout => \COMP_CCD|count_start_seq[31]~94_combout\);

-- Location: FF_X9_Y17_N31
\COMP_CCD|count_start_seq[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[31]~94_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(31));

-- Location: LCCOMB_X10_Y17_N16
\COMP_CCD|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~7_combout\ = (!\COMP_CCD|count_start_seq\(29) & (!\COMP_CCD|count_start_seq\(26) & (!\COMP_CCD|count_start_seq\(28) & !\COMP_CCD|count_start_seq\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(29),
	datab => \COMP_CCD|count_start_seq\(26),
	datac => \COMP_CCD|count_start_seq\(28),
	datad => \COMP_CCD|count_start_seq\(27),
	combout => \COMP_CCD|Equal3~7_combout\);

-- Location: LCCOMB_X10_Y17_N6
\COMP_CCD|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~8_combout\ = (!\COMP_CCD|count_start_seq\(30) & \COMP_CCD|Equal3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_start_seq\(30),
	datad => \COMP_CCD|Equal3~7_combout\,
	combout => \COMP_CCD|Equal3~8_combout\);

-- Location: LCCOMB_X10_Y17_N28
\COMP_CCD|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~5_combout\ = (!\COMP_CCD|count_start_seq\(20) & (!\COMP_CCD|count_start_seq\(19) & (!\COMP_CCD|count_start_seq\(18) & !\COMP_CCD|count_start_seq\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(20),
	datab => \COMP_CCD|count_start_seq\(19),
	datac => \COMP_CCD|count_start_seq\(18),
	datad => \COMP_CCD|count_start_seq\(21),
	combout => \COMP_CCD|Equal3~5_combout\);

-- Location: LCCOMB_X10_Y17_N22
\COMP_CCD|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~6_combout\ = (!\COMP_CCD|count_start_seq\(23) & (!\COMP_CCD|count_start_seq\(25) & (!\COMP_CCD|count_start_seq\(24) & !\COMP_CCD|count_start_seq\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(23),
	datab => \COMP_CCD|count_start_seq\(25),
	datac => \COMP_CCD|count_start_seq\(24),
	datad => \COMP_CCD|count_start_seq\(22),
	combout => \COMP_CCD|Equal3~6_combout\);

-- Location: LCCOMB_X10_Y18_N30
\COMP_CCD|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~1_combout\ = (!\COMP_CCD|count_start_seq\(7) & (!\COMP_CCD|count_start_seq\(9) & (!\COMP_CCD|count_start_seq\(8) & !\COMP_CCD|count_start_seq\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(7),
	datab => \COMP_CCD|count_start_seq\(9),
	datac => \COMP_CCD|count_start_seq\(8),
	datad => \COMP_CCD|count_start_seq\(6),
	combout => \COMP_CCD|Equal3~1_combout\);

-- Location: LCCOMB_X10_Y17_N20
\COMP_CCD|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~3_combout\ = (!\COMP_CCD|count_start_seq\(17) & (!\COMP_CCD|count_start_seq\(14) & (!\COMP_CCD|count_start_seq\(15) & !\COMP_CCD|count_start_seq\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(17),
	datab => \COMP_CCD|count_start_seq\(14),
	datac => \COMP_CCD|count_start_seq\(15),
	datad => \COMP_CCD|count_start_seq\(16),
	combout => \COMP_CCD|Equal3~3_combout\);

-- Location: LCCOMB_X10_Y18_N8
\COMP_CCD|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~0_combout\ = (!\COMP_CCD|count_start_seq\(5) & (!\COMP_CCD|count_start_seq\(2) & (!\COMP_CCD|count_start_seq\(3) & !\COMP_CCD|count_start_seq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(5),
	datab => \COMP_CCD|count_start_seq\(2),
	datac => \COMP_CCD|count_start_seq\(3),
	datad => \COMP_CCD|count_start_seq\(4),
	combout => \COMP_CCD|Equal3~0_combout\);

-- Location: LCCOMB_X10_Y18_N12
\COMP_CCD|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~2_combout\ = (!\COMP_CCD|count_start_seq\(13) & (!\COMP_CCD|count_start_seq\(10) & (!\COMP_CCD|count_start_seq\(12) & !\COMP_CCD|count_start_seq\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(13),
	datab => \COMP_CCD|count_start_seq\(10),
	datac => \COMP_CCD|count_start_seq\(12),
	datad => \COMP_CCD|count_start_seq\(11),
	combout => \COMP_CCD|Equal3~2_combout\);

-- Location: LCCOMB_X10_Y17_N10
\COMP_CCD|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~4_combout\ = (\COMP_CCD|Equal3~1_combout\ & (\COMP_CCD|Equal3~3_combout\ & (\COMP_CCD|Equal3~0_combout\ & \COMP_CCD|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal3~1_combout\,
	datab => \COMP_CCD|Equal3~3_combout\,
	datac => \COMP_CCD|Equal3~0_combout\,
	datad => \COMP_CCD|Equal3~2_combout\,
	combout => \COMP_CCD|Equal3~4_combout\);

-- Location: LCCOMB_X10_Y17_N24
\COMP_CCD|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~9_combout\ = (\COMP_CCD|Equal3~8_combout\ & (\COMP_CCD|Equal3~5_combout\ & (\COMP_CCD|Equal3~6_combout\ & \COMP_CCD|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal3~8_combout\,
	datab => \COMP_CCD|Equal3~5_combout\,
	datac => \COMP_CCD|Equal3~6_combout\,
	datad => \COMP_CCD|Equal3~4_combout\,
	combout => \COMP_CCD|Equal3~9_combout\);

-- Location: LCCOMB_X10_Y17_N26
\COMP_CCD|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan13~0_combout\ = (\COMP_CCD|count_start_seq\(31)) # ((\COMP_CCD|Equal3~9_combout\ & ((!\COMP_CCD|count_start_seq\(0)) # (!\COMP_CCD|count_start_seq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(1),
	datab => \COMP_CCD|count_start_seq\(31),
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|Equal3~9_combout\,
	combout => \COMP_CCD|LessThan13~0_combout\);

-- Location: LCCOMB_X10_Y16_N28
\COMP_CCD|count_start_seq[9]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[9]~97_combout\ = (\COMP_CCD|process_2~8_combout\ & ((\COMP_CCD|process_2~6_combout\) # ((!\COMP_CCD|shut_reg~0_combout\) # (!\COMP_CCD|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2~8_combout\,
	datab => \COMP_CCD|process_2~6_combout\,
	datac => \COMP_CCD|LessThan13~0_combout\,
	datad => \COMP_CCD|shut_reg~0_combout\,
	combout => \COMP_CCD|count_start_seq[9]~97_combout\);

-- Location: LCCOMB_X10_Y16_N30
\COMP_CCD|count_start_seq[0]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[0]~98_combout\ = (\COMP_CCD|process_2~9_combout\ & ((\COMP_CCD|count_start_seq[9]~97_combout\))) # (!\COMP_CCD|process_2~9_combout\ & (!\COMP_CCD|LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2~9_combout\,
	datac => \COMP_CCD|LessThan13~0_combout\,
	datad => \COMP_CCD|count_start_seq[9]~97_combout\,
	combout => \COMP_CCD|count_start_seq[0]~98_combout\);

-- Location: LCCOMB_X10_Y16_N8
\COMP_CCD|count_start_seq[0]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[0]~99_combout\ = (\COMP_CCD|data_out[4]~0_combout\ & ((!\COMP_CCD|ccd_ready_reg~0_combout\) # (!\COMP_CCD|count_start_seq[0]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq[0]~98_combout\,
	datac => \COMP_CCD|ccd_ready_reg~0_combout\,
	datad => \COMP_CCD|data_out[4]~0_combout\,
	combout => \COMP_CCD|count_start_seq[0]~99_combout\);

-- Location: FF_X9_Y18_N1
\COMP_CCD|count_start_seq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[0]~32_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(0));

-- Location: FF_X9_Y18_N3
\COMP_CCD|count_start_seq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[1]~34_combout\,
	sclr => \COMP_CCD|count_start_seq[9]~96_combout\,
	ena => \COMP_CCD|count_start_seq[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(1));

-- Location: LCCOMB_X10_Y17_N12
\COMP_CCD|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~10_combout\ = (!\COMP_CCD|count_start_seq\(31) & \COMP_CCD|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(31),
	datad => \COMP_CCD|Equal3~9_combout\,
	combout => \COMP_CCD|Equal3~10_combout\);

-- Location: LCCOMB_X10_Y17_N30
\COMP_CCD|data_out[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[7]~2_combout\ = (\COMP_CCD|clk_reg~q\ & (\COMP_CCD|Equal3~10_combout\ & ((!\COMP_CCD|count_start_seq\(0)) # (!\COMP_CCD|count_start_seq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(1),
	datab => \COMP_CCD|count_start_seq\(0),
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|Equal3~10_combout\,
	combout => \COMP_CCD|data_out[7]~2_combout\);

-- Location: LCCOMB_X10_Y16_N4
\COMP_CCD|data_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~3_combout\ = (\COMP_CCD|data_out[7]~2_combout\ & (\COMP_CCD|LessThan13~0_combout\ & ((!\COMP_CCD|process_2~9_combout\) # (!\COMP_CCD|process_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out[7]~2_combout\,
	datab => \COMP_CCD|process_2~6_combout\,
	datac => \COMP_CCD|LessThan13~0_combout\,
	datad => \COMP_CCD|process_2~9_combout\,
	combout => \COMP_CCD|data_out[0]~3_combout\);

-- Location: LCCOMB_X10_Y16_N2
\COMP_CCD|data_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~4_combout\ = (\COMP_CCD|process_2~9_combout\ & (((\COMP_CCD|shut_reg~0_combout\ & \COMP_CCD|data_out[0]~3_combout\)) # (!\COMP_CCD|process_2~8_combout\))) # (!\COMP_CCD|process_2~9_combout\ & (((\COMP_CCD|data_out[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2~8_combout\,
	datab => \COMP_CCD|shut_reg~0_combout\,
	datac => \COMP_CCD|data_out[0]~3_combout\,
	datad => \COMP_CCD|process_2~9_combout\,
	combout => \COMP_CCD|data_out[0]~4_combout\);

-- Location: LCCOMB_X10_Y16_N0
\COMP_CCD|data_out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~5_combout\ = (\COMP_CCD|data_out[4]~0_combout\ & (\COMP_CCD|ccd_ready_reg~0_combout\ & \COMP_CCD|data_out[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|data_out[4]~0_combout\,
	datac => \COMP_CCD|ccd_ready_reg~0_combout\,
	datad => \COMP_CCD|data_out[0]~4_combout\,
	combout => \COMP_CCD|data_out[0]~5_combout\);

-- Location: FF_X9_Y20_N31
\COMP_CCD|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~6_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(0));

-- Location: IOIBUF_X13_Y24_N8
\adc_data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(8),
	o => \adc_data_in[8]~input_o\);

-- Location: LCCOMB_X9_Y20_N16
\COMP_CCD|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~1_combout\ = (\adc_data_in[8]~input_o\ & !\COMP_CCD|process_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_data_in[8]~input_o\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~1_combout\);

-- Location: FF_X9_Y20_N17
\COMP_CCD|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~1_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(8));

-- Location: LCCOMB_X8_Y18_N0
\COMP_USB|switch_write[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[0]~32_combout\ = \COMP_USB|switch_write\(0) $ (VCC)
-- \COMP_USB|switch_write[0]~33\ = CARRY(\COMP_USB|switch_write\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(0),
	datad => VCC,
	combout => \COMP_USB|switch_write[0]~32_combout\,
	cout => \COMP_USB|switch_write[0]~33\);

-- Location: LCCOMB_X8_Y17_N18
\COMP_USB|switch_write[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[25]~83_combout\ = (\COMP_USB|switch_write\(25) & (!\COMP_USB|switch_write[24]~82\)) # (!\COMP_USB|switch_write\(25) & ((\COMP_USB|switch_write[24]~82\) # (GND)))
-- \COMP_USB|switch_write[25]~84\ = CARRY((!\COMP_USB|switch_write[24]~82\) # (!\COMP_USB|switch_write\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(25),
	datad => VCC,
	cin => \COMP_USB|switch_write[24]~82\,
	combout => \COMP_USB|switch_write[25]~83_combout\,
	cout => \COMP_USB|switch_write[25]~84\);

-- Location: LCCOMB_X8_Y17_N20
\COMP_USB|switch_write[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[26]~85_combout\ = (\COMP_USB|switch_write\(26) & (\COMP_USB|switch_write[25]~84\ $ (GND))) # (!\COMP_USB|switch_write\(26) & (!\COMP_USB|switch_write[25]~84\ & VCC))
-- \COMP_USB|switch_write[26]~86\ = CARRY((\COMP_USB|switch_write\(26) & !\COMP_USB|switch_write[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(26),
	datad => VCC,
	cin => \COMP_USB|switch_write[25]~84\,
	combout => \COMP_USB|switch_write[26]~85_combout\,
	cout => \COMP_USB|switch_write[26]~86\);

-- Location: IOIBUF_X3_Y0_N1
\usb_txe~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usb_txe,
	o => \usb_txe~input_o\);

-- Location: LCCOMB_X7_Y18_N0
\COMP_USB|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~1_combout\ = (!\COMP_USB|switch_write\(6) & (!\COMP_USB|switch_write\(8) & (!\COMP_USB|switch_write\(7) & !\COMP_USB|switch_write\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(6),
	datab => \COMP_USB|switch_write\(8),
	datac => \COMP_USB|switch_write\(7),
	datad => \COMP_USB|switch_write\(9),
	combout => \COMP_USB|Equal1~1_combout\);

-- Location: LCCOMB_X7_Y18_N30
\COMP_USB|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~0_combout\ = (!\COMP_USB|switch_write\(2) & (!\COMP_USB|switch_write\(4) & (!\COMP_USB|switch_write\(5) & !\COMP_USB|switch_write\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(2),
	datab => \COMP_USB|switch_write\(4),
	datac => \COMP_USB|switch_write\(5),
	datad => \COMP_USB|switch_write\(3),
	combout => \COMP_USB|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y17_N10
\COMP_USB|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~3_combout\ = (!\COMP_USB|switch_write\(17) & (!\COMP_USB|switch_write\(16) & (!\COMP_USB|switch_write\(15) & !\COMP_USB|switch_write\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(17),
	datab => \COMP_USB|switch_write\(16),
	datac => \COMP_USB|switch_write\(15),
	datad => \COMP_USB|switch_write\(14),
	combout => \COMP_USB|Equal1~3_combout\);

-- Location: LCCOMB_X7_Y18_N22
\COMP_USB|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~2_combout\ = (!\COMP_USB|switch_write\(12) & (!\COMP_USB|switch_write\(11) & (!\COMP_USB|switch_write\(10) & !\COMP_USB|switch_write\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(12),
	datab => \COMP_USB|switch_write\(11),
	datac => \COMP_USB|switch_write\(10),
	datad => \COMP_USB|switch_write\(13),
	combout => \COMP_USB|Equal1~2_combout\);

-- Location: LCCOMB_X6_Y17_N16
\COMP_USB|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~4_combout\ = (\COMP_USB|Equal1~1_combout\ & (\COMP_USB|Equal1~0_combout\ & (\COMP_USB|Equal1~3_combout\ & \COMP_USB|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|Equal1~1_combout\,
	datab => \COMP_USB|Equal1~0_combout\,
	datac => \COMP_USB|Equal1~3_combout\,
	datad => \COMP_USB|Equal1~2_combout\,
	combout => \COMP_USB|Equal1~4_combout\);

-- Location: LCCOMB_X6_Y17_N18
\COMP_USB|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~0_combout\ = (!\COMP_USB|switch_write\(31) & ((\COMP_USB|switch_write\(1)) # ((!\COMP_USB|Equal1~4_combout\) # (!\COMP_USB|Equal1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datab => \COMP_USB|switch_write\(31),
	datac => \COMP_USB|Equal1~8_combout\,
	datad => \COMP_USB|Equal1~4_combout\,
	combout => \COMP_USB|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y17_N0
\COMP_USB|switch_write[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[0]~38_combout\ = (!\usb_txe~input_o\ & ((\COMP_USB|process_0~3_combout\) # ((!\COMP_USB|LessThan0~0_combout\ & \COMP_USB|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usb_txe~input_o\,
	datab => \COMP_USB|LessThan0~0_combout\,
	datac => \COMP_USB|process_0~3_combout\,
	datad => \COMP_USB|process_0~4_combout\,
	combout => \COMP_USB|switch_write[0]~38_combout\);

-- Location: FF_X8_Y17_N21
\COMP_USB|switch_write[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[26]~85_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(26));

-- Location: LCCOMB_X8_Y17_N22
\COMP_USB|switch_write[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[27]~87_combout\ = (\COMP_USB|switch_write\(27) & (!\COMP_USB|switch_write[26]~86\)) # (!\COMP_USB|switch_write\(27) & ((\COMP_USB|switch_write[26]~86\) # (GND)))
-- \COMP_USB|switch_write[27]~88\ = CARRY((!\COMP_USB|switch_write[26]~86\) # (!\COMP_USB|switch_write\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(27),
	datad => VCC,
	cin => \COMP_USB|switch_write[26]~86\,
	combout => \COMP_USB|switch_write[27]~87_combout\,
	cout => \COMP_USB|switch_write[27]~88\);

-- Location: FF_X8_Y17_N23
\COMP_USB|switch_write[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[27]~87_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(27));

-- Location: LCCOMB_X8_Y17_N24
\COMP_USB|switch_write[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[28]~89_combout\ = (\COMP_USB|switch_write\(28) & (\COMP_USB|switch_write[27]~88\ $ (GND))) # (!\COMP_USB|switch_write\(28) & (!\COMP_USB|switch_write[27]~88\ & VCC))
-- \COMP_USB|switch_write[28]~90\ = CARRY((\COMP_USB|switch_write\(28) & !\COMP_USB|switch_write[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(28),
	datad => VCC,
	cin => \COMP_USB|switch_write[27]~88\,
	combout => \COMP_USB|switch_write[28]~89_combout\,
	cout => \COMP_USB|switch_write[28]~90\);

-- Location: FF_X8_Y17_N25
\COMP_USB|switch_write[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[28]~89_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(28));

-- Location: LCCOMB_X8_Y17_N26
\COMP_USB|switch_write[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[29]~91_combout\ = (\COMP_USB|switch_write\(29) & (!\COMP_USB|switch_write[28]~90\)) # (!\COMP_USB|switch_write\(29) & ((\COMP_USB|switch_write[28]~90\) # (GND)))
-- \COMP_USB|switch_write[29]~92\ = CARRY((!\COMP_USB|switch_write[28]~90\) # (!\COMP_USB|switch_write\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(29),
	datad => VCC,
	cin => \COMP_USB|switch_write[28]~90\,
	combout => \COMP_USB|switch_write[29]~91_combout\,
	cout => \COMP_USB|switch_write[29]~92\);

-- Location: FF_X8_Y17_N27
\COMP_USB|switch_write[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[29]~91_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(29));

-- Location: LCCOMB_X8_Y17_N28
\COMP_USB|switch_write[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[30]~93_combout\ = (\COMP_USB|switch_write\(30) & (\COMP_USB|switch_write[29]~92\ $ (GND))) # (!\COMP_USB|switch_write\(30) & (!\COMP_USB|switch_write[29]~92\ & VCC))
-- \COMP_USB|switch_write[30]~94\ = CARRY((\COMP_USB|switch_write\(30) & !\COMP_USB|switch_write[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(30),
	datad => VCC,
	cin => \COMP_USB|switch_write[29]~92\,
	combout => \COMP_USB|switch_write[30]~93_combout\,
	cout => \COMP_USB|switch_write[30]~94\);

-- Location: FF_X8_Y17_N29
\COMP_USB|switch_write[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[30]~93_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(30));

-- Location: LCCOMB_X8_Y17_N30
\COMP_USB|switch_write[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[31]~95_combout\ = \COMP_USB|switch_write\(31) $ (\COMP_USB|switch_write[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	cin => \COMP_USB|switch_write[30]~94\,
	combout => \COMP_USB|switch_write[31]~95_combout\);

-- Location: FF_X8_Y17_N31
\COMP_USB|switch_write[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[31]~95_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(31));

-- Location: LCCOMB_X7_Y17_N30
\COMP_USB|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~5_combout\ = (\COMP_USB|switch_write\(0)) # ((\COMP_USB|switch_write\(31)) # (!\COMP_USB|switch_write\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(0),
	datac => \COMP_USB|switch_write\(1),
	datad => \COMP_USB|switch_write\(31),
	combout => \COMP_USB|process_0~5_combout\);

-- Location: LCCOMB_X10_Y16_N14
\COMP_CCD|ccd_ready_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~1_combout\ = (\COMP_CCD|ccd_ready_reg~0_combout\ & ((\COMP_CCD|process_2~9_combout\ & ((!\COMP_CCD|count_start_seq[9]~97_combout\))) # (!\COMP_CCD|process_2~9_combout\ & (\COMP_CCD|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan13~0_combout\,
	datab => \COMP_CCD|process_2~9_combout\,
	datac => \COMP_CCD|ccd_ready_reg~0_combout\,
	datad => \COMP_CCD|count_start_seq[9]~97_combout\,
	combout => \COMP_CCD|ccd_ready_reg~1_combout\);

-- Location: LCCOMB_X11_Y16_N28
\COMP_CCD|ccd_ready_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~2_combout\ = (\COMP_CCD|data_out[4]~0_combout\ & ((\COMP_CCD|ccd_ready_reg~1_combout\ & ((\COMP_CCD|clk_reg~q\))) # (!\COMP_CCD|ccd_ready_reg~1_combout\ & (\COMP_CCD|ccd_ready_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|ccd_ready_reg~q\,
	datab => \COMP_CCD|data_out[4]~0_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|ccd_ready_reg~1_combout\,
	combout => \COMP_CCD|ccd_ready_reg~2_combout\);

-- Location: LCCOMB_X11_Y16_N10
\COMP_CCD|ccd_ready_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~3_combout\ = (\COMP_CCD|ccd_ready_reg~2_combout\) # ((\COMP_CCD|clk_reg~4_combout\ & \COMP_CCD|ccd_ready_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~4_combout\,
	datac => \COMP_CCD|ccd_ready_reg~q\,
	datad => \COMP_CCD|ccd_ready_reg~2_combout\,
	combout => \COMP_CCD|ccd_ready_reg~3_combout\);

-- Location: FF_X11_Y16_N11
\COMP_CCD|ccd_ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|ccd_ready_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ccd_ready_reg~q\);

-- Location: FF_X7_Y17_N17
\COMP_CCD|ccd_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	asdata => \COMP_CCD|ccd_ready_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ccd_ready~q\);

-- Location: LCCOMB_X7_Y17_N6
\COMP_USB|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~4_combout\ = (\COMP_USB|process_0~5_combout\) # (((\COMP_CCD|ccd_ready~q\) # (!\COMP_USB|Equal1~4_combout\)) # (!\COMP_USB|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|process_0~5_combout\,
	datab => \COMP_USB|Equal1~8_combout\,
	datac => \COMP_USB|Equal1~4_combout\,
	datad => \COMP_CCD|ccd_ready~q\,
	combout => \COMP_USB|process_0~4_combout\);

-- Location: LCCOMB_X7_Y17_N2
\COMP_USB|ccd_ready_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ccd_ready_reg~2_combout\ = (\usb_txe~input_o\ & (((\COMP_USB|ccd_ready_reg~q\)))) # (!\usb_txe~input_o\ & ((\COMP_USB|ccd_ready_reg~q\ & (\COMP_USB|process_0~4_combout\)) # (!\COMP_USB|ccd_ready_reg~q\ & ((\COMP_CCD|ccd_ready~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|process_0~4_combout\,
	datab => \usb_txe~input_o\,
	datac => \COMP_USB|ccd_ready_reg~q\,
	datad => \COMP_CCD|ccd_ready~q\,
	combout => \COMP_USB|ccd_ready_reg~2_combout\);

-- Location: FF_X7_Y17_N3
\COMP_USB|ccd_ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ccd_ready_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ccd_ready_reg~q\);

-- Location: LCCOMB_X7_Y17_N8
\COMP_USB|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~3_combout\ = (!\COMP_USB|ccd_ready_reg~q\ & \COMP_CCD|ccd_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|ccd_ready_reg~q\,
	datad => \COMP_CCD|ccd_ready~q\,
	combout => \COMP_USB|process_0~3_combout\);

-- Location: FF_X8_Y18_N1
\COMP_USB|switch_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[0]~32_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(0));

-- Location: LCCOMB_X8_Y18_N2
\COMP_USB|switch_write[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[1]~34_combout\ = (\COMP_USB|switch_write\(1) & (!\COMP_USB|switch_write[0]~33\)) # (!\COMP_USB|switch_write\(1) & ((\COMP_USB|switch_write[0]~33\) # (GND)))
-- \COMP_USB|switch_write[1]~35\ = CARRY((!\COMP_USB|switch_write[0]~33\) # (!\COMP_USB|switch_write\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(1),
	datad => VCC,
	cin => \COMP_USB|switch_write[0]~33\,
	combout => \COMP_USB|switch_write[1]~34_combout\,
	cout => \COMP_USB|switch_write[1]~35\);

-- Location: FF_X8_Y18_N3
\COMP_USB|switch_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[1]~34_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(1));

-- Location: LCCOMB_X8_Y18_N4
\COMP_USB|switch_write[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[2]~36_combout\ = (\COMP_USB|switch_write\(2) & (\COMP_USB|switch_write[1]~35\ $ (GND))) # (!\COMP_USB|switch_write\(2) & (!\COMP_USB|switch_write[1]~35\ & VCC))
-- \COMP_USB|switch_write[2]~37\ = CARRY((\COMP_USB|switch_write\(2) & !\COMP_USB|switch_write[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(2),
	datad => VCC,
	cin => \COMP_USB|switch_write[1]~35\,
	combout => \COMP_USB|switch_write[2]~36_combout\,
	cout => \COMP_USB|switch_write[2]~37\);

-- Location: FF_X8_Y18_N5
\COMP_USB|switch_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[2]~36_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(2));

-- Location: LCCOMB_X8_Y18_N6
\COMP_USB|switch_write[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[3]~39_combout\ = (\COMP_USB|switch_write\(3) & (!\COMP_USB|switch_write[2]~37\)) # (!\COMP_USB|switch_write\(3) & ((\COMP_USB|switch_write[2]~37\) # (GND)))
-- \COMP_USB|switch_write[3]~40\ = CARRY((!\COMP_USB|switch_write[2]~37\) # (!\COMP_USB|switch_write\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(3),
	datad => VCC,
	cin => \COMP_USB|switch_write[2]~37\,
	combout => \COMP_USB|switch_write[3]~39_combout\,
	cout => \COMP_USB|switch_write[3]~40\);

-- Location: FF_X8_Y18_N7
\COMP_USB|switch_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[3]~39_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(3));

-- Location: LCCOMB_X8_Y18_N8
\COMP_USB|switch_write[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[4]~41_combout\ = (\COMP_USB|switch_write\(4) & (\COMP_USB|switch_write[3]~40\ $ (GND))) # (!\COMP_USB|switch_write\(4) & (!\COMP_USB|switch_write[3]~40\ & VCC))
-- \COMP_USB|switch_write[4]~42\ = CARRY((\COMP_USB|switch_write\(4) & !\COMP_USB|switch_write[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(4),
	datad => VCC,
	cin => \COMP_USB|switch_write[3]~40\,
	combout => \COMP_USB|switch_write[4]~41_combout\,
	cout => \COMP_USB|switch_write[4]~42\);

-- Location: FF_X8_Y18_N9
\COMP_USB|switch_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[4]~41_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(4));

-- Location: LCCOMB_X8_Y18_N10
\COMP_USB|switch_write[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[5]~43_combout\ = (\COMP_USB|switch_write\(5) & (!\COMP_USB|switch_write[4]~42\)) # (!\COMP_USB|switch_write\(5) & ((\COMP_USB|switch_write[4]~42\) # (GND)))
-- \COMP_USB|switch_write[5]~44\ = CARRY((!\COMP_USB|switch_write[4]~42\) # (!\COMP_USB|switch_write\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(5),
	datad => VCC,
	cin => \COMP_USB|switch_write[4]~42\,
	combout => \COMP_USB|switch_write[5]~43_combout\,
	cout => \COMP_USB|switch_write[5]~44\);

-- Location: FF_X8_Y18_N11
\COMP_USB|switch_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[5]~43_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(5));

-- Location: LCCOMB_X8_Y18_N12
\COMP_USB|switch_write[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[6]~45_combout\ = (\COMP_USB|switch_write\(6) & (\COMP_USB|switch_write[5]~44\ $ (GND))) # (!\COMP_USB|switch_write\(6) & (!\COMP_USB|switch_write[5]~44\ & VCC))
-- \COMP_USB|switch_write[6]~46\ = CARRY((\COMP_USB|switch_write\(6) & !\COMP_USB|switch_write[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(6),
	datad => VCC,
	cin => \COMP_USB|switch_write[5]~44\,
	combout => \COMP_USB|switch_write[6]~45_combout\,
	cout => \COMP_USB|switch_write[6]~46\);

-- Location: FF_X7_Y18_N13
\COMP_USB|switch_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \COMP_USB|switch_write[6]~45_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	sload => VCC,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(6));

-- Location: LCCOMB_X8_Y18_N14
\COMP_USB|switch_write[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[7]~47_combout\ = (\COMP_USB|switch_write\(7) & (!\COMP_USB|switch_write[6]~46\)) # (!\COMP_USB|switch_write\(7) & ((\COMP_USB|switch_write[6]~46\) # (GND)))
-- \COMP_USB|switch_write[7]~48\ = CARRY((!\COMP_USB|switch_write[6]~46\) # (!\COMP_USB|switch_write\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(7),
	datad => VCC,
	cin => \COMP_USB|switch_write[6]~46\,
	combout => \COMP_USB|switch_write[7]~47_combout\,
	cout => \COMP_USB|switch_write[7]~48\);

-- Location: FF_X8_Y18_N15
\COMP_USB|switch_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[7]~47_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(7));

-- Location: LCCOMB_X8_Y18_N16
\COMP_USB|switch_write[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[8]~49_combout\ = (\COMP_USB|switch_write\(8) & (\COMP_USB|switch_write[7]~48\ $ (GND))) # (!\COMP_USB|switch_write\(8) & (!\COMP_USB|switch_write[7]~48\ & VCC))
-- \COMP_USB|switch_write[8]~50\ = CARRY((\COMP_USB|switch_write\(8) & !\COMP_USB|switch_write[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(8),
	datad => VCC,
	cin => \COMP_USB|switch_write[7]~48\,
	combout => \COMP_USB|switch_write[8]~49_combout\,
	cout => \COMP_USB|switch_write[8]~50\);

-- Location: FF_X8_Y18_N17
\COMP_USB|switch_write[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[8]~49_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(8));

-- Location: LCCOMB_X8_Y18_N18
\COMP_USB|switch_write[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[9]~51_combout\ = (\COMP_USB|switch_write\(9) & (!\COMP_USB|switch_write[8]~50\)) # (!\COMP_USB|switch_write\(9) & ((\COMP_USB|switch_write[8]~50\) # (GND)))
-- \COMP_USB|switch_write[9]~52\ = CARRY((!\COMP_USB|switch_write[8]~50\) # (!\COMP_USB|switch_write\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(9),
	datad => VCC,
	cin => \COMP_USB|switch_write[8]~50\,
	combout => \COMP_USB|switch_write[9]~51_combout\,
	cout => \COMP_USB|switch_write[9]~52\);

-- Location: FF_X8_Y18_N19
\COMP_USB|switch_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[9]~51_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(9));

-- Location: LCCOMB_X8_Y18_N20
\COMP_USB|switch_write[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[10]~53_combout\ = (\COMP_USB|switch_write\(10) & (\COMP_USB|switch_write[9]~52\ $ (GND))) # (!\COMP_USB|switch_write\(10) & (!\COMP_USB|switch_write[9]~52\ & VCC))
-- \COMP_USB|switch_write[10]~54\ = CARRY((\COMP_USB|switch_write\(10) & !\COMP_USB|switch_write[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(10),
	datad => VCC,
	cin => \COMP_USB|switch_write[9]~52\,
	combout => \COMP_USB|switch_write[10]~53_combout\,
	cout => \COMP_USB|switch_write[10]~54\);

-- Location: FF_X8_Y18_N21
\COMP_USB|switch_write[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[10]~53_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(10));

-- Location: LCCOMB_X8_Y18_N22
\COMP_USB|switch_write[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[11]~55_combout\ = (\COMP_USB|switch_write\(11) & (!\COMP_USB|switch_write[10]~54\)) # (!\COMP_USB|switch_write\(11) & ((\COMP_USB|switch_write[10]~54\) # (GND)))
-- \COMP_USB|switch_write[11]~56\ = CARRY((!\COMP_USB|switch_write[10]~54\) # (!\COMP_USB|switch_write\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(11),
	datad => VCC,
	cin => \COMP_USB|switch_write[10]~54\,
	combout => \COMP_USB|switch_write[11]~55_combout\,
	cout => \COMP_USB|switch_write[11]~56\);

-- Location: FF_X8_Y18_N23
\COMP_USB|switch_write[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[11]~55_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(11));

-- Location: LCCOMB_X8_Y18_N24
\COMP_USB|switch_write[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[12]~57_combout\ = (\COMP_USB|switch_write\(12) & (\COMP_USB|switch_write[11]~56\ $ (GND))) # (!\COMP_USB|switch_write\(12) & (!\COMP_USB|switch_write[11]~56\ & VCC))
-- \COMP_USB|switch_write[12]~58\ = CARRY((\COMP_USB|switch_write\(12) & !\COMP_USB|switch_write[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(12),
	datad => VCC,
	cin => \COMP_USB|switch_write[11]~56\,
	combout => \COMP_USB|switch_write[12]~57_combout\,
	cout => \COMP_USB|switch_write[12]~58\);

-- Location: FF_X8_Y18_N25
\COMP_USB|switch_write[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[12]~57_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(12));

-- Location: LCCOMB_X8_Y18_N26
\COMP_USB|switch_write[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[13]~59_combout\ = (\COMP_USB|switch_write\(13) & (!\COMP_USB|switch_write[12]~58\)) # (!\COMP_USB|switch_write\(13) & ((\COMP_USB|switch_write[12]~58\) # (GND)))
-- \COMP_USB|switch_write[13]~60\ = CARRY((!\COMP_USB|switch_write[12]~58\) # (!\COMP_USB|switch_write\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(13),
	datad => VCC,
	cin => \COMP_USB|switch_write[12]~58\,
	combout => \COMP_USB|switch_write[13]~59_combout\,
	cout => \COMP_USB|switch_write[13]~60\);

-- Location: FF_X8_Y18_N27
\COMP_USB|switch_write[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[13]~59_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(13));

-- Location: LCCOMB_X8_Y18_N28
\COMP_USB|switch_write[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[14]~61_combout\ = (\COMP_USB|switch_write\(14) & (\COMP_USB|switch_write[13]~60\ $ (GND))) # (!\COMP_USB|switch_write\(14) & (!\COMP_USB|switch_write[13]~60\ & VCC))
-- \COMP_USB|switch_write[14]~62\ = CARRY((\COMP_USB|switch_write\(14) & !\COMP_USB|switch_write[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(14),
	datad => VCC,
	cin => \COMP_USB|switch_write[13]~60\,
	combout => \COMP_USB|switch_write[14]~61_combout\,
	cout => \COMP_USB|switch_write[14]~62\);

-- Location: FF_X8_Y18_N29
\COMP_USB|switch_write[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[14]~61_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(14));

-- Location: LCCOMB_X8_Y18_N30
\COMP_USB|switch_write[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[15]~63_combout\ = (\COMP_USB|switch_write\(15) & (!\COMP_USB|switch_write[14]~62\)) # (!\COMP_USB|switch_write\(15) & ((\COMP_USB|switch_write[14]~62\) # (GND)))
-- \COMP_USB|switch_write[15]~64\ = CARRY((!\COMP_USB|switch_write[14]~62\) # (!\COMP_USB|switch_write\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(15),
	datad => VCC,
	cin => \COMP_USB|switch_write[14]~62\,
	combout => \COMP_USB|switch_write[15]~63_combout\,
	cout => \COMP_USB|switch_write[15]~64\);

-- Location: FF_X8_Y18_N31
\COMP_USB|switch_write[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[15]~63_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(15));

-- Location: LCCOMB_X8_Y17_N0
\COMP_USB|switch_write[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[16]~65_combout\ = (\COMP_USB|switch_write\(16) & (\COMP_USB|switch_write[15]~64\ $ (GND))) # (!\COMP_USB|switch_write\(16) & (!\COMP_USB|switch_write[15]~64\ & VCC))
-- \COMP_USB|switch_write[16]~66\ = CARRY((\COMP_USB|switch_write\(16) & !\COMP_USB|switch_write[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(16),
	datad => VCC,
	cin => \COMP_USB|switch_write[15]~64\,
	combout => \COMP_USB|switch_write[16]~65_combout\,
	cout => \COMP_USB|switch_write[16]~66\);

-- Location: FF_X8_Y17_N1
\COMP_USB|switch_write[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[16]~65_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(16));

-- Location: LCCOMB_X8_Y17_N2
\COMP_USB|switch_write[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[17]~67_combout\ = (\COMP_USB|switch_write\(17) & (!\COMP_USB|switch_write[16]~66\)) # (!\COMP_USB|switch_write\(17) & ((\COMP_USB|switch_write[16]~66\) # (GND)))
-- \COMP_USB|switch_write[17]~68\ = CARRY((!\COMP_USB|switch_write[16]~66\) # (!\COMP_USB|switch_write\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(17),
	datad => VCC,
	cin => \COMP_USB|switch_write[16]~66\,
	combout => \COMP_USB|switch_write[17]~67_combout\,
	cout => \COMP_USB|switch_write[17]~68\);

-- Location: FF_X8_Y17_N3
\COMP_USB|switch_write[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[17]~67_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(17));

-- Location: LCCOMB_X8_Y17_N4
\COMP_USB|switch_write[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[18]~69_combout\ = (\COMP_USB|switch_write\(18) & (\COMP_USB|switch_write[17]~68\ $ (GND))) # (!\COMP_USB|switch_write\(18) & (!\COMP_USB|switch_write[17]~68\ & VCC))
-- \COMP_USB|switch_write[18]~70\ = CARRY((\COMP_USB|switch_write\(18) & !\COMP_USB|switch_write[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(18),
	datad => VCC,
	cin => \COMP_USB|switch_write[17]~68\,
	combout => \COMP_USB|switch_write[18]~69_combout\,
	cout => \COMP_USB|switch_write[18]~70\);

-- Location: FF_X8_Y17_N5
\COMP_USB|switch_write[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[18]~69_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(18));

-- Location: LCCOMB_X8_Y17_N6
\COMP_USB|switch_write[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[19]~71_combout\ = (\COMP_USB|switch_write\(19) & (!\COMP_USB|switch_write[18]~70\)) # (!\COMP_USB|switch_write\(19) & ((\COMP_USB|switch_write[18]~70\) # (GND)))
-- \COMP_USB|switch_write[19]~72\ = CARRY((!\COMP_USB|switch_write[18]~70\) # (!\COMP_USB|switch_write\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(19),
	datad => VCC,
	cin => \COMP_USB|switch_write[18]~70\,
	combout => \COMP_USB|switch_write[19]~71_combout\,
	cout => \COMP_USB|switch_write[19]~72\);

-- Location: FF_X8_Y17_N7
\COMP_USB|switch_write[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[19]~71_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(19));

-- Location: LCCOMB_X8_Y17_N8
\COMP_USB|switch_write[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[20]~73_combout\ = (\COMP_USB|switch_write\(20) & (\COMP_USB|switch_write[19]~72\ $ (GND))) # (!\COMP_USB|switch_write\(20) & (!\COMP_USB|switch_write[19]~72\ & VCC))
-- \COMP_USB|switch_write[20]~74\ = CARRY((\COMP_USB|switch_write\(20) & !\COMP_USB|switch_write[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(20),
	datad => VCC,
	cin => \COMP_USB|switch_write[19]~72\,
	combout => \COMP_USB|switch_write[20]~73_combout\,
	cout => \COMP_USB|switch_write[20]~74\);

-- Location: FF_X8_Y17_N9
\COMP_USB|switch_write[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[20]~73_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(20));

-- Location: LCCOMB_X8_Y17_N10
\COMP_USB|switch_write[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[21]~75_combout\ = (\COMP_USB|switch_write\(21) & (!\COMP_USB|switch_write[20]~74\)) # (!\COMP_USB|switch_write\(21) & ((\COMP_USB|switch_write[20]~74\) # (GND)))
-- \COMP_USB|switch_write[21]~76\ = CARRY((!\COMP_USB|switch_write[20]~74\) # (!\COMP_USB|switch_write\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(21),
	datad => VCC,
	cin => \COMP_USB|switch_write[20]~74\,
	combout => \COMP_USB|switch_write[21]~75_combout\,
	cout => \COMP_USB|switch_write[21]~76\);

-- Location: FF_X8_Y17_N11
\COMP_USB|switch_write[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[21]~75_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(21));

-- Location: LCCOMB_X8_Y17_N12
\COMP_USB|switch_write[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[22]~77_combout\ = (\COMP_USB|switch_write\(22) & (\COMP_USB|switch_write[21]~76\ $ (GND))) # (!\COMP_USB|switch_write\(22) & (!\COMP_USB|switch_write[21]~76\ & VCC))
-- \COMP_USB|switch_write[22]~78\ = CARRY((\COMP_USB|switch_write\(22) & !\COMP_USB|switch_write[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(22),
	datad => VCC,
	cin => \COMP_USB|switch_write[21]~76\,
	combout => \COMP_USB|switch_write[22]~77_combout\,
	cout => \COMP_USB|switch_write[22]~78\);

-- Location: FF_X8_Y17_N13
\COMP_USB|switch_write[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[22]~77_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(22));

-- Location: LCCOMB_X8_Y17_N14
\COMP_USB|switch_write[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[23]~79_combout\ = (\COMP_USB|switch_write\(23) & (!\COMP_USB|switch_write[22]~78\)) # (!\COMP_USB|switch_write\(23) & ((\COMP_USB|switch_write[22]~78\) # (GND)))
-- \COMP_USB|switch_write[23]~80\ = CARRY((!\COMP_USB|switch_write[22]~78\) # (!\COMP_USB|switch_write\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(23),
	datad => VCC,
	cin => \COMP_USB|switch_write[22]~78\,
	combout => \COMP_USB|switch_write[23]~79_combout\,
	cout => \COMP_USB|switch_write[23]~80\);

-- Location: FF_X8_Y17_N15
\COMP_USB|switch_write[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[23]~79_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(23));

-- Location: LCCOMB_X8_Y17_N16
\COMP_USB|switch_write[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[24]~81_combout\ = (\COMP_USB|switch_write\(24) & (\COMP_USB|switch_write[23]~80\ $ (GND))) # (!\COMP_USB|switch_write\(24) & (!\COMP_USB|switch_write[23]~80\ & VCC))
-- \COMP_USB|switch_write[24]~82\ = CARRY((\COMP_USB|switch_write\(24) & !\COMP_USB|switch_write[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(24),
	datad => VCC,
	cin => \COMP_USB|switch_write[23]~80\,
	combout => \COMP_USB|switch_write[24]~81_combout\,
	cout => \COMP_USB|switch_write[24]~82\);

-- Location: FF_X8_Y17_N17
\COMP_USB|switch_write[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[24]~81_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(24));

-- Location: FF_X8_Y17_N19
\COMP_USB|switch_write[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[25]~83_combout\,
	sclr => \COMP_USB|process_0~3_combout\,
	ena => \COMP_USB|switch_write[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(25));

-- Location: LCCOMB_X7_Y17_N26
\COMP_USB|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~6_combout\ = (!\COMP_USB|switch_write\(25) & (!\COMP_USB|switch_write\(23) & (!\COMP_USB|switch_write\(22) & !\COMP_USB|switch_write\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(25),
	datab => \COMP_USB|switch_write\(23),
	datac => \COMP_USB|switch_write\(22),
	datad => \COMP_USB|switch_write\(24),
	combout => \COMP_USB|Equal1~6_combout\);

-- Location: LCCOMB_X7_Y17_N4
\COMP_USB|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~5_combout\ = (!\COMP_USB|switch_write\(19) & (!\COMP_USB|switch_write\(20) & (!\COMP_USB|switch_write\(18) & !\COMP_USB|switch_write\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(19),
	datab => \COMP_USB|switch_write\(20),
	datac => \COMP_USB|switch_write\(18),
	datad => \COMP_USB|switch_write\(21),
	combout => \COMP_USB|Equal1~5_combout\);

-- Location: LCCOMB_X7_Y17_N28
\COMP_USB|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~7_combout\ = (!\COMP_USB|switch_write\(26) & (!\COMP_USB|switch_write\(27) & (!\COMP_USB|switch_write\(28) & !\COMP_USB|switch_write\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(26),
	datab => \COMP_USB|switch_write\(27),
	datac => \COMP_USB|switch_write\(28),
	datad => \COMP_USB|switch_write\(29),
	combout => \COMP_USB|Equal1~7_combout\);

-- Location: LCCOMB_X7_Y17_N14
\COMP_USB|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~8_combout\ = (\COMP_USB|Equal1~6_combout\ & (!\COMP_USB|switch_write\(30) & (\COMP_USB|Equal1~5_combout\ & \COMP_USB|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|Equal1~6_combout\,
	datab => \COMP_USB|switch_write\(30),
	datac => \COMP_USB|Equal1~5_combout\,
	datad => \COMP_USB|Equal1~7_combout\,
	combout => \COMP_USB|Equal1~8_combout\);

-- Location: LCCOMB_X7_Y17_N16
\COMP_USB|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~9_combout\ = (!\COMP_USB|switch_write\(0) & !\COMP_USB|switch_write\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(0),
	datad => \COMP_USB|switch_write\(31),
	combout => \COMP_USB|Equal1~9_combout\);

-- Location: LCCOMB_X7_Y17_N18
\COMP_USB|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~10_combout\ = (\COMP_USB|Equal1~8_combout\ & (\COMP_USB|Equal1~9_combout\ & (\COMP_USB|Equal1~4_combout\ & !\COMP_USB|switch_write\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|Equal1~8_combout\,
	datab => \COMP_USB|Equal1~9_combout\,
	datac => \COMP_USB|Equal1~4_combout\,
	datad => \COMP_USB|switch_write\(1),
	combout => \COMP_USB|Equal1~10_combout\);

-- Location: LCCOMB_X6_Y17_N20
\COMP_USB|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~0_combout\ = (\COMP_USB|Equal1~10_combout\ & ((\COMP_CCD|data_out\(8)))) # (!\COMP_USB|Equal1~10_combout\ & (\COMP_CCD|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|data_out\(0),
	datac => \COMP_CCD|data_out\(8),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~0_combout\);

-- Location: LCCOMB_X7_Y17_N12
\COMP_USB|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~2_combout\ = (\COMP_CCD|ccd_ready~q\) # (!\COMP_USB|switch_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datad => \COMP_CCD|ccd_ready~q\,
	combout => \COMP_USB|process_0~2_combout\);

-- Location: LCCOMB_X6_Y17_N4
\COMP_USB|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~11_combout\ = (\COMP_USB|Equal1~8_combout\ & \COMP_USB|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_USB|Equal1~8_combout\,
	datad => \COMP_USB|Equal1~4_combout\,
	combout => \COMP_USB|Equal1~11_combout\);

-- Location: LCCOMB_X6_Y17_N6
\COMP_USB|data_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out[0]~1_combout\ = (!\COMP_USB|switch_write\(1) & (!\COMP_USB|switch_write\(31) & (\COMP_USB|Equal1~11_combout\ & !\COMP_USB|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datab => \COMP_USB|switch_write\(31),
	datac => \COMP_USB|Equal1~11_combout\,
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|data_out[0]~1_combout\);

-- Location: LCCOMB_X6_Y17_N28
\COMP_USB|data_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out[0]~2_combout\ = (!\usb_txe~input_o\ & \COMP_USB|data_out[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \usb_txe~input_o\,
	datad => \COMP_USB|data_out[0]~1_combout\,
	combout => \COMP_USB|data_out[0]~2_combout\);

-- Location: LCCOMB_X6_Y17_N10
\COMP_USB|data_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out[0]~3_combout\ = (!\COMP_USB|process_0~3_combout\ & (\COMP_USB|data_out[0]~2_combout\ & ((\COMP_USB|process_0~2_combout\) # (!\COMP_USB|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|Equal1~9_combout\,
	datab => \COMP_USB|process_0~3_combout\,
	datac => \COMP_USB|process_0~2_combout\,
	datad => \COMP_USB|data_out[0]~2_combout\,
	combout => \COMP_USB|data_out[0]~3_combout\);

-- Location: FF_X6_Y17_N21
\COMP_USB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~0_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(0));

-- Location: IOIBUF_X13_Y24_N1
\adc_data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(9),
	o => \adc_data_in[9]~input_o\);

-- Location: LCCOMB_X9_Y20_N28
\COMP_CCD|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~7_combout\ = (\adc_data_in[9]~input_o\ & !\COMP_CCD|process_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_in[9]~input_o\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~7_combout\);

-- Location: FF_X9_Y20_N29
\COMP_CCD|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~7_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(9));

-- Location: LCCOMB_X9_Y20_N10
\COMP_CCD|data_out[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[7]~8_combout\ = (\COMP_CCD|count_start_seq\(31)) # ((\COMP_CCD|count_start_seq\(1)) # (!\COMP_CCD|Equal3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(31),
	datac => \COMP_CCD|count_start_seq\(1),
	datad => \COMP_CCD|Equal3~9_combout\,
	combout => \COMP_CCD|data_out[7]~8_combout\);

-- Location: IOIBUF_X25_Y24_N1
\adc_data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(1),
	o => \adc_data_in[1]~input_o\);

-- Location: LCCOMB_X9_Y20_N14
\COMP_CCD|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~9_combout\ = (\COMP_CCD|process_2~8_combout\ & (!\COMP_CCD|data_out[7]~8_combout\)) # (!\COMP_CCD|process_2~8_combout\ & ((\adc_data_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out[7]~8_combout\,
	datac => \adc_data_in[1]~input_o\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~9_combout\);

-- Location: FF_X9_Y20_N15
\COMP_CCD|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~9_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(1));

-- Location: LCCOMB_X6_Y17_N22
\COMP_USB|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~4_combout\ = (\COMP_USB|Equal1~10_combout\ & (\COMP_CCD|data_out\(9))) # (!\COMP_USB|Equal1~10_combout\ & ((\COMP_CCD|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(9),
	datac => \COMP_CCD|data_out\(1),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~4_combout\);

-- Location: FF_X6_Y17_N23
\COMP_USB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~4_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(1));

-- Location: IOIBUF_X3_Y24_N1
\adc_data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(2),
	o => \adc_data_in[2]~input_o\);

-- Location: LCCOMB_X9_Y20_N8
\COMP_CCD|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~11_combout\ = (!\COMP_CCD|count_start_seq\(1) & (\COMP_CCD|count_start_seq\(0) & (\COMP_CCD|Equal3~10_combout\ & \COMP_CCD|process_2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(1),
	datab => \COMP_CCD|count_start_seq\(0),
	datac => \COMP_CCD|Equal3~10_combout\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~11_combout\);

-- Location: LCCOMB_X9_Y20_N20
\COMP_CCD|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~12_combout\ = (\COMP_CCD|data_out~11_combout\) # ((\adc_data_in[2]~input_o\ & !\COMP_CCD|process_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_data_in[2]~input_o\,
	datac => \COMP_CCD|data_out~11_combout\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~12_combout\);

-- Location: FF_X9_Y20_N21
\COMP_CCD|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~12_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(2));

-- Location: IOIBUF_X18_Y24_N22
\adc_data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(10),
	o => \adc_data_in[10]~input_o\);

-- Location: LCCOMB_X10_Y20_N16
\COMP_CCD|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~10_combout\ = (!\COMP_CCD|process_2~8_combout\ & \adc_data_in[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_2~8_combout\,
	datad => \adc_data_in[10]~input_o\,
	combout => \COMP_CCD|data_out~10_combout\);

-- Location: FF_X10_Y20_N17
\COMP_CCD|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~10_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(10));

-- Location: LCCOMB_X6_Y17_N8
\COMP_USB|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~5_combout\ = (\COMP_USB|Equal1~10_combout\ & ((\COMP_CCD|data_out\(10)))) # (!\COMP_USB|Equal1~10_combout\ & (\COMP_CCD|data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(2),
	datab => \COMP_CCD|data_out\(10),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~5_combout\);

-- Location: FF_X6_Y17_N9
\COMP_USB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~5_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(2));

-- Location: IOIBUF_X30_Y24_N8
\adc_data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(3),
	o => \adc_data_in[3]~input_o\);

-- Location: LCCOMB_X9_Y20_N12
\COMP_CCD|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~14_combout\ = (\COMP_CCD|data_out~11_combout\) # ((\adc_data_in[3]~input_o\ & !\COMP_CCD|process_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_in[3]~input_o\,
	datac => \COMP_CCD|data_out~11_combout\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~14_combout\);

-- Location: FF_X9_Y20_N13
\COMP_CCD|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~14_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(3));

-- Location: IOIBUF_X13_Y24_N15
\adc_data_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(11),
	o => \adc_data_in[11]~input_o\);

-- Location: LCCOMB_X9_Y20_N26
\COMP_CCD|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~13_combout\ = (\adc_data_in[11]~input_o\ & !\COMP_CCD|process_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_in[11]~input_o\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~13_combout\);

-- Location: FF_X9_Y20_N27
\COMP_CCD|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~13_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(11));

-- Location: LCCOMB_X6_Y17_N30
\COMP_USB|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~6_combout\ = (\COMP_USB|Equal1~10_combout\ & ((\COMP_CCD|data_out\(11)))) # (!\COMP_USB|Equal1~10_combout\ & (\COMP_CCD|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(3),
	datac => \COMP_CCD|data_out\(11),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~6_combout\);

-- Location: FF_X6_Y17_N31
\COMP_USB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~6_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(3));

-- Location: IOIBUF_X9_Y24_N8
\adc_data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(4),
	o => \adc_data_in[4]~input_o\);

-- Location: LCCOMB_X9_Y20_N6
\COMP_CCD|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~15_combout\ = (\COMP_CCD|data_out~11_combout\) # ((\adc_data_in[4]~input_o\ & !\COMP_CCD|process_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_data_in[4]~input_o\,
	datac => \COMP_CCD|data_out~11_combout\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~15_combout\);

-- Location: FF_X9_Y20_N7
\COMP_CCD|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~15_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(4));

-- Location: LCCOMB_X6_Y17_N24
\COMP_USB|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~7_combout\ = (\COMP_CCD|data_out\(4) & !\COMP_USB|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|data_out\(4),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~7_combout\);

-- Location: FF_X6_Y17_N25
\COMP_USB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~7_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(4));

-- Location: IOIBUF_X3_Y24_N8
\adc_data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(5),
	o => \adc_data_in[5]~input_o\);

-- Location: LCCOMB_X9_Y20_N0
\COMP_CCD|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~16_combout\ = (\COMP_CCD|data_out~11_combout\) # ((\adc_data_in[5]~input_o\ & !\COMP_CCD|process_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_data_in[5]~input_o\,
	datac => \COMP_CCD|data_out~11_combout\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~16_combout\);

-- Location: FF_X9_Y20_N1
\COMP_CCD|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~16_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(5));

-- Location: LCCOMB_X6_Y17_N2
\COMP_USB|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~8_combout\ = (\COMP_CCD|data_out\(5) & !\COMP_USB|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|data_out\(5),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~8_combout\);

-- Location: FF_X6_Y17_N3
\COMP_USB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~8_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(5));

-- Location: LCCOMB_X9_Y20_N18
\COMP_CCD|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~0_combout\ = (\COMP_CCD|count_start_seq\(31)) # ((\COMP_CCD|count_start_seq\(0)) # ((\COMP_CCD|count_start_seq\(1)) # (!\COMP_CCD|Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(31),
	datab => \COMP_CCD|count_start_seq\(0),
	datac => \COMP_CCD|count_start_seq\(1),
	datad => \COMP_CCD|Equal3~9_combout\,
	combout => \COMP_CCD|Equal2~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\adc_data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(6),
	o => \adc_data_in[6]~input_o\);

-- Location: LCCOMB_X9_Y20_N22
\COMP_CCD|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~17_combout\ = (\COMP_CCD|process_2~8_combout\ & (\COMP_CCD|Equal2~0_combout\)) # (!\COMP_CCD|process_2~8_combout\ & ((\adc_data_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal2~0_combout\,
	datac => \adc_data_in[6]~input_o\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~17_combout\);

-- Location: FF_X9_Y20_N23
\COMP_CCD|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~17_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(6));

-- Location: LCCOMB_X6_Y17_N12
\COMP_USB|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~9_combout\ = (\COMP_CCD|data_out\(6) & !\COMP_USB|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|data_out\(6),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~9_combout\);

-- Location: FF_X6_Y17_N13
\COMP_USB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~9_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(6));

-- Location: IOIBUF_X7_Y24_N1
\adc_data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(7),
	o => \adc_data_in[7]~input_o\);

-- Location: LCCOMB_X9_Y20_N4
\COMP_CCD|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~18_combout\ = (\adc_data_in[7]~input_o\ & !\COMP_CCD|process_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_in[7]~input_o\,
	datad => \COMP_CCD|process_2~8_combout\,
	combout => \COMP_CCD|data_out~18_combout\);

-- Location: FF_X9_Y20_N5
\COMP_CCD|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_ccd_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|data_out~18_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(7));

-- Location: LCCOMB_X6_Y17_N26
\COMP_USB|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data_out~10_combout\ = (\COMP_CCD|data_out\(7) & !\COMP_USB|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|data_out\(7),
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|data_out~10_combout\);

-- Location: FF_X6_Y17_N27
\COMP_USB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data_out~10_combout\,
	ena => \COMP_USB|data_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data_out\(7));

-- Location: LCCOMB_X7_Y17_N22
\COMP_USB|wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~1_combout\ = (!\COMP_USB|process_0~3_combout\ & ((\COMP_USB|process_0~2_combout\) # ((!\COMP_USB|Equal1~9_combout\) # (!\COMP_USB|Equal1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|process_0~2_combout\,
	datab => \COMP_USB|process_0~3_combout\,
	datac => \COMP_USB|Equal1~11_combout\,
	datad => \COMP_USB|Equal1~9_combout\,
	combout => \COMP_USB|wr~1_combout\);

-- Location: LCCOMB_X7_Y17_N24
\COMP_USB|wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~0_combout\ = (!\COMP_USB|wr~q\ & (((\COMP_USB|process_0~3_combout\) # (!\COMP_USB|Equal1~10_combout\)) # (!\COMP_USB|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|process_0~4_combout\,
	datab => \COMP_USB|process_0~3_combout\,
	datac => \COMP_USB|wr~q\,
	datad => \COMP_USB|Equal1~10_combout\,
	combout => \COMP_USB|wr~0_combout\);

-- Location: LCCOMB_X7_Y17_N20
\COMP_USB|wr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~2_combout\ = (!\COMP_USB|wr~0_combout\ & (!\usb_txe~input_o\ & ((!\COMP_USB|LessThan0~0_combout\) # (!\COMP_USB|wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|wr~1_combout\,
	datab => \COMP_USB|wr~0_combout\,
	datac => \usb_txe~input_o\,
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|wr~2_combout\);

-- Location: FF_X7_Y17_N21
\COMP_USB|wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|wr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|wr~q\);

ww_adc_clk <= \adc_clk~output_o\;

ww_ccd_clk <= \ccd_clk~output_o\;

ww_ccd_rog <= \ccd_rog~output_o\;

ww_ccd_shut <= \ccd_shut~output_o\;

ww_usb_data(0) <= \usb_data[0]~output_o\;

ww_usb_data(1) <= \usb_data[1]~output_o\;

ww_usb_data(2) <= \usb_data[2]~output_o\;

ww_usb_data(3) <= \usb_data[3]~output_o\;

ww_usb_data(4) <= \usb_data[4]~output_o\;

ww_usb_data(5) <= \usb_data[5]~output_o\;

ww_usb_data(6) <= \usb_data[6]~output_o\;

ww_usb_data(7) <= \usb_data[7]~output_o\;

ww_usb_oe <= \usb_oe~output_o\;

ww_usb_wr <= \usb_wr~output_o\;

ww_usb_rd <= \usb_rd~output_o\;
END structure;


