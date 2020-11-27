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

-- DATE "11/27/2020 13:54:05"

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
	adc_clk : OUT std_logic;
	adc_data_in : IN std_logic_vector(11 DOWNTO 0);
	adc_otr : IN std_logic;
	trigger_start : IN std_logic;
	button : IN std_logic;
	clk50Mhz : IN std_logic;
	ccd_clk : OUT std_logic;
	ccd_rog : OUT std_logic;
	ccd_shut : OUT std_logic;
	ccd_shsw : OUT std_logic;
	usb_clk : IN std_logic;
	usb_txe : IN std_logic;
	usb_data : INOUT std_logic_vector(7 DOWNTO 0);
	usb_oe : OUT std_logic;
	usb_wr : OUT std_logic;
	usb_rd : OUT std_logic;
	usb_rxf : IN std_logic;
	usb_siwua : OUT std_logic;
	r_scl : OUT std_logic;
	r_sda : INOUT std_logic
	);
END monochr;

-- Design Ports Information
-- adc_clk	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- adc_data_in[0]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[1]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[2]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[3]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[4]	=>  Location: PIN_L12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[5]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[6]	=>  Location: PIN_K12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[7]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[8]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[9]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[10]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_otr	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- trigger_start	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- button	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ccd_clk	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ccd_rog	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ccd_shut	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ccd_shsw	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_oe	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_wr	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_rd	=>  Location: PIN_L11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_siwua	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- r_scl	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- r_sda	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[1]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[2]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[3]	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[4]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[6]	=>  Location: PIN_M12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- usb_data[7]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clk50Mhz	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- usb_rxf	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- usb_clk	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- usb_txe	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_adc_otr : std_logic;
SIGNAL ww_trigger_start : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_clk50Mhz : std_logic;
SIGNAL ww_ccd_clk : std_logic;
SIGNAL ww_ccd_rog : std_logic;
SIGNAL ww_ccd_shut : std_logic;
SIGNAL ww_ccd_shsw : std_logic;
SIGNAL ww_usb_clk : std_logic;
SIGNAL ww_usb_txe : std_logic;
SIGNAL ww_usb_oe : std_logic;
SIGNAL ww_usb_wr : std_logic;
SIGNAL ww_usb_rd : std_logic;
SIGNAL ww_usb_rxf : std_logic;
SIGNAL ww_usb_siwua : std_logic;
SIGNAL ww_r_scl : std_logic;
SIGNAL \clk50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_data_in[0]~input_o\ : std_logic;
SIGNAL \adc_data_in[1]~input_o\ : std_logic;
SIGNAL \adc_data_in[2]~input_o\ : std_logic;
SIGNAL \adc_data_in[3]~input_o\ : std_logic;
SIGNAL \adc_data_in[4]~input_o\ : std_logic;
SIGNAL \adc_data_in[5]~input_o\ : std_logic;
SIGNAL \adc_data_in[6]~input_o\ : std_logic;
SIGNAL \adc_data_in[7]~input_o\ : std_logic;
SIGNAL \adc_data_in[8]~input_o\ : std_logic;
SIGNAL \adc_data_in[9]~input_o\ : std_logic;
SIGNAL \adc_data_in[10]~input_o\ : std_logic;
SIGNAL \adc_data_in[11]~input_o\ : std_logic;
SIGNAL \adc_otr~input_o\ : std_logic;
SIGNAL \trigger_start~input_o\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \r_sda~input_o\ : std_logic;
SIGNAL \usb_data[0]~input_o\ : std_logic;
SIGNAL \usb_data[1]~input_o\ : std_logic;
SIGNAL \usb_data[2]~input_o\ : std_logic;
SIGNAL \usb_data[3]~input_o\ : std_logic;
SIGNAL \usb_data[4]~input_o\ : std_logic;
SIGNAL \usb_data[5]~input_o\ : std_logic;
SIGNAL \usb_data[6]~input_o\ : std_logic;
SIGNAL \usb_data[7]~input_o\ : std_logic;
SIGNAL \r_sda~output_o\ : std_logic;
SIGNAL \usb_data[0]~output_o\ : std_logic;
SIGNAL \usb_data[1]~output_o\ : std_logic;
SIGNAL \usb_data[2]~output_o\ : std_logic;
SIGNAL \usb_data[3]~output_o\ : std_logic;
SIGNAL \usb_data[4]~output_o\ : std_logic;
SIGNAL \usb_data[5]~output_o\ : std_logic;
SIGNAL \usb_data[6]~output_o\ : std_logic;
SIGNAL \usb_data[7]~output_o\ : std_logic;
SIGNAL \adc_clk~output_o\ : std_logic;
SIGNAL \ccd_clk~output_o\ : std_logic;
SIGNAL \ccd_rog~output_o\ : std_logic;
SIGNAL \ccd_shut~output_o\ : std_logic;
SIGNAL \ccd_shsw~output_o\ : std_logic;
SIGNAL \usb_oe~output_o\ : std_logic;
SIGNAL \usb_wr~output_o\ : std_logic;
SIGNAL \usb_rd~output_o\ : std_logic;
SIGNAL \usb_siwua~output_o\ : std_logic;
SIGNAL \r_scl~output_o\ : std_logic;
SIGNAL \usb_clk~input_o\ : std_logic;
SIGNAL \usb_rxf~input_o\ : std_logic;
SIGNAL \usb_txe~input_o\ : std_logic;
SIGNAL \COMP_USB|count[0]~32_combout\ : std_logic;
SIGNAL \COMP_USB|count[11]~55\ : std_logic;
SIGNAL \COMP_USB|count[12]~56_combout\ : std_logic;
SIGNAL \COMP_USB|wr~0_combout\ : std_logic;
SIGNAL \COMP_USB|count[12]~57\ : std_logic;
SIGNAL \COMP_USB|count[13]~58_combout\ : std_logic;
SIGNAL \COMP_USB|count[13]~59\ : std_logic;
SIGNAL \COMP_USB|count[14]~60_combout\ : std_logic;
SIGNAL \COMP_USB|count[14]~61\ : std_logic;
SIGNAL \COMP_USB|count[15]~62_combout\ : std_logic;
SIGNAL \COMP_USB|count[15]~63\ : std_logic;
SIGNAL \COMP_USB|count[16]~64_combout\ : std_logic;
SIGNAL \COMP_USB|count[16]~65\ : std_logic;
SIGNAL \COMP_USB|count[17]~66_combout\ : std_logic;
SIGNAL \COMP_USB|count[17]~67\ : std_logic;
SIGNAL \COMP_USB|count[18]~68_combout\ : std_logic;
SIGNAL \COMP_USB|count[18]~69\ : std_logic;
SIGNAL \COMP_USB|count[19]~70_combout\ : std_logic;
SIGNAL \COMP_USB|count[19]~71\ : std_logic;
SIGNAL \COMP_USB|count[20]~72_combout\ : std_logic;
SIGNAL \COMP_USB|count[20]~73\ : std_logic;
SIGNAL \COMP_USB|count[21]~74_combout\ : std_logic;
SIGNAL \COMP_USB|count[21]~75\ : std_logic;
SIGNAL \COMP_USB|count[22]~76_combout\ : std_logic;
SIGNAL \COMP_USB|count[22]~77\ : std_logic;
SIGNAL \COMP_USB|count[23]~78_combout\ : std_logic;
SIGNAL \COMP_USB|count[23]~79\ : std_logic;
SIGNAL \COMP_USB|count[24]~80_combout\ : std_logic;
SIGNAL \COMP_USB|count[24]~81\ : std_logic;
SIGNAL \COMP_USB|count[25]~82_combout\ : std_logic;
SIGNAL \COMP_USB|count[25]~83\ : std_logic;
SIGNAL \COMP_USB|count[26]~84_combout\ : std_logic;
SIGNAL \COMP_USB|count[26]~85\ : std_logic;
SIGNAL \COMP_USB|count[27]~86_combout\ : std_logic;
SIGNAL \COMP_USB|count[27]~87\ : std_logic;
SIGNAL \COMP_USB|count[28]~88_combout\ : std_logic;
SIGNAL \COMP_USB|count[28]~89\ : std_logic;
SIGNAL \COMP_USB|count[29]~90_combout\ : std_logic;
SIGNAL \COMP_USB|count[29]~91\ : std_logic;
SIGNAL \COMP_USB|count[30]~92_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~2_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~4_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~5_combout\ : std_logic;
SIGNAL \COMP_USB|count[30]~93\ : std_logic;
SIGNAL \COMP_USB|count[31]~94_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~8_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~6_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~9_combout\ : std_logic;
SIGNAL \COMP_USB|Equal0~10_combout\ : std_logic;
SIGNAL \COMP_USB|count[0]~33\ : std_logic;
SIGNAL \COMP_USB|count[1]~34_combout\ : std_logic;
SIGNAL \COMP_USB|count[1]~35\ : std_logic;
SIGNAL \COMP_USB|count[2]~36_combout\ : std_logic;
SIGNAL \COMP_USB|count[2]~37\ : std_logic;
SIGNAL \COMP_USB|count[3]~38_combout\ : std_logic;
SIGNAL \COMP_USB|count[3]~39\ : std_logic;
SIGNAL \COMP_USB|count[4]~40_combout\ : std_logic;
SIGNAL \COMP_USB|count[4]~41\ : std_logic;
SIGNAL \COMP_USB|count[5]~42_combout\ : std_logic;
SIGNAL \COMP_USB|count[5]~43\ : std_logic;
SIGNAL \COMP_USB|count[6]~44_combout\ : std_logic;
SIGNAL \COMP_USB|count[6]~45\ : std_logic;
SIGNAL \COMP_USB|count[7]~46_combout\ : std_logic;
SIGNAL \COMP_USB|count[7]~47\ : std_logic;
SIGNAL \COMP_USB|count[8]~48_combout\ : std_logic;
SIGNAL \COMP_USB|count[8]~49\ : std_logic;
SIGNAL \COMP_USB|count[9]~50_combout\ : std_logic;
SIGNAL \COMP_USB|count[9]~51\ : std_logic;
SIGNAL \COMP_USB|count[10]~52_combout\ : std_logic;
SIGNAL \COMP_USB|count[10]~53\ : std_logic;
SIGNAL \COMP_USB|count[11]~54_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~0_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~1_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[1]~0_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[1]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|Mux0~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~8_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~9_combout\ : std_logic;
SIGNAL \COMP_USB|data[0]~en_q\ : std_logic;
SIGNAL \COMP_USB|data[1]~en_q\ : std_logic;
SIGNAL \COMP_USB|data[2]~en_q\ : std_logic;
SIGNAL \COMP_USB|data[3]~en_q\ : std_logic;
SIGNAL \COMP_USB|data[4]~en_q\ : std_logic;
SIGNAL \COMP_USB|data[5]~en_q\ : std_logic;
SIGNAL \COMP_USB|data[6]~en_q\ : std_logic;
SIGNAL \COMP_USB|data[7]~en_q\ : std_logic;
SIGNAL \clk50Mhz~input_o\ : std_logic;
SIGNAL \clk50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add2~5\ : std_logic;
SIGNAL \COMP_CCD|Add2~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_div~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~1\ : std_logic;
SIGNAL \COMP_CCD|Add3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~3\ : std_logic;
SIGNAL \COMP_CCD|Add3~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~5\ : std_logic;
SIGNAL \COMP_CCD|Add3~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~7\ : std_logic;
SIGNAL \COMP_CCD|Add3~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~9\ : std_logic;
SIGNAL \COMP_CCD|Add3~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~11\ : std_logic;
SIGNAL \COMP_CCD|Add3~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~13\ : std_logic;
SIGNAL \COMP_CCD|Add3~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~15\ : std_logic;
SIGNAL \COMP_CCD|Add3~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~17\ : std_logic;
SIGNAL \COMP_CCD|Add3~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~19\ : std_logic;
SIGNAL \COMP_CCD|Add3~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~21\ : std_logic;
SIGNAL \COMP_CCD|Add3~22_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~23\ : std_logic;
SIGNAL \COMP_CCD|Add3~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~25\ : std_logic;
SIGNAL \COMP_CCD|Add3~26_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~27\ : std_logic;
SIGNAL \COMP_CCD|Add3~28_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~29\ : std_logic;
SIGNAL \COMP_CCD|Add3~30_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~31\ : std_logic;
SIGNAL \COMP_CCD|Add3~32_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~33\ : std_logic;
SIGNAL \COMP_CCD|Add3~34_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~35\ : std_logic;
SIGNAL \COMP_CCD|Add3~36_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~37\ : std_logic;
SIGNAL \COMP_CCD|Add3~38_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~39\ : std_logic;
SIGNAL \COMP_CCD|Add3~40_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~41\ : std_logic;
SIGNAL \COMP_CCD|Add3~42_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~43\ : std_logic;
SIGNAL \COMP_CCD|Add3~44_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~45\ : std_logic;
SIGNAL \COMP_CCD|Add3~46_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~47\ : std_logic;
SIGNAL \COMP_CCD|Add3~48_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~49\ : std_logic;
SIGNAL \COMP_CCD|Add3~50_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~51\ : std_logic;
SIGNAL \COMP_CCD|Add3~52_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~53\ : std_logic;
SIGNAL \COMP_CCD|Add3~54_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~55\ : std_logic;
SIGNAL \COMP_CCD|Add3~56_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~57\ : std_logic;
SIGNAL \COMP_CCD|Add3~58_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~59\ : std_logic;
SIGNAL \COMP_CCD|Add3~60_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~61\ : std_logic;
SIGNAL \COMP_CCD|Add3~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~7\ : std_logic;
SIGNAL \COMP_CCD|Add2~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~9\ : std_logic;
SIGNAL \COMP_CCD|Add2~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~11\ : std_logic;
SIGNAL \COMP_CCD|Add2~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~13\ : std_logic;
SIGNAL \COMP_CCD|Add2~14_combout\ : std_logic;
SIGNAL \COMP_CCD|count~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~15\ : std_logic;
SIGNAL \COMP_CCD|Add2~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~17\ : std_logic;
SIGNAL \COMP_CCD|Add2~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~19\ : std_logic;
SIGNAL \COMP_CCD|Add2~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~21\ : std_logic;
SIGNAL \COMP_CCD|Add2~22_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~23\ : std_logic;
SIGNAL \COMP_CCD|Add2~24_combout\ : std_logic;
SIGNAL \COMP_CCD|count~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~1\ : std_logic;
SIGNAL \COMP_CCD|Add2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~3\ : std_logic;
SIGNAL \COMP_CCD|Add2~4_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~6_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~7_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~14_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan2~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~8_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~9_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~10_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~11_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~12_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~13_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~q\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~5_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~q\ : std_logic;
SIGNAL \COMP_USB|read_delay_reg~0_combout\ : std_logic;
SIGNAL \COMP_USB|read_delay_reg~q\ : std_logic;
SIGNAL \COMP_USB|oe~0_combout\ : std_logic;
SIGNAL \COMP_USB|oe~q\ : std_logic;
SIGNAL \COMP_USB|wr~1_combout\ : std_logic;
SIGNAL \COMP_USB|wr~q\ : std_logic;
SIGNAL \COMP_USB|rd~0_combout\ : std_logic;
SIGNAL \COMP_USB|rd~q\ : std_logic;
SIGNAL \COMP_USB|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count_div\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_USB|switch_write\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_usb_clk~input_o\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[7]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[6]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[5]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[4]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[3]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[2]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[1]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_data[0]~en_q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_rd~q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_wr~q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_oe~q\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_reg~q\ : std_logic;

BEGIN

adc_clk <= ww_adc_clk;
ww_adc_data_in <= adc_data_in;
ww_adc_otr <= adc_otr;
ww_trigger_start <= trigger_start;
ww_button <= button;
ww_clk50Mhz <= clk50Mhz;
ccd_clk <= ww_ccd_clk;
ccd_rog <= ww_ccd_rog;
ccd_shut <= ww_ccd_shut;
ccd_shsw <= ww_ccd_shsw;
ww_usb_clk <= usb_clk;
ww_usb_txe <= usb_txe;
usb_oe <= ww_usb_oe;
usb_wr <= ww_usb_wr;
usb_rd <= ww_usb_rd;
ww_usb_rxf <= usb_rxf;
usb_siwua <= ww_usb_siwua;
r_scl <= ww_r_scl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50Mhz~input_o\);
\ALT_INV_usb_clk~input_o\ <= NOT \usb_clk~input_o\;
\COMP_USB|ALT_INV_data[7]~en_q\ <= NOT \COMP_USB|data[7]~en_q\;
\COMP_USB|ALT_INV_data[6]~en_q\ <= NOT \COMP_USB|data[6]~en_q\;
\COMP_USB|ALT_INV_data[5]~en_q\ <= NOT \COMP_USB|data[5]~en_q\;
\COMP_USB|ALT_INV_data[4]~en_q\ <= NOT \COMP_USB|data[4]~en_q\;
\COMP_USB|ALT_INV_data[3]~en_q\ <= NOT \COMP_USB|data[3]~en_q\;
\COMP_USB|ALT_INV_data[2]~en_q\ <= NOT \COMP_USB|data[2]~en_q\;
\COMP_USB|ALT_INV_data[1]~en_q\ <= NOT \COMP_USB|data[1]~en_q\;
\COMP_USB|ALT_INV_data[0]~en_q\ <= NOT \COMP_USB|data[0]~en_q\;
\COMP_USB|ALT_INV_rd~q\ <= NOT \COMP_USB|rd~q\;
\COMP_USB|ALT_INV_wr~q\ <= NOT \COMP_USB|wr~q\;
\COMP_USB|ALT_INV_oe~q\ <= NOT \COMP_USB|oe~q\;
\COMP_CCD|ALT_INV_clk_reg~q\ <= NOT \COMP_CCD|clk_reg~q\;

-- Location: IOOBUF_X34_Y9_N16
\r_sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \r_sda~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\usb_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[0]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\usb_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[1]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[1]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\usb_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[2]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\usb_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[3]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\usb_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[4]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[4]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\usb_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[5]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\usb_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[6]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[6]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\usb_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_data[7]~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \usb_data[7]~output_o\);

-- Location: IOOBUF_X34_Y18_N23
\adc_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_CCD|ALT_INV_clk_reg~q\,
	devoe => ww_devoe,
	o => \adc_clk~output_o\);

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X34_Y4_N16
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

-- Location: IOOBUF_X30_Y0_N9
\ccd_shut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ccd_shut~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ccd_shsw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ccd_shsw~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\usb_oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_oe~q\,
	devoe => ww_devoe,
	o => \usb_oe~output_o\);

-- Location: IOOBUF_X23_Y24_N23
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

-- Location: IOOBUF_X32_Y0_N16
\usb_rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_rd~q\,
	devoe => ww_devoe,
	o => \usb_rd~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\usb_siwua~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \usb_siwua~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\r_scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \r_scl~output_o\);

-- Location: IOIBUF_X34_Y9_N22
\usb_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usb_clk,
	o => \usb_clk~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\usb_rxf~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usb_rxf,
	o => \usb_rxf~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\usb_txe~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usb_txe,
	o => \usb_txe~input_o\);

-- Location: LCCOMB_X19_Y12_N0
\COMP_USB|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[0]~32_combout\ = (\COMP_USB|switch_write\(1) & (\COMP_USB|count\(0) $ (VCC))) # (!\COMP_USB|switch_write\(1) & (\COMP_USB|count\(0) & VCC))
-- \COMP_USB|count[0]~33\ = CARRY((\COMP_USB|switch_write\(1) & \COMP_USB|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datab => \COMP_USB|count\(0),
	datad => VCC,
	combout => \COMP_USB|count[0]~32_combout\,
	cout => \COMP_USB|count[0]~33\);

-- Location: LCCOMB_X19_Y12_N22
\COMP_USB|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[11]~54_combout\ = (\COMP_USB|count\(11) & (!\COMP_USB|count[10]~53\)) # (!\COMP_USB|count\(11) & ((\COMP_USB|count[10]~53\) # (GND)))
-- \COMP_USB|count[11]~55\ = CARRY((!\COMP_USB|count[10]~53\) # (!\COMP_USB|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(11),
	datad => VCC,
	cin => \COMP_USB|count[10]~53\,
	combout => \COMP_USB|count[11]~54_combout\,
	cout => \COMP_USB|count[11]~55\);

-- Location: LCCOMB_X19_Y12_N24
\COMP_USB|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[12]~56_combout\ = (\COMP_USB|count\(12) & (\COMP_USB|count[11]~55\ $ (GND))) # (!\COMP_USB|count\(12) & (!\COMP_USB|count[11]~55\ & VCC))
-- \COMP_USB|count[12]~57\ = CARRY((\COMP_USB|count\(12) & !\COMP_USB|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(12),
	datad => VCC,
	cin => \COMP_USB|count[11]~55\,
	combout => \COMP_USB|count[12]~56_combout\,
	cout => \COMP_USB|count[12]~57\);

-- Location: LCCOMB_X18_Y11_N14
\COMP_USB|wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~0_combout\ = (!\usb_txe~input_o\ & (\usb_rxf~input_o\ & ((\COMP_USB|LessThan0~1_combout\) # (\COMP_USB|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usb_txe~input_o\,
	datab => \usb_rxf~input_o\,
	datac => \COMP_USB|LessThan0~1_combout\,
	datad => \COMP_USB|Equal0~10_combout\,
	combout => \COMP_USB|wr~0_combout\);

-- Location: FF_X19_Y12_N25
\COMP_USB|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[12]~56_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(12));

-- Location: LCCOMB_X19_Y12_N26
\COMP_USB|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[13]~58_combout\ = (\COMP_USB|count\(13) & (!\COMP_USB|count[12]~57\)) # (!\COMP_USB|count\(13) & ((\COMP_USB|count[12]~57\) # (GND)))
-- \COMP_USB|count[13]~59\ = CARRY((!\COMP_USB|count[12]~57\) # (!\COMP_USB|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(13),
	datad => VCC,
	cin => \COMP_USB|count[12]~57\,
	combout => \COMP_USB|count[13]~58_combout\,
	cout => \COMP_USB|count[13]~59\);

-- Location: FF_X19_Y12_N27
\COMP_USB|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[13]~58_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(13));

-- Location: LCCOMB_X19_Y12_N28
\COMP_USB|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[14]~60_combout\ = (\COMP_USB|count\(14) & (\COMP_USB|count[13]~59\ $ (GND))) # (!\COMP_USB|count\(14) & (!\COMP_USB|count[13]~59\ & VCC))
-- \COMP_USB|count[14]~61\ = CARRY((\COMP_USB|count\(14) & !\COMP_USB|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(14),
	datad => VCC,
	cin => \COMP_USB|count[13]~59\,
	combout => \COMP_USB|count[14]~60_combout\,
	cout => \COMP_USB|count[14]~61\);

-- Location: FF_X19_Y12_N29
\COMP_USB|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[14]~60_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(14));

-- Location: LCCOMB_X19_Y12_N30
\COMP_USB|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[15]~62_combout\ = (\COMP_USB|count\(15) & (!\COMP_USB|count[14]~61\)) # (!\COMP_USB|count\(15) & ((\COMP_USB|count[14]~61\) # (GND)))
-- \COMP_USB|count[15]~63\ = CARRY((!\COMP_USB|count[14]~61\) # (!\COMP_USB|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(15),
	datad => VCC,
	cin => \COMP_USB|count[14]~61\,
	combout => \COMP_USB|count[15]~62_combout\,
	cout => \COMP_USB|count[15]~63\);

-- Location: FF_X19_Y12_N31
\COMP_USB|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[15]~62_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(15));

-- Location: LCCOMB_X19_Y11_N0
\COMP_USB|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[16]~64_combout\ = (\COMP_USB|count\(16) & (\COMP_USB|count[15]~63\ $ (GND))) # (!\COMP_USB|count\(16) & (!\COMP_USB|count[15]~63\ & VCC))
-- \COMP_USB|count[16]~65\ = CARRY((\COMP_USB|count\(16) & !\COMP_USB|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(16),
	datad => VCC,
	cin => \COMP_USB|count[15]~63\,
	combout => \COMP_USB|count[16]~64_combout\,
	cout => \COMP_USB|count[16]~65\);

-- Location: FF_X19_Y11_N1
\COMP_USB|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[16]~64_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(16));

-- Location: LCCOMB_X19_Y11_N2
\COMP_USB|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[17]~66_combout\ = (\COMP_USB|count\(17) & (!\COMP_USB|count[16]~65\)) # (!\COMP_USB|count\(17) & ((\COMP_USB|count[16]~65\) # (GND)))
-- \COMP_USB|count[17]~67\ = CARRY((!\COMP_USB|count[16]~65\) # (!\COMP_USB|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(17),
	datad => VCC,
	cin => \COMP_USB|count[16]~65\,
	combout => \COMP_USB|count[17]~66_combout\,
	cout => \COMP_USB|count[17]~67\);

-- Location: FF_X19_Y11_N3
\COMP_USB|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[17]~66_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(17));

-- Location: LCCOMB_X19_Y11_N4
\COMP_USB|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[18]~68_combout\ = (\COMP_USB|count\(18) & (\COMP_USB|count[17]~67\ $ (GND))) # (!\COMP_USB|count\(18) & (!\COMP_USB|count[17]~67\ & VCC))
-- \COMP_USB|count[18]~69\ = CARRY((\COMP_USB|count\(18) & !\COMP_USB|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(18),
	datad => VCC,
	cin => \COMP_USB|count[17]~67\,
	combout => \COMP_USB|count[18]~68_combout\,
	cout => \COMP_USB|count[18]~69\);

-- Location: FF_X19_Y11_N5
\COMP_USB|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[18]~68_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(18));

-- Location: LCCOMB_X19_Y11_N6
\COMP_USB|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[19]~70_combout\ = (\COMP_USB|count\(19) & (!\COMP_USB|count[18]~69\)) # (!\COMP_USB|count\(19) & ((\COMP_USB|count[18]~69\) # (GND)))
-- \COMP_USB|count[19]~71\ = CARRY((!\COMP_USB|count[18]~69\) # (!\COMP_USB|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(19),
	datad => VCC,
	cin => \COMP_USB|count[18]~69\,
	combout => \COMP_USB|count[19]~70_combout\,
	cout => \COMP_USB|count[19]~71\);

-- Location: FF_X19_Y11_N7
\COMP_USB|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[19]~70_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(19));

-- Location: LCCOMB_X19_Y11_N8
\COMP_USB|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[20]~72_combout\ = (\COMP_USB|count\(20) & (\COMP_USB|count[19]~71\ $ (GND))) # (!\COMP_USB|count\(20) & (!\COMP_USB|count[19]~71\ & VCC))
-- \COMP_USB|count[20]~73\ = CARRY((\COMP_USB|count\(20) & !\COMP_USB|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(20),
	datad => VCC,
	cin => \COMP_USB|count[19]~71\,
	combout => \COMP_USB|count[20]~72_combout\,
	cout => \COMP_USB|count[20]~73\);

-- Location: FF_X19_Y11_N9
\COMP_USB|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[20]~72_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(20));

-- Location: LCCOMB_X19_Y11_N10
\COMP_USB|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[21]~74_combout\ = (\COMP_USB|count\(21) & (!\COMP_USB|count[20]~73\)) # (!\COMP_USB|count\(21) & ((\COMP_USB|count[20]~73\) # (GND)))
-- \COMP_USB|count[21]~75\ = CARRY((!\COMP_USB|count[20]~73\) # (!\COMP_USB|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(21),
	datad => VCC,
	cin => \COMP_USB|count[20]~73\,
	combout => \COMP_USB|count[21]~74_combout\,
	cout => \COMP_USB|count[21]~75\);

-- Location: FF_X19_Y11_N11
\COMP_USB|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[21]~74_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(21));

-- Location: LCCOMB_X19_Y11_N12
\COMP_USB|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[22]~76_combout\ = (\COMP_USB|count\(22) & (\COMP_USB|count[21]~75\ $ (GND))) # (!\COMP_USB|count\(22) & (!\COMP_USB|count[21]~75\ & VCC))
-- \COMP_USB|count[22]~77\ = CARRY((\COMP_USB|count\(22) & !\COMP_USB|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(22),
	datad => VCC,
	cin => \COMP_USB|count[21]~75\,
	combout => \COMP_USB|count[22]~76_combout\,
	cout => \COMP_USB|count[22]~77\);

-- Location: FF_X19_Y11_N13
\COMP_USB|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[22]~76_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(22));

-- Location: LCCOMB_X19_Y11_N14
\COMP_USB|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[23]~78_combout\ = (\COMP_USB|count\(23) & (!\COMP_USB|count[22]~77\)) # (!\COMP_USB|count\(23) & ((\COMP_USB|count[22]~77\) # (GND)))
-- \COMP_USB|count[23]~79\ = CARRY((!\COMP_USB|count[22]~77\) # (!\COMP_USB|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(23),
	datad => VCC,
	cin => \COMP_USB|count[22]~77\,
	combout => \COMP_USB|count[23]~78_combout\,
	cout => \COMP_USB|count[23]~79\);

-- Location: FF_X19_Y11_N15
\COMP_USB|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[23]~78_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(23));

-- Location: LCCOMB_X19_Y11_N16
\COMP_USB|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[24]~80_combout\ = (\COMP_USB|count\(24) & (\COMP_USB|count[23]~79\ $ (GND))) # (!\COMP_USB|count\(24) & (!\COMP_USB|count[23]~79\ & VCC))
-- \COMP_USB|count[24]~81\ = CARRY((\COMP_USB|count\(24) & !\COMP_USB|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(24),
	datad => VCC,
	cin => \COMP_USB|count[23]~79\,
	combout => \COMP_USB|count[24]~80_combout\,
	cout => \COMP_USB|count[24]~81\);

-- Location: FF_X19_Y11_N17
\COMP_USB|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[24]~80_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(24));

-- Location: LCCOMB_X19_Y11_N18
\COMP_USB|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[25]~82_combout\ = (\COMP_USB|count\(25) & (!\COMP_USB|count[24]~81\)) # (!\COMP_USB|count\(25) & ((\COMP_USB|count[24]~81\) # (GND)))
-- \COMP_USB|count[25]~83\ = CARRY((!\COMP_USB|count[24]~81\) # (!\COMP_USB|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(25),
	datad => VCC,
	cin => \COMP_USB|count[24]~81\,
	combout => \COMP_USB|count[25]~82_combout\,
	cout => \COMP_USB|count[25]~83\);

-- Location: FF_X19_Y11_N19
\COMP_USB|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[25]~82_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(25));

-- Location: LCCOMB_X19_Y11_N20
\COMP_USB|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[26]~84_combout\ = (\COMP_USB|count\(26) & (\COMP_USB|count[25]~83\ $ (GND))) # (!\COMP_USB|count\(26) & (!\COMP_USB|count[25]~83\ & VCC))
-- \COMP_USB|count[26]~85\ = CARRY((\COMP_USB|count\(26) & !\COMP_USB|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(26),
	datad => VCC,
	cin => \COMP_USB|count[25]~83\,
	combout => \COMP_USB|count[26]~84_combout\,
	cout => \COMP_USB|count[26]~85\);

-- Location: FF_X19_Y11_N21
\COMP_USB|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[26]~84_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(26));

-- Location: LCCOMB_X19_Y11_N22
\COMP_USB|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[27]~86_combout\ = (\COMP_USB|count\(27) & (!\COMP_USB|count[26]~85\)) # (!\COMP_USB|count\(27) & ((\COMP_USB|count[26]~85\) # (GND)))
-- \COMP_USB|count[27]~87\ = CARRY((!\COMP_USB|count[26]~85\) # (!\COMP_USB|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(27),
	datad => VCC,
	cin => \COMP_USB|count[26]~85\,
	combout => \COMP_USB|count[27]~86_combout\,
	cout => \COMP_USB|count[27]~87\);

-- Location: FF_X19_Y11_N23
\COMP_USB|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[27]~86_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(27));

-- Location: LCCOMB_X19_Y11_N24
\COMP_USB|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[28]~88_combout\ = (\COMP_USB|count\(28) & (\COMP_USB|count[27]~87\ $ (GND))) # (!\COMP_USB|count\(28) & (!\COMP_USB|count[27]~87\ & VCC))
-- \COMP_USB|count[28]~89\ = CARRY((\COMP_USB|count\(28) & !\COMP_USB|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(28),
	datad => VCC,
	cin => \COMP_USB|count[27]~87\,
	combout => \COMP_USB|count[28]~88_combout\,
	cout => \COMP_USB|count[28]~89\);

-- Location: FF_X19_Y11_N25
\COMP_USB|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[28]~88_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(28));

-- Location: LCCOMB_X19_Y11_N26
\COMP_USB|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[29]~90_combout\ = (\COMP_USB|count\(29) & (!\COMP_USB|count[28]~89\)) # (!\COMP_USB|count\(29) & ((\COMP_USB|count[28]~89\) # (GND)))
-- \COMP_USB|count[29]~91\ = CARRY((!\COMP_USB|count[28]~89\) # (!\COMP_USB|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(29),
	datad => VCC,
	cin => \COMP_USB|count[28]~89\,
	combout => \COMP_USB|count[29]~90_combout\,
	cout => \COMP_USB|count[29]~91\);

-- Location: FF_X19_Y11_N27
\COMP_USB|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[29]~90_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(29));

-- Location: LCCOMB_X19_Y11_N28
\COMP_USB|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[30]~92_combout\ = (\COMP_USB|count\(30) & (\COMP_USB|count[29]~91\ $ (GND))) # (!\COMP_USB|count\(30) & (!\COMP_USB|count[29]~91\ & VCC))
-- \COMP_USB|count[30]~93\ = CARRY((\COMP_USB|count\(30) & !\COMP_USB|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(30),
	datad => VCC,
	cin => \COMP_USB|count[29]~91\,
	combout => \COMP_USB|count[30]~92_combout\,
	cout => \COMP_USB|count[30]~93\);

-- Location: FF_X19_Y11_N29
\COMP_USB|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[30]~92_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(30));

-- Location: LCCOMB_X18_Y11_N22
\COMP_USB|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~2_combout\ = (!\COMP_USB|count\(20) & (!\COMP_USB|count\(21) & (!\COMP_USB|count\(22) & !\COMP_USB|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(20),
	datab => \COMP_USB|count\(21),
	datac => \COMP_USB|count\(22),
	datad => \COMP_USB|count\(23),
	combout => \COMP_USB|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y11_N24
\COMP_USB|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~1_combout\ = (!\COMP_USB|count\(17) & (!\COMP_USB|count\(16) & (!\COMP_USB|count\(18) & !\COMP_USB|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(17),
	datab => \COMP_USB|count\(16),
	datac => \COMP_USB|count\(18),
	datad => \COMP_USB|count\(19),
	combout => \COMP_USB|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y11_N8
\COMP_USB|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~3_combout\ = (!\COMP_USB|count\(26) & (!\COMP_USB|count\(25) & (!\COMP_USB|count\(27) & !\COMP_USB|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(26),
	datab => \COMP_USB|count\(25),
	datac => \COMP_USB|count\(27),
	datad => \COMP_USB|count\(24),
	combout => \COMP_USB|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y11_N6
\COMP_USB|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~0_combout\ = (!\COMP_USB|count\(14) & (!\COMP_USB|count\(15) & (!\COMP_USB|count\(13) & !\COMP_USB|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(14),
	datab => \COMP_USB|count\(15),
	datac => \COMP_USB|count\(13),
	datad => \COMP_USB|count\(12),
	combout => \COMP_USB|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y11_N18
\COMP_USB|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~4_combout\ = (\COMP_USB|Equal0~2_combout\ & (\COMP_USB|Equal0~1_combout\ & (\COMP_USB|Equal0~3_combout\ & \COMP_USB|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|Equal0~2_combout\,
	datab => \COMP_USB|Equal0~1_combout\,
	datac => \COMP_USB|Equal0~3_combout\,
	datad => \COMP_USB|Equal0~0_combout\,
	combout => \COMP_USB|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y11_N16
\COMP_USB|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~5_combout\ = (!\COMP_USB|count\(28) & (!\COMP_USB|count\(29) & (!\COMP_USB|count\(30) & \COMP_USB|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(28),
	datab => \COMP_USB|count\(29),
	datac => \COMP_USB|count\(30),
	datad => \COMP_USB|Equal0~4_combout\,
	combout => \COMP_USB|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y11_N30
\COMP_USB|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[31]~94_combout\ = \COMP_USB|count\(31) $ (\COMP_USB|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(31),
	cin => \COMP_USB|count[30]~93\,
	combout => \COMP_USB|count[31]~94_combout\);

-- Location: FF_X19_Y11_N31
\COMP_USB|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[31]~94_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(31));

-- Location: LCCOMB_X18_Y12_N16
\COMP_USB|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~8_combout\ = (\COMP_USB|count\(2) & (!\COMP_USB|count\(31) & (\COMP_USB|count\(11) & \COMP_USB|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(2),
	datab => \COMP_USB|count\(31),
	datac => \COMP_USB|count\(11),
	datad => \COMP_USB|count\(1),
	combout => \COMP_USB|Equal0~8_combout\);

-- Location: LCCOMB_X18_Y12_N14
\COMP_USB|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~7_combout\ = (!\COMP_USB|count\(10) & (!\COMP_USB|count\(9) & (!\COMP_USB|count\(7) & !\COMP_USB|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(10),
	datab => \COMP_USB|count\(9),
	datac => \COMP_USB|count\(7),
	datad => \COMP_USB|count\(8),
	combout => \COMP_USB|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y12_N28
\COMP_USB|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~6_combout\ = (!\COMP_USB|count\(6) & (!\COMP_USB|count\(5) & (!\COMP_USB|count\(4) & !\COMP_USB|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(6),
	datab => \COMP_USB|count\(5),
	datac => \COMP_USB|count\(4),
	datad => \COMP_USB|count\(3),
	combout => \COMP_USB|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y12_N10
\COMP_USB|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~9_combout\ = (!\COMP_USB|count\(0) & (\COMP_USB|Equal0~8_combout\ & (\COMP_USB|Equal0~7_combout\ & \COMP_USB|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(0),
	datab => \COMP_USB|Equal0~8_combout\,
	datac => \COMP_USB|Equal0~7_combout\,
	datad => \COMP_USB|Equal0~6_combout\,
	combout => \COMP_USB|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y11_N10
\COMP_USB|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal0~10_combout\ = (\COMP_USB|Equal0~5_combout\ & \COMP_USB|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|Equal0~5_combout\,
	datad => \COMP_USB|Equal0~9_combout\,
	combout => \COMP_USB|Equal0~10_combout\);

-- Location: FF_X19_Y12_N1
\COMP_USB|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[0]~32_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(0));

-- Location: LCCOMB_X19_Y12_N2
\COMP_USB|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[1]~34_combout\ = (\COMP_USB|count\(1) & (!\COMP_USB|count[0]~33\)) # (!\COMP_USB|count\(1) & ((\COMP_USB|count[0]~33\) # (GND)))
-- \COMP_USB|count[1]~35\ = CARRY((!\COMP_USB|count[0]~33\) # (!\COMP_USB|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(1),
	datad => VCC,
	cin => \COMP_USB|count[0]~33\,
	combout => \COMP_USB|count[1]~34_combout\,
	cout => \COMP_USB|count[1]~35\);

-- Location: FF_X19_Y12_N3
\COMP_USB|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[1]~34_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(1));

-- Location: LCCOMB_X19_Y12_N4
\COMP_USB|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[2]~36_combout\ = (\COMP_USB|count\(2) & (\COMP_USB|count[1]~35\ $ (GND))) # (!\COMP_USB|count\(2) & (!\COMP_USB|count[1]~35\ & VCC))
-- \COMP_USB|count[2]~37\ = CARRY((\COMP_USB|count\(2) & !\COMP_USB|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(2),
	datad => VCC,
	cin => \COMP_USB|count[1]~35\,
	combout => \COMP_USB|count[2]~36_combout\,
	cout => \COMP_USB|count[2]~37\);

-- Location: FF_X19_Y12_N5
\COMP_USB|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[2]~36_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(2));

-- Location: LCCOMB_X19_Y12_N6
\COMP_USB|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[3]~38_combout\ = (\COMP_USB|count\(3) & (!\COMP_USB|count[2]~37\)) # (!\COMP_USB|count\(3) & ((\COMP_USB|count[2]~37\) # (GND)))
-- \COMP_USB|count[3]~39\ = CARRY((!\COMP_USB|count[2]~37\) # (!\COMP_USB|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(3),
	datad => VCC,
	cin => \COMP_USB|count[2]~37\,
	combout => \COMP_USB|count[3]~38_combout\,
	cout => \COMP_USB|count[3]~39\);

-- Location: FF_X19_Y12_N7
\COMP_USB|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[3]~38_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(3));

-- Location: LCCOMB_X19_Y12_N8
\COMP_USB|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[4]~40_combout\ = (\COMP_USB|count\(4) & (\COMP_USB|count[3]~39\ $ (GND))) # (!\COMP_USB|count\(4) & (!\COMP_USB|count[3]~39\ & VCC))
-- \COMP_USB|count[4]~41\ = CARRY((\COMP_USB|count\(4) & !\COMP_USB|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(4),
	datad => VCC,
	cin => \COMP_USB|count[3]~39\,
	combout => \COMP_USB|count[4]~40_combout\,
	cout => \COMP_USB|count[4]~41\);

-- Location: FF_X19_Y12_N9
\COMP_USB|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[4]~40_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(4));

-- Location: LCCOMB_X19_Y12_N10
\COMP_USB|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[5]~42_combout\ = (\COMP_USB|count\(5) & (!\COMP_USB|count[4]~41\)) # (!\COMP_USB|count\(5) & ((\COMP_USB|count[4]~41\) # (GND)))
-- \COMP_USB|count[5]~43\ = CARRY((!\COMP_USB|count[4]~41\) # (!\COMP_USB|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(5),
	datad => VCC,
	cin => \COMP_USB|count[4]~41\,
	combout => \COMP_USB|count[5]~42_combout\,
	cout => \COMP_USB|count[5]~43\);

-- Location: FF_X19_Y12_N11
\COMP_USB|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[5]~42_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(5));

-- Location: LCCOMB_X19_Y12_N12
\COMP_USB|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[6]~44_combout\ = (\COMP_USB|count\(6) & (\COMP_USB|count[5]~43\ $ (GND))) # (!\COMP_USB|count\(6) & (!\COMP_USB|count[5]~43\ & VCC))
-- \COMP_USB|count[6]~45\ = CARRY((\COMP_USB|count\(6) & !\COMP_USB|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(6),
	datad => VCC,
	cin => \COMP_USB|count[5]~43\,
	combout => \COMP_USB|count[6]~44_combout\,
	cout => \COMP_USB|count[6]~45\);

-- Location: FF_X19_Y12_N13
\COMP_USB|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[6]~44_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(6));

-- Location: LCCOMB_X19_Y12_N14
\COMP_USB|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[7]~46_combout\ = (\COMP_USB|count\(7) & (!\COMP_USB|count[6]~45\)) # (!\COMP_USB|count\(7) & ((\COMP_USB|count[6]~45\) # (GND)))
-- \COMP_USB|count[7]~47\ = CARRY((!\COMP_USB|count[6]~45\) # (!\COMP_USB|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(7),
	datad => VCC,
	cin => \COMP_USB|count[6]~45\,
	combout => \COMP_USB|count[7]~46_combout\,
	cout => \COMP_USB|count[7]~47\);

-- Location: FF_X19_Y12_N15
\COMP_USB|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[7]~46_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(7));

-- Location: LCCOMB_X19_Y12_N16
\COMP_USB|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[8]~48_combout\ = (\COMP_USB|count\(8) & (\COMP_USB|count[7]~47\ $ (GND))) # (!\COMP_USB|count\(8) & (!\COMP_USB|count[7]~47\ & VCC))
-- \COMP_USB|count[8]~49\ = CARRY((\COMP_USB|count\(8) & !\COMP_USB|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(8),
	datad => VCC,
	cin => \COMP_USB|count[7]~47\,
	combout => \COMP_USB|count[8]~48_combout\,
	cout => \COMP_USB|count[8]~49\);

-- Location: FF_X19_Y12_N17
\COMP_USB|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[8]~48_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(8));

-- Location: LCCOMB_X19_Y12_N18
\COMP_USB|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[9]~50_combout\ = (\COMP_USB|count\(9) & (!\COMP_USB|count[8]~49\)) # (!\COMP_USB|count\(9) & ((\COMP_USB|count[8]~49\) # (GND)))
-- \COMP_USB|count[9]~51\ = CARRY((!\COMP_USB|count[8]~49\) # (!\COMP_USB|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(9),
	datad => VCC,
	cin => \COMP_USB|count[8]~49\,
	combout => \COMP_USB|count[9]~50_combout\,
	cout => \COMP_USB|count[9]~51\);

-- Location: FF_X19_Y12_N19
\COMP_USB|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[9]~50_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(9));

-- Location: LCCOMB_X19_Y12_N20
\COMP_USB|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[10]~52_combout\ = (\COMP_USB|count\(10) & (\COMP_USB|count[9]~51\ $ (GND))) # (!\COMP_USB|count\(10) & (!\COMP_USB|count[9]~51\ & VCC))
-- \COMP_USB|count[10]~53\ = CARRY((\COMP_USB|count\(10) & !\COMP_USB|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(10),
	datad => VCC,
	cin => \COMP_USB|count[9]~51\,
	combout => \COMP_USB|count[10]~52_combout\,
	cout => \COMP_USB|count[10]~53\);

-- Location: FF_X19_Y12_N21
\COMP_USB|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[10]~52_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(10));

-- Location: FF_X19_Y12_N23
\COMP_USB|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[11]~54_combout\,
	sclr => \COMP_USB|Equal0~10_combout\,
	ena => \COMP_USB|wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(11));

-- Location: LCCOMB_X18_Y12_N4
\COMP_USB|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~0_combout\ = (\COMP_USB|Equal0~7_combout\ & (\COMP_USB|Equal0~6_combout\ & ((!\COMP_USB|count\(1)) # (!\COMP_USB|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(2),
	datab => \COMP_USB|count\(1),
	datac => \COMP_USB|Equal0~7_combout\,
	datad => \COMP_USB|Equal0~6_combout\,
	combout => \COMP_USB|LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y11_N4
\COMP_USB|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~1_combout\ = (\COMP_USB|count\(31)) # ((\COMP_USB|Equal0~5_combout\ & ((\COMP_USB|LessThan0~0_combout\) # (!\COMP_USB|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(11),
	datab => \COMP_USB|count\(31),
	datac => \COMP_USB|LessThan0~0_combout\,
	datad => \COMP_USB|Equal0~5_combout\,
	combout => \COMP_USB|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y11_N12
\COMP_USB|switch_write[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[1]~0_combout\ = (!\usb_txe~input_o\ & (\usb_rxf~input_o\ & (\COMP_USB|LessThan0~1_combout\ & !\COMP_USB|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usb_txe~input_o\,
	datab => \usb_rxf~input_o\,
	datac => \COMP_USB|LessThan0~1_combout\,
	datad => \COMP_USB|Equal0~10_combout\,
	combout => \COMP_USB|switch_write[1]~0_combout\);

-- Location: FF_X18_Y11_N1
\COMP_USB|switch_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux0~0_combout\,
	ena => \COMP_USB|switch_write[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(0));

-- Location: LCCOMB_X18_Y11_N26
\COMP_USB|switch_write[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[1]~feeder_combout\ = \COMP_USB|switch_write\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_USB|switch_write\(0),
	combout => \COMP_USB|switch_write[1]~feeder_combout\);

-- Location: FF_X18_Y11_N27
\COMP_USB|switch_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[1]~feeder_combout\,
	ena => \COMP_USB|switch_write[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(1));

-- Location: LCCOMB_X18_Y11_N0
\COMP_USB|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux0~0_combout\ = (!\COMP_USB|switch_write\(1) & !\COMP_USB|switch_write\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_USB|switch_write\(0),
	combout => \COMP_USB|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y11_N2
\COMP_USB|data[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[7]~8_combout\ = (!\usb_txe~input_o\ & (!\COMP_USB|Mux0~0_combout\ & (\COMP_USB|LessThan0~1_combout\ & !\COMP_USB|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usb_txe~input_o\,
	datab => \COMP_USB|Mux0~0_combout\,
	datac => \COMP_USB|LessThan0~1_combout\,
	datad => \COMP_USB|Equal0~10_combout\,
	combout => \COMP_USB|data[7]~8_combout\);

-- Location: LCCOMB_X17_Y11_N28
\COMP_USB|data[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[7]~9_combout\ = (\COMP_USB|data[7]~8_combout\) # (!\usb_rxf~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \usb_rxf~input_o\,
	datad => \COMP_USB|data[7]~8_combout\,
	combout => \COMP_USB|data[7]~9_combout\);

-- Location: FF_X17_Y11_N23
\COMP_USB|data[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[0]~en_q\);

-- Location: FF_X17_Y11_N25
\COMP_USB|data[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[1]~en_q\);

-- Location: FF_X17_Y11_N27
\COMP_USB|data[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[2]~en_q\);

-- Location: FF_X17_Y11_N13
\COMP_USB|data[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[3]~en_q\);

-- Location: FF_X17_Y11_N7
\COMP_USB|data[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[4]~en_q\);

-- Location: FF_X17_Y11_N29
\COMP_USB|data[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[5]~en_q\);

-- Location: FF_X17_Y11_N31
\COMP_USB|data[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[6]~en_q\);

-- Location: FF_X17_Y11_N17
\COMP_USB|data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_rxf~input_o\,
	sload => VCC,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[7]~en_q\);

-- Location: IOIBUF_X34_Y12_N8
\clk50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50Mhz,
	o => \clk50Mhz~input_o\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X11_Y13_N6
\COMP_CCD|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~4_combout\ = (\COMP_CCD|count\(2) & (\COMP_CCD|Add2~3\ $ (GND))) # (!\COMP_CCD|count\(2) & (!\COMP_CCD|Add2~3\ & VCC))
-- \COMP_CCD|Add2~5\ = CARRY((\COMP_CCD|count\(2) & !\COMP_CCD|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(2),
	datad => VCC,
	cin => \COMP_CCD|Add2~3\,
	combout => \COMP_CCD|Add2~4_combout\,
	cout => \COMP_CCD|Add2~5\);

-- Location: LCCOMB_X11_Y13_N8
\COMP_CCD|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~6_combout\ = (\COMP_CCD|count\(3) & (!\COMP_CCD|Add2~5\)) # (!\COMP_CCD|count\(3) & ((\COMP_CCD|Add2~5\) # (GND)))
-- \COMP_CCD|Add2~7\ = CARRY((!\COMP_CCD|Add2~5\) # (!\COMP_CCD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(3),
	datad => VCC,
	cin => \COMP_CCD|Add2~5\,
	combout => \COMP_CCD|Add2~6_combout\,
	cout => \COMP_CCD|Add2~7\);

-- Location: LCCOMB_X12_Y14_N0
\COMP_CCD|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~0_combout\ = \COMP_CCD|count_div\(0) $ (VCC)
-- \COMP_CCD|Add3~1\ = CARRY(\COMP_CCD|count_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(0),
	datad => VCC,
	combout => \COMP_CCD|Add3~0_combout\,
	cout => \COMP_CCD|Add3~1\);

-- Location: LCCOMB_X11_Y14_N6
\COMP_CCD|count_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_div~1_combout\ = (\COMP_CCD|Add3~0_combout\ & !\COMP_CCD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add3~0_combout\,
	datac => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|count_div~1_combout\);

-- Location: FF_X11_Y14_N7
\COMP_CCD|count_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_div~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(0));

-- Location: LCCOMB_X12_Y14_N2
\COMP_CCD|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~2_combout\ = (\COMP_CCD|count_div\(1) & (!\COMP_CCD|Add3~1\)) # (!\COMP_CCD|count_div\(1) & ((\COMP_CCD|Add3~1\) # (GND)))
-- \COMP_CCD|Add3~3\ = CARRY((!\COMP_CCD|Add3~1\) # (!\COMP_CCD|count_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(1),
	datad => VCC,
	cin => \COMP_CCD|Add3~1\,
	combout => \COMP_CCD|Add3~2_combout\,
	cout => \COMP_CCD|Add3~3\);

-- Location: FF_X12_Y14_N3
\COMP_CCD|count_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(1));

-- Location: LCCOMB_X12_Y14_N4
\COMP_CCD|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~4_combout\ = (\COMP_CCD|count_div\(2) & (\COMP_CCD|Add3~3\ $ (GND))) # (!\COMP_CCD|count_div\(2) & (!\COMP_CCD|Add3~3\ & VCC))
-- \COMP_CCD|Add3~5\ = CARRY((\COMP_CCD|count_div\(2) & !\COMP_CCD|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(2),
	datad => VCC,
	cin => \COMP_CCD|Add3~3\,
	combout => \COMP_CCD|Add3~4_combout\,
	cout => \COMP_CCD|Add3~5\);

-- Location: LCCOMB_X11_Y14_N16
\COMP_CCD|count_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_div~0_combout\ = (!\COMP_CCD|Equal0~10_combout\ & \COMP_CCD|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal0~10_combout\,
	datad => \COMP_CCD|Add3~4_combout\,
	combout => \COMP_CCD|count_div~0_combout\);

-- Location: FF_X11_Y14_N17
\COMP_CCD|count_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(2));

-- Location: LCCOMB_X12_Y14_N6
\COMP_CCD|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~6_combout\ = (\COMP_CCD|count_div\(3) & (!\COMP_CCD|Add3~5\)) # (!\COMP_CCD|count_div\(3) & ((\COMP_CCD|Add3~5\) # (GND)))
-- \COMP_CCD|Add3~7\ = CARRY((!\COMP_CCD|Add3~5\) # (!\COMP_CCD|count_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(3),
	datad => VCC,
	cin => \COMP_CCD|Add3~5\,
	combout => \COMP_CCD|Add3~6_combout\,
	cout => \COMP_CCD|Add3~7\);

-- Location: FF_X12_Y14_N7
\COMP_CCD|count_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(3));

-- Location: LCCOMB_X12_Y14_N8
\COMP_CCD|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~8_combout\ = (\COMP_CCD|count_div\(4) & (\COMP_CCD|Add3~7\ $ (GND))) # (!\COMP_CCD|count_div\(4) & (!\COMP_CCD|Add3~7\ & VCC))
-- \COMP_CCD|Add3~9\ = CARRY((\COMP_CCD|count_div\(4) & !\COMP_CCD|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(4),
	datad => VCC,
	cin => \COMP_CCD|Add3~7\,
	combout => \COMP_CCD|Add3~8_combout\,
	cout => \COMP_CCD|Add3~9\);

-- Location: FF_X12_Y14_N9
\COMP_CCD|count_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(4));

-- Location: LCCOMB_X12_Y14_N10
\COMP_CCD|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~10_combout\ = (\COMP_CCD|count_div\(5) & (!\COMP_CCD|Add3~9\)) # (!\COMP_CCD|count_div\(5) & ((\COMP_CCD|Add3~9\) # (GND)))
-- \COMP_CCD|Add3~11\ = CARRY((!\COMP_CCD|Add3~9\) # (!\COMP_CCD|count_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(5),
	datad => VCC,
	cin => \COMP_CCD|Add3~9\,
	combout => \COMP_CCD|Add3~10_combout\,
	cout => \COMP_CCD|Add3~11\);

-- Location: FF_X12_Y14_N11
\COMP_CCD|count_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(5));

-- Location: LCCOMB_X12_Y14_N12
\COMP_CCD|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~12_combout\ = (\COMP_CCD|count_div\(6) & (\COMP_CCD|Add3~11\ $ (GND))) # (!\COMP_CCD|count_div\(6) & (!\COMP_CCD|Add3~11\ & VCC))
-- \COMP_CCD|Add3~13\ = CARRY((\COMP_CCD|count_div\(6) & !\COMP_CCD|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(6),
	datad => VCC,
	cin => \COMP_CCD|Add3~11\,
	combout => \COMP_CCD|Add3~12_combout\,
	cout => \COMP_CCD|Add3~13\);

-- Location: FF_X12_Y14_N13
\COMP_CCD|count_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(6));

-- Location: LCCOMB_X12_Y14_N14
\COMP_CCD|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~14_combout\ = (\COMP_CCD|count_div\(7) & (!\COMP_CCD|Add3~13\)) # (!\COMP_CCD|count_div\(7) & ((\COMP_CCD|Add3~13\) # (GND)))
-- \COMP_CCD|Add3~15\ = CARRY((!\COMP_CCD|Add3~13\) # (!\COMP_CCD|count_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(7),
	datad => VCC,
	cin => \COMP_CCD|Add3~13\,
	combout => \COMP_CCD|Add3~14_combout\,
	cout => \COMP_CCD|Add3~15\);

-- Location: FF_X12_Y14_N15
\COMP_CCD|count_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(7));

-- Location: LCCOMB_X12_Y14_N16
\COMP_CCD|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~16_combout\ = (\COMP_CCD|count_div\(8) & (\COMP_CCD|Add3~15\ $ (GND))) # (!\COMP_CCD|count_div\(8) & (!\COMP_CCD|Add3~15\ & VCC))
-- \COMP_CCD|Add3~17\ = CARRY((\COMP_CCD|count_div\(8) & !\COMP_CCD|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(8),
	datad => VCC,
	cin => \COMP_CCD|Add3~15\,
	combout => \COMP_CCD|Add3~16_combout\,
	cout => \COMP_CCD|Add3~17\);

-- Location: FF_X12_Y14_N17
\COMP_CCD|count_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(8));

-- Location: LCCOMB_X12_Y14_N18
\COMP_CCD|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~18_combout\ = (\COMP_CCD|count_div\(9) & (!\COMP_CCD|Add3~17\)) # (!\COMP_CCD|count_div\(9) & ((\COMP_CCD|Add3~17\) # (GND)))
-- \COMP_CCD|Add3~19\ = CARRY((!\COMP_CCD|Add3~17\) # (!\COMP_CCD|count_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(9),
	datad => VCC,
	cin => \COMP_CCD|Add3~17\,
	combout => \COMP_CCD|Add3~18_combout\,
	cout => \COMP_CCD|Add3~19\);

-- Location: FF_X12_Y14_N19
\COMP_CCD|count_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(9));

-- Location: LCCOMB_X12_Y14_N20
\COMP_CCD|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~20_combout\ = (\COMP_CCD|count_div\(10) & (\COMP_CCD|Add3~19\ $ (GND))) # (!\COMP_CCD|count_div\(10) & (!\COMP_CCD|Add3~19\ & VCC))
-- \COMP_CCD|Add3~21\ = CARRY((\COMP_CCD|count_div\(10) & !\COMP_CCD|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(10),
	datad => VCC,
	cin => \COMP_CCD|Add3~19\,
	combout => \COMP_CCD|Add3~20_combout\,
	cout => \COMP_CCD|Add3~21\);

-- Location: FF_X12_Y14_N21
\COMP_CCD|count_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(10));

-- Location: LCCOMB_X12_Y14_N22
\COMP_CCD|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~22_combout\ = (\COMP_CCD|count_div\(11) & (!\COMP_CCD|Add3~21\)) # (!\COMP_CCD|count_div\(11) & ((\COMP_CCD|Add3~21\) # (GND)))
-- \COMP_CCD|Add3~23\ = CARRY((!\COMP_CCD|Add3~21\) # (!\COMP_CCD|count_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(11),
	datad => VCC,
	cin => \COMP_CCD|Add3~21\,
	combout => \COMP_CCD|Add3~22_combout\,
	cout => \COMP_CCD|Add3~23\);

-- Location: FF_X12_Y14_N23
\COMP_CCD|count_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(11));

-- Location: LCCOMB_X12_Y14_N24
\COMP_CCD|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~24_combout\ = (\COMP_CCD|count_div\(12) & (\COMP_CCD|Add3~23\ $ (GND))) # (!\COMP_CCD|count_div\(12) & (!\COMP_CCD|Add3~23\ & VCC))
-- \COMP_CCD|Add3~25\ = CARRY((\COMP_CCD|count_div\(12) & !\COMP_CCD|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(12),
	datad => VCC,
	cin => \COMP_CCD|Add3~23\,
	combout => \COMP_CCD|Add3~24_combout\,
	cout => \COMP_CCD|Add3~25\);

-- Location: FF_X12_Y14_N25
\COMP_CCD|count_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(12));

-- Location: LCCOMB_X12_Y14_N26
\COMP_CCD|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~26_combout\ = (\COMP_CCD|count_div\(13) & (!\COMP_CCD|Add3~25\)) # (!\COMP_CCD|count_div\(13) & ((\COMP_CCD|Add3~25\) # (GND)))
-- \COMP_CCD|Add3~27\ = CARRY((!\COMP_CCD|Add3~25\) # (!\COMP_CCD|count_div\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(13),
	datad => VCC,
	cin => \COMP_CCD|Add3~25\,
	combout => \COMP_CCD|Add3~26_combout\,
	cout => \COMP_CCD|Add3~27\);

-- Location: FF_X12_Y14_N27
\COMP_CCD|count_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(13));

-- Location: LCCOMB_X12_Y14_N28
\COMP_CCD|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~28_combout\ = (\COMP_CCD|count_div\(14) & (\COMP_CCD|Add3~27\ $ (GND))) # (!\COMP_CCD|count_div\(14) & (!\COMP_CCD|Add3~27\ & VCC))
-- \COMP_CCD|Add3~29\ = CARRY((\COMP_CCD|count_div\(14) & !\COMP_CCD|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(14),
	datad => VCC,
	cin => \COMP_CCD|Add3~27\,
	combout => \COMP_CCD|Add3~28_combout\,
	cout => \COMP_CCD|Add3~29\);

-- Location: FF_X12_Y14_N29
\COMP_CCD|count_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(14));

-- Location: LCCOMB_X12_Y14_N30
\COMP_CCD|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~30_combout\ = (\COMP_CCD|count_div\(15) & (!\COMP_CCD|Add3~29\)) # (!\COMP_CCD|count_div\(15) & ((\COMP_CCD|Add3~29\) # (GND)))
-- \COMP_CCD|Add3~31\ = CARRY((!\COMP_CCD|Add3~29\) # (!\COMP_CCD|count_div\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(15),
	datad => VCC,
	cin => \COMP_CCD|Add3~29\,
	combout => \COMP_CCD|Add3~30_combout\,
	cout => \COMP_CCD|Add3~31\);

-- Location: FF_X12_Y14_N31
\COMP_CCD|count_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(15));

-- Location: LCCOMB_X12_Y13_N0
\COMP_CCD|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~32_combout\ = (\COMP_CCD|count_div\(16) & (\COMP_CCD|Add3~31\ $ (GND))) # (!\COMP_CCD|count_div\(16) & (!\COMP_CCD|Add3~31\ & VCC))
-- \COMP_CCD|Add3~33\ = CARRY((\COMP_CCD|count_div\(16) & !\COMP_CCD|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(16),
	datad => VCC,
	cin => \COMP_CCD|Add3~31\,
	combout => \COMP_CCD|Add3~32_combout\,
	cout => \COMP_CCD|Add3~33\);

-- Location: FF_X12_Y13_N1
\COMP_CCD|count_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(16));

-- Location: LCCOMB_X12_Y13_N2
\COMP_CCD|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~34_combout\ = (\COMP_CCD|count_div\(17) & (!\COMP_CCD|Add3~33\)) # (!\COMP_CCD|count_div\(17) & ((\COMP_CCD|Add3~33\) # (GND)))
-- \COMP_CCD|Add3~35\ = CARRY((!\COMP_CCD|Add3~33\) # (!\COMP_CCD|count_div\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(17),
	datad => VCC,
	cin => \COMP_CCD|Add3~33\,
	combout => \COMP_CCD|Add3~34_combout\,
	cout => \COMP_CCD|Add3~35\);

-- Location: FF_X12_Y13_N3
\COMP_CCD|count_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(17));

-- Location: LCCOMB_X12_Y13_N4
\COMP_CCD|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~36_combout\ = (\COMP_CCD|count_div\(18) & (\COMP_CCD|Add3~35\ $ (GND))) # (!\COMP_CCD|count_div\(18) & (!\COMP_CCD|Add3~35\ & VCC))
-- \COMP_CCD|Add3~37\ = CARRY((\COMP_CCD|count_div\(18) & !\COMP_CCD|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(18),
	datad => VCC,
	cin => \COMP_CCD|Add3~35\,
	combout => \COMP_CCD|Add3~36_combout\,
	cout => \COMP_CCD|Add3~37\);

-- Location: FF_X12_Y13_N5
\COMP_CCD|count_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(18));

-- Location: LCCOMB_X12_Y13_N6
\COMP_CCD|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~38_combout\ = (\COMP_CCD|count_div\(19) & (!\COMP_CCD|Add3~37\)) # (!\COMP_CCD|count_div\(19) & ((\COMP_CCD|Add3~37\) # (GND)))
-- \COMP_CCD|Add3~39\ = CARRY((!\COMP_CCD|Add3~37\) # (!\COMP_CCD|count_div\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(19),
	datad => VCC,
	cin => \COMP_CCD|Add3~37\,
	combout => \COMP_CCD|Add3~38_combout\,
	cout => \COMP_CCD|Add3~39\);

-- Location: FF_X12_Y13_N7
\COMP_CCD|count_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(19));

-- Location: LCCOMB_X12_Y13_N8
\COMP_CCD|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~40_combout\ = (\COMP_CCD|count_div\(20) & (\COMP_CCD|Add3~39\ $ (GND))) # (!\COMP_CCD|count_div\(20) & (!\COMP_CCD|Add3~39\ & VCC))
-- \COMP_CCD|Add3~41\ = CARRY((\COMP_CCD|count_div\(20) & !\COMP_CCD|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(20),
	datad => VCC,
	cin => \COMP_CCD|Add3~39\,
	combout => \COMP_CCD|Add3~40_combout\,
	cout => \COMP_CCD|Add3~41\);

-- Location: FF_X12_Y13_N9
\COMP_CCD|count_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(20));

-- Location: LCCOMB_X12_Y13_N10
\COMP_CCD|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~42_combout\ = (\COMP_CCD|count_div\(21) & (!\COMP_CCD|Add3~41\)) # (!\COMP_CCD|count_div\(21) & ((\COMP_CCD|Add3~41\) # (GND)))
-- \COMP_CCD|Add3~43\ = CARRY((!\COMP_CCD|Add3~41\) # (!\COMP_CCD|count_div\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(21),
	datad => VCC,
	cin => \COMP_CCD|Add3~41\,
	combout => \COMP_CCD|Add3~42_combout\,
	cout => \COMP_CCD|Add3~43\);

-- Location: FF_X12_Y13_N11
\COMP_CCD|count_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(21));

-- Location: LCCOMB_X12_Y13_N12
\COMP_CCD|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~44_combout\ = (\COMP_CCD|count_div\(22) & (\COMP_CCD|Add3~43\ $ (GND))) # (!\COMP_CCD|count_div\(22) & (!\COMP_CCD|Add3~43\ & VCC))
-- \COMP_CCD|Add3~45\ = CARRY((\COMP_CCD|count_div\(22) & !\COMP_CCD|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(22),
	datad => VCC,
	cin => \COMP_CCD|Add3~43\,
	combout => \COMP_CCD|Add3~44_combout\,
	cout => \COMP_CCD|Add3~45\);

-- Location: FF_X12_Y13_N13
\COMP_CCD|count_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(22));

-- Location: LCCOMB_X12_Y13_N14
\COMP_CCD|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~46_combout\ = (\COMP_CCD|count_div\(23) & (!\COMP_CCD|Add3~45\)) # (!\COMP_CCD|count_div\(23) & ((\COMP_CCD|Add3~45\) # (GND)))
-- \COMP_CCD|Add3~47\ = CARRY((!\COMP_CCD|Add3~45\) # (!\COMP_CCD|count_div\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(23),
	datad => VCC,
	cin => \COMP_CCD|Add3~45\,
	combout => \COMP_CCD|Add3~46_combout\,
	cout => \COMP_CCD|Add3~47\);

-- Location: FF_X12_Y13_N15
\COMP_CCD|count_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(23));

-- Location: LCCOMB_X12_Y13_N16
\COMP_CCD|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~48_combout\ = (\COMP_CCD|count_div\(24) & (\COMP_CCD|Add3~47\ $ (GND))) # (!\COMP_CCD|count_div\(24) & (!\COMP_CCD|Add3~47\ & VCC))
-- \COMP_CCD|Add3~49\ = CARRY((\COMP_CCD|count_div\(24) & !\COMP_CCD|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(24),
	datad => VCC,
	cin => \COMP_CCD|Add3~47\,
	combout => \COMP_CCD|Add3~48_combout\,
	cout => \COMP_CCD|Add3~49\);

-- Location: FF_X12_Y13_N17
\COMP_CCD|count_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(24));

-- Location: LCCOMB_X12_Y13_N18
\COMP_CCD|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~50_combout\ = (\COMP_CCD|count_div\(25) & (!\COMP_CCD|Add3~49\)) # (!\COMP_CCD|count_div\(25) & ((\COMP_CCD|Add3~49\) # (GND)))
-- \COMP_CCD|Add3~51\ = CARRY((!\COMP_CCD|Add3~49\) # (!\COMP_CCD|count_div\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(25),
	datad => VCC,
	cin => \COMP_CCD|Add3~49\,
	combout => \COMP_CCD|Add3~50_combout\,
	cout => \COMP_CCD|Add3~51\);

-- Location: FF_X12_Y13_N19
\COMP_CCD|count_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(25));

-- Location: LCCOMB_X12_Y13_N20
\COMP_CCD|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~52_combout\ = (\COMP_CCD|count_div\(26) & (\COMP_CCD|Add3~51\ $ (GND))) # (!\COMP_CCD|count_div\(26) & (!\COMP_CCD|Add3~51\ & VCC))
-- \COMP_CCD|Add3~53\ = CARRY((\COMP_CCD|count_div\(26) & !\COMP_CCD|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(26),
	datad => VCC,
	cin => \COMP_CCD|Add3~51\,
	combout => \COMP_CCD|Add3~52_combout\,
	cout => \COMP_CCD|Add3~53\);

-- Location: FF_X12_Y13_N21
\COMP_CCD|count_div[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(26));

-- Location: LCCOMB_X12_Y13_N22
\COMP_CCD|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~54_combout\ = (\COMP_CCD|count_div\(27) & (!\COMP_CCD|Add3~53\)) # (!\COMP_CCD|count_div\(27) & ((\COMP_CCD|Add3~53\) # (GND)))
-- \COMP_CCD|Add3~55\ = CARRY((!\COMP_CCD|Add3~53\) # (!\COMP_CCD|count_div\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(27),
	datad => VCC,
	cin => \COMP_CCD|Add3~53\,
	combout => \COMP_CCD|Add3~54_combout\,
	cout => \COMP_CCD|Add3~55\);

-- Location: FF_X12_Y13_N23
\COMP_CCD|count_div[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(27));

-- Location: LCCOMB_X12_Y13_N24
\COMP_CCD|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~56_combout\ = (\COMP_CCD|count_div\(28) & (\COMP_CCD|Add3~55\ $ (GND))) # (!\COMP_CCD|count_div\(28) & (!\COMP_CCD|Add3~55\ & VCC))
-- \COMP_CCD|Add3~57\ = CARRY((\COMP_CCD|count_div\(28) & !\COMP_CCD|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(28),
	datad => VCC,
	cin => \COMP_CCD|Add3~55\,
	combout => \COMP_CCD|Add3~56_combout\,
	cout => \COMP_CCD|Add3~57\);

-- Location: FF_X12_Y13_N25
\COMP_CCD|count_div[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(28));

-- Location: LCCOMB_X12_Y13_N26
\COMP_CCD|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~58_combout\ = (\COMP_CCD|count_div\(29) & (!\COMP_CCD|Add3~57\)) # (!\COMP_CCD|count_div\(29) & ((\COMP_CCD|Add3~57\) # (GND)))
-- \COMP_CCD|Add3~59\ = CARRY((!\COMP_CCD|Add3~57\) # (!\COMP_CCD|count_div\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(29),
	datad => VCC,
	cin => \COMP_CCD|Add3~57\,
	combout => \COMP_CCD|Add3~58_combout\,
	cout => \COMP_CCD|Add3~59\);

-- Location: FF_X12_Y13_N27
\COMP_CCD|count_div[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(29));

-- Location: LCCOMB_X12_Y13_N28
\COMP_CCD|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~60_combout\ = (\COMP_CCD|count_div\(30) & (\COMP_CCD|Add3~59\ $ (GND))) # (!\COMP_CCD|count_div\(30) & (!\COMP_CCD|Add3~59\ & VCC))
-- \COMP_CCD|Add3~61\ = CARRY((\COMP_CCD|count_div\(30) & !\COMP_CCD|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(30),
	datad => VCC,
	cin => \COMP_CCD|Add3~59\,
	combout => \COMP_CCD|Add3~60_combout\,
	cout => \COMP_CCD|Add3~61\);

-- Location: FF_X12_Y13_N29
\COMP_CCD|count_div[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(30));

-- Location: LCCOMB_X12_Y13_N30
\COMP_CCD|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~62_combout\ = \COMP_CCD|count_div\(31) $ (\COMP_CCD|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(31),
	cin => \COMP_CCD|Add3~61\,
	combout => \COMP_CCD|Add3~62_combout\);

-- Location: FF_X12_Y13_N31
\COMP_CCD|count_div[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(31));

-- Location: LCCOMB_X11_Y14_N12
\COMP_CCD|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~9_combout\ = (!\COMP_CCD|count_div\(31) & (!\COMP_CCD|count_div\(28) & (!\COMP_CCD|count_div\(29) & !\COMP_CCD|count_div\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(31),
	datab => \COMP_CCD|count_div\(28),
	datac => \COMP_CCD|count_div\(29),
	datad => \COMP_CCD|count_div\(30),
	combout => \COMP_CCD|Equal0~9_combout\);

-- Location: LCCOMB_X11_Y14_N26
\COMP_CCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~1_combout\ = (!\COMP_CCD|count_div\(5) & (!\COMP_CCD|count_div\(6) & (!\COMP_CCD|count_div\(4) & !\COMP_CCD|count_div\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(5),
	datab => \COMP_CCD|count_div\(6),
	datac => \COMP_CCD|count_div\(4),
	datad => \COMP_CCD|count_div\(7),
	combout => \COMP_CCD|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y14_N28
\COMP_CCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~0_combout\ = (!\COMP_CCD|count_div\(0) & (\COMP_CCD|count_div\(2) & (!\COMP_CCD|count_div\(1) & !\COMP_CCD|count_div\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(0),
	datab => \COMP_CCD|count_div\(2),
	datac => \COMP_CCD|count_div\(1),
	datad => \COMP_CCD|count_div\(3),
	combout => \COMP_CCD|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y14_N30
\COMP_CCD|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~3_combout\ = (!\COMP_CCD|count_div\(15) & (!\COMP_CCD|count_div\(12) & (!\COMP_CCD|count_div\(13) & !\COMP_CCD|count_div\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(15),
	datab => \COMP_CCD|count_div\(12),
	datac => \COMP_CCD|count_div\(13),
	datad => \COMP_CCD|count_div\(14),
	combout => \COMP_CCD|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y14_N20
\COMP_CCD|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~2_combout\ = (!\COMP_CCD|count_div\(10) & (!\COMP_CCD|count_div\(9) & (!\COMP_CCD|count_div\(11) & !\COMP_CCD|count_div\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(10),
	datab => \COMP_CCD|count_div\(9),
	datac => \COMP_CCD|count_div\(11),
	datad => \COMP_CCD|count_div\(8),
	combout => \COMP_CCD|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y14_N24
\COMP_CCD|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~4_combout\ = (\COMP_CCD|Equal0~1_combout\ & (\COMP_CCD|Equal0~0_combout\ & (\COMP_CCD|Equal0~3_combout\ & \COMP_CCD|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~1_combout\,
	datab => \COMP_CCD|Equal0~0_combout\,
	datac => \COMP_CCD|Equal0~3_combout\,
	datad => \COMP_CCD|Equal0~2_combout\,
	combout => \COMP_CCD|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y14_N4
\COMP_CCD|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~6_combout\ = (!\COMP_CCD|count_div\(20) & !\COMP_CCD|count_div\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_div\(20),
	datad => \COMP_CCD|count_div\(21),
	combout => \COMP_CCD|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y14_N2
\COMP_CCD|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~5_combout\ = (!\COMP_CCD|count_div\(16) & (!\COMP_CCD|count_div\(18) & (!\COMP_CCD|count_div\(19) & !\COMP_CCD|count_div\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(16),
	datab => \COMP_CCD|count_div\(18),
	datac => \COMP_CCD|count_div\(19),
	datad => \COMP_CCD|count_div\(17),
	combout => \COMP_CCD|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y14_N22
\COMP_CCD|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~7_combout\ = (!\COMP_CCD|count_div\(22) & (!\COMP_CCD|count_div\(23) & (\COMP_CCD|Equal0~6_combout\ & \COMP_CCD|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(22),
	datab => \COMP_CCD|count_div\(23),
	datac => \COMP_CCD|Equal0~6_combout\,
	datad => \COMP_CCD|Equal0~5_combout\,
	combout => \COMP_CCD|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y13_N0
\COMP_CCD|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~8_combout\ = (!\COMP_CCD|count_div\(24) & (!\COMP_CCD|count_div\(25) & (!\COMP_CCD|count_div\(26) & !\COMP_CCD|count_div\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(24),
	datab => \COMP_CCD|count_div\(25),
	datac => \COMP_CCD|count_div\(26),
	datad => \COMP_CCD|count_div\(27),
	combout => \COMP_CCD|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y14_N14
\COMP_CCD|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~10_combout\ = (\COMP_CCD|Equal0~9_combout\ & (\COMP_CCD|Equal0~4_combout\ & (\COMP_CCD|Equal0~7_combout\ & \COMP_CCD|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~9_combout\,
	datab => \COMP_CCD|Equal0~4_combout\,
	datac => \COMP_CCD|Equal0~7_combout\,
	datad => \COMP_CCD|Equal0~8_combout\,
	combout => \COMP_CCD|Equal0~10_combout\);

-- Location: FF_X11_Y13_N9
\COMP_CCD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~6_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(3));

-- Location: LCCOMB_X11_Y13_N10
\COMP_CCD|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~8_combout\ = (\COMP_CCD|count\(4) & (\COMP_CCD|Add2~7\ $ (GND))) # (!\COMP_CCD|count\(4) & (!\COMP_CCD|Add2~7\ & VCC))
-- \COMP_CCD|Add2~9\ = CARRY((\COMP_CCD|count\(4) & !\COMP_CCD|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(4),
	datad => VCC,
	cin => \COMP_CCD|Add2~7\,
	combout => \COMP_CCD|Add2~8_combout\,
	cout => \COMP_CCD|Add2~9\);

-- Location: FF_X11_Y13_N11
\COMP_CCD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~8_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(4));

-- Location: LCCOMB_X10_Y13_N30
\COMP_CCD|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~1_combout\ = (!\COMP_CCD|count\(2) & (!\COMP_CCD|count\(3) & (!\COMP_CCD|count\(4) & !\COMP_CCD|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(2),
	datab => \COMP_CCD|count\(3),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|count\(0),
	combout => \COMP_CCD|Equal1~1_combout\);

-- Location: LCCOMB_X11_Y13_N12
\COMP_CCD|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~10_combout\ = (\COMP_CCD|count\(5) & (!\COMP_CCD|Add2~9\)) # (!\COMP_CCD|count\(5) & ((\COMP_CCD|Add2~9\) # (GND)))
-- \COMP_CCD|Add2~11\ = CARRY((!\COMP_CCD|Add2~9\) # (!\COMP_CCD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(5),
	datad => VCC,
	cin => \COMP_CCD|Add2~9\,
	combout => \COMP_CCD|Add2~10_combout\,
	cout => \COMP_CCD|Add2~11\);

-- Location: LCCOMB_X11_Y13_N28
\COMP_CCD|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~2_combout\ = (!\COMP_CCD|Equal1~3_combout\ & \COMP_CCD|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal1~3_combout\,
	datad => \COMP_CCD|Add2~10_combout\,
	combout => \COMP_CCD|count~2_combout\);

-- Location: FF_X11_Y13_N29
\COMP_CCD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~2_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(5));

-- Location: LCCOMB_X11_Y13_N14
\COMP_CCD|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~12_combout\ = (\COMP_CCD|count\(6) & (\COMP_CCD|Add2~11\ $ (GND))) # (!\COMP_CCD|count\(6) & (!\COMP_CCD|Add2~11\ & VCC))
-- \COMP_CCD|Add2~13\ = CARRY((\COMP_CCD|count\(6) & !\COMP_CCD|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(6),
	datad => VCC,
	cin => \COMP_CCD|Add2~11\,
	combout => \COMP_CCD|Add2~12_combout\,
	cout => \COMP_CCD|Add2~13\);

-- Location: FF_X11_Y13_N15
\COMP_CCD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~12_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(6));

-- Location: LCCOMB_X11_Y13_N16
\COMP_CCD|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~14_combout\ = (\COMP_CCD|count\(7) & (!\COMP_CCD|Add2~13\)) # (!\COMP_CCD|count\(7) & ((\COMP_CCD|Add2~13\) # (GND)))
-- \COMP_CCD|Add2~15\ = CARRY((!\COMP_CCD|Add2~13\) # (!\COMP_CCD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(7),
	datad => VCC,
	cin => \COMP_CCD|Add2~13\,
	combout => \COMP_CCD|Add2~14_combout\,
	cout => \COMP_CCD|Add2~15\);

-- Location: LCCOMB_X10_Y13_N16
\COMP_CCD|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~3_combout\ = (!\COMP_CCD|Equal1~3_combout\ & \COMP_CCD|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal1~3_combout\,
	datac => \COMP_CCD|Add2~14_combout\,
	combout => \COMP_CCD|count~3_combout\);

-- Location: FF_X10_Y13_N17
\COMP_CCD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~3_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(7));

-- Location: LCCOMB_X11_Y13_N18
\COMP_CCD|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~16_combout\ = (\COMP_CCD|count\(8) & (\COMP_CCD|Add2~15\ $ (GND))) # (!\COMP_CCD|count\(8) & (!\COMP_CCD|Add2~15\ & VCC))
-- \COMP_CCD|Add2~17\ = CARRY((\COMP_CCD|count\(8) & !\COMP_CCD|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(8),
	datad => VCC,
	cin => \COMP_CCD|Add2~15\,
	combout => \COMP_CCD|Add2~16_combout\,
	cout => \COMP_CCD|Add2~17\);

-- Location: FF_X11_Y13_N19
\COMP_CCD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~16_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(8));

-- Location: LCCOMB_X11_Y13_N20
\COMP_CCD|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~18_combout\ = (\COMP_CCD|count\(9) & (!\COMP_CCD|Add2~17\)) # (!\COMP_CCD|count\(9) & ((\COMP_CCD|Add2~17\) # (GND)))
-- \COMP_CCD|Add2~19\ = CARRY((!\COMP_CCD|Add2~17\) # (!\COMP_CCD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(9),
	datad => VCC,
	cin => \COMP_CCD|Add2~17\,
	combout => \COMP_CCD|Add2~18_combout\,
	cout => \COMP_CCD|Add2~19\);

-- Location: FF_X11_Y13_N21
\COMP_CCD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~18_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(9));

-- Location: LCCOMB_X11_Y13_N22
\COMP_CCD|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~20_combout\ = (\COMP_CCD|count\(10) & (\COMP_CCD|Add2~19\ $ (GND))) # (!\COMP_CCD|count\(10) & (!\COMP_CCD|Add2~19\ & VCC))
-- \COMP_CCD|Add2~21\ = CARRY((\COMP_CCD|count\(10) & !\COMP_CCD|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(10),
	datad => VCC,
	cin => \COMP_CCD|Add2~19\,
	combout => \COMP_CCD|Add2~20_combout\,
	cout => \COMP_CCD|Add2~21\);

-- Location: FF_X11_Y13_N23
\COMP_CCD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~20_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(10));

-- Location: LCCOMB_X11_Y13_N24
\COMP_CCD|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~22_combout\ = (\COMP_CCD|count\(11) & (!\COMP_CCD|Add2~21\)) # (!\COMP_CCD|count\(11) & ((\COMP_CCD|Add2~21\) # (GND)))
-- \COMP_CCD|Add2~23\ = CARRY((!\COMP_CCD|Add2~21\) # (!\COMP_CCD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(11),
	datad => VCC,
	cin => \COMP_CCD|Add2~21\,
	combout => \COMP_CCD|Add2~22_combout\,
	cout => \COMP_CCD|Add2~23\);

-- Location: FF_X11_Y13_N25
\COMP_CCD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~22_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(11));

-- Location: LCCOMB_X11_Y13_N26
\COMP_CCD|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~24_combout\ = \COMP_CCD|Add2~23\ $ (!\COMP_CCD|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count\(12),
	cin => \COMP_CCD|Add2~23\,
	combout => \COMP_CCD|Add2~24_combout\);

-- Location: LCCOMB_X11_Y14_N8
\COMP_CCD|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~1_combout\ = (!\COMP_CCD|Equal1~3_combout\ & \COMP_CCD|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal1~3_combout\,
	datad => \COMP_CCD|Add2~24_combout\,
	combout => \COMP_CCD|count~1_combout\);

-- Location: FF_X11_Y14_N9
\COMP_CCD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~1_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(12));

-- Location: LCCOMB_X11_Y13_N0
\COMP_CCD|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~0_combout\ = (!\COMP_CCD|count\(10) & (!\COMP_CCD|count\(8) & (!\COMP_CCD|count\(11) & !\COMP_CCD|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(10),
	datab => \COMP_CCD|count\(8),
	datac => \COMP_CCD|count\(11),
	datad => \COMP_CCD|count\(9),
	combout => \COMP_CCD|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y13_N10
\COMP_CCD|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~2_combout\ = (\COMP_CCD|count\(1) & (\COMP_CCD|count\(7) & (!\COMP_CCD|count\(6) & \COMP_CCD|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datab => \COMP_CCD|count\(7),
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|count\(5),
	combout => \COMP_CCD|Equal1~2_combout\);

-- Location: LCCOMB_X10_Y13_N20
\COMP_CCD|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~3_combout\ = (\COMP_CCD|Equal1~1_combout\ & (\COMP_CCD|count\(12) & (\COMP_CCD|Equal1~0_combout\ & \COMP_CCD|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~1_combout\,
	datab => \COMP_CCD|count\(12),
	datac => \COMP_CCD|Equal1~0_combout\,
	datad => \COMP_CCD|Equal1~2_combout\,
	combout => \COMP_CCD|Equal1~3_combout\);

-- Location: LCCOMB_X11_Y13_N2
\COMP_CCD|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~0_combout\ = \COMP_CCD|count\(0) $ (VCC)
-- \COMP_CCD|Add2~1\ = CARRY(\COMP_CCD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(0),
	datad => VCC,
	combout => \COMP_CCD|Add2~0_combout\,
	cout => \COMP_CCD|Add2~1\);

-- Location: LCCOMB_X10_Y13_N28
\COMP_CCD|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~0_combout\ = (!\COMP_CCD|Equal1~3_combout\ & \COMP_CCD|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal1~3_combout\,
	datac => \COMP_CCD|Add2~0_combout\,
	combout => \COMP_CCD|count~0_combout\);

-- Location: FF_X10_Y13_N29
\COMP_CCD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~0_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(0));

-- Location: LCCOMB_X11_Y13_N4
\COMP_CCD|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~2_combout\ = (\COMP_CCD|count\(1) & (!\COMP_CCD|Add2~1\)) # (!\COMP_CCD|count\(1) & ((\COMP_CCD|Add2~1\) # (GND)))
-- \COMP_CCD|Add2~3\ = CARRY((!\COMP_CCD|Add2~1\) # (!\COMP_CCD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datad => VCC,
	cin => \COMP_CCD|Add2~1\,
	combout => \COMP_CCD|Add2~2_combout\,
	cout => \COMP_CCD|Add2~3\);

-- Location: LCCOMB_X11_Y13_N30
\COMP_CCD|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~4_combout\ = (\COMP_CCD|Add2~2_combout\ & !\COMP_CCD|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add2~2_combout\,
	datad => \COMP_CCD|Equal1~3_combout\,
	combout => \COMP_CCD|count~4_combout\);

-- Location: FF_X11_Y13_N31
\COMP_CCD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~4_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(1));

-- Location: FF_X11_Y13_N7
\COMP_CCD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add2~4_combout\,
	ena => \COMP_CCD|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(2));

-- Location: LCCOMB_X10_Y13_N6
\COMP_CCD|clk_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~2_combout\ = (((!\COMP_CCD|count\(5)) # (!\COMP_CCD|count\(3))) # (!\COMP_CCD|count\(4))) # (!\COMP_CCD|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(2),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(3),
	datad => \COMP_CCD|count\(5),
	combout => \COMP_CCD|clk_reg~2_combout\);

-- Location: LCCOMB_X10_Y14_N8
\COMP_CCD|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~0_combout\ = (!\COMP_CCD|count\(12) & (!\COMP_CCD|count\(7) & (!\COMP_CCD|count\(6) & \COMP_CCD|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|count\(7),
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|Equal1~0_combout\,
	combout => \COMP_CCD|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y13_N18
\COMP_CCD|clk_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~6_combout\ = (\COMP_CCD|count\(1)) # ((\COMP_CCD|count\(3)) # ((\COMP_CCD|count\(4)) # (\COMP_CCD|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datab => \COMP_CCD|count\(3),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|count\(2),
	combout => \COMP_CCD|clk_reg~6_combout\);

-- Location: LCCOMB_X10_Y13_N12
\COMP_CCD|clk_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~7_combout\ = ((!\COMP_CCD|count\(6) & ((!\COMP_CCD|clk_reg~6_combout\) # (!\COMP_CCD|count\(5))))) # (!\COMP_CCD|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(7),
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|clk_reg~6_combout\,
	combout => \COMP_CCD|clk_reg~7_combout\);

-- Location: LCCOMB_X10_Y13_N22
\COMP_CCD|clk_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~3_combout\ = (((!\COMP_CCD|count\(1)) # (!\COMP_CCD|count\(4))) # (!\COMP_CCD|count\(3))) # (!\COMP_CCD|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(2),
	datab => \COMP_CCD|count\(3),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|clk_reg~3_combout\);

-- Location: LCCOMB_X10_Y13_N8
\COMP_CCD|clk_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~4_combout\ = ((!\COMP_CCD|count\(5) & (!\COMP_CCD|count\(6) & \COMP_CCD|clk_reg~3_combout\))) # (!\COMP_CCD|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|clk_reg~3_combout\,
	datad => \COMP_CCD|count\(7),
	combout => \COMP_CCD|clk_reg~4_combout\);

-- Location: LCCOMB_X10_Y14_N24
\COMP_CCD|clk_reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~14_combout\ = ((\COMP_CCD|Equal1~0_combout\ & ((\COMP_CCD|clk_reg~7_combout\) # (\COMP_CCD|clk_reg~4_combout\)))) # (!\COMP_CCD|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|Equal1~0_combout\,
	datac => \COMP_CCD|clk_reg~7_combout\,
	datad => \COMP_CCD|clk_reg~4_combout\,
	combout => \COMP_CCD|clk_reg~14_combout\);

-- Location: LCCOMB_X10_Y13_N26
\COMP_CCD|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan2~1_combout\ = (!\COMP_CCD|count\(4) & (!\COMP_CCD|count\(3) & ((!\COMP_CCD|count\(2)) # (!\COMP_CCD|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(3),
	datad => \COMP_CCD|count\(2),
	combout => \COMP_CCD|LessThan2~1_combout\);

-- Location: LCCOMB_X10_Y13_N0
\COMP_CCD|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan2~0_combout\ = (!\COMP_CCD|count\(7) & \COMP_CCD|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(7),
	datac => \COMP_CCD|Equal1~0_combout\,
	combout => \COMP_CCD|LessThan2~0_combout\);

-- Location: LCCOMB_X10_Y14_N14
\COMP_CCD|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan2~2_combout\ = (\COMP_CCD|LessThan2~0_combout\ & (((!\COMP_CCD|count\(5) & \COMP_CCD|LessThan2~1_combout\)) # (!\COMP_CCD|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|LessThan2~1_combout\,
	datad => \COMP_CCD|LessThan2~0_combout\,
	combout => \COMP_CCD|LessThan2~2_combout\);

-- Location: LCCOMB_X10_Y13_N4
\COMP_CCD|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~0_combout\ = (\COMP_CCD|LessThan2~0_combout\ & (((!\COMP_CCD|count\(5) & !\COMP_CCD|count\(4))) # (!\COMP_CCD|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|LessThan2~0_combout\,
	combout => \COMP_CCD|LessThan3~0_combout\);

-- Location: LCCOMB_X10_Y14_N6
\COMP_CCD|clk_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~8_combout\ = (\COMP_CCD|count\(12) & (!\COMP_CCD|clk_reg~14_combout\)) # (!\COMP_CCD|count\(12) & (((\COMP_CCD|LessThan2~2_combout\) # (\COMP_CCD|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|clk_reg~14_combout\,
	datac => \COMP_CCD|LessThan2~2_combout\,
	datad => \COMP_CCD|LessThan3~0_combout\,
	combout => \COMP_CCD|clk_reg~8_combout\);

-- Location: LCCOMB_X10_Y14_N12
\COMP_CCD|clk_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~9_combout\ = (\COMP_CCD|clk_reg~q\ & (((\COMP_CCD|clk_reg~2_combout\ & \COMP_CCD|LessThan0~0_combout\)) # (!\COMP_CCD|clk_reg~8_combout\))) # (!\COMP_CCD|clk_reg~q\ & (\COMP_CCD|clk_reg~2_combout\ & (\COMP_CCD|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~q\,
	datab => \COMP_CCD|clk_reg~2_combout\,
	datac => \COMP_CCD|LessThan0~0_combout\,
	datad => \COMP_CCD|clk_reg~8_combout\,
	combout => \COMP_CCD|clk_reg~9_combout\);

-- Location: LCCOMB_X11_Y14_N18
\COMP_CCD|rog_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~0_combout\ = (\COMP_CCD|Equal0~10_combout\ & !\COMP_CCD|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal0~10_combout\,
	datad => \COMP_CCD|Equal1~3_combout\,
	combout => \COMP_CCD|rog_reg~0_combout\);

-- Location: LCCOMB_X10_Y13_N2
\COMP_CCD|clk_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~10_combout\ = (\COMP_CCD|count\(7) & ((\COMP_CCD|count\(6)) # ((\COMP_CCD|count\(5) & \COMP_CCD|clk_reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(7),
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|clk_reg~6_combout\,
	combout => \COMP_CCD|clk_reg~10_combout\);

-- Location: LCCOMB_X10_Y14_N26
\COMP_CCD|clk_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~11_combout\ = (\COMP_CCD|count\(12) & (\COMP_CCD|Equal1~0_combout\ & ((!\COMP_CCD|clk_reg~10_combout\)))) # (!\COMP_CCD|count\(12) & (((\COMP_CCD|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|Equal1~0_combout\,
	datac => \COMP_CCD|LessThan2~2_combout\,
	datad => \COMP_CCD|clk_reg~10_combout\,
	combout => \COMP_CCD|clk_reg~11_combout\);

-- Location: LCCOMB_X10_Y14_N16
\COMP_CCD|clk_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~12_combout\ = ((\COMP_CCD|count\(12) & ((!\COMP_CCD|clk_reg~11_combout\))) # (!\COMP_CCD|count\(12) & ((\COMP_CCD|LessThan3~0_combout\) # (\COMP_CCD|clk_reg~11_combout\)))) # (!\COMP_CCD|rog_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~0_combout\,
	datab => \COMP_CCD|count\(12),
	datac => \COMP_CCD|clk_reg~11_combout\,
	datad => \COMP_CCD|rog_reg~0_combout\,
	combout => \COMP_CCD|clk_reg~12_combout\);

-- Location: LCCOMB_X10_Y14_N4
\COMP_CCD|clk_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~13_combout\ = (\COMP_CCD|clk_reg~9_combout\ & (!\COMP_CCD|rog_reg~0_combout\ & ((\COMP_CCD|clk_reg~q\) # (!\COMP_CCD|clk_reg~12_combout\)))) # (!\COMP_CCD|clk_reg~9_combout\ & (((\COMP_CCD|clk_reg~q\) # 
-- (!\COMP_CCD|clk_reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~9_combout\,
	datab => \COMP_CCD|rog_reg~0_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|clk_reg~12_combout\,
	combout => \COMP_CCD|clk_reg~13_combout\);

-- Location: FF_X10_Y14_N5
\COMP_CCD|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|clk_reg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_reg~q\);

-- Location: LCCOMB_X10_Y14_N30
\COMP_CCD|rog_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~3_combout\ = (\COMP_CCD|count\(12)) # (!\COMP_CCD|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(12),
	datac => \COMP_CCD|LessThan2~2_combout\,
	combout => \COMP_CCD|rog_reg~3_combout\);

-- Location: LCCOMB_X10_Y14_N28
\COMP_CCD|clk_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~5_combout\ = ((\COMP_CCD|Equal1~0_combout\ & \COMP_CCD|clk_reg~4_combout\)) # (!\COMP_CCD|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Equal1~0_combout\,
	datac => \COMP_CCD|count\(12),
	datad => \COMP_CCD|clk_reg~4_combout\,
	combout => \COMP_CCD|clk_reg~5_combout\);

-- Location: LCCOMB_X10_Y14_N18
\COMP_CCD|rog_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~1_combout\ = (\COMP_CCD|count\(12) & (!\COMP_CCD|clk_reg~5_combout\)) # (!\COMP_CCD|count\(12) & (((!\COMP_CCD|LessThan2~2_combout\ & \COMP_CCD|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|clk_reg~5_combout\,
	datac => \COMP_CCD|LessThan2~2_combout\,
	datad => \COMP_CCD|LessThan3~0_combout\,
	combout => \COMP_CCD|rog_reg~1_combout\);

-- Location: LCCOMB_X10_Y13_N24
\COMP_CCD|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~1_combout\ = ((!\COMP_CCD|count\(4) & !\COMP_CCD|count\(3))) # (!\COMP_CCD|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(3),
	datad => \COMP_CCD|count\(5),
	combout => \COMP_CCD|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y14_N20
\COMP_CCD|rog_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~2_combout\ = (\COMP_CCD|rog_reg~0_combout\ & (((!\COMP_CCD|clk_reg~2_combout\ & !\COMP_CCD|LessThan0~1_combout\)) # (!\COMP_CCD|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~2_combout\,
	datab => \COMP_CCD|LessThan0~1_combout\,
	datac => \COMP_CCD|LessThan0~0_combout\,
	datad => \COMP_CCD|rog_reg~0_combout\,
	combout => \COMP_CCD|rog_reg~2_combout\);

-- Location: LCCOMB_X10_Y14_N22
\COMP_CCD|rog_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~4_combout\ = (\COMP_CCD|rog_reg~2_combout\ & (!\COMP_CCD|rog_reg~1_combout\ & ((\COMP_CCD|rog_reg~q\) # (!\COMP_CCD|rog_reg~3_combout\)))) # (!\COMP_CCD|rog_reg~2_combout\ & (((\COMP_CCD|rog_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_reg~3_combout\,
	datab => \COMP_CCD|rog_reg~1_combout\,
	datac => \COMP_CCD|rog_reg~q\,
	datad => \COMP_CCD|rog_reg~2_combout\,
	combout => \COMP_CCD|rog_reg~4_combout\);

-- Location: FF_X10_Y14_N23
\COMP_CCD|rog_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|rog_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|rog_reg~q\);

-- Location: LCCOMB_X18_Y11_N20
\COMP_USB|read_delay_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|read_delay_reg~0_combout\ = !\usb_rxf~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \usb_rxf~input_o\,
	combout => \COMP_USB|read_delay_reg~0_combout\);

-- Location: FF_X18_Y11_N21
\COMP_USB|read_delay_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|read_delay_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|read_delay_reg~q\);

-- Location: LCCOMB_X18_Y11_N28
\COMP_USB|oe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|oe~0_combout\ = (!\usb_rxf~input_o\ & ((\COMP_USB|oe~q\) # (!\COMP_USB|read_delay_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \usb_rxf~input_o\,
	datac => \COMP_USB|oe~q\,
	datad => \COMP_USB|read_delay_reg~q\,
	combout => \COMP_USB|oe~0_combout\);

-- Location: FF_X18_Y11_N29
\COMP_USB|oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|oe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|oe~q\);

-- Location: LCCOMB_X17_Y11_N20
\COMP_USB|wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~1_combout\ = (\COMP_USB|wr~0_combout\ & ((\COMP_USB|Equal0~10_combout\ & ((\COMP_USB|wr~q\))) # (!\COMP_USB|Equal0~10_combout\ & (!\COMP_USB|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|Mux0~0_combout\,
	datab => \COMP_USB|wr~0_combout\,
	datac => \COMP_USB|wr~q\,
	datad => \COMP_USB|Equal0~10_combout\,
	combout => \COMP_USB|wr~1_combout\);

-- Location: FF_X17_Y11_N21
\COMP_USB|wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|wr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|wr~q\);

-- Location: LCCOMB_X18_Y11_N30
\COMP_USB|rd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|rd~0_combout\ = (!\usb_rxf~input_o\ & ((\COMP_USB|rd~q\) # (\COMP_USB|read_delay_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \usb_rxf~input_o\,
	datac => \COMP_USB|rd~q\,
	datad => \COMP_USB|read_delay_reg~q\,
	combout => \COMP_USB|rd~0_combout\);

-- Location: FF_X18_Y11_N31
\COMP_USB|rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|rd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|rd~q\);

-- Location: IOIBUF_X25_Y0_N8
\adc_data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(0),
	o => \adc_data_in[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\adc_data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(1),
	o => \adc_data_in[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\adc_data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(2),
	o => \adc_data_in[2]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\adc_data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(3),
	o => \adc_data_in[3]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\adc_data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(4),
	o => \adc_data_in[4]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\adc_data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(5),
	o => \adc_data_in[5]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\adc_data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(6),
	o => \adc_data_in[6]~input_o\);

-- Location: IOIBUF_X34_Y6_N15
\adc_data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(7),
	o => \adc_data_in[7]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\adc_data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(8),
	o => \adc_data_in[8]~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\adc_data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(9),
	o => \adc_data_in[9]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\adc_data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(10),
	o => \adc_data_in[10]~input_o\);

-- Location: IOIBUF_X34_Y19_N1
\adc_data_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data_in(11),
	o => \adc_data_in[11]~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\adc_otr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_otr,
	o => \adc_otr~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\trigger_start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger_start,
	o => \trigger_start~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\r_sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => r_sda,
	o => \r_sda~input_o\);

-- Location: IOIBUF_X32_Y24_N8
\usb_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(0),
	o => \usb_data[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\usb_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(1),
	o => \usb_data[1]~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\usb_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(2),
	o => \usb_data[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\usb_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(3),
	o => \usb_data[3]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\usb_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(4),
	o => \usb_data[4]~input_o\);

-- Location: IOIBUF_X32_Y24_N15
\usb_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(5),
	o => \usb_data[5]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\usb_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(6),
	o => \usb_data[6]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\usb_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => usb_data(7),
	o => \usb_data[7]~input_o\);

ww_adc_clk <= \adc_clk~output_o\;

ww_ccd_clk <= \ccd_clk~output_o\;

ww_ccd_rog <= \ccd_rog~output_o\;

ww_ccd_shut <= \ccd_shut~output_o\;

ww_ccd_shsw <= \ccd_shsw~output_o\;

ww_usb_oe <= \usb_oe~output_o\;

ww_usb_wr <= \usb_wr~output_o\;

ww_usb_rd <= \usb_rd~output_o\;

ww_usb_siwua <= \usb_siwua~output_o\;

ww_r_scl <= \r_scl~output_o\;

r_sda <= \r_sda~output_o\;

usb_data(0) <= \usb_data[0]~output_o\;

usb_data(1) <= \usb_data[1]~output_o\;

usb_data(2) <= \usb_data[2]~output_o\;

usb_data(3) <= \usb_data[3]~output_o\;

usb_data(4) <= \usb_data[4]~output_o\;

usb_data(5) <= \usb_data[5]~output_o\;

usb_data(6) <= \usb_data[6]~output_o\;

usb_data(7) <= \usb_data[7]~output_o\;
END structure;


