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

-- DATE "11/04/2020 18:26:47"

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
	adc_otr : IN std_logic;
	trigger_start : IN std_logic;
	button : IN std_logic;
	clk50Mhz : IN std_logic;
	ccd_clk : BUFFER std_logic;
	ccd_rog : BUFFER std_logic;
	ccd_shut : BUFFER std_logic;
	ccd_shsw : BUFFER std_logic;
	usb_clk : IN std_logic;
	usb_txe : IN std_logic;
	usb_data : BUFFER std_logic_vector(7 DOWNTO 0);
	usb_oe : BUFFER std_logic;
	usb_wr : BUFFER std_logic;
	usb_rd : BUFFER std_logic;
	usb_rxf : IN std_logic;
	usb_siwua : BUFFER std_logic;
	r_scl : BUFFER std_logic;
	r_sda : BUFFER std_logic
	);
END monochr;

-- Design Ports Information
-- adc_clk	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- adc_otr	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- trigger_start	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
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
-- button	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[8]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[0]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[9]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[1]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[10]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[2]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[3]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[4]	=>  Location: PIN_L12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[5]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[6]	=>  Location: PIN_K12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[7]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_usb_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_usb_oe : std_logic;
SIGNAL ww_usb_wr : std_logic;
SIGNAL ww_usb_rd : std_logic;
SIGNAL ww_usb_rxf : std_logic;
SIGNAL ww_usb_siwua : std_logic;
SIGNAL ww_r_scl : std_logic;
SIGNAL ww_r_sda : std_logic;
SIGNAL \clk50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_otr~input_o\ : std_logic;
SIGNAL \trigger_start~input_o\ : std_logic;
SIGNAL \r_sda~input_o\ : std_logic;
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
SIGNAL \clk50Mhz~input_o\ : std_logic;
SIGNAL \clk50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~95_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \usb_data[6]~input_o\ : std_logic;
SIGNAL \usb_rxf~input_o\ : std_logic;
SIGNAL \COMP_USB|read_delay_reg~0_combout\ : std_logic;
SIGNAL \COMP_USB|read_delay_reg~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|read_delay_reg~q\ : std_logic;
SIGNAL \COMP_USB|command_reg[0]~0_combout\ : std_logic;
SIGNAL \usb_data[5]~input_o\ : std_logic;
SIGNAL \COMP_USB|command_reg[5]~feeder_combout\ : std_logic;
SIGNAL \usb_data[0]~input_o\ : std_logic;
SIGNAL \usb_data[1]~input_o\ : std_logic;
SIGNAL \COMP_USB|command_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \usb_data[3]~input_o\ : std_logic;
SIGNAL \COMP_USB|command_reg[3]~feeder_combout\ : std_logic;
SIGNAL \usb_data[4]~input_o\ : std_logic;
SIGNAL \COMP_USB|command_reg[4]~feeder_combout\ : std_logic;
SIGNAL \usb_data[7]~input_o\ : std_logic;
SIGNAL \usb_data[2]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \pc_trig_reg~0_combout\ : std_logic;
SIGNAL \pc_trig_reg~q\ : std_logic;
SIGNAL \COMP_CCD|process_1~17_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~72_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~19_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan12~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan15~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count[14]~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count[14]~3_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line[31]~64_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~1\ : std_logic;
SIGNAL \COMP_CCD|Add0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count_div~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal3~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~3\ : std_logic;
SIGNAL \COMP_CCD|Add0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~5\ : std_logic;
SIGNAL \COMP_CCD|Add0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~7\ : std_logic;
SIGNAL \COMP_CCD|Add0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~9\ : std_logic;
SIGNAL \COMP_CCD|Add0~10_combout\ : std_logic;
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
SIGNAL \COMP_CCD|Add0~55\ : std_logic;
SIGNAL \COMP_CCD|Add0~56_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~57\ : std_logic;
SIGNAL \COMP_CCD|Add0~58_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~59\ : std_logic;
SIGNAL \COMP_CCD|Add0~60_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~61\ : std_logic;
SIGNAL \COMP_CCD|Add0~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line[31]~65_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~1\ : std_logic;
SIGNAL \COMP_CCD|Add2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~73_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~3\ : std_logic;
SIGNAL \COMP_CCD|Add2~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~71_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~5\ : std_logic;
SIGNAL \COMP_CCD|Add2~6_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~69_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~7\ : std_logic;
SIGNAL \COMP_CCD|Add2~8_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~70_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~9\ : std_logic;
SIGNAL \COMP_CCD|Add2~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~68_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~11\ : std_logic;
SIGNAL \COMP_CCD|Add2~12_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~67_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~13\ : std_logic;
SIGNAL \COMP_CCD|Add2~14_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~74_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~15\ : std_logic;
SIGNAL \COMP_CCD|Add2~16_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~75_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~17\ : std_logic;
SIGNAL \COMP_CCD|Add2~18_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~76_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~19\ : std_logic;
SIGNAL \COMP_CCD|Add2~20_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~77_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~21\ : std_logic;
SIGNAL \COMP_CCD|Add2~22_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~78_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~23\ : std_logic;
SIGNAL \COMP_CCD|Add2~24_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~79_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~25\ : std_logic;
SIGNAL \COMP_CCD|Add2~26_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~80_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~27\ : std_logic;
SIGNAL \COMP_CCD|Add2~28_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~81_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~29\ : std_logic;
SIGNAL \COMP_CCD|Add2~30_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~82_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~31\ : std_logic;
SIGNAL \COMP_CCD|Add2~32_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~83_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~33\ : std_logic;
SIGNAL \COMP_CCD|Add2~34_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~84_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~35\ : std_logic;
SIGNAL \COMP_CCD|Add2~36_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~85_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~37\ : std_logic;
SIGNAL \COMP_CCD|Add2~38_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~86_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~39\ : std_logic;
SIGNAL \COMP_CCD|Add2~40_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~87_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~41\ : std_logic;
SIGNAL \COMP_CCD|Add2~42_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~88_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~43\ : std_logic;
SIGNAL \COMP_CCD|Add2~44_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~89_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~45\ : std_logic;
SIGNAL \COMP_CCD|Add2~47\ : std_logic;
SIGNAL \COMP_CCD|Add2~48_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~91_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~49\ : std_logic;
SIGNAL \COMP_CCD|Add2~50_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~92_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~51\ : std_logic;
SIGNAL \COMP_CCD|Add2~52_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~93_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~53\ : std_logic;
SIGNAL \COMP_CCD|Add2~54_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~94_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~55\ : std_logic;
SIGNAL \COMP_CCD|Add2~56_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~95_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~57\ : std_logic;
SIGNAL \COMP_CCD|Add2~58_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~96_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~59\ : std_logic;
SIGNAL \COMP_CCD|Add2~60_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~97_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~61\ : std_logic;
SIGNAL \COMP_CCD|Add2~62_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~66_combout\ : std_logic;
SIGNAL \COMP_CCD|trigger_start_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|trigger_start_reg~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~46_combout\ : std_logic;
SIGNAL \COMP_CCD|count_line~90_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|comb~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|comb~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~11_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~8_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~6_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~9_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan17~12_combout\ : std_logic;
SIGNAL \COMP_CCD|count[14]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~6_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~8_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~9_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~10_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~11_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan19~12_combout\ : std_logic;
SIGNAL \COMP_CCD|count[14]~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count[30]~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~1\ : std_logic;
SIGNAL \COMP_CCD|Add3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~94_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~3\ : std_logic;
SIGNAL \COMP_CCD|Add3~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~81_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~5\ : std_logic;
SIGNAL \COMP_CCD|Add3~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~82_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~7\ : std_logic;
SIGNAL \COMP_CCD|Add3~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~83_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~9\ : std_logic;
SIGNAL \COMP_CCD|Add3~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~84_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~11\ : std_logic;
SIGNAL \COMP_CCD|Add3~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~74_combout\ : std_logic;
SIGNAL \COMP_CCD|count[6]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~13\ : std_logic;
SIGNAL \COMP_CCD|Add3~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~27_combout\ : std_logic;
SIGNAL \COMP_CCD|count[7]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~15\ : std_logic;
SIGNAL \COMP_CCD|Add3~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~28_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~17\ : std_logic;
SIGNAL \COMP_CCD|Add3~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~29_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~19\ : std_logic;
SIGNAL \COMP_CCD|Add3~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~30_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~21\ : std_logic;
SIGNAL \COMP_CCD|Add3~22_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~31_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~23\ : std_logic;
SIGNAL \COMP_CCD|Add3~25\ : std_logic;
SIGNAL \COMP_CCD|Add3~32_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~34_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~33\ : std_logic;
SIGNAL \COMP_CCD|Add3~35_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~37_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~36\ : std_logic;
SIGNAL \COMP_CCD|Add3~38_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~40_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~39\ : std_logic;
SIGNAL \COMP_CCD|Add3~41_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~43_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~42\ : std_logic;
SIGNAL \COMP_CCD|Add3~44_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~46_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~45\ : std_logic;
SIGNAL \COMP_CCD|Add3~47_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~49_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~48\ : std_logic;
SIGNAL \COMP_CCD|Add3~50_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~52_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~51\ : std_logic;
SIGNAL \COMP_CCD|Add3~53_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~55_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~54\ : std_logic;
SIGNAL \COMP_CCD|Add3~56_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~58_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~57\ : std_logic;
SIGNAL \COMP_CCD|Add3~59_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~61_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~60\ : std_logic;
SIGNAL \COMP_CCD|Add3~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~64_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~63\ : std_logic;
SIGNAL \COMP_CCD|Add3~65_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~67_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~66\ : std_logic;
SIGNAL \COMP_CCD|Add3~68_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~70_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~69\ : std_logic;
SIGNAL \COMP_CCD|Add3~71_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~73_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~72\ : std_logic;
SIGNAL \COMP_CCD|Add3~75_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~77_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~76\ : std_logic;
SIGNAL \COMP_CCD|Add3~78_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~80_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~79\ : std_logic;
SIGNAL \COMP_CCD|Add3~85_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~90_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~86\ : std_logic;
SIGNAL \COMP_CCD|Add3~87_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~89_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~88\ : std_logic;
SIGNAL \COMP_CCD|Add3~91_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~93_combout\ : std_logic;
SIGNAL \COMP_CCD|count[14]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~26_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan9~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan11~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~13_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan9~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~16_combout\ : std_logic;
SIGNAL \adc_data_in[0]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~6_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~7_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~3_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~9_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~12_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan4~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan4~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan4~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~10_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~18_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~103_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~q\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~34_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~98_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~99_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~11_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~8_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan12~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan12~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~15_combout\ : std_logic;
SIGNAL \COMP_CCD|process_1~14_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[1]~37\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[2]~38_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[2]~39\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[3]~40_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[3]~41\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[4]~42_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[4]~43\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[5]~44_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[5]~45\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[6]~46_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[6]~47\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[7]~48_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[7]~49\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[8]~50_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[8]~51\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~52_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~53\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[10]~54_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[10]~55\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~56_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~57\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[12]~58_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[12]~59\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[13]~60_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[13]~61\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[14]~62_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[14]~63\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~64_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~65\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[16]~66_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[16]~67\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[17]~68_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[17]~69\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[18]~70_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[18]~71\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[19]~72_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[19]~73\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[20]~74_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[20]~75\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[21]~76_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[21]~77\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[22]~78_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[22]~79\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[23]~80_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[23]~81\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[24]~82_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[24]~83\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[25]~84_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[25]~85\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[26]~86_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[26]~87\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[27]~88_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[27]~89\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[28]~90_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[28]~91\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[29]~92_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[29]~93\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[30]~94_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[30]~95\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~96_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~9_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan13~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~100_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~101_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~102_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~35\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[1]~36_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~2_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~3_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal6~10_combout\ : std_logic;
SIGNAL \adc_data_in[8]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~0_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[0]~32_combout\ : std_logic;
SIGNAL \usb_txe~input_o\ : std_logic;
SIGNAL \COMP_USB|ccd_ready_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~5_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~6_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~7_combout\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready_reg~q\ : std_logic;
SIGNAL \COMP_CCD|ccd_ready~q\ : std_logic;
SIGNAL \COMP_USB|process_0~1_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~3_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~4_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~5_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~6_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~7_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~8_combout\ : std_logic;
SIGNAL \COMP_USB|process_0~2_combout\ : std_logic;
SIGNAL \COMP_USB|ccd_ready_reg~3_combout\ : std_logic;
SIGNAL \COMP_USB|ccd_ready_reg~q\ : std_logic;
SIGNAL \COMP_USB|process_0~0_combout\ : std_logic;
SIGNAL \COMP_USB|wr~4_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[0]~34_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[0]~33\ : std_logic;
SIGNAL \COMP_USB|switch_write[1]~35_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[1]~36\ : std_logic;
SIGNAL \COMP_USB|switch_write[2]~37_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[2]~38\ : std_logic;
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
SIGNAL \COMP_USB|switch_write[25]~84\ : std_logic;
SIGNAL \COMP_USB|switch_write[26]~85_combout\ : std_logic;
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
SIGNAL \COMP_USB|LessThan0~0_combout\ : std_logic;
SIGNAL \COMP_USB|Equal1~9_combout\ : std_logic;
SIGNAL \COMP_USB|data[0]~9_combout\ : std_logic;
SIGNAL \COMP_USB|wr~0_combout\ : std_logic;
SIGNAL \COMP_USB|wr~1_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~10_combout\ : std_logic;
SIGNAL \COMP_USB|data[0]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[0]~en_q\ : std_logic;
SIGNAL \adc_data_in[9]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~7_combout\ : std_logic;
SIGNAL \adc_data_in[1]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~8_combout\ : std_logic;
SIGNAL \COMP_USB|data[1]~11_combout\ : std_logic;
SIGNAL \COMP_USB|data[1]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[1]~en_q\ : std_logic;
SIGNAL \adc_data_in[2]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~10_combout\ : std_logic;
SIGNAL \adc_data_in[10]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~9_combout\ : std_logic;
SIGNAL \COMP_USB|data[2]~12_combout\ : std_logic;
SIGNAL \COMP_USB|data[2]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[2]~en_q\ : std_logic;
SIGNAL \adc_data_in[11]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~11_combout\ : std_logic;
SIGNAL \adc_data_in[3]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~12_combout\ : std_logic;
SIGNAL \COMP_USB|data[3]~13_combout\ : std_logic;
SIGNAL \COMP_USB|data[3]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[3]~en_q\ : std_logic;
SIGNAL \adc_data_in[4]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~13_combout\ : std_logic;
SIGNAL \COMP_USB|data[4]~14_combout\ : std_logic;
SIGNAL \COMP_USB|data[4]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[4]~en_q\ : std_logic;
SIGNAL \adc_data_in[5]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~14_combout\ : std_logic;
SIGNAL \COMP_USB|data[5]~15_combout\ : std_logic;
SIGNAL \COMP_USB|data[5]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[5]~en_q\ : std_logic;
SIGNAL \adc_data_in[6]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~15_combout\ : std_logic;
SIGNAL \COMP_USB|data[6]~16_combout\ : std_logic;
SIGNAL \COMP_USB|data[6]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[6]~en_q\ : std_logic;
SIGNAL \adc_data_in[7]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~16_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~17_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[7]~en_q\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~q\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|shut_reg~q\ : std_logic;
SIGNAL \COMP_USB|oe~0_combout\ : std_logic;
SIGNAL \COMP_USB|oe~q\ : std_logic;
SIGNAL \COMP_USB|wr~2_combout\ : std_logic;
SIGNAL \COMP_USB|wr~3_combout\ : std_logic;
SIGNAL \COMP_USB|wr~q\ : std_logic;
SIGNAL \COMP_USB|rd~0_combout\ : std_logic;
SIGNAL \COMP_USB|rd~q\ : std_logic;
SIGNAL \COMP_USB|switch_write\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count_start_seq\ : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count_div\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count_line\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|data_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \COMP_USB|command_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \COMP_CCD|CCD_LINES_NUMBER\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|ALT_INV_wr~q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_oe~q\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_reg~q\ : std_logic;
SIGNAL \ALT_INV_usb_clk~input_o\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_rd~q\ : std_logic;

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
usb_data <= ww_usb_data;
usb_oe <= ww_usb_oe;
usb_wr <= ww_usb_wr;
usb_rd <= ww_usb_rd;
ww_usb_rxf <= usb_rxf;
usb_siwua <= ww_usb_siwua;
r_scl <= ww_r_scl;
r_sda <= ww_r_sda;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50Mhz~input_o\);
\COMP_USB|ALT_INV_wr~q\ <= NOT \COMP_USB|wr~q\;
\COMP_USB|ALT_INV_oe~q\ <= NOT \COMP_USB|oe~q\;
\COMP_CCD|ALT_INV_clk_reg~q\ <= NOT \COMP_CCD|clk_reg~q\;
\ALT_INV_usb_clk~input_o\ <= NOT \usb_clk~input_o\;
\COMP_USB|ALT_INV_rd~q\ <= NOT \COMP_USB|rd~q\;

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
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[0]~reg0_q\,
	oe => \COMP_USB|data[0]~en_q\,
	devoe => ww_devoe,
	o => \usb_data[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\usb_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[1]~reg0_q\,
	oe => \COMP_USB|data[1]~en_q\,
	devoe => ww_devoe,
	o => \usb_data[1]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\usb_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[2]~reg0_q\,
	oe => \COMP_USB|data[2]~en_q\,
	devoe => ww_devoe,
	o => \usb_data[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\usb_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[3]~reg0_q\,
	oe => \COMP_USB|data[3]~en_q\,
	devoe => ww_devoe,
	o => \usb_data[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\usb_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[4]~reg0_q\,
	oe => \COMP_USB|data[4]~en_q\,
	devoe => ww_devoe,
	o => \usb_data[4]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\usb_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[5]~reg0_q\,
	oe => \COMP_USB|data[5]~en_q\,
	devoe => ww_devoe,
	o => \usb_data[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\usb_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[6]~reg0_q\,
	oe => \COMP_USB|data[6]~en_q\,
	devoe => ww_devoe,
	o => \usb_data[6]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\usb_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|data[7]~reg0_q\,
	oe => \COMP_USB|data[7]~en_q\,
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
	i => \COMP_CCD|shut_reg~q\,
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

-- Location: LCCOMB_X25_Y9_N0
\COMP_CCD|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~0_combout\ = \COMP_CCD|count\(0) $ (GND)
-- \COMP_CCD|Add3~1\ = CARRY(!\COMP_CCD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(0),
	datad => VCC,
	combout => \COMP_CCD|Add3~0_combout\,
	cout => \COMP_CCD|Add3~1\);

-- Location: LCCOMB_X24_Y9_N22
\COMP_CCD|Add3~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~95_combout\ = (!\COMP_CCD|count[14]~0_combout\) # (!\COMP_CCD|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~0_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~95_combout\);

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

-- Location: LCCOMB_X17_Y12_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X17_Y12_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X17_Y12_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X17_Y12_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X17_Y12_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X17_Y12_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X17_Y12_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X17_Y12_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X17_Y12_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X17_Y12_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X17_Y12_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X17_Y12_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X17_Y12_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X17_Y12_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X17_Y12_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X17_Y12_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X17_Y12_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X17_Y12_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X17_Y11_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X17_Y11_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X17_Y11_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X17_Y11_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X17_Y11_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X17_Y11_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X17_Y11_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X17_Y11_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X18_Y11_N26
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(17) & (!count(18) & (!count(16) & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(18),
	datac => count(16),
	datad => count(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X17_Y11_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X17_Y11_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X17_Y11_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X17_Y11_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X17_Y11_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X17_Y11_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X17_Y11_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X17_Y11_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X18_Y11_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(20) & (!count(21) & (!count(23) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(21),
	datac => count(23),
	datad => count(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y11_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X17_Y11_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X17_Y11_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X17_Y11_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X17_Y11_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X17_Y11_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X17_Y11_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X17_Y11_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X17_Y11_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X17_Y11_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X17_Y11_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X17_Y11_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X17_Y11_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X17_Y11_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X17_Y11_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X17_Y11_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X18_Y11_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(30) & (!count(31) & (!count(29) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(31),
	datac => count(29),
	datad => count(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X18_Y11_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(26) & (!count(27) & (!count(24) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => count(24),
	datad => count(25),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X18_Y11_N2
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X16_Y12_N16
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~2_combout\);

-- Location: FF_X16_Y12_N17
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X17_Y12_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X16_Y12_N28
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~2_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~1_combout\);

-- Location: FF_X16_Y12_N29
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X17_Y12_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X17_Y12_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X17_Y12_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X16_Y12_N6
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~6_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~0_combout\);

-- Location: FF_X16_Y12_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X17_Y12_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X17_Y12_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X17_Y12_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X17_Y12_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X17_Y12_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X17_Y12_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X17_Y12_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X16_Y12_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(7) & (!count(6) & (!count(5) & !count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(6),
	datac => count(5),
	datad => count(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X16_Y12_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(3) & (count(1) & (!count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(1),
	datac => count(4),
	datad => count(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y12_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(13) & (!count(14) & (!count(15) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => count(15),
	datad => count(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X16_Y12_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(9) & (!count(11) & (!count(10) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(11),
	datac => count(10),
	datad => count(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y12_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

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

-- Location: LCCOMB_X17_Y14_N18
\COMP_USB|read_delay_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|read_delay_reg~0_combout\ = !\usb_rxf~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \usb_rxf~input_o\,
	combout => \COMP_USB|read_delay_reg~0_combout\);

-- Location: LCCOMB_X14_Y12_N28
\COMP_USB|read_delay_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|read_delay_reg~feeder_combout\ = \COMP_USB|read_delay_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|read_delay_reg~0_combout\,
	combout => \COMP_USB|read_delay_reg~feeder_combout\);

-- Location: FF_X14_Y12_N29
\COMP_USB|read_delay_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|read_delay_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|read_delay_reg~q\);

-- Location: LCCOMB_X14_Y12_N26
\COMP_USB|command_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|command_reg[0]~0_combout\ = (!\usb_rxf~input_o\ & \COMP_USB|read_delay_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \usb_rxf~input_o\,
	datad => \COMP_USB|read_delay_reg~q\,
	combout => \COMP_USB|command_reg[0]~0_combout\);

-- Location: FF_X13_Y12_N3
\COMP_USB|command_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_data[6]~input_o\,
	sload => VCC,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(6));

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

-- Location: LCCOMB_X13_Y12_N8
\COMP_USB|command_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|command_reg[5]~feeder_combout\ = \usb_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \usb_data[5]~input_o\,
	combout => \COMP_USB|command_reg[5]~feeder_combout\);

-- Location: FF_X13_Y12_N9
\COMP_USB|command_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|command_reg[5]~feeder_combout\,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(5));

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

-- Location: FF_X13_Y12_N27
\COMP_USB|command_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_data[0]~input_o\,
	sload => VCC,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(0));

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

-- Location: LCCOMB_X13_Y12_N20
\COMP_USB|command_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|command_reg[1]~feeder_combout\ = \usb_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \usb_data[1]~input_o\,
	combout => \COMP_USB|command_reg[1]~feeder_combout\);

-- Location: FF_X13_Y12_N21
\COMP_USB|command_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|command_reg[1]~feeder_combout\,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(1));

-- Location: LCCOMB_X13_Y12_N30
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\COMP_USB|command_reg\(6) & (!\COMP_USB|command_reg\(5) & (\COMP_USB|command_reg\(0) & \COMP_USB|command_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|command_reg\(6),
	datab => \COMP_USB|command_reg\(5),
	datac => \COMP_USB|command_reg\(0),
	datad => \COMP_USB|command_reg\(1),
	combout => \Equal1~1_combout\);

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

-- Location: LCCOMB_X13_Y12_N22
\COMP_USB|command_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|command_reg[3]~feeder_combout\ = \usb_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \usb_data[3]~input_o\,
	combout => \COMP_USB|command_reg[3]~feeder_combout\);

-- Location: FF_X13_Y12_N23
\COMP_USB|command_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|command_reg[3]~feeder_combout\,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(3));

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

-- Location: LCCOMB_X13_Y12_N14
\COMP_USB|command_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|command_reg[4]~feeder_combout\ = \usb_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \usb_data[4]~input_o\,
	combout => \COMP_USB|command_reg[4]~feeder_combout\);

-- Location: FF_X13_Y12_N15
\COMP_USB|command_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|command_reg[4]~feeder_combout\,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(4));

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

-- Location: FF_X13_Y12_N17
\COMP_USB|command_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_data[7]~input_o\,
	sload => VCC,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(7));

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

-- Location: FF_X13_Y12_N29
\COMP_USB|command_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \usb_data[2]~input_o\,
	sload => VCC,
	ena => \COMP_USB|command_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|command_reg\(2));

-- Location: LCCOMB_X13_Y12_N16
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\COMP_USB|command_reg\(3) & (\COMP_USB|command_reg\(4) & (!\COMP_USB|command_reg\(7) & !\COMP_USB|command_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|command_reg\(3),
	datab => \COMP_USB|command_reg\(4),
	datac => \COMP_USB|command_reg\(7),
	datad => \COMP_USB|command_reg\(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X13_Y12_N12
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X13_Y12_N24
\pc_trig_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_trig_reg~0_combout\ = (\Equal0~4_combout\ & ((\Equal0~9_combout\ & ((\Equal1~2_combout\))) # (!\Equal0~9_combout\ & (\pc_trig_reg~q\)))) # (!\Equal0~4_combout\ & (((\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~9_combout\,
	datac => \pc_trig_reg~q\,
	datad => \Equal1~2_combout\,
	combout => \pc_trig_reg~0_combout\);

-- Location: FF_X13_Y12_N25
pc_trig_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \pc_trig_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_trig_reg~q\);

-- Location: LCCOMB_X22_Y12_N6
\COMP_CCD|process_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~17_combout\ = (\button~input_o\ & !\pc_trig_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datad => \pc_trig_reg~q\,
	combout => \COMP_CCD|process_1~17_combout\);

-- Location: LCCOMB_X24_Y12_N0
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

-- Location: LCCOMB_X25_Y12_N20
\COMP_CCD|count_line~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~72_combout\ = (\COMP_CCD|Add2~0_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~0_combout\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \pc_trig_reg~q\,
	combout => \COMP_CCD|count_line~72_combout\);

-- Location: LCCOMB_X23_Y12_N24
\COMP_CCD|process_1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~19_combout\ = (\button~input_o\ & (!\COMP_CCD|count_line\(31) & (!\pc_trig_reg~q\ & !\COMP_CCD|LessThan17~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \COMP_CCD|count_line\(31),
	datac => \pc_trig_reg~q\,
	datad => \COMP_CCD|LessThan17~12_combout\,
	combout => \COMP_CCD|process_1~19_combout\);

-- Location: LCCOMB_X24_Y8_N0
\COMP_CCD|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~4_combout\ = (!\COMP_CCD|count\(19) & (!\COMP_CCD|count\(18) & (!\COMP_CCD|count\(20) & !\COMP_CCD|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(19),
	datab => \COMP_CCD|count\(18),
	datac => \COMP_CCD|count\(20),
	datad => \COMP_CCD|count\(17),
	combout => \COMP_CCD|process_1~4_combout\);

-- Location: LCCOMB_X23_Y8_N0
\COMP_CCD|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~3_combout\ = (!\COMP_CCD|count\(14) & (!\COMP_CCD|count\(13) & (!\COMP_CCD|count\(15) & !\COMP_CCD|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(14),
	datab => \COMP_CCD|count\(13),
	datac => \COMP_CCD|count\(15),
	datad => \COMP_CCD|count\(16),
	combout => \COMP_CCD|process_1~3_combout\);

-- Location: LCCOMB_X24_Y8_N4
\COMP_CCD|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~0_combout\ = (!\COMP_CCD|count\(25) & (!\COMP_CCD|count\(24) & !\COMP_CCD|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(25),
	datac => \COMP_CCD|count\(24),
	datad => \COMP_CCD|count\(26),
	combout => \COMP_CCD|LessThan6~0_combout\);

-- Location: LCCOMB_X24_Y8_N24
\COMP_CCD|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~5_combout\ = (!\COMP_CCD|count\(21) & (!\COMP_CCD|count\(22) & !\COMP_CCD|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(21),
	datac => \COMP_CCD|count\(22),
	datad => \COMP_CCD|count\(23),
	combout => \COMP_CCD|process_1~5_combout\);

-- Location: LCCOMB_X23_Y9_N4
\COMP_CCD|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~1_combout\ = (\COMP_CCD|process_1~4_combout\ & (\COMP_CCD|process_1~3_combout\ & (\COMP_CCD|LessThan6~0_combout\ & \COMP_CCD|process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~4_combout\,
	datab => \COMP_CCD|process_1~3_combout\,
	datac => \COMP_CCD|LessThan6~0_combout\,
	datad => \COMP_CCD|process_1~5_combout\,
	combout => \COMP_CCD|LessThan6~1_combout\);

-- Location: LCCOMB_X23_Y10_N22
\COMP_CCD|LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~0_combout\ = (!\COMP_CCD|count\(29) & (!\COMP_CCD|count\(27) & !\COMP_CCD|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(29),
	datac => \COMP_CCD|count\(27),
	datad => \COMP_CCD|count\(28),
	combout => \COMP_CCD|LessThan15~0_combout\);

-- Location: LCCOMB_X24_Y9_N26
\COMP_CCD|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan12~0_combout\ = (!\COMP_CCD|count\(10) & (!\COMP_CCD|count\(8) & (!\COMP_CCD|count\(11) & !\COMP_CCD|count\(9))))

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
	combout => \COMP_CCD|LessThan12~0_combout\);

-- Location: LCCOMB_X22_Y9_N8
\COMP_CCD|LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~1_combout\ = (!\COMP_CCD|count\(3) & (!\COMP_CCD|count\(2) & (!\COMP_CCD|count\(4) & !\COMP_CCD|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|LessThan15~1_combout\);

-- Location: LCCOMB_X24_Y9_N24
\COMP_CCD|LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~2_combout\ = (\COMP_CCD|count\(5)) # ((\COMP_CCD|count\(6)) # ((!\COMP_CCD|count\(0) & \COMP_CCD|LessThan15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|count\(0),
	datad => \COMP_CCD|LessThan15~1_combout\,
	combout => \COMP_CCD|LessThan15~2_combout\);

-- Location: LCCOMB_X24_Y9_N18
\COMP_CCD|LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~3_combout\ = (\COMP_CCD|count\(12)) # ((\COMP_CCD|LessThan12~0_combout\ & ((\COMP_CCD|count\(7)) # (!\COMP_CCD|LessThan15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(7),
	datab => \COMP_CCD|count\(12),
	datac => \COMP_CCD|LessThan12~0_combout\,
	datad => \COMP_CCD|LessThan15~2_combout\,
	combout => \COMP_CCD|LessThan15~3_combout\);

-- Location: LCCOMB_X24_Y9_N16
\COMP_CCD|LessThan15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan15~4_combout\ = (!\COMP_CCD|count\(30) & (\COMP_CCD|LessThan6~1_combout\ & (\COMP_CCD|LessThan15~0_combout\ & \COMP_CCD|LessThan15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datab => \COMP_CCD|LessThan6~1_combout\,
	datac => \COMP_CCD|LessThan15~0_combout\,
	datad => \COMP_CCD|LessThan15~3_combout\,
	combout => \COMP_CCD|LessThan15~4_combout\);

-- Location: LCCOMB_X23_Y12_N8
\COMP_CCD|count[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[14]~2_combout\ = (!\COMP_CCD|count\(31) & !\COMP_CCD|LessThan15~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(31),
	datad => \COMP_CCD|LessThan15~4_combout\,
	combout => \COMP_CCD|count[14]~2_combout\);

-- Location: LCCOMB_X23_Y12_N30
\COMP_CCD|count[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[14]~3_combout\ = (\COMP_CCD|process_1~17_combout\ & ((\COMP_CCD|count_line\(31)) # ((\COMP_CCD|LessThan17~12_combout\)))) # (!\COMP_CCD|process_1~17_combout\ & (((\COMP_CCD|trigger_start_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(31),
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|process_1~17_combout\,
	datad => \COMP_CCD|LessThan17~12_combout\,
	combout => \COMP_CCD|count[14]~3_combout\);

-- Location: LCCOMB_X23_Y12_N20
\COMP_CCD|count_line[31]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line[31]~64_combout\ = ((\COMP_CCD|count[14]~2_combout\ & ((\COMP_CCD|count_line\(31)) # (\COMP_CCD|LessThan17~12_combout\)))) # (!\COMP_CCD|count[14]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(31),
	datab => \COMP_CCD|count[14]~2_combout\,
	datac => \COMP_CCD|count[14]~3_combout\,
	datad => \COMP_CCD|LessThan17~12_combout\,
	combout => \COMP_CCD|count_line[31]~64_combout\);

-- Location: FF_X19_Y11_N31
\COMP_CCD|count_div[31]\ : dffeas
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
	q => \COMP_CCD|count_div\(31));

-- Location: LCCOMB_X18_Y12_N22
\COMP_CCD|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~9_combout\ = (!\COMP_CCD|count_div\(30) & (!\COMP_CCD|count_div\(29) & (!\COMP_CCD|count_div\(28) & !\COMP_CCD|count_div\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(30),
	datab => \COMP_CCD|count_div\(29),
	datac => \COMP_CCD|count_div\(28),
	datad => \COMP_CCD|count_div\(31),
	combout => \COMP_CCD|Equal3~9_combout\);

-- Location: LCCOMB_X19_Y12_N0
\COMP_CCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~0_combout\ = \COMP_CCD|count_div\(0) $ (VCC)
-- \COMP_CCD|Add0~1\ = CARRY(\COMP_CCD|count_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(0),
	datad => VCC,
	combout => \COMP_CCD|Add0~0_combout\,
	cout => \COMP_CCD|Add0~1\);

-- Location: FF_X19_Y12_N1
\COMP_CCD|count_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(0));

-- Location: LCCOMB_X19_Y12_N2
\COMP_CCD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~2_combout\ = (\COMP_CCD|count_div\(1) & (!\COMP_CCD|Add0~1\)) # (!\COMP_CCD|count_div\(1) & ((\COMP_CCD|Add0~1\) # (GND)))
-- \COMP_CCD|Add0~3\ = CARRY((!\COMP_CCD|Add0~1\) # (!\COMP_CCD|count_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(1),
	datad => VCC,
	cin => \COMP_CCD|Add0~1\,
	combout => \COMP_CCD|Add0~2_combout\,
	cout => \COMP_CCD|Add0~3\);

-- Location: LCCOMB_X18_Y12_N4
\COMP_CCD|count_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_div~1_combout\ = (!\COMP_CCD|Equal3~10_combout\ & \COMP_CCD|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal3~10_combout\,
	datad => \COMP_CCD|Add0~2_combout\,
	combout => \COMP_CCD|count_div~1_combout\);

-- Location: FF_X19_Y12_N5
\COMP_CCD|count_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_div~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(1));

-- Location: LCCOMB_X18_Y12_N26
\COMP_CCD|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~0_combout\ = (!\COMP_CCD|count_div\(1) & (\COMP_CCD|count_div\(2) & (\COMP_CCD|count_div\(0) & !\COMP_CCD|count_div\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(1),
	datab => \COMP_CCD|count_div\(2),
	datac => \COMP_CCD|count_div\(0),
	datad => \COMP_CCD|count_div\(3),
	combout => \COMP_CCD|Equal3~0_combout\);

-- Location: LCCOMB_X18_Y12_N20
\COMP_CCD|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~3_combout\ = (!\COMP_CCD|count_div\(14) & (!\COMP_CCD|count_div\(12) & (!\COMP_CCD|count_div\(15) & !\COMP_CCD|count_div\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(14),
	datab => \COMP_CCD|count_div\(12),
	datac => \COMP_CCD|count_div\(15),
	datad => \COMP_CCD|count_div\(13),
	combout => \COMP_CCD|Equal3~3_combout\);

-- Location: LCCOMB_X18_Y12_N14
\COMP_CCD|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~2_combout\ = (!\COMP_CCD|count_div\(9) & (!\COMP_CCD|count_div\(8) & (!\COMP_CCD|count_div\(10) & !\COMP_CCD|count_div\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(9),
	datab => \COMP_CCD|count_div\(8),
	datac => \COMP_CCD|count_div\(10),
	datad => \COMP_CCD|count_div\(11),
	combout => \COMP_CCD|Equal3~2_combout\);

-- Location: LCCOMB_X18_Y12_N28
\COMP_CCD|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~1_combout\ = (!\COMP_CCD|count_div\(4) & (!\COMP_CCD|count_div\(5) & (!\COMP_CCD|count_div\(6) & !\COMP_CCD|count_div\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(4),
	datab => \COMP_CCD|count_div\(5),
	datac => \COMP_CCD|count_div\(6),
	datad => \COMP_CCD|count_div\(7),
	combout => \COMP_CCD|Equal3~1_combout\);

-- Location: LCCOMB_X18_Y12_N18
\COMP_CCD|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~4_combout\ = (\COMP_CCD|Equal3~0_combout\ & (\COMP_CCD|Equal3~3_combout\ & (\COMP_CCD|Equal3~2_combout\ & \COMP_CCD|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal3~0_combout\,
	datab => \COMP_CCD|Equal3~3_combout\,
	datac => \COMP_CCD|Equal3~2_combout\,
	datad => \COMP_CCD|Equal3~1_combout\,
	combout => \COMP_CCD|Equal3~4_combout\);

-- Location: LCCOMB_X18_Y11_N0
\COMP_CCD|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~5_combout\ = (!\COMP_CCD|count_div\(17) & (!\COMP_CCD|count_div\(16) & (!\COMP_CCD|count_div\(18) & !\COMP_CCD|count_div\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(17),
	datab => \COMP_CCD|count_div\(16),
	datac => \COMP_CCD|count_div\(18),
	datad => \COMP_CCD|count_div\(19),
	combout => \COMP_CCD|Equal3~5_combout\);

-- Location: LCCOMB_X18_Y12_N12
\COMP_CCD|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~6_combout\ = (!\COMP_CCD|count_div\(21) & !\COMP_CCD|count_div\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_div\(21),
	datad => \COMP_CCD|count_div\(20),
	combout => \COMP_CCD|Equal3~6_combout\);

-- Location: LCCOMB_X18_Y12_N30
\COMP_CCD|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~7_combout\ = (!\COMP_CCD|count_div\(23) & (\COMP_CCD|Equal3~5_combout\ & (!\COMP_CCD|count_div\(22) & \COMP_CCD|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(23),
	datab => \COMP_CCD|Equal3~5_combout\,
	datac => \COMP_CCD|count_div\(22),
	datad => \COMP_CCD|Equal3~6_combout\,
	combout => \COMP_CCD|Equal3~7_combout\);

-- Location: LCCOMB_X18_Y12_N24
\COMP_CCD|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~8_combout\ = (!\COMP_CCD|count_div\(26) & (!\COMP_CCD|count_div\(27) & (!\COMP_CCD|count_div\(24) & !\COMP_CCD|count_div\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(26),
	datab => \COMP_CCD|count_div\(27),
	datac => \COMP_CCD|count_div\(24),
	datad => \COMP_CCD|count_div\(25),
	combout => \COMP_CCD|Equal3~8_combout\);

-- Location: LCCOMB_X18_Y12_N8
\COMP_CCD|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal3~10_combout\ = (\COMP_CCD|Equal3~9_combout\ & (\COMP_CCD|Equal3~4_combout\ & (\COMP_CCD|Equal3~7_combout\ & \COMP_CCD|Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal3~9_combout\,
	datab => \COMP_CCD|Equal3~4_combout\,
	datac => \COMP_CCD|Equal3~7_combout\,
	datad => \COMP_CCD|Equal3~8_combout\,
	combout => \COMP_CCD|Equal3~10_combout\);

-- Location: LCCOMB_X19_Y12_N4
\COMP_CCD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~4_combout\ = (\COMP_CCD|count_div\(2) & (\COMP_CCD|Add0~3\ $ (GND))) # (!\COMP_CCD|count_div\(2) & (!\COMP_CCD|Add0~3\ & VCC))
-- \COMP_CCD|Add0~5\ = CARRY((\COMP_CCD|count_div\(2) & !\COMP_CCD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(2),
	datad => VCC,
	cin => \COMP_CCD|Add0~3\,
	combout => \COMP_CCD|Add0~4_combout\,
	cout => \COMP_CCD|Add0~5\);

-- Location: LCCOMB_X18_Y12_N16
\COMP_CCD|count_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_div~0_combout\ = (!\COMP_CCD|Equal3~10_combout\ & \COMP_CCD|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal3~10_combout\,
	datad => \COMP_CCD|Add0~4_combout\,
	combout => \COMP_CCD|count_div~0_combout\);

-- Location: FF_X18_Y12_N17
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

-- Location: LCCOMB_X19_Y12_N6
\COMP_CCD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~6_combout\ = (\COMP_CCD|count_div\(3) & (!\COMP_CCD|Add0~5\)) # (!\COMP_CCD|count_div\(3) & ((\COMP_CCD|Add0~5\) # (GND)))
-- \COMP_CCD|Add0~7\ = CARRY((!\COMP_CCD|Add0~5\) # (!\COMP_CCD|count_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(3),
	datad => VCC,
	cin => \COMP_CCD|Add0~5\,
	combout => \COMP_CCD|Add0~6_combout\,
	cout => \COMP_CCD|Add0~7\);

-- Location: FF_X19_Y12_N7
\COMP_CCD|count_div[3]\ : dffeas
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
	q => \COMP_CCD|count_div\(3));

-- Location: LCCOMB_X19_Y12_N8
\COMP_CCD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~8_combout\ = (\COMP_CCD|count_div\(4) & (\COMP_CCD|Add0~7\ $ (GND))) # (!\COMP_CCD|count_div\(4) & (!\COMP_CCD|Add0~7\ & VCC))
-- \COMP_CCD|Add0~9\ = CARRY((\COMP_CCD|count_div\(4) & !\COMP_CCD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(4),
	datad => VCC,
	cin => \COMP_CCD|Add0~7\,
	combout => \COMP_CCD|Add0~8_combout\,
	cout => \COMP_CCD|Add0~9\);

-- Location: FF_X19_Y12_N9
\COMP_CCD|count_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(4));

-- Location: LCCOMB_X19_Y12_N10
\COMP_CCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~10_combout\ = (\COMP_CCD|count_div\(5) & (!\COMP_CCD|Add0~9\)) # (!\COMP_CCD|count_div\(5) & ((\COMP_CCD|Add0~9\) # (GND)))
-- \COMP_CCD|Add0~11\ = CARRY((!\COMP_CCD|Add0~9\) # (!\COMP_CCD|count_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(5),
	datad => VCC,
	cin => \COMP_CCD|Add0~9\,
	combout => \COMP_CCD|Add0~10_combout\,
	cout => \COMP_CCD|Add0~11\);

-- Location: FF_X19_Y12_N11
\COMP_CCD|count_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(5));

-- Location: LCCOMB_X19_Y12_N12
\COMP_CCD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~12_combout\ = (\COMP_CCD|count_div\(6) & (\COMP_CCD|Add0~11\ $ (GND))) # (!\COMP_CCD|count_div\(6) & (!\COMP_CCD|Add0~11\ & VCC))
-- \COMP_CCD|Add0~13\ = CARRY((\COMP_CCD|count_div\(6) & !\COMP_CCD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(6),
	datad => VCC,
	cin => \COMP_CCD|Add0~11\,
	combout => \COMP_CCD|Add0~12_combout\,
	cout => \COMP_CCD|Add0~13\);

-- Location: FF_X19_Y12_N13
\COMP_CCD|count_div[6]\ : dffeas
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
	q => \COMP_CCD|count_div\(6));

-- Location: LCCOMB_X19_Y12_N14
\COMP_CCD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~14_combout\ = (\COMP_CCD|count_div\(7) & (!\COMP_CCD|Add0~13\)) # (!\COMP_CCD|count_div\(7) & ((\COMP_CCD|Add0~13\) # (GND)))
-- \COMP_CCD|Add0~15\ = CARRY((!\COMP_CCD|Add0~13\) # (!\COMP_CCD|count_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(7),
	datad => VCC,
	cin => \COMP_CCD|Add0~13\,
	combout => \COMP_CCD|Add0~14_combout\,
	cout => \COMP_CCD|Add0~15\);

-- Location: FF_X19_Y12_N15
\COMP_CCD|count_div[7]\ : dffeas
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
	q => \COMP_CCD|count_div\(7));

-- Location: LCCOMB_X19_Y12_N16
\COMP_CCD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~16_combout\ = (\COMP_CCD|count_div\(8) & (\COMP_CCD|Add0~15\ $ (GND))) # (!\COMP_CCD|count_div\(8) & (!\COMP_CCD|Add0~15\ & VCC))
-- \COMP_CCD|Add0~17\ = CARRY((\COMP_CCD|count_div\(8) & !\COMP_CCD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(8),
	datad => VCC,
	cin => \COMP_CCD|Add0~15\,
	combout => \COMP_CCD|Add0~16_combout\,
	cout => \COMP_CCD|Add0~17\);

-- Location: FF_X19_Y12_N17
\COMP_CCD|count_div[8]\ : dffeas
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
	q => \COMP_CCD|count_div\(8));

-- Location: LCCOMB_X19_Y12_N18
\COMP_CCD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~18_combout\ = (\COMP_CCD|count_div\(9) & (!\COMP_CCD|Add0~17\)) # (!\COMP_CCD|count_div\(9) & ((\COMP_CCD|Add0~17\) # (GND)))
-- \COMP_CCD|Add0~19\ = CARRY((!\COMP_CCD|Add0~17\) # (!\COMP_CCD|count_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(9),
	datad => VCC,
	cin => \COMP_CCD|Add0~17\,
	combout => \COMP_CCD|Add0~18_combout\,
	cout => \COMP_CCD|Add0~19\);

-- Location: FF_X19_Y12_N19
\COMP_CCD|count_div[9]\ : dffeas
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
	q => \COMP_CCD|count_div\(9));

-- Location: LCCOMB_X19_Y12_N20
\COMP_CCD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~20_combout\ = (\COMP_CCD|count_div\(10) & (\COMP_CCD|Add0~19\ $ (GND))) # (!\COMP_CCD|count_div\(10) & (!\COMP_CCD|Add0~19\ & VCC))
-- \COMP_CCD|Add0~21\ = CARRY((\COMP_CCD|count_div\(10) & !\COMP_CCD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(10),
	datad => VCC,
	cin => \COMP_CCD|Add0~19\,
	combout => \COMP_CCD|Add0~20_combout\,
	cout => \COMP_CCD|Add0~21\);

-- Location: FF_X19_Y12_N21
\COMP_CCD|count_div[10]\ : dffeas
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
	q => \COMP_CCD|count_div\(10));

-- Location: LCCOMB_X19_Y12_N22
\COMP_CCD|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~22_combout\ = (\COMP_CCD|count_div\(11) & (!\COMP_CCD|Add0~21\)) # (!\COMP_CCD|count_div\(11) & ((\COMP_CCD|Add0~21\) # (GND)))
-- \COMP_CCD|Add0~23\ = CARRY((!\COMP_CCD|Add0~21\) # (!\COMP_CCD|count_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(11),
	datad => VCC,
	cin => \COMP_CCD|Add0~21\,
	combout => \COMP_CCD|Add0~22_combout\,
	cout => \COMP_CCD|Add0~23\);

-- Location: FF_X19_Y12_N23
\COMP_CCD|count_div[11]\ : dffeas
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
	q => \COMP_CCD|count_div\(11));

-- Location: LCCOMB_X19_Y12_N24
\COMP_CCD|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~24_combout\ = (\COMP_CCD|count_div\(12) & (\COMP_CCD|Add0~23\ $ (GND))) # (!\COMP_CCD|count_div\(12) & (!\COMP_CCD|Add0~23\ & VCC))
-- \COMP_CCD|Add0~25\ = CARRY((\COMP_CCD|count_div\(12) & !\COMP_CCD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(12),
	datad => VCC,
	cin => \COMP_CCD|Add0~23\,
	combout => \COMP_CCD|Add0~24_combout\,
	cout => \COMP_CCD|Add0~25\);

-- Location: FF_X19_Y12_N25
\COMP_CCD|count_div[12]\ : dffeas
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
	q => \COMP_CCD|count_div\(12));

-- Location: LCCOMB_X19_Y12_N26
\COMP_CCD|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~26_combout\ = (\COMP_CCD|count_div\(13) & (!\COMP_CCD|Add0~25\)) # (!\COMP_CCD|count_div\(13) & ((\COMP_CCD|Add0~25\) # (GND)))
-- \COMP_CCD|Add0~27\ = CARRY((!\COMP_CCD|Add0~25\) # (!\COMP_CCD|count_div\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(13),
	datad => VCC,
	cin => \COMP_CCD|Add0~25\,
	combout => \COMP_CCD|Add0~26_combout\,
	cout => \COMP_CCD|Add0~27\);

-- Location: FF_X19_Y12_N27
\COMP_CCD|count_div[13]\ : dffeas
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
	q => \COMP_CCD|count_div\(13));

-- Location: LCCOMB_X19_Y12_N28
\COMP_CCD|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~28_combout\ = (\COMP_CCD|count_div\(14) & (\COMP_CCD|Add0~27\ $ (GND))) # (!\COMP_CCD|count_div\(14) & (!\COMP_CCD|Add0~27\ & VCC))
-- \COMP_CCD|Add0~29\ = CARRY((\COMP_CCD|count_div\(14) & !\COMP_CCD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(14),
	datad => VCC,
	cin => \COMP_CCD|Add0~27\,
	combout => \COMP_CCD|Add0~28_combout\,
	cout => \COMP_CCD|Add0~29\);

-- Location: FF_X19_Y12_N29
\COMP_CCD|count_div[14]\ : dffeas
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
	q => \COMP_CCD|count_div\(14));

-- Location: LCCOMB_X19_Y12_N30
\COMP_CCD|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~30_combout\ = (\COMP_CCD|count_div\(15) & (!\COMP_CCD|Add0~29\)) # (!\COMP_CCD|count_div\(15) & ((\COMP_CCD|Add0~29\) # (GND)))
-- \COMP_CCD|Add0~31\ = CARRY((!\COMP_CCD|Add0~29\) # (!\COMP_CCD|count_div\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(15),
	datad => VCC,
	cin => \COMP_CCD|Add0~29\,
	combout => \COMP_CCD|Add0~30_combout\,
	cout => \COMP_CCD|Add0~31\);

-- Location: FF_X19_Y12_N31
\COMP_CCD|count_div[15]\ : dffeas
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
	q => \COMP_CCD|count_div\(15));

-- Location: LCCOMB_X19_Y11_N0
\COMP_CCD|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~32_combout\ = (\COMP_CCD|count_div\(16) & (\COMP_CCD|Add0~31\ $ (GND))) # (!\COMP_CCD|count_div\(16) & (!\COMP_CCD|Add0~31\ & VCC))
-- \COMP_CCD|Add0~33\ = CARRY((\COMP_CCD|count_div\(16) & !\COMP_CCD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(16),
	datad => VCC,
	cin => \COMP_CCD|Add0~31\,
	combout => \COMP_CCD|Add0~32_combout\,
	cout => \COMP_CCD|Add0~33\);

-- Location: FF_X19_Y11_N1
\COMP_CCD|count_div[16]\ : dffeas
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
	q => \COMP_CCD|count_div\(16));

-- Location: LCCOMB_X19_Y11_N2
\COMP_CCD|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~34_combout\ = (\COMP_CCD|count_div\(17) & (!\COMP_CCD|Add0~33\)) # (!\COMP_CCD|count_div\(17) & ((\COMP_CCD|Add0~33\) # (GND)))
-- \COMP_CCD|Add0~35\ = CARRY((!\COMP_CCD|Add0~33\) # (!\COMP_CCD|count_div\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(17),
	datad => VCC,
	cin => \COMP_CCD|Add0~33\,
	combout => \COMP_CCD|Add0~34_combout\,
	cout => \COMP_CCD|Add0~35\);

-- Location: FF_X19_Y11_N3
\COMP_CCD|count_div[17]\ : dffeas
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
	q => \COMP_CCD|count_div\(17));

-- Location: LCCOMB_X19_Y11_N4
\COMP_CCD|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~36_combout\ = (\COMP_CCD|count_div\(18) & (\COMP_CCD|Add0~35\ $ (GND))) # (!\COMP_CCD|count_div\(18) & (!\COMP_CCD|Add0~35\ & VCC))
-- \COMP_CCD|Add0~37\ = CARRY((\COMP_CCD|count_div\(18) & !\COMP_CCD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(18),
	datad => VCC,
	cin => \COMP_CCD|Add0~35\,
	combout => \COMP_CCD|Add0~36_combout\,
	cout => \COMP_CCD|Add0~37\);

-- Location: FF_X19_Y11_N5
\COMP_CCD|count_div[18]\ : dffeas
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
	q => \COMP_CCD|count_div\(18));

-- Location: LCCOMB_X19_Y11_N6
\COMP_CCD|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~38_combout\ = (\COMP_CCD|count_div\(19) & (!\COMP_CCD|Add0~37\)) # (!\COMP_CCD|count_div\(19) & ((\COMP_CCD|Add0~37\) # (GND)))
-- \COMP_CCD|Add0~39\ = CARRY((!\COMP_CCD|Add0~37\) # (!\COMP_CCD|count_div\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(19),
	datad => VCC,
	cin => \COMP_CCD|Add0~37\,
	combout => \COMP_CCD|Add0~38_combout\,
	cout => \COMP_CCD|Add0~39\);

-- Location: FF_X19_Y11_N7
\COMP_CCD|count_div[19]\ : dffeas
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
	q => \COMP_CCD|count_div\(19));

-- Location: LCCOMB_X19_Y11_N8
\COMP_CCD|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~40_combout\ = (\COMP_CCD|count_div\(20) & (\COMP_CCD|Add0~39\ $ (GND))) # (!\COMP_CCD|count_div\(20) & (!\COMP_CCD|Add0~39\ & VCC))
-- \COMP_CCD|Add0~41\ = CARRY((\COMP_CCD|count_div\(20) & !\COMP_CCD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(20),
	datad => VCC,
	cin => \COMP_CCD|Add0~39\,
	combout => \COMP_CCD|Add0~40_combout\,
	cout => \COMP_CCD|Add0~41\);

-- Location: FF_X19_Y11_N9
\COMP_CCD|count_div[20]\ : dffeas
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
	q => \COMP_CCD|count_div\(20));

-- Location: LCCOMB_X19_Y11_N10
\COMP_CCD|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~42_combout\ = (\COMP_CCD|count_div\(21) & (!\COMP_CCD|Add0~41\)) # (!\COMP_CCD|count_div\(21) & ((\COMP_CCD|Add0~41\) # (GND)))
-- \COMP_CCD|Add0~43\ = CARRY((!\COMP_CCD|Add0~41\) # (!\COMP_CCD|count_div\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(21),
	datad => VCC,
	cin => \COMP_CCD|Add0~41\,
	combout => \COMP_CCD|Add0~42_combout\,
	cout => \COMP_CCD|Add0~43\);

-- Location: FF_X19_Y11_N11
\COMP_CCD|count_div[21]\ : dffeas
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
	q => \COMP_CCD|count_div\(21));

-- Location: LCCOMB_X19_Y11_N12
\COMP_CCD|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~44_combout\ = (\COMP_CCD|count_div\(22) & (\COMP_CCD|Add0~43\ $ (GND))) # (!\COMP_CCD|count_div\(22) & (!\COMP_CCD|Add0~43\ & VCC))
-- \COMP_CCD|Add0~45\ = CARRY((\COMP_CCD|count_div\(22) & !\COMP_CCD|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(22),
	datad => VCC,
	cin => \COMP_CCD|Add0~43\,
	combout => \COMP_CCD|Add0~44_combout\,
	cout => \COMP_CCD|Add0~45\);

-- Location: FF_X19_Y11_N13
\COMP_CCD|count_div[22]\ : dffeas
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
	q => \COMP_CCD|count_div\(22));

-- Location: LCCOMB_X19_Y11_N14
\COMP_CCD|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~46_combout\ = (\COMP_CCD|count_div\(23) & (!\COMP_CCD|Add0~45\)) # (!\COMP_CCD|count_div\(23) & ((\COMP_CCD|Add0~45\) # (GND)))
-- \COMP_CCD|Add0~47\ = CARRY((!\COMP_CCD|Add0~45\) # (!\COMP_CCD|count_div\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(23),
	datad => VCC,
	cin => \COMP_CCD|Add0~45\,
	combout => \COMP_CCD|Add0~46_combout\,
	cout => \COMP_CCD|Add0~47\);

-- Location: FF_X19_Y11_N15
\COMP_CCD|count_div[23]\ : dffeas
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
	q => \COMP_CCD|count_div\(23));

-- Location: LCCOMB_X19_Y11_N16
\COMP_CCD|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~48_combout\ = (\COMP_CCD|count_div\(24) & (\COMP_CCD|Add0~47\ $ (GND))) # (!\COMP_CCD|count_div\(24) & (!\COMP_CCD|Add0~47\ & VCC))
-- \COMP_CCD|Add0~49\ = CARRY((\COMP_CCD|count_div\(24) & !\COMP_CCD|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(24),
	datad => VCC,
	cin => \COMP_CCD|Add0~47\,
	combout => \COMP_CCD|Add0~48_combout\,
	cout => \COMP_CCD|Add0~49\);

-- Location: FF_X19_Y11_N17
\COMP_CCD|count_div[24]\ : dffeas
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
	q => \COMP_CCD|count_div\(24));

-- Location: LCCOMB_X19_Y11_N18
\COMP_CCD|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~50_combout\ = (\COMP_CCD|count_div\(25) & (!\COMP_CCD|Add0~49\)) # (!\COMP_CCD|count_div\(25) & ((\COMP_CCD|Add0~49\) # (GND)))
-- \COMP_CCD|Add0~51\ = CARRY((!\COMP_CCD|Add0~49\) # (!\COMP_CCD|count_div\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(25),
	datad => VCC,
	cin => \COMP_CCD|Add0~49\,
	combout => \COMP_CCD|Add0~50_combout\,
	cout => \COMP_CCD|Add0~51\);

-- Location: FF_X19_Y11_N19
\COMP_CCD|count_div[25]\ : dffeas
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
	q => \COMP_CCD|count_div\(25));

-- Location: LCCOMB_X19_Y11_N20
\COMP_CCD|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~52_combout\ = (\COMP_CCD|count_div\(26) & (\COMP_CCD|Add0~51\ $ (GND))) # (!\COMP_CCD|count_div\(26) & (!\COMP_CCD|Add0~51\ & VCC))
-- \COMP_CCD|Add0~53\ = CARRY((\COMP_CCD|count_div\(26) & !\COMP_CCD|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(26),
	datad => VCC,
	cin => \COMP_CCD|Add0~51\,
	combout => \COMP_CCD|Add0~52_combout\,
	cout => \COMP_CCD|Add0~53\);

-- Location: FF_X19_Y11_N21
\COMP_CCD|count_div[26]\ : dffeas
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
	q => \COMP_CCD|count_div\(26));

-- Location: LCCOMB_X19_Y11_N22
\COMP_CCD|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~54_combout\ = (\COMP_CCD|count_div\(27) & (!\COMP_CCD|Add0~53\)) # (!\COMP_CCD|count_div\(27) & ((\COMP_CCD|Add0~53\) # (GND)))
-- \COMP_CCD|Add0~55\ = CARRY((!\COMP_CCD|Add0~53\) # (!\COMP_CCD|count_div\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(27),
	datad => VCC,
	cin => \COMP_CCD|Add0~53\,
	combout => \COMP_CCD|Add0~54_combout\,
	cout => \COMP_CCD|Add0~55\);

-- Location: FF_X19_Y11_N23
\COMP_CCD|count_div[27]\ : dffeas
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
	q => \COMP_CCD|count_div\(27));

-- Location: LCCOMB_X19_Y11_N24
\COMP_CCD|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~56_combout\ = (\COMP_CCD|count_div\(28) & (\COMP_CCD|Add0~55\ $ (GND))) # (!\COMP_CCD|count_div\(28) & (!\COMP_CCD|Add0~55\ & VCC))
-- \COMP_CCD|Add0~57\ = CARRY((\COMP_CCD|count_div\(28) & !\COMP_CCD|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(28),
	datad => VCC,
	cin => \COMP_CCD|Add0~55\,
	combout => \COMP_CCD|Add0~56_combout\,
	cout => \COMP_CCD|Add0~57\);

-- Location: FF_X19_Y11_N25
\COMP_CCD|count_div[28]\ : dffeas
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
	q => \COMP_CCD|count_div\(28));

-- Location: LCCOMB_X19_Y11_N26
\COMP_CCD|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~58_combout\ = (\COMP_CCD|count_div\(29) & (!\COMP_CCD|Add0~57\)) # (!\COMP_CCD|count_div\(29) & ((\COMP_CCD|Add0~57\) # (GND)))
-- \COMP_CCD|Add0~59\ = CARRY((!\COMP_CCD|Add0~57\) # (!\COMP_CCD|count_div\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(29),
	datad => VCC,
	cin => \COMP_CCD|Add0~57\,
	combout => \COMP_CCD|Add0~58_combout\,
	cout => \COMP_CCD|Add0~59\);

-- Location: FF_X19_Y11_N27
\COMP_CCD|count_div[29]\ : dffeas
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
	q => \COMP_CCD|count_div\(29));

-- Location: LCCOMB_X19_Y11_N28
\COMP_CCD|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~60_combout\ = (\COMP_CCD|count_div\(30) & (\COMP_CCD|Add0~59\ $ (GND))) # (!\COMP_CCD|count_div\(30) & (!\COMP_CCD|Add0~59\ & VCC))
-- \COMP_CCD|Add0~61\ = CARRY((\COMP_CCD|count_div\(30) & !\COMP_CCD|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(30),
	datad => VCC,
	cin => \COMP_CCD|Add0~59\,
	combout => \COMP_CCD|Add0~60_combout\,
	cout => \COMP_CCD|Add0~61\);

-- Location: FF_X19_Y11_N29
\COMP_CCD|count_div[30]\ : dffeas
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
	q => \COMP_CCD|count_div\(30));

-- Location: LCCOMB_X19_Y11_N30
\COMP_CCD|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~62_combout\ = \COMP_CCD|count_div\(31) $ (\COMP_CCD|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(31),
	cin => \COMP_CCD|Add0~61\,
	combout => \COMP_CCD|Add0~62_combout\);

-- Location: LCCOMB_X18_Y12_N10
\COMP_CCD|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~0_combout\ = (!\COMP_CCD|Add0~2_combout\ & (!\COMP_CCD|Equal3~10_combout\ & \COMP_CCD|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~2_combout\,
	datac => \COMP_CCD|Equal3~10_combout\,
	datad => \COMP_CCD|Add0~4_combout\,
	combout => \COMP_CCD|Equal4~0_combout\);

-- Location: LCCOMB_X18_Y11_N16
\COMP_CCD|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~6_combout\ = (!\COMP_CCD|Add0~38_combout\ & (!\COMP_CCD|Add0~40_combout\ & (!\COMP_CCD|Add0~42_combout\ & !\COMP_CCD|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~38_combout\,
	datab => \COMP_CCD|Add0~40_combout\,
	datac => \COMP_CCD|Add0~42_combout\,
	datad => \COMP_CCD|Add0~36_combout\,
	combout => \COMP_CCD|Equal4~6_combout\);

-- Location: LCCOMB_X22_Y12_N4
\COMP_CCD|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~1_combout\ = (!\COMP_CCD|Add0~8_combout\ & (\COMP_CCD|Add0~0_combout\ & (!\COMP_CCD|Add0~6_combout\ & !\COMP_CCD|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~8_combout\,
	datab => \COMP_CCD|Add0~0_combout\,
	datac => \COMP_CCD|Add0~6_combout\,
	datad => \COMP_CCD|Add0~10_combout\,
	combout => \COMP_CCD|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y12_N14
\COMP_CCD|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~2_combout\ = (!\COMP_CCD|Add0~12_combout\ & (!\COMP_CCD|Add0~14_combout\ & (!\COMP_CCD|Add0~18_combout\ & !\COMP_CCD|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~12_combout\,
	datab => \COMP_CCD|Add0~14_combout\,
	datac => \COMP_CCD|Add0~18_combout\,
	datad => \COMP_CCD|Add0~16_combout\,
	combout => \COMP_CCD|Equal4~2_combout\);

-- Location: LCCOMB_X22_Y12_N28
\COMP_CCD|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~3_combout\ = (!\COMP_CCD|Add0~24_combout\ & (!\COMP_CCD|Add0~20_combout\ & (!\COMP_CCD|Add0~26_combout\ & !\COMP_CCD|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~24_combout\,
	datab => \COMP_CCD|Add0~20_combout\,
	datac => \COMP_CCD|Add0~26_combout\,
	datad => \COMP_CCD|Add0~22_combout\,
	combout => \COMP_CCD|Equal4~3_combout\);

-- Location: LCCOMB_X18_Y11_N14
\COMP_CCD|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~4_combout\ = (!\COMP_CCD|Add0~34_combout\ & (!\COMP_CCD|Add0~28_combout\ & (!\COMP_CCD|Add0~32_combout\ & !\COMP_CCD|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~34_combout\,
	datab => \COMP_CCD|Add0~28_combout\,
	datac => \COMP_CCD|Add0~32_combout\,
	datad => \COMP_CCD|Add0~30_combout\,
	combout => \COMP_CCD|Equal4~4_combout\);

-- Location: LCCOMB_X23_Y11_N6
\COMP_CCD|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~5_combout\ = (\COMP_CCD|Equal4~1_combout\ & (\COMP_CCD|Equal4~2_combout\ & (\COMP_CCD|Equal4~3_combout\ & \COMP_CCD|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal4~1_combout\,
	datab => \COMP_CCD|Equal4~2_combout\,
	datac => \COMP_CCD|Equal4~3_combout\,
	datad => \COMP_CCD|Equal4~4_combout\,
	combout => \COMP_CCD|Equal4~5_combout\);

-- Location: LCCOMB_X23_Y11_N16
\COMP_CCD|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~7_combout\ = (!\COMP_CCD|Add0~44_combout\ & (!\COMP_CCD|Add0~46_combout\ & (\COMP_CCD|Equal4~6_combout\ & \COMP_CCD|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~44_combout\,
	datab => \COMP_CCD|Add0~46_combout\,
	datac => \COMP_CCD|Equal4~6_combout\,
	datad => \COMP_CCD|Equal4~5_combout\,
	combout => \COMP_CCD|Equal4~7_combout\);

-- Location: LCCOMB_X23_Y11_N10
\COMP_CCD|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~8_combout\ = (\COMP_CCD|Equal4~0_combout\ & (!\COMP_CCD|Add0~48_combout\ & (!\COMP_CCD|Add0~50_combout\ & \COMP_CCD|Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal4~0_combout\,
	datab => \COMP_CCD|Add0~48_combout\,
	datac => \COMP_CCD|Add0~50_combout\,
	datad => \COMP_CCD|Equal4~7_combout\,
	combout => \COMP_CCD|Equal4~8_combout\);

-- Location: LCCOMB_X23_Y11_N28
\COMP_CCD|Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~9_combout\ = (!\COMP_CCD|Add0~54_combout\ & (!\COMP_CCD|Add0~56_combout\ & (!\COMP_CCD|Add0~52_combout\ & \COMP_CCD|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~54_combout\,
	datab => \COMP_CCD|Add0~56_combout\,
	datac => \COMP_CCD|Add0~52_combout\,
	datad => \COMP_CCD|Equal4~8_combout\,
	combout => \COMP_CCD|Equal4~9_combout\);

-- Location: LCCOMB_X23_Y11_N18
\COMP_CCD|Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~10_combout\ = (!\COMP_CCD|Add0~62_combout\ & (!\COMP_CCD|Add0~60_combout\ & (!\COMP_CCD|Add0~58_combout\ & \COMP_CCD|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~62_combout\,
	datab => \COMP_CCD|Add0~60_combout\,
	datac => \COMP_CCD|Add0~58_combout\,
	datad => \COMP_CCD|Equal4~9_combout\,
	combout => \COMP_CCD|Equal4~10_combout\);

-- Location: LCCOMB_X23_Y11_N24
\COMP_CCD|count_line[31]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line[31]~65_combout\ = (!\COMP_CCD|process_1~19_combout\ & (\COMP_CCD|count_line[31]~64_combout\ & \COMP_CCD|Equal4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~19_combout\,
	datac => \COMP_CCD|count_line[31]~64_combout\,
	datad => \COMP_CCD|Equal4~10_combout\,
	combout => \COMP_CCD|count_line[31]~65_combout\);

-- Location: FF_X24_Y12_N9
\COMP_CCD|count_line[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~72_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(0));

-- Location: LCCOMB_X24_Y12_N2
\COMP_CCD|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~2_combout\ = (\COMP_CCD|count_line\(1) & (!\COMP_CCD|Add2~1\)) # (!\COMP_CCD|count_line\(1) & ((\COMP_CCD|Add2~1\) # (GND)))
-- \COMP_CCD|Add2~3\ = CARRY((!\COMP_CCD|Add2~1\) # (!\COMP_CCD|count_line\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(1),
	datad => VCC,
	cin => \COMP_CCD|Add2~1\,
	combout => \COMP_CCD|Add2~2_combout\,
	cout => \COMP_CCD|Add2~3\);

-- Location: LCCOMB_X23_Y12_N26
\COMP_CCD|count_line~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~73_combout\ = (\COMP_CCD|Add2~2_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~2_combout\,
	combout => \COMP_CCD|count_line~73_combout\);

-- Location: FF_X24_Y12_N19
\COMP_CCD|count_line[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~73_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(1));

-- Location: LCCOMB_X24_Y12_N4
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

-- Location: LCCOMB_X22_Y12_N16
\COMP_CCD|count_line~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~71_combout\ = (\COMP_CCD|Add2~4_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \pc_trig_reg~q\,
	datac => \COMP_CCD|Add2~4_combout\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~71_combout\);

-- Location: FF_X23_Y12_N17
\COMP_CCD|count_line[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~71_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(2));

-- Location: LCCOMB_X24_Y12_N6
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

-- Location: LCCOMB_X25_Y12_N28
\COMP_CCD|count_line~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~69_combout\ = (\COMP_CCD|Add2~6_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|Add2~6_combout\,
	datad => \pc_trig_reg~q\,
	combout => \COMP_CCD|count_line~69_combout\);

-- Location: FF_X23_Y12_N7
\COMP_CCD|count_line[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~69_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(3));

-- Location: LCCOMB_X24_Y12_N8
\COMP_CCD|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~8_combout\ = (\COMP_CCD|count_line\(4) & (\COMP_CCD|Add2~7\ $ (GND))) # (!\COMP_CCD|count_line\(4) & (!\COMP_CCD|Add2~7\ & VCC))
-- \COMP_CCD|Add2~9\ = CARRY((\COMP_CCD|count_line\(4) & !\COMP_CCD|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(4),
	datad => VCC,
	cin => \COMP_CCD|Add2~7\,
	combout => \COMP_CCD|Add2~8_combout\,
	cout => \COMP_CCD|Add2~9\);

-- Location: LCCOMB_X25_Y12_N18
\COMP_CCD|count_line~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~70_combout\ = (\COMP_CCD|Add2~8_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~8_combout\,
	combout => \COMP_CCD|count_line~70_combout\);

-- Location: FF_X24_Y12_N31
\COMP_CCD|count_line[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~70_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(4));

-- Location: LCCOMB_X24_Y12_N10
\COMP_CCD|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~10_combout\ = (\COMP_CCD|count_line\(5) & (!\COMP_CCD|Add2~9\)) # (!\COMP_CCD|count_line\(5) & ((\COMP_CCD|Add2~9\) # (GND)))
-- \COMP_CCD|Add2~11\ = CARRY((!\COMP_CCD|Add2~9\) # (!\COMP_CCD|count_line\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(5),
	datad => VCC,
	cin => \COMP_CCD|Add2~9\,
	combout => \COMP_CCD|Add2~10_combout\,
	cout => \COMP_CCD|Add2~11\);

-- Location: LCCOMB_X23_Y12_N4
\COMP_CCD|count_line~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~68_combout\ = (\COMP_CCD|Add2~10_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~10_combout\,
	combout => \COMP_CCD|count_line~68_combout\);

-- Location: FF_X23_Y12_N5
\COMP_CCD|count_line[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_line~68_combout\,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(5));

-- Location: LCCOMB_X24_Y12_N12
\COMP_CCD|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~12_combout\ = (\COMP_CCD|count_line\(6) & (\COMP_CCD|Add2~11\ $ (GND))) # (!\COMP_CCD|count_line\(6) & (!\COMP_CCD|Add2~11\ & VCC))
-- \COMP_CCD|Add2~13\ = CARRY((\COMP_CCD|count_line\(6) & !\COMP_CCD|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(6),
	datad => VCC,
	cin => \COMP_CCD|Add2~11\,
	combout => \COMP_CCD|Add2~12_combout\,
	cout => \COMP_CCD|Add2~13\);

-- Location: LCCOMB_X25_Y12_N10
\COMP_CCD|count_line~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~67_combout\ = (\COMP_CCD|Add2~12_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~12_combout\,
	combout => \COMP_CCD|count_line~67_combout\);

-- Location: FF_X24_Y12_N29
\COMP_CCD|count_line[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~67_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(6));

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: LCCOMB_X25_Y12_N30
\COMP_CCD|count_line~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~74_combout\ = (\COMP_CCD|Add2~14_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~14_combout\,
	combout => \COMP_CCD|count_line~74_combout\);

-- Location: FF_X24_Y12_N1
\COMP_CCD|count_line[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~74_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(7));

-- Location: LCCOMB_X24_Y12_N16
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

-- Location: LCCOMB_X22_Y12_N22
\COMP_CCD|count_line~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~75_combout\ = (\COMP_CCD|Add2~16_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~16_combout\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \pc_trig_reg~q\,
	combout => \COMP_CCD|count_line~75_combout\);

-- Location: FF_X24_Y12_N3
\COMP_CCD|count_line[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~75_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(8));

-- Location: LCCOMB_X24_Y12_N18
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

-- Location: LCCOMB_X25_Y12_N0
\COMP_CCD|count_line~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~76_combout\ = (\COMP_CCD|Add2~18_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|Add2~18_combout\,
	datac => \button~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~76_combout\);

-- Location: FF_X24_Y12_N5
\COMP_CCD|count_line[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~76_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(9));

-- Location: LCCOMB_X24_Y12_N20
\COMP_CCD|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~20_combout\ = (\COMP_CCD|count_line\(10) & (\COMP_CCD|Add2~19\ $ (GND))) # (!\COMP_CCD|count_line\(10) & (!\COMP_CCD|Add2~19\ & VCC))
-- \COMP_CCD|Add2~21\ = CARRY((\COMP_CCD|count_line\(10) & !\COMP_CCD|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(10),
	datad => VCC,
	cin => \COMP_CCD|Add2~19\,
	combout => \COMP_CCD|Add2~20_combout\,
	cout => \COMP_CCD|Add2~21\);

-- Location: LCCOMB_X25_Y12_N2
\COMP_CCD|count_line~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~77_combout\ = (\COMP_CCD|Add2~20_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|Add2~20_combout\,
	datac => \button~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~77_combout\);

-- Location: FF_X24_Y12_N7
\COMP_CCD|count_line[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~77_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(10));

-- Location: LCCOMB_X24_Y12_N22
\COMP_CCD|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~22_combout\ = (\COMP_CCD|count_line\(11) & (!\COMP_CCD|Add2~21\)) # (!\COMP_CCD|count_line\(11) & ((\COMP_CCD|Add2~21\) # (GND)))
-- \COMP_CCD|Add2~23\ = CARRY((!\COMP_CCD|Add2~21\) # (!\COMP_CCD|count_line\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(11),
	datad => VCC,
	cin => \COMP_CCD|Add2~21\,
	combout => \COMP_CCD|Add2~22_combout\,
	cout => \COMP_CCD|Add2~23\);

-- Location: LCCOMB_X25_Y12_N12
\COMP_CCD|count_line~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~78_combout\ = (\COMP_CCD|Add2~22_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~22_combout\,
	combout => \COMP_CCD|count_line~78_combout\);

-- Location: FF_X24_Y12_N11
\COMP_CCD|count_line[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~78_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(11));

-- Location: LCCOMB_X24_Y12_N24
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

-- Location: LCCOMB_X25_Y12_N14
\COMP_CCD|count_line~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~79_combout\ = (\COMP_CCD|Add2~24_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|Add2~24_combout\,
	datac => \button~input_o\,
	datad => \COMP_CCD|trigger_start_reg~q\,
	combout => \COMP_CCD|count_line~79_combout\);

-- Location: FF_X24_Y12_N13
\COMP_CCD|count_line[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~79_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(12));

-- Location: LCCOMB_X24_Y12_N26
\COMP_CCD|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~26_combout\ = (\COMP_CCD|count_line\(13) & (!\COMP_CCD|Add2~25\)) # (!\COMP_CCD|count_line\(13) & ((\COMP_CCD|Add2~25\) # (GND)))
-- \COMP_CCD|Add2~27\ = CARRY((!\COMP_CCD|Add2~25\) # (!\COMP_CCD|count_line\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(13),
	datad => VCC,
	cin => \COMP_CCD|Add2~25\,
	combout => \COMP_CCD|Add2~26_combout\,
	cout => \COMP_CCD|Add2~27\);

-- Location: LCCOMB_X25_Y12_N8
\COMP_CCD|count_line~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~80_combout\ = (\COMP_CCD|Add2~26_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~26_combout\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \pc_trig_reg~q\,
	combout => \COMP_CCD|count_line~80_combout\);

-- Location: FF_X24_Y12_N15
\COMP_CCD|count_line[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~80_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(13));

-- Location: LCCOMB_X24_Y12_N28
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

-- Location: LCCOMB_X22_Y12_N24
\COMP_CCD|count_line~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~81_combout\ = (\COMP_CCD|Add2~28_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \COMP_CCD|Add2~28_combout\,
	datac => \COMP_CCD|trigger_start_reg~q\,
	datad => \pc_trig_reg~q\,
	combout => \COMP_CCD|count_line~81_combout\);

-- Location: FF_X24_Y12_N17
\COMP_CCD|count_line[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~81_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(14));

-- Location: LCCOMB_X24_Y12_N30
\COMP_CCD|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~30_combout\ = (\COMP_CCD|count_line\(15) & (!\COMP_CCD|Add2~29\)) # (!\COMP_CCD|count_line\(15) & ((\COMP_CCD|Add2~29\) # (GND)))
-- \COMP_CCD|Add2~31\ = CARRY((!\COMP_CCD|Add2~29\) # (!\COMP_CCD|count_line\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(15),
	datad => VCC,
	cin => \COMP_CCD|Add2~29\,
	combout => \COMP_CCD|Add2~30_combout\,
	cout => \COMP_CCD|Add2~31\);

-- Location: LCCOMB_X25_Y12_N22
\COMP_CCD|count_line~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~82_combout\ = (\COMP_CCD|Add2~30_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~30_combout\,
	combout => \COMP_CCD|count_line~82_combout\);

-- Location: FF_X24_Y12_N21
\COMP_CCD|count_line[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~82_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(15));

-- Location: LCCOMB_X24_Y11_N0
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

-- Location: LCCOMB_X28_Y11_N20
\COMP_CCD|count_line~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~83_combout\ = (\COMP_CCD|Add2~32_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~32_combout\,
	combout => \COMP_CCD|count_line~83_combout\);

-- Location: FF_X24_Y11_N11
\COMP_CCD|count_line[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~83_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(16));

-- Location: LCCOMB_X24_Y11_N2
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

-- Location: LCCOMB_X28_Y11_N6
\COMP_CCD|count_line~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~84_combout\ = (\COMP_CCD|Add2~34_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \COMP_CCD|Add2~34_combout\,
	datac => \pc_trig_reg~q\,
	datad => \button~input_o\,
	combout => \COMP_CCD|count_line~84_combout\);

-- Location: FF_X24_Y11_N13
\COMP_CCD|count_line[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~84_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(17));

-- Location: LCCOMB_X24_Y11_N4
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

-- Location: LCCOMB_X28_Y11_N24
\COMP_CCD|count_line~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~85_combout\ = (\COMP_CCD|Add2~36_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~36_combout\,
	combout => \COMP_CCD|count_line~85_combout\);

-- Location: FF_X24_Y11_N15
\COMP_CCD|count_line[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~85_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(18));

-- Location: LCCOMB_X24_Y11_N6
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

-- Location: LCCOMB_X28_Y11_N10
\COMP_CCD|count_line~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~86_combout\ = (\COMP_CCD|Add2~38_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \COMP_CCD|Add2~38_combout\,
	datad => \button~input_o\,
	combout => \COMP_CCD|count_line~86_combout\);

-- Location: FF_X24_Y11_N5
\COMP_CCD|count_line[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~86_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(19));

-- Location: LCCOMB_X24_Y11_N8
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

-- Location: LCCOMB_X28_Y11_N4
\COMP_CCD|count_line~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~87_combout\ = (\COMP_CCD|Add2~40_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~40_combout\,
	combout => \COMP_CCD|count_line~87_combout\);

-- Location: FF_X24_Y11_N3
\COMP_CCD|count_line[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~87_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(20));

-- Location: LCCOMB_X24_Y11_N10
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

-- Location: LCCOMB_X28_Y11_N2
\COMP_CCD|count_line~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~88_combout\ = (\COMP_CCD|Add2~42_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~42_combout\,
	combout => \COMP_CCD|count_line~88_combout\);

-- Location: FF_X24_Y11_N17
\COMP_CCD|count_line[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~88_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(21));

-- Location: LCCOMB_X24_Y11_N12
\COMP_CCD|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~44_combout\ = (\COMP_CCD|count_line\(22) & (\COMP_CCD|Add2~43\ $ (GND))) # (!\COMP_CCD|count_line\(22) & (!\COMP_CCD|Add2~43\ & VCC))
-- \COMP_CCD|Add2~45\ = CARRY((\COMP_CCD|count_line\(22) & !\COMP_CCD|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(22),
	datad => VCC,
	cin => \COMP_CCD|Add2~43\,
	combout => \COMP_CCD|Add2~44_combout\,
	cout => \COMP_CCD|Add2~45\);

-- Location: LCCOMB_X28_Y11_N28
\COMP_CCD|count_line~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~89_combout\ = (\COMP_CCD|Add2~44_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \button~input_o\,
	datac => \pc_trig_reg~q\,
	datad => \COMP_CCD|Add2~44_combout\,
	combout => \COMP_CCD|count_line~89_combout\);

-- Location: FF_X24_Y11_N7
\COMP_CCD|count_line[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~89_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(22));

-- Location: LCCOMB_X24_Y11_N14
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

-- Location: LCCOMB_X24_Y11_N16
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

-- Location: LCCOMB_X25_Y11_N20
\COMP_CCD|count_line~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~91_combout\ = (\COMP_CCD|Add2~48_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|Add2~48_combout\,
	datad => \button~input_o\,
	combout => \COMP_CCD|count_line~91_combout\);

-- Location: FF_X25_Y11_N21
\COMP_CCD|count_line[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_line~91_combout\,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(24));

-- Location: LCCOMB_X24_Y11_N18
\COMP_CCD|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~50_combout\ = (\COMP_CCD|count_line\(25) & (!\COMP_CCD|Add2~49\)) # (!\COMP_CCD|count_line\(25) & ((\COMP_CCD|Add2~49\) # (GND)))
-- \COMP_CCD|Add2~51\ = CARRY((!\COMP_CCD|Add2~49\) # (!\COMP_CCD|count_line\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(25),
	datad => VCC,
	cin => \COMP_CCD|Add2~49\,
	combout => \COMP_CCD|Add2~50_combout\,
	cout => \COMP_CCD|Add2~51\);

-- Location: LCCOMB_X28_Y11_N8
\COMP_CCD|count_line~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~92_combout\ = (\COMP_CCD|Add2~50_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~50_combout\,
	combout => \COMP_CCD|count_line~92_combout\);

-- Location: FF_X24_Y11_N21
\COMP_CCD|count_line[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~92_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(25));

-- Location: LCCOMB_X24_Y11_N20
\COMP_CCD|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~52_combout\ = (\COMP_CCD|count_line\(26) & (\COMP_CCD|Add2~51\ $ (GND))) # (!\COMP_CCD|count_line\(26) & (!\COMP_CCD|Add2~51\ & VCC))
-- \COMP_CCD|Add2~53\ = CARRY((\COMP_CCD|count_line\(26) & !\COMP_CCD|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(26),
	datad => VCC,
	cin => \COMP_CCD|Add2~51\,
	combout => \COMP_CCD|Add2~52_combout\,
	cout => \COMP_CCD|Add2~53\);

-- Location: LCCOMB_X25_Y11_N14
\COMP_CCD|count_line~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~93_combout\ = (\COMP_CCD|Add2~52_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_trig_reg~q\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|Add2~52_combout\,
	datad => \button~input_o\,
	combout => \COMP_CCD|count_line~93_combout\);

-- Location: FF_X24_Y11_N31
\COMP_CCD|count_line[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~93_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(26));

-- Location: LCCOMB_X24_Y11_N22
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

-- Location: LCCOMB_X28_Y11_N22
\COMP_CCD|count_line~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~94_combout\ = (\COMP_CCD|Add2~54_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Add2~54_combout\,
	combout => \COMP_CCD|count_line~94_combout\);

-- Location: FF_X24_Y11_N23
\COMP_CCD|count_line[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~94_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(27));

-- Location: LCCOMB_X24_Y11_N24
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

-- Location: LCCOMB_X28_Y11_N16
\COMP_CCD|count_line~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~95_combout\ = (\COMP_CCD|Add2~56_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \button~input_o\,
	datac => \pc_trig_reg~q\,
	datad => \COMP_CCD|Add2~56_combout\,
	combout => \COMP_CCD|count_line~95_combout\);

-- Location: FF_X24_Y11_N25
\COMP_CCD|count_line[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~95_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(28));

-- Location: LCCOMB_X24_Y11_N26
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

-- Location: LCCOMB_X28_Y11_N14
\COMP_CCD|count_line~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~96_combout\ = (\COMP_CCD|Add2~58_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \button~input_o\,
	datac => \pc_trig_reg~q\,
	datad => \COMP_CCD|Add2~58_combout\,
	combout => \COMP_CCD|count_line~96_combout\);

-- Location: FF_X24_Y11_N27
\COMP_CCD|count_line[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~96_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(29));

-- Location: LCCOMB_X24_Y11_N28
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

-- Location: LCCOMB_X28_Y11_N0
\COMP_CCD|count_line~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~97_combout\ = (\COMP_CCD|Add2~60_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((!\pc_trig_reg~q\ & \button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|trigger_start_reg~q\,
	datab => \pc_trig_reg~q\,
	datac => \COMP_CCD|Add2~60_combout\,
	datad => \button~input_o\,
	combout => \COMP_CCD|count_line~97_combout\);

-- Location: FF_X24_Y11_N29
\COMP_CCD|count_line[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~97_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(30));

-- Location: LCCOMB_X24_Y11_N30
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

-- Location: LCCOMB_X23_Y12_N14
\COMP_CCD|count_line~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~66_combout\ = (\COMP_CCD|Add2~62_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \pc_trig_reg~q\,
	datad => \COMP_CCD|Add2~62_combout\,
	combout => \COMP_CCD|count_line~66_combout\);

-- Location: FF_X23_Y12_N15
\COMP_CCD|count_line[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_line~66_combout\,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(31));

-- Location: LCCOMB_X23_Y12_N28
\COMP_CCD|trigger_start_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|trigger_start_reg~0_combout\ = ((\COMP_CCD|trigger_start_reg~q\ & ((\COMP_CCD|LessThan17~12_combout\) # (\COMP_CCD|count_line\(31))))) # (!\COMP_CCD|process_1~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan17~12_combout\,
	datab => \COMP_CCD|process_1~17_combout\,
	datac => \COMP_CCD|trigger_start_reg~q\,
	datad => \COMP_CCD|count_line\(31),
	combout => \COMP_CCD|trigger_start_reg~0_combout\);

-- Location: FF_X23_Y12_N29
\COMP_CCD|trigger_start_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|trigger_start_reg~0_combout\,
	ena => \COMP_CCD|Equal4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|trigger_start_reg~q\);

-- Location: LCCOMB_X28_Y11_N30
\COMP_CCD|count_line~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_line~90_combout\ = (\COMP_CCD|Add2~46_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # ((\button~input_o\ & !\pc_trig_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \pc_trig_reg~q\,
	datac => \COMP_CCD|trigger_start_reg~q\,
	datad => \COMP_CCD|Add2~46_combout\,
	combout => \COMP_CCD|count_line~90_combout\);

-- Location: FF_X24_Y11_N19
\COMP_CCD|count_line[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_line~90_combout\,
	sload => VCC,
	ena => \COMP_CCD|count_line[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_line\(23));

-- Location: LCCOMB_X26_Y11_N12
\COMP_CCD|LessThan17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~10_combout\ = (!\COMP_CCD|count_line\(23) & (!\COMP_CCD|count_line\(24) & (!\COMP_CCD|count_line\(25) & !\COMP_CCD|count_line\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(23),
	datab => \COMP_CCD|count_line\(24),
	datac => \COMP_CCD|count_line\(25),
	datad => \COMP_CCD|count_line\(26),
	combout => \COMP_CCD|LessThan17~10_combout\);

-- Location: LCCOMB_X14_Y12_N18
\COMP_CCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~0_combout\ = (\Equal1~0_combout\ & (\COMP_USB|command_reg\(5) & !\COMP_USB|command_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \COMP_USB|command_reg\(5),
	datad => \COMP_USB|command_reg\(6),
	combout => \COMP_CCD|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y12_N24
\COMP_CCD|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|comb~2_combout\ = (\COMP_CCD|Equal0~0_combout\ & (\COMP_USB|command_reg\(1) $ (\COMP_USB|command_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|command_reg\(1),
	datac => \COMP_USB|command_reg\(0),
	datad => \COMP_CCD|Equal0~0_combout\,
	combout => \COMP_CCD|comb~2_combout\);

-- Location: LCCOMB_X14_Y12_N22
\COMP_CCD|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~0_combout\ = (\COMP_USB|command_reg\(1) & (\COMP_USB|command_reg\(0) & \COMP_CCD|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|command_reg\(1),
	datac => \COMP_USB|command_reg\(0),
	datad => \COMP_CCD|Equal0~0_combout\,
	combout => \COMP_CCD|Equal2~0_combout\);

-- Location: LCCOMB_X25_Y11_N24
\COMP_CCD|CCD_LINES_NUMBER[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|CCD_LINES_NUMBER\(6) = (!\COMP_CCD|comb~2_combout\ & ((\COMP_CCD|Equal2~0_combout\) # (\COMP_CCD|CCD_LINES_NUMBER\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|comb~2_combout\,
	datab => \COMP_CCD|Equal2~0_combout\,
	datad => \COMP_CCD|CCD_LINES_NUMBER\(6),
	combout => \COMP_CCD|CCD_LINES_NUMBER\(6));

-- Location: LCCOMB_X14_Y12_N12
\COMP_CCD|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|comb~3_combout\ = (!\COMP_USB|command_reg\(6) & (\COMP_USB|command_reg\(5) & (\Equal1~0_combout\ & \COMP_USB|command_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|command_reg\(6),
	datab => \COMP_USB|command_reg\(5),
	datac => \Equal1~0_combout\,
	datad => \COMP_USB|command_reg\(1),
	combout => \COMP_CCD|comb~3_combout\);

-- Location: LCCOMB_X14_Y12_N20
\COMP_CCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~1_combout\ = (!\COMP_USB|command_reg\(1) & (\COMP_USB|command_reg\(0) & \COMP_CCD|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|command_reg\(1),
	datac => \COMP_USB|command_reg\(0),
	datad => \COMP_CCD|Equal0~0_combout\,
	combout => \COMP_CCD|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y12_N10
\COMP_CCD|CCD_LINES_NUMBER[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|CCD_LINES_NUMBER\(2) = (!\COMP_CCD|Equal0~1_combout\ & ((\COMP_CCD|comb~3_combout\) # (\COMP_CCD|CCD_LINES_NUMBER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|comb~3_combout\,
	datab => \COMP_CCD|Equal0~1_combout\,
	datad => \COMP_CCD|CCD_LINES_NUMBER\(2),
	combout => \COMP_CCD|CCD_LINES_NUMBER\(2));

-- Location: LCCOMB_X18_Y11_N20
\COMP_CCD|CCD_LINES_NUMBER[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|CCD_LINES_NUMBER\(0) = (!\COMP_CCD|comb~3_combout\ & ((\COMP_CCD|Equal0~1_combout\) # (\COMP_CCD|CCD_LINES_NUMBER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~1_combout\,
	datac => \COMP_CCD|comb~3_combout\,
	datad => \COMP_CCD|CCD_LINES_NUMBER\(0),
	combout => \COMP_CCD|CCD_LINES_NUMBER\(0));

-- Location: LCCOMB_X23_Y12_N16
\COMP_CCD|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~1_combout\ = (!\COMP_CCD|count_line\(0) & (!\COMP_CCD|count_line\(1) & (\COMP_CCD|CCD_LINES_NUMBER\(2) $ (!\COMP_CCD|count_line\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|CCD_LINES_NUMBER\(2),
	datab => \COMP_CCD|count_line\(0),
	datac => \COMP_CCD|count_line\(2),
	datad => \COMP_CCD|count_line\(1),
	combout => \COMP_CCD|LessThan17~1_combout\);

-- Location: LCCOMB_X23_Y12_N10
\COMP_CCD|LessThan17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~2_combout\ = (\COMP_CCD|CCD_LINES_NUMBER\(2) & (((\COMP_CCD|CCD_LINES_NUMBER\(0) & \COMP_CCD|LessThan17~1_combout\)) # (!\COMP_CCD|count_line\(2)))) # (!\COMP_CCD|CCD_LINES_NUMBER\(2) & (\COMP_CCD|CCD_LINES_NUMBER\(0) & 
-- ((\COMP_CCD|LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|CCD_LINES_NUMBER\(2),
	datab => \COMP_CCD|CCD_LINES_NUMBER\(0),
	datac => \COMP_CCD|count_line\(2),
	datad => \COMP_CCD|LessThan17~1_combout\,
	combout => \COMP_CCD|LessThan17~2_combout\);

-- Location: LCCOMB_X25_Y11_N10
\COMP_CCD|CCD_LINES_NUMBER[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|CCD_LINES_NUMBER\(5) = (!\COMP_CCD|comb~2_combout\ & ((\COMP_CCD|Equal2~0_combout\) # (\COMP_CCD|CCD_LINES_NUMBER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|comb~2_combout\,
	datab => \COMP_CCD|Equal2~0_combout\,
	datad => \COMP_CCD|CCD_LINES_NUMBER\(5),
	combout => \COMP_CCD|CCD_LINES_NUMBER\(5));

-- Location: LCCOMB_X23_Y12_N6
\COMP_CCD|LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~0_combout\ = (\COMP_CCD|count_line\(4)) # (\COMP_CCD|count_line\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(4),
	datac => \COMP_CCD|count_line\(3),
	combout => \COMP_CCD|LessThan17~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\COMP_CCD|LessThan17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~3_combout\ = (\COMP_CCD|count_line\(5) & (\COMP_CCD|LessThan17~2_combout\ & (\COMP_CCD|CCD_LINES_NUMBER\(5) & !\COMP_CCD|LessThan17~0_combout\))) # (!\COMP_CCD|count_line\(5) & ((\COMP_CCD|CCD_LINES_NUMBER\(5)) # 
-- ((\COMP_CCD|LessThan17~2_combout\ & !\COMP_CCD|LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan17~2_combout\,
	datab => \COMP_CCD|count_line\(5),
	datac => \COMP_CCD|CCD_LINES_NUMBER\(5),
	datad => \COMP_CCD|LessThan17~0_combout\,
	combout => \COMP_CCD|LessThan17~3_combout\);

-- Location: LCCOMB_X23_Y12_N2
\COMP_CCD|LessThan17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~4_combout\ = (\COMP_CCD|count_line\(6) & (\COMP_CCD|CCD_LINES_NUMBER\(6) & \COMP_CCD|LessThan17~3_combout\)) # (!\COMP_CCD|count_line\(6) & ((\COMP_CCD|CCD_LINES_NUMBER\(6)) # (\COMP_CCD|LessThan17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_line\(6),
	datac => \COMP_CCD|CCD_LINES_NUMBER\(6),
	datad => \COMP_CCD|LessThan17~3_combout\,
	combout => \COMP_CCD|LessThan17~4_combout\);

-- Location: LCCOMB_X26_Y11_N2
\COMP_CCD|LessThan17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~11_combout\ = (!\COMP_CCD|count_line\(29) & (!\COMP_CCD|count_line\(30) & (!\COMP_CCD|count_line\(27) & !\COMP_CCD|count_line\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(29),
	datab => \COMP_CCD|count_line\(30),
	datac => \COMP_CCD|count_line\(27),
	datad => \COMP_CCD|count_line\(28),
	combout => \COMP_CCD|LessThan17~11_combout\);

-- Location: LCCOMB_X25_Y12_N6
\COMP_CCD|LessThan17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~8_combout\ = (!\COMP_CCD|count_line\(21) & (!\COMP_CCD|count_line\(20) & (!\COMP_CCD|count_line\(19) & !\COMP_CCD|count_line\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(21),
	datab => \COMP_CCD|count_line\(20),
	datac => \COMP_CCD|count_line\(19),
	datad => \COMP_CCD|count_line\(22),
	combout => \COMP_CCD|LessThan17~8_combout\);

-- Location: LCCOMB_X25_Y12_N4
\COMP_CCD|LessThan17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~5_combout\ = (!\COMP_CCD|count_line\(9) & (!\COMP_CCD|count_line\(10) & (!\COMP_CCD|count_line\(7) & !\COMP_CCD|count_line\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(9),
	datab => \COMP_CCD|count_line\(10),
	datac => \COMP_CCD|count_line\(7),
	datad => \COMP_CCD|count_line\(8),
	combout => \COMP_CCD|LessThan17~5_combout\);

-- Location: LCCOMB_X25_Y12_N26
\COMP_CCD|LessThan17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~6_combout\ = (!\COMP_CCD|count_line\(11) & (!\COMP_CCD|count_line\(12) & (!\COMP_CCD|count_line\(14) & !\COMP_CCD|count_line\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(11),
	datab => \COMP_CCD|count_line\(12),
	datac => \COMP_CCD|count_line\(14),
	datad => \COMP_CCD|count_line\(13),
	combout => \COMP_CCD|LessThan17~6_combout\);

-- Location: LCCOMB_X25_Y12_N24
\COMP_CCD|LessThan17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~7_combout\ = (!\COMP_CCD|count_line\(18) & (!\COMP_CCD|count_line\(15) & (!\COMP_CCD|count_line\(16) & !\COMP_CCD|count_line\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_line\(18),
	datab => \COMP_CCD|count_line\(15),
	datac => \COMP_CCD|count_line\(16),
	datad => \COMP_CCD|count_line\(17),
	combout => \COMP_CCD|LessThan17~7_combout\);

-- Location: LCCOMB_X25_Y12_N16
\COMP_CCD|LessThan17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~9_combout\ = (\COMP_CCD|LessThan17~8_combout\ & (\COMP_CCD|LessThan17~5_combout\ & (\COMP_CCD|LessThan17~6_combout\ & \COMP_CCD|LessThan17~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan17~8_combout\,
	datab => \COMP_CCD|LessThan17~5_combout\,
	datac => \COMP_CCD|LessThan17~6_combout\,
	datad => \COMP_CCD|LessThan17~7_combout\,
	combout => \COMP_CCD|LessThan17~9_combout\);

-- Location: LCCOMB_X23_Y12_N12
\COMP_CCD|LessThan17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan17~12_combout\ = (\COMP_CCD|LessThan17~10_combout\ & (\COMP_CCD|LessThan17~4_combout\ & (\COMP_CCD|LessThan17~11_combout\ & \COMP_CCD|LessThan17~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan17~10_combout\,
	datab => \COMP_CCD|LessThan17~4_combout\,
	datac => \COMP_CCD|LessThan17~11_combout\,
	datad => \COMP_CCD|LessThan17~9_combout\,
	combout => \COMP_CCD|LessThan17~12_combout\);

-- Location: LCCOMB_X23_Y12_N22
\COMP_CCD|count[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[14]~1_combout\ = (!\COMP_CCD|LessThan17~12_combout\ & (\COMP_CCD|trigger_start_reg~q\ & (!\COMP_CCD|process_1~17_combout\ & !\COMP_CCD|count_line\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan17~12_combout\,
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|process_1~17_combout\,
	datad => \COMP_CCD|count_line\(31),
	combout => \COMP_CCD|count[14]~1_combout\);

-- Location: LCCOMB_X25_Y11_N22
\COMP_CCD|LessThan19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~0_combout\ = (!\COMP_CCD|Add2~44_combout\ & (!\COMP_CCD|Add2~38_combout\ & (!\COMP_CCD|Add2~40_combout\ & !\COMP_CCD|Add2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~44_combout\,
	datab => \COMP_CCD|Add2~38_combout\,
	datac => \COMP_CCD|Add2~40_combout\,
	datad => \COMP_CCD|Add2~42_combout\,
	combout => \COMP_CCD|LessThan19~0_combout\);

-- Location: LCCOMB_X25_Y11_N26
\COMP_CCD|LessThan19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~6_combout\ = (!\COMP_CCD|Add2~18_combout\ & (!\COMP_CCD|Add2~14_combout\ & (!\COMP_CCD|Add2~16_combout\ & !\COMP_CCD|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~18_combout\,
	datab => \COMP_CCD|Add2~14_combout\,
	datac => \COMP_CCD|Add2~16_combout\,
	datad => \COMP_CCD|Add2~20_combout\,
	combout => \COMP_CCD|LessThan19~6_combout\);

-- Location: LCCOMB_X25_Y11_N8
\COMP_CCD|LessThan19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~7_combout\ = (!\COMP_CCD|Add2~24_combout\ & (!\COMP_CCD|Add2~22_combout\ & (!\COMP_CCD|Add2~28_combout\ & !\COMP_CCD|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~24_combout\,
	datab => \COMP_CCD|Add2~22_combout\,
	datac => \COMP_CCD|Add2~28_combout\,
	datad => \COMP_CCD|Add2~26_combout\,
	combout => \COMP_CCD|LessThan19~7_combout\);

-- Location: LCCOMB_X25_Y11_N30
\COMP_CCD|LessThan19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~2_combout\ = (\COMP_CCD|CCD_LINES_NUMBER\(0) & !\COMP_CCD|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|CCD_LINES_NUMBER\(0),
	datad => \COMP_CCD|Add2~0_combout\,
	combout => \COMP_CCD|LessThan19~2_combout\);

-- Location: LCCOMB_X25_Y11_N12
\COMP_CCD|LessThan19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~3_combout\ = (\COMP_CCD|CCD_LINES_NUMBER\(2) & (((!\COMP_CCD|Add2~2_combout\ & \COMP_CCD|LessThan19~2_combout\)) # (!\COMP_CCD|Add2~4_combout\))) # (!\COMP_CCD|CCD_LINES_NUMBER\(2) & (!\COMP_CCD|Add2~2_combout\ & 
-- (\COMP_CCD|LessThan19~2_combout\ & !\COMP_CCD|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~2_combout\,
	datab => \COMP_CCD|CCD_LINES_NUMBER\(2),
	datac => \COMP_CCD|LessThan19~2_combout\,
	datad => \COMP_CCD|Add2~4_combout\,
	combout => \COMP_CCD|LessThan19~3_combout\);

-- Location: LCCOMB_X25_Y11_N28
\COMP_CCD|LessThan19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~1_combout\ = (!\COMP_CCD|Add2~6_combout\ & !\COMP_CCD|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add2~6_combout\,
	datad => \COMP_CCD|Add2~8_combout\,
	combout => \COMP_CCD|LessThan19~1_combout\);

-- Location: LCCOMB_X25_Y11_N2
\COMP_CCD|LessThan19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~4_combout\ = (\COMP_CCD|CCD_LINES_NUMBER\(5) & (((\COMP_CCD|LessThan19~3_combout\ & \COMP_CCD|LessThan19~1_combout\)) # (!\COMP_CCD|Add2~10_combout\))) # (!\COMP_CCD|CCD_LINES_NUMBER\(5) & (\COMP_CCD|LessThan19~3_combout\ & 
-- (!\COMP_CCD|Add2~10_combout\ & \COMP_CCD|LessThan19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan19~3_combout\,
	datab => \COMP_CCD|CCD_LINES_NUMBER\(5),
	datac => \COMP_CCD|Add2~10_combout\,
	datad => \COMP_CCD|LessThan19~1_combout\,
	combout => \COMP_CCD|LessThan19~4_combout\);

-- Location: LCCOMB_X25_Y11_N4
\COMP_CCD|LessThan19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~5_combout\ = (\COMP_CCD|Add2~12_combout\ & (\COMP_CCD|CCD_LINES_NUMBER\(6) & \COMP_CCD|LessThan19~4_combout\)) # (!\COMP_CCD|Add2~12_combout\ & ((\COMP_CCD|CCD_LINES_NUMBER\(6)) # (\COMP_CCD|LessThan19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add2~12_combout\,
	datac => \COMP_CCD|CCD_LINES_NUMBER\(6),
	datad => \COMP_CCD|LessThan19~4_combout\,
	combout => \COMP_CCD|LessThan19~5_combout\);

-- Location: LCCOMB_X25_Y11_N18
\COMP_CCD|LessThan19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~8_combout\ = (!\COMP_CCD|Add2~32_combout\ & (!\COMP_CCD|Add2~36_combout\ & (!\COMP_CCD|Add2~34_combout\ & !\COMP_CCD|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~32_combout\,
	datab => \COMP_CCD|Add2~36_combout\,
	datac => \COMP_CCD|Add2~34_combout\,
	datad => \COMP_CCD|Add2~30_combout\,
	combout => \COMP_CCD|LessThan19~8_combout\);

-- Location: LCCOMB_X25_Y11_N16
\COMP_CCD|LessThan19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~9_combout\ = (\COMP_CCD|LessThan19~6_combout\ & (\COMP_CCD|LessThan19~7_combout\ & (\COMP_CCD|LessThan19~5_combout\ & \COMP_CCD|LessThan19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan19~6_combout\,
	datab => \COMP_CCD|LessThan19~7_combout\,
	datac => \COMP_CCD|LessThan19~5_combout\,
	datad => \COMP_CCD|LessThan19~8_combout\,
	combout => \COMP_CCD|LessThan19~9_combout\);

-- Location: LCCOMB_X25_Y11_N6
\COMP_CCD|LessThan19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~10_combout\ = (!\COMP_CCD|Add2~48_combout\ & (!\COMP_CCD|Add2~46_combout\ & (\COMP_CCD|LessThan19~0_combout\ & \COMP_CCD|LessThan19~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~48_combout\,
	datab => \COMP_CCD|Add2~46_combout\,
	datac => \COMP_CCD|LessThan19~0_combout\,
	datad => \COMP_CCD|LessThan19~9_combout\,
	combout => \COMP_CCD|LessThan19~10_combout\);

-- Location: LCCOMB_X25_Y11_N0
\COMP_CCD|LessThan19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~11_combout\ = (!\COMP_CCD|Add2~52_combout\ & (!\COMP_CCD|Add2~54_combout\ & (!\COMP_CCD|Add2~50_combout\ & \COMP_CCD|LessThan19~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~52_combout\,
	datab => \COMP_CCD|Add2~54_combout\,
	datac => \COMP_CCD|Add2~50_combout\,
	datad => \COMP_CCD|LessThan19~10_combout\,
	combout => \COMP_CCD|LessThan19~11_combout\);

-- Location: LCCOMB_X23_Y11_N12
\COMP_CCD|LessThan19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan19~12_combout\ = (!\COMP_CCD|Add2~56_combout\ & (!\COMP_CCD|Add2~58_combout\ & (\COMP_CCD|LessThan19~11_combout\ & !\COMP_CCD|Add2~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~56_combout\,
	datab => \COMP_CCD|Add2~58_combout\,
	datac => \COMP_CCD|LessThan19~11_combout\,
	datad => \COMP_CCD|Add2~60_combout\,
	combout => \COMP_CCD|LessThan19~12_combout\);

-- Location: LCCOMB_X23_Y11_N14
\COMP_CCD|count[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[14]~4_combout\ = (!\COMP_CCD|Add2~62_combout\ & (\COMP_CCD|count[14]~2_combout\ & (\COMP_CCD|count[14]~3_combout\ & !\COMP_CCD|LessThan19~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~62_combout\,
	datab => \COMP_CCD|count[14]~2_combout\,
	datac => \COMP_CCD|count[14]~3_combout\,
	datad => \COMP_CCD|LessThan19~12_combout\,
	combout => \COMP_CCD|count[14]~4_combout\);

-- Location: LCCOMB_X23_Y11_N0
\COMP_CCD|count[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[30]~5_combout\ = (!\COMP_CCD|count[14]~1_combout\ & (!\COMP_CCD|process_1~19_combout\ & (!\COMP_CCD|count[14]~4_combout\ & \COMP_CCD|Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count[14]~1_combout\,
	datab => \COMP_CCD|process_1~19_combout\,
	datac => \COMP_CCD|count[14]~4_combout\,
	datad => \COMP_CCD|Equal4~10_combout\,
	combout => \COMP_CCD|count[30]~5_combout\);

-- Location: FF_X24_Y9_N23
\COMP_CCD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~95_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(0));

-- Location: LCCOMB_X25_Y9_N2
\COMP_CCD|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~2_combout\ = (\COMP_CCD|count\(1) & ((\COMP_CCD|Add3~1\) # (GND))) # (!\COMP_CCD|count\(1) & (!\COMP_CCD|Add3~1\))
-- \COMP_CCD|Add3~3\ = CARRY((\COMP_CCD|count\(1)) # (!\COMP_CCD|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(1),
	datad => VCC,
	cin => \COMP_CCD|Add3~1\,
	combout => \COMP_CCD|Add3~2_combout\,
	cout => \COMP_CCD|Add3~3\);

-- Location: LCCOMB_X22_Y9_N28
\COMP_CCD|Add3~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~94_combout\ = (!\COMP_CCD|Add3~2_combout\) # (!\COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count[14]~0_combout\,
	datac => \COMP_CCD|Add3~2_combout\,
	combout => \COMP_CCD|Add3~94_combout\);

-- Location: FF_X22_Y9_N29
\COMP_CCD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~94_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(1));

-- Location: LCCOMB_X25_Y9_N4
\COMP_CCD|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~4_combout\ = (\COMP_CCD|count\(2) & (!\COMP_CCD|Add3~3\ & VCC)) # (!\COMP_CCD|count\(2) & (\COMP_CCD|Add3~3\ $ (GND)))
-- \COMP_CCD|Add3~5\ = CARRY((!\COMP_CCD|count\(2) & !\COMP_CCD|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(2),
	datad => VCC,
	cin => \COMP_CCD|Add3~3\,
	combout => \COMP_CCD|Add3~4_combout\,
	cout => \COMP_CCD|Add3~5\);

-- Location: LCCOMB_X22_Y9_N20
\COMP_CCD|Add3~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~81_combout\ = (!\COMP_CCD|Add3~4_combout\) # (!\COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~4_combout\,
	combout => \COMP_CCD|Add3~81_combout\);

-- Location: FF_X22_Y9_N21
\COMP_CCD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~81_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(2));

-- Location: LCCOMB_X25_Y9_N6
\COMP_CCD|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~6_combout\ = (\COMP_CCD|count\(3) & ((\COMP_CCD|Add3~5\) # (GND))) # (!\COMP_CCD|count\(3) & (!\COMP_CCD|Add3~5\))
-- \COMP_CCD|Add3~7\ = CARRY((\COMP_CCD|count\(3)) # (!\COMP_CCD|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(3),
	datad => VCC,
	cin => \COMP_CCD|Add3~5\,
	combout => \COMP_CCD|Add3~6_combout\,
	cout => \COMP_CCD|Add3~7\);

-- Location: LCCOMB_X22_Y9_N30
\COMP_CCD|Add3~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~82_combout\ = (!\COMP_CCD|count[14]~0_combout\) # (!\COMP_CCD|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~6_combout\,
	datac => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~82_combout\);

-- Location: FF_X22_Y9_N31
\COMP_CCD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~82_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(3));

-- Location: LCCOMB_X25_Y9_N8
\COMP_CCD|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~8_combout\ = (\COMP_CCD|count\(4) & (!\COMP_CCD|Add3~7\ & VCC)) # (!\COMP_CCD|count\(4) & (\COMP_CCD|Add3~7\ $ (GND)))
-- \COMP_CCD|Add3~9\ = CARRY((!\COMP_CCD|count\(4) & !\COMP_CCD|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(4),
	datad => VCC,
	cin => \COMP_CCD|Add3~7\,
	combout => \COMP_CCD|Add3~8_combout\,
	cout => \COMP_CCD|Add3~9\);

-- Location: LCCOMB_X22_Y9_N4
\COMP_CCD|Add3~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~83_combout\ = (!\COMP_CCD|Add3~8_combout\) # (!\COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~8_combout\,
	combout => \COMP_CCD|Add3~83_combout\);

-- Location: FF_X22_Y9_N5
\COMP_CCD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~83_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(4));

-- Location: LCCOMB_X25_Y9_N10
\COMP_CCD|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~10_combout\ = (\COMP_CCD|count\(5) & (!\COMP_CCD|Add3~9\)) # (!\COMP_CCD|count\(5) & ((\COMP_CCD|Add3~9\) # (GND)))
-- \COMP_CCD|Add3~11\ = CARRY((!\COMP_CCD|Add3~9\) # (!\COMP_CCD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datad => VCC,
	cin => \COMP_CCD|Add3~9\,
	combout => \COMP_CCD|Add3~10_combout\,
	cout => \COMP_CCD|Add3~11\);

-- Location: LCCOMB_X22_Y9_N26
\COMP_CCD|Add3~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~84_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~10_combout\,
	combout => \COMP_CCD|Add3~84_combout\);

-- Location: FF_X22_Y9_N27
\COMP_CCD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~84_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(5));

-- Location: LCCOMB_X25_Y9_N12
\COMP_CCD|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~12_combout\ = (\COMP_CCD|count\(6) & (\COMP_CCD|Add3~11\ $ (GND))) # (!\COMP_CCD|count\(6) & (!\COMP_CCD|Add3~11\ & VCC))
-- \COMP_CCD|Add3~13\ = CARRY((\COMP_CCD|count\(6) & !\COMP_CCD|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(6),
	datad => VCC,
	cin => \COMP_CCD|Add3~11\,
	combout => \COMP_CCD|Add3~12_combout\,
	cout => \COMP_CCD|Add3~13\);

-- Location: LCCOMB_X24_Y9_N2
\COMP_CCD|Add3~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~74_combout\ = (\COMP_CCD|Add3~12_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~12_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~74_combout\);

-- Location: LCCOMB_X22_Y9_N22
\COMP_CCD|count[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[6]~feeder_combout\ = \COMP_CCD|Add3~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|Add3~74_combout\,
	combout => \COMP_CCD|count[6]~feeder_combout\);

-- Location: FF_X22_Y9_N23
\COMP_CCD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count[6]~feeder_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(6));

-- Location: LCCOMB_X25_Y9_N14
\COMP_CCD|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~14_combout\ = (\COMP_CCD|count\(7) & ((\COMP_CCD|Add3~13\) # (GND))) # (!\COMP_CCD|count\(7) & (!\COMP_CCD|Add3~13\))
-- \COMP_CCD|Add3~15\ = CARRY((\COMP_CCD|count\(7)) # (!\COMP_CCD|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(7),
	datad => VCC,
	cin => \COMP_CCD|Add3~13\,
	combout => \COMP_CCD|Add3~14_combout\,
	cout => \COMP_CCD|Add3~15\);

-- Location: LCCOMB_X24_Y9_N20
\COMP_CCD|Add3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~27_combout\ = (!\COMP_CCD|count[14]~0_combout\) # (!\COMP_CCD|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~14_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~27_combout\);

-- Location: LCCOMB_X22_Y9_N24
\COMP_CCD|count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[7]~feeder_combout\ = \COMP_CCD|Add3~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|Add3~27_combout\,
	combout => \COMP_CCD|count[7]~feeder_combout\);

-- Location: FF_X22_Y9_N25
\COMP_CCD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count[7]~feeder_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(7));

-- Location: LCCOMB_X25_Y9_N16
\COMP_CCD|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~16_combout\ = (\COMP_CCD|count\(8) & (\COMP_CCD|Add3~15\ $ (GND))) # (!\COMP_CCD|count\(8) & (!\COMP_CCD|Add3~15\ & VCC))
-- \COMP_CCD|Add3~17\ = CARRY((\COMP_CCD|count\(8) & !\COMP_CCD|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(8),
	datad => VCC,
	cin => \COMP_CCD|Add3~15\,
	combout => \COMP_CCD|Add3~16_combout\,
	cout => \COMP_CCD|Add3~17\);

-- Location: LCCOMB_X24_Y9_N14
\COMP_CCD|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~28_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~16_combout\,
	combout => \COMP_CCD|Add3~28_combout\);

-- Location: FF_X24_Y9_N15
\COMP_CCD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~28_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(8));

-- Location: LCCOMB_X25_Y9_N18
\COMP_CCD|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~18_combout\ = (\COMP_CCD|count\(9) & (!\COMP_CCD|Add3~17\)) # (!\COMP_CCD|count\(9) & ((\COMP_CCD|Add3~17\) # (GND)))
-- \COMP_CCD|Add3~19\ = CARRY((!\COMP_CCD|Add3~17\) # (!\COMP_CCD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(9),
	datad => VCC,
	cin => \COMP_CCD|Add3~17\,
	combout => \COMP_CCD|Add3~18_combout\,
	cout => \COMP_CCD|Add3~19\);

-- Location: LCCOMB_X24_Y9_N0
\COMP_CCD|Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~29_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~18_combout\,
	combout => \COMP_CCD|Add3~29_combout\);

-- Location: FF_X24_Y9_N1
\COMP_CCD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~29_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(9));

-- Location: LCCOMB_X25_Y9_N20
\COMP_CCD|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~20_combout\ = (\COMP_CCD|count\(10) & (\COMP_CCD|Add3~19\ $ (GND))) # (!\COMP_CCD|count\(10) & (!\COMP_CCD|Add3~19\ & VCC))
-- \COMP_CCD|Add3~21\ = CARRY((\COMP_CCD|count\(10) & !\COMP_CCD|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(10),
	datad => VCC,
	cin => \COMP_CCD|Add3~19\,
	combout => \COMP_CCD|Add3~20_combout\,
	cout => \COMP_CCD|Add3~21\);

-- Location: LCCOMB_X24_Y9_N6
\COMP_CCD|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~30_combout\ = (\COMP_CCD|Add3~20_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~20_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~30_combout\);

-- Location: FF_X24_Y9_N7
\COMP_CCD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~30_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(10));

-- Location: LCCOMB_X25_Y9_N22
\COMP_CCD|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~22_combout\ = (\COMP_CCD|count\(11) & (!\COMP_CCD|Add3~21\)) # (!\COMP_CCD|count\(11) & ((\COMP_CCD|Add3~21\) # (GND)))
-- \COMP_CCD|Add3~23\ = CARRY((!\COMP_CCD|Add3~21\) # (!\COMP_CCD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(11),
	datad => VCC,
	cin => \COMP_CCD|Add3~21\,
	combout => \COMP_CCD|Add3~22_combout\,
	cout => \COMP_CCD|Add3~23\);

-- Location: LCCOMB_X24_Y9_N8
\COMP_CCD|Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~31_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~22_combout\,
	combout => \COMP_CCD|Add3~31_combout\);

-- Location: FF_X24_Y9_N9
\COMP_CCD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~31_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(11));

-- Location: LCCOMB_X25_Y9_N24
\COMP_CCD|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~24_combout\ = (\COMP_CCD|count\(12) & (!\COMP_CCD|Add3~23\ & VCC)) # (!\COMP_CCD|count\(12) & (\COMP_CCD|Add3~23\ $ (GND)))
-- \COMP_CCD|Add3~25\ = CARRY((!\COMP_CCD|count\(12) & !\COMP_CCD|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datad => VCC,
	cin => \COMP_CCD|Add3~23\,
	combout => \COMP_CCD|Add3~24_combout\,
	cout => \COMP_CCD|Add3~25\);

-- Location: LCCOMB_X25_Y9_N26
\COMP_CCD|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~32_combout\ = (\COMP_CCD|count\(13) & (!\COMP_CCD|Add3~25\)) # (!\COMP_CCD|count\(13) & ((\COMP_CCD|Add3~25\) # (GND)))
-- \COMP_CCD|Add3~33\ = CARRY((!\COMP_CCD|Add3~25\) # (!\COMP_CCD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(13),
	datad => VCC,
	cin => \COMP_CCD|Add3~25\,
	combout => \COMP_CCD|Add3~32_combout\,
	cout => \COMP_CCD|Add3~33\);

-- Location: LCCOMB_X23_Y8_N28
\COMP_CCD|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~34_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~32_combout\,
	combout => \COMP_CCD|Add3~34_combout\);

-- Location: FF_X23_Y8_N29
\COMP_CCD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~34_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(13));

-- Location: LCCOMB_X25_Y9_N28
\COMP_CCD|Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~35_combout\ = (\COMP_CCD|count\(14) & (\COMP_CCD|Add3~33\ $ (GND))) # (!\COMP_CCD|count\(14) & (!\COMP_CCD|Add3~33\ & VCC))
-- \COMP_CCD|Add3~36\ = CARRY((\COMP_CCD|count\(14) & !\COMP_CCD|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(14),
	datad => VCC,
	cin => \COMP_CCD|Add3~33\,
	combout => \COMP_CCD|Add3~35_combout\,
	cout => \COMP_CCD|Add3~36\);

-- Location: LCCOMB_X23_Y8_N30
\COMP_CCD|Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~37_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~35_combout\,
	combout => \COMP_CCD|Add3~37_combout\);

-- Location: FF_X23_Y8_N31
\COMP_CCD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~37_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(14));

-- Location: LCCOMB_X25_Y9_N30
\COMP_CCD|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~38_combout\ = (\COMP_CCD|count\(15) & (!\COMP_CCD|Add3~36\)) # (!\COMP_CCD|count\(15) & ((\COMP_CCD|Add3~36\) # (GND)))
-- \COMP_CCD|Add3~39\ = CARRY((!\COMP_CCD|Add3~36\) # (!\COMP_CCD|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(15),
	datad => VCC,
	cin => \COMP_CCD|Add3~36\,
	combout => \COMP_CCD|Add3~38_combout\,
	cout => \COMP_CCD|Add3~39\);

-- Location: LCCOMB_X23_Y8_N8
\COMP_CCD|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~40_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count[14]~0_combout\,
	datac => \COMP_CCD|Add3~38_combout\,
	combout => \COMP_CCD|Add3~40_combout\);

-- Location: FF_X23_Y8_N9
\COMP_CCD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~40_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(15));

-- Location: LCCOMB_X25_Y8_N0
\COMP_CCD|Add3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~41_combout\ = (\COMP_CCD|count\(16) & (\COMP_CCD|Add3~39\ $ (GND))) # (!\COMP_CCD|count\(16) & (!\COMP_CCD|Add3~39\ & VCC))
-- \COMP_CCD|Add3~42\ = CARRY((\COMP_CCD|count\(16) & !\COMP_CCD|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(16),
	datad => VCC,
	cin => \COMP_CCD|Add3~39\,
	combout => \COMP_CCD|Add3~41_combout\,
	cout => \COMP_CCD|Add3~42\);

-- Location: LCCOMB_X23_Y8_N18
\COMP_CCD|Add3~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~43_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~41_combout\,
	combout => \COMP_CCD|Add3~43_combout\);

-- Location: FF_X23_Y8_N19
\COMP_CCD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~43_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(16));

-- Location: LCCOMB_X25_Y8_N2
\COMP_CCD|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~44_combout\ = (\COMP_CCD|count\(17) & (!\COMP_CCD|Add3~42\)) # (!\COMP_CCD|count\(17) & ((\COMP_CCD|Add3~42\) # (GND)))
-- \COMP_CCD|Add3~45\ = CARRY((!\COMP_CCD|Add3~42\) # (!\COMP_CCD|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(17),
	datad => VCC,
	cin => \COMP_CCD|Add3~42\,
	combout => \COMP_CCD|Add3~44_combout\,
	cout => \COMP_CCD|Add3~45\);

-- Location: LCCOMB_X24_Y8_N16
\COMP_CCD|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~46_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~44_combout\,
	combout => \COMP_CCD|Add3~46_combout\);

-- Location: FF_X24_Y8_N17
\COMP_CCD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~46_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(17));

-- Location: LCCOMB_X25_Y8_N4
\COMP_CCD|Add3~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~47_combout\ = (\COMP_CCD|count\(18) & (\COMP_CCD|Add3~45\ $ (GND))) # (!\COMP_CCD|count\(18) & (!\COMP_CCD|Add3~45\ & VCC))
-- \COMP_CCD|Add3~48\ = CARRY((\COMP_CCD|count\(18) & !\COMP_CCD|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(18),
	datad => VCC,
	cin => \COMP_CCD|Add3~45\,
	combout => \COMP_CCD|Add3~47_combout\,
	cout => \COMP_CCD|Add3~48\);

-- Location: LCCOMB_X24_Y8_N2
\COMP_CCD|Add3~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~49_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~47_combout\,
	combout => \COMP_CCD|Add3~49_combout\);

-- Location: FF_X24_Y8_N3
\COMP_CCD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~49_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(18));

-- Location: LCCOMB_X25_Y8_N6
\COMP_CCD|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~50_combout\ = (\COMP_CCD|count\(19) & (!\COMP_CCD|Add3~48\)) # (!\COMP_CCD|count\(19) & ((\COMP_CCD|Add3~48\) # (GND)))
-- \COMP_CCD|Add3~51\ = CARRY((!\COMP_CCD|Add3~48\) # (!\COMP_CCD|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(19),
	datad => VCC,
	cin => \COMP_CCD|Add3~48\,
	combout => \COMP_CCD|Add3~50_combout\,
	cout => \COMP_CCD|Add3~51\);

-- Location: LCCOMB_X24_Y8_N12
\COMP_CCD|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~52_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~50_combout\,
	combout => \COMP_CCD|Add3~52_combout\);

-- Location: FF_X24_Y8_N13
\COMP_CCD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~52_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(19));

-- Location: LCCOMB_X25_Y8_N8
\COMP_CCD|Add3~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~53_combout\ = (\COMP_CCD|count\(20) & (\COMP_CCD|Add3~51\ $ (GND))) # (!\COMP_CCD|count\(20) & (!\COMP_CCD|Add3~51\ & VCC))
-- \COMP_CCD|Add3~54\ = CARRY((\COMP_CCD|count\(20) & !\COMP_CCD|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(20),
	datad => VCC,
	cin => \COMP_CCD|Add3~51\,
	combout => \COMP_CCD|Add3~53_combout\,
	cout => \COMP_CCD|Add3~54\);

-- Location: LCCOMB_X24_Y8_N14
\COMP_CCD|Add3~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~55_combout\ = (\COMP_CCD|Add3~53_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~53_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~55_combout\);

-- Location: FF_X24_Y8_N15
\COMP_CCD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~55_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(20));

-- Location: LCCOMB_X25_Y8_N10
\COMP_CCD|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~56_combout\ = (\COMP_CCD|count\(21) & (!\COMP_CCD|Add3~54\)) # (!\COMP_CCD|count\(21) & ((\COMP_CCD|Add3~54\) # (GND)))
-- \COMP_CCD|Add3~57\ = CARRY((!\COMP_CCD|Add3~54\) # (!\COMP_CCD|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(21),
	datad => VCC,
	cin => \COMP_CCD|Add3~54\,
	combout => \COMP_CCD|Add3~56_combout\,
	cout => \COMP_CCD|Add3~57\);

-- Location: LCCOMB_X24_Y8_N30
\COMP_CCD|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~58_combout\ = (\COMP_CCD|Add3~56_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~56_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~58_combout\);

-- Location: FF_X24_Y8_N31
\COMP_CCD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~58_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(21));

-- Location: LCCOMB_X25_Y8_N12
\COMP_CCD|Add3~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~59_combout\ = (\COMP_CCD|count\(22) & (\COMP_CCD|Add3~57\ $ (GND))) # (!\COMP_CCD|count\(22) & (!\COMP_CCD|Add3~57\ & VCC))
-- \COMP_CCD|Add3~60\ = CARRY((\COMP_CCD|count\(22) & !\COMP_CCD|Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(22),
	datad => VCC,
	cin => \COMP_CCD|Add3~57\,
	combout => \COMP_CCD|Add3~59_combout\,
	cout => \COMP_CCD|Add3~60\);

-- Location: LCCOMB_X24_Y8_N8
\COMP_CCD|Add3~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~61_combout\ = (\COMP_CCD|Add3~59_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~59_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~61_combout\);

-- Location: FF_X24_Y8_N9
\COMP_CCD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~61_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(22));

-- Location: LCCOMB_X25_Y8_N14
\COMP_CCD|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~62_combout\ = (\COMP_CCD|count\(23) & (!\COMP_CCD|Add3~60\)) # (!\COMP_CCD|count\(23) & ((\COMP_CCD|Add3~60\) # (GND)))
-- \COMP_CCD|Add3~63\ = CARRY((!\COMP_CCD|Add3~60\) # (!\COMP_CCD|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(23),
	datad => VCC,
	cin => \COMP_CCD|Add3~60\,
	combout => \COMP_CCD|Add3~62_combout\,
	cout => \COMP_CCD|Add3~63\);

-- Location: LCCOMB_X24_Y8_N10
\COMP_CCD|Add3~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~64_combout\ = (\COMP_CCD|Add3~62_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~62_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~64_combout\);

-- Location: FF_X24_Y8_N11
\COMP_CCD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~64_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(23));

-- Location: LCCOMB_X25_Y8_N16
\COMP_CCD|Add3~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~65_combout\ = (\COMP_CCD|count\(24) & (\COMP_CCD|Add3~63\ $ (GND))) # (!\COMP_CCD|count\(24) & (!\COMP_CCD|Add3~63\ & VCC))
-- \COMP_CCD|Add3~66\ = CARRY((\COMP_CCD|count\(24) & !\COMP_CCD|Add3~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(24),
	datad => VCC,
	cin => \COMP_CCD|Add3~63\,
	combout => \COMP_CCD|Add3~65_combout\,
	cout => \COMP_CCD|Add3~66\);

-- Location: LCCOMB_X24_Y8_N26
\COMP_CCD|Add3~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~67_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~65_combout\,
	combout => \COMP_CCD|Add3~67_combout\);

-- Location: FF_X24_Y8_N27
\COMP_CCD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~67_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(24));

-- Location: LCCOMB_X25_Y8_N18
\COMP_CCD|Add3~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~68_combout\ = (\COMP_CCD|count\(25) & (!\COMP_CCD|Add3~66\)) # (!\COMP_CCD|count\(25) & ((\COMP_CCD|Add3~66\) # (GND)))
-- \COMP_CCD|Add3~69\ = CARRY((!\COMP_CCD|Add3~66\) # (!\COMP_CCD|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(25),
	datad => VCC,
	cin => \COMP_CCD|Add3~66\,
	combout => \COMP_CCD|Add3~68_combout\,
	cout => \COMP_CCD|Add3~69\);

-- Location: LCCOMB_X24_Y8_N28
\COMP_CCD|Add3~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~70_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~68_combout\,
	combout => \COMP_CCD|Add3~70_combout\);

-- Location: FF_X24_Y8_N29
\COMP_CCD|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~70_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(25));

-- Location: LCCOMB_X25_Y8_N20
\COMP_CCD|Add3~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~71_combout\ = (\COMP_CCD|count\(26) & (\COMP_CCD|Add3~69\ $ (GND))) # (!\COMP_CCD|count\(26) & (!\COMP_CCD|Add3~69\ & VCC))
-- \COMP_CCD|Add3~72\ = CARRY((\COMP_CCD|count\(26) & !\COMP_CCD|Add3~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(26),
	datad => VCC,
	cin => \COMP_CCD|Add3~69\,
	combout => \COMP_CCD|Add3~71_combout\,
	cout => \COMP_CCD|Add3~72\);

-- Location: LCCOMB_X24_Y8_N18
\COMP_CCD|Add3~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~73_combout\ = (\COMP_CCD|Add3~71_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~71_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~73_combout\);

-- Location: FF_X24_Y8_N19
\COMP_CCD|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~73_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(26));

-- Location: LCCOMB_X25_Y8_N22
\COMP_CCD|Add3~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~75_combout\ = (\COMP_CCD|count\(27) & (!\COMP_CCD|Add3~72\)) # (!\COMP_CCD|count\(27) & ((\COMP_CCD|Add3~72\) # (GND)))
-- \COMP_CCD|Add3~76\ = CARRY((!\COMP_CCD|Add3~72\) # (!\COMP_CCD|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(27),
	datad => VCC,
	cin => \COMP_CCD|Add3~72\,
	combout => \COMP_CCD|Add3~75_combout\,
	cout => \COMP_CCD|Add3~76\);

-- Location: LCCOMB_X23_Y10_N24
\COMP_CCD|Add3~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~77_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~75_combout\,
	combout => \COMP_CCD|Add3~77_combout\);

-- Location: FF_X23_Y10_N25
\COMP_CCD|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~77_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(27));

-- Location: LCCOMB_X25_Y8_N24
\COMP_CCD|Add3~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~78_combout\ = (\COMP_CCD|count\(28) & (\COMP_CCD|Add3~76\ $ (GND))) # (!\COMP_CCD|count\(28) & (!\COMP_CCD|Add3~76\ & VCC))
-- \COMP_CCD|Add3~79\ = CARRY((\COMP_CCD|count\(28) & !\COMP_CCD|Add3~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(28),
	datad => VCC,
	cin => \COMP_CCD|Add3~76\,
	combout => \COMP_CCD|Add3~78_combout\,
	cout => \COMP_CCD|Add3~79\);

-- Location: LCCOMB_X24_Y8_N6
\COMP_CCD|Add3~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~80_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~78_combout\,
	combout => \COMP_CCD|Add3~80_combout\);

-- Location: FF_X24_Y8_N7
\COMP_CCD|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~80_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(28));

-- Location: LCCOMB_X25_Y8_N26
\COMP_CCD|Add3~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~85_combout\ = (\COMP_CCD|count\(29) & (!\COMP_CCD|Add3~79\)) # (!\COMP_CCD|count\(29) & ((\COMP_CCD|Add3~79\) # (GND)))
-- \COMP_CCD|Add3~86\ = CARRY((!\COMP_CCD|Add3~79\) # (!\COMP_CCD|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(29),
	datad => VCC,
	cin => \COMP_CCD|Add3~79\,
	combout => \COMP_CCD|Add3~85_combout\,
	cout => \COMP_CCD|Add3~86\);

-- Location: LCCOMB_X23_Y10_N18
\COMP_CCD|Add3~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~90_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~85_combout\,
	combout => \COMP_CCD|Add3~90_combout\);

-- Location: FF_X23_Y10_N19
\COMP_CCD|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~90_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(29));

-- Location: LCCOMB_X25_Y8_N28
\COMP_CCD|Add3~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~87_combout\ = (\COMP_CCD|count\(30) & (\COMP_CCD|Add3~86\ $ (GND))) # (!\COMP_CCD|count\(30) & (!\COMP_CCD|Add3~86\ & VCC))
-- \COMP_CCD|Add3~88\ = CARRY((\COMP_CCD|count\(30) & !\COMP_CCD|Add3~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datad => VCC,
	cin => \COMP_CCD|Add3~86\,
	combout => \COMP_CCD|Add3~87_combout\,
	cout => \COMP_CCD|Add3~88\);

-- Location: LCCOMB_X24_Y9_N12
\COMP_CCD|Add3~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~89_combout\ = (\COMP_CCD|count[14]~0_combout\ & \COMP_CCD|Add3~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~87_combout\,
	combout => \COMP_CCD|Add3~89_combout\);

-- Location: FF_X24_Y9_N13
\COMP_CCD|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~89_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(30));

-- Location: LCCOMB_X25_Y8_N30
\COMP_CCD|Add3~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~91_combout\ = \COMP_CCD|Add3~88\ $ (\COMP_CCD|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count\(31),
	cin => \COMP_CCD|Add3~88\,
	combout => \COMP_CCD|Add3~91_combout\);

-- Location: LCCOMB_X24_Y8_N20
\COMP_CCD|Add3~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~93_combout\ = (\COMP_CCD|Add3~91_combout\ & \COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~91_combout\,
	datad => \COMP_CCD|count[14]~0_combout\,
	combout => \COMP_CCD|Add3~93_combout\);

-- Location: FF_X24_Y8_N21
\COMP_CCD|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~93_combout\,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(31));

-- Location: LCCOMB_X24_Y9_N28
\COMP_CCD|count[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[14]~0_combout\ = (\COMP_CCD|count\(31) & ((\COMP_CCD|trigger_start_reg~q\) # ((\COMP_CCD|process_1~17_combout\)))) # (!\COMP_CCD|count\(31) & (\COMP_CCD|LessThan15~4_combout\ & ((\COMP_CCD|trigger_start_reg~q\) # 
-- (\COMP_CCD|process_1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|trigger_start_reg~q\,
	datac => \COMP_CCD|process_1~17_combout\,
	datad => \COMP_CCD|LessThan15~4_combout\,
	combout => \COMP_CCD|count[14]~0_combout\);

-- Location: LCCOMB_X24_Y9_N10
\COMP_CCD|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~26_combout\ = (!\COMP_CCD|Add3~24_combout\) # (!\COMP_CCD|count[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count[14]~0_combout\,
	datad => \COMP_CCD|Add3~24_combout\,
	combout => \COMP_CCD|Add3~26_combout\);

-- Location: FF_X23_Y9_N29
\COMP_CCD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|Add3~26_combout\,
	sload => VCC,
	ena => \COMP_CCD|count[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(12));

-- Location: LCCOMB_X22_Y9_N16
\COMP_CCD|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~0_combout\ = (\COMP_CCD|count\(7)) # ((!\COMP_CCD|count\(6) & (\COMP_CCD|count\(4) & !\COMP_CCD|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(5),
	datad => \COMP_CCD|count\(7),
	combout => \COMP_CCD|LessThan11~0_combout\);

-- Location: LCCOMB_X22_Y9_N6
\COMP_CCD|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~1_combout\ = (!\COMP_CCD|count\(6) & (\COMP_CCD|count\(2) & (!\COMP_CCD|count\(5) & \COMP_CCD|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|count\(5),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|LessThan11~1_combout\);

-- Location: LCCOMB_X23_Y9_N18
\COMP_CCD|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan9~0_combout\ = (\COMP_CCD|LessThan12~0_combout\ & ((\COMP_CCD|LessThan11~0_combout\) # ((\COMP_CCD|count\(3) & \COMP_CCD|LessThan11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan11~0_combout\,
	datab => \COMP_CCD|count\(3),
	datac => \COMP_CCD|LessThan11~1_combout\,
	datad => \COMP_CCD|LessThan12~0_combout\,
	combout => \COMP_CCD|LessThan9~0_combout\);

-- Location: LCCOMB_X23_Y9_N26
\COMP_CCD|LessThan11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan11~2_combout\ = (\COMP_CCD|LessThan6~1_combout\ & ((\COMP_CCD|count\(12)) # (\COMP_CCD|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|LessThan9~0_combout\,
	combout => \COMP_CCD|LessThan11~2_combout\);

-- Location: LCCOMB_X23_Y10_N30
\COMP_CCD|process_1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~13_combout\ = (!\COMP_CCD|count\(29) & (!\COMP_CCD|count\(31) & (!\COMP_CCD|count\(30) & !\COMP_CCD|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(29),
	datab => \COMP_CCD|count\(31),
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|count\(28),
	combout => \COMP_CCD|process_1~13_combout\);

-- Location: LCCOMB_X23_Y9_N20
\COMP_CCD|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan9~1_combout\ = (\COMP_CCD|count\(12) & (!\COMP_CCD|count\(27) & (\COMP_CCD|LessThan6~1_combout\ & \COMP_CCD|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|count\(27),
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|LessThan9~0_combout\,
	combout => \COMP_CCD|LessThan9~1_combout\);

-- Location: LCCOMB_X23_Y9_N12
\COMP_CCD|process_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~16_combout\ = ((\COMP_CCD|count\(27)) # ((\COMP_CCD|LessThan9~1_combout\) # (!\COMP_CCD|process_1~13_combout\))) # (!\COMP_CCD|LessThan11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan11~2_combout\,
	datab => \COMP_CCD|count\(27),
	datac => \COMP_CCD|process_1~13_combout\,
	datad => \COMP_CCD|LessThan9~1_combout\,
	combout => \COMP_CCD|process_1~16_combout\);

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

-- Location: LCCOMB_X24_Y13_N2
\COMP_CCD|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~6_combout\ = (\COMP_CCD|process_1~16_combout\) # (\adc_data_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_1~16_combout\,
	datad => \adc_data_in[0]~input_o\,
	combout => \COMP_CCD|data_out~6_combout\);

-- Location: LCCOMB_X23_Y9_N2
\COMP_CCD|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~2_combout\ = (\COMP_CCD|count\(12) & (\COMP_CCD|count\(7) & \COMP_CCD|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|count\(7),
	datad => \COMP_CCD|LessThan12~0_combout\,
	combout => \COMP_CCD|process_1~2_combout\);

-- Location: LCCOMB_X23_Y9_N30
\COMP_CCD|process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~6_combout\ = (\COMP_CCD|process_1~3_combout\ & (\COMP_CCD|process_1~4_combout\ & \COMP_CCD|process_1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~3_combout\,
	datac => \COMP_CCD|process_1~4_combout\,
	datad => \COMP_CCD|process_1~5_combout\,
	combout => \COMP_CCD|process_1~6_combout\);

-- Location: LCCOMB_X22_Y9_N18
\COMP_CCD|process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~7_combout\ = (\COMP_CCD|count\(4) & ((\COMP_CCD|count\(3)) # ((\COMP_CCD|count\(2)) # (\COMP_CCD|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|process_1~7_combout\);

-- Location: LCCOMB_X23_Y9_N8
\COMP_CCD|process_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~8_combout\ = (\COMP_CCD|process_1~6_combout\ & (((\COMP_CCD|process_1~7_combout\) # (!\COMP_CCD|count\(5))) # (!\COMP_CCD|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~6_combout\,
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|count\(5),
	datad => \COMP_CCD|process_1~7_combout\,
	combout => \COMP_CCD|process_1~8_combout\);

-- Location: LCCOMB_X22_Y9_N12
\COMP_CCD|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~2_combout\ = ((\COMP_CCD|count\(4) & !\COMP_CCD|count\(5))) # (!\COMP_CCD|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(5),
	combout => \COMP_CCD|LessThan6~2_combout\);

-- Location: LCCOMB_X23_Y9_N10
\COMP_CCD|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~3_combout\ = (\COMP_CCD|LessThan6~2_combout\ & (\COMP_CCD|LessThan6~1_combout\ & \COMP_CCD|process_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan6~2_combout\,
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|process_1~2_combout\,
	combout => \COMP_CCD|LessThan6~3_combout\);

-- Location: LCCOMB_X23_Y9_N0
\COMP_CCD|process_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~9_combout\ = (((\COMP_CCD|process_1~2_combout\ & \COMP_CCD|process_1~8_combout\)) # (!\COMP_CCD|LessThan6~3_combout\)) # (!\COMP_CCD|LessThan15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan15~0_combout\,
	datab => \COMP_CCD|process_1~2_combout\,
	datac => \COMP_CCD|process_1~8_combout\,
	datad => \COMP_CCD|LessThan6~3_combout\,
	combout => \COMP_CCD|process_1~9_combout\);

-- Location: LCCOMB_X24_Y10_N12
\COMP_CCD|process_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~12_combout\ = (\COMP_CCD|count\(30)) # ((\COMP_CCD|process_1~9_combout\) # (\COMP_CCD|count\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datab => \COMP_CCD|process_1~9_combout\,
	datad => \COMP_CCD|count\(31),
	combout => \COMP_CCD|process_1~12_combout\);

-- Location: LCCOMB_X22_Y9_N0
\COMP_CCD|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~0_combout\ = (\COMP_CCD|count\(3)) # ((\COMP_CCD|count\(4)) # ((\COMP_CCD|count\(2)) # (!\COMP_CCD|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(5),
	datad => \COMP_CCD|count\(2),
	combout => \COMP_CCD|LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y10_N10
\COMP_CCD|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~0_combout\ = (!\COMP_CCD|count\(6) & (!\COMP_CCD|count\(27) & !\COMP_CCD|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|count\(27),
	datad => \COMP_CCD|count\(28),
	combout => \COMP_CCD|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y10_N28
\COMP_CCD|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~1_combout\ = (\COMP_CCD|LessThan3~0_combout\ & (\COMP_CCD|process_1~2_combout\ & (\COMP_CCD|LessThan6~1_combout\ & \COMP_CCD|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~0_combout\,
	datab => \COMP_CCD|process_1~2_combout\,
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|LessThan1~0_combout\,
	combout => \COMP_CCD|LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y9_N14
\COMP_CCD|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan4~0_combout\ = (!\COMP_CCD|count\(5) & (\COMP_CCD|count\(4) & ((\COMP_CCD|count\(2)) # (\COMP_CCD|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(2),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|LessThan4~0_combout\);

-- Location: LCCOMB_X23_Y10_N12
\COMP_CCD|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan4~1_combout\ = (\COMP_CCD|LessThan15~0_combout\ & (((\COMP_CCD|count\(3) & \COMP_CCD|LessThan4~0_combout\)) # (!\COMP_CCD|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|LessThan15~0_combout\,
	datad => \COMP_CCD|LessThan4~0_combout\,
	combout => \COMP_CCD|LessThan4~1_combout\);

-- Location: LCCOMB_X23_Y10_N26
\COMP_CCD|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan4~2_combout\ = (\COMP_CCD|process_1~2_combout\ & (\COMP_CCD|LessThan6~1_combout\ & \COMP_CCD|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~2_combout\,
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|LessThan4~1_combout\,
	combout => \COMP_CCD|LessThan4~2_combout\);

-- Location: LCCOMB_X24_Y10_N14
\COMP_CCD|process_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~10_combout\ = (\COMP_CCD|count\(30)) # ((\COMP_CCD|LessThan3~1_combout\) # ((\COMP_CCD|count\(31)) # (!\COMP_CCD|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datab => \COMP_CCD|LessThan3~1_combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \COMP_CCD|count\(31),
	combout => \COMP_CCD|process_1~10_combout\);

-- Location: LCCOMB_X23_Y10_N4
\COMP_CCD|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~3_combout\ = (!\COMP_CCD|count\(30) & !\COMP_CCD|count\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|count\(29),
	combout => \COMP_CCD|LessThan1~3_combout\);

-- Location: LCCOMB_X22_Y9_N2
\COMP_CCD|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~1_combout\ = ((\COMP_CCD|count\(3) & \COMP_CCD|count\(4))) # (!\COMP_CCD|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(5),
	combout => \COMP_CCD|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y10_N2
\COMP_CCD|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~2_combout\ = (\COMP_CCD|LessThan1~1_combout\ & (\COMP_CCD|LessThan6~1_combout\ & (\COMP_CCD|process_1~2_combout\ & \COMP_CCD|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan1~1_combout\,
	datab => \COMP_CCD|LessThan6~1_combout\,
	datac => \COMP_CCD|process_1~2_combout\,
	datad => \COMP_CCD|LessThan1~0_combout\,
	combout => \COMP_CCD|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y10_N0
\COMP_CCD|process_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~18_combout\ = (\COMP_CCD|count\(31)) # (((\COMP_CCD|LessThan1~2_combout\) # (!\COMP_CCD|LessThan1~3_combout\)) # (!\COMP_CCD|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|LessThan3~1_combout\,
	datac => \COMP_CCD|LessThan1~3_combout\,
	datad => \COMP_CCD|LessThan1~2_combout\,
	combout => \COMP_CCD|process_1~18_combout\);

-- Location: LCCOMB_X24_Y13_N16
\COMP_CCD|data_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~4_combout\ = (\COMP_CCD|process_1~10_combout\ & \COMP_CCD|process_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~10_combout\,
	datac => \COMP_CCD|process_1~18_combout\,
	combout => \COMP_CCD|data_out[0]~4_combout\);

-- Location: LCCOMB_X23_Y10_N0
\COMP_CCD|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~2_combout\ = (!\COMP_CCD|count\(29) & (!\COMP_CCD|count\(30) & \COMP_CCD|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(29),
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|LessThan3~2_combout\);

-- Location: LCCOMB_X23_Y10_N16
\COMP_CCD|clk_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~3_combout\ = (!\COMP_CCD|count\(31) & ((\COMP_CCD|count\(29)) # ((\COMP_CCD|count\(30)) # (!\COMP_CCD|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count\(29),
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|LessThan1~2_combout\,
	combout => \COMP_CCD|clk_reg~3_combout\);

-- Location: LCCOMB_X23_Y10_N6
\COMP_CCD|count_start_seq[15]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[15]~103_combout\ = (\COMP_CCD|LessThan4~1_combout\ & (\COMP_CCD|process_1~2_combout\ & (\COMP_CCD|LessThan6~1_combout\ & !\COMP_CCD|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan4~1_combout\,
	datab => \COMP_CCD|process_1~2_combout\,
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|count_start_seq[15]~103_combout\);

-- Location: LCCOMB_X23_Y10_N8
\COMP_CCD|ccd_ready_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~2_combout\ = (\COMP_CCD|count\(31)) # ((\COMP_CCD|count\(30)) # ((\COMP_CCD|process_1~9_combout\ & !\COMP_CCD|count_start_seq[15]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~9_combout\,
	datab => \COMP_CCD|count\(31),
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|count_start_seq[15]~103_combout\,
	combout => \COMP_CCD|ccd_ready_reg~2_combout\);

-- Location: LCCOMB_X23_Y11_N8
\COMP_CCD|clk_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~2_combout\ = (\COMP_CCD|clk_reg~3_combout\ & (!\COMP_CCD|LessThan3~2_combout\ & (\COMP_CCD|clk_reg~q\ $ (\COMP_CCD|ccd_ready_reg~2_combout\)))) # (!\COMP_CCD|clk_reg~3_combout\ & (((!\COMP_CCD|clk_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~2_combout\,
	datab => \COMP_CCD|clk_reg~3_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|ccd_ready_reg~2_combout\,
	combout => \COMP_CCD|clk_reg~2_combout\);

-- Location: FF_X23_Y11_N9
\COMP_CCD|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|clk_reg~2_combout\,
	ena => \COMP_CCD|Equal4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_reg~q\);

-- Location: LCCOMB_X22_Y11_N0
\COMP_CCD|count_start_seq[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[0]~34_combout\ = (\COMP_CCD|count_start_seq\(0) & (\COMP_CCD|clk_reg~q\ $ (VCC))) # (!\COMP_CCD|count_start_seq\(0) & (\COMP_CCD|clk_reg~q\ & VCC))
-- \COMP_CCD|count_start_seq[0]~35\ = CARRY((\COMP_CCD|count_start_seq\(0) & \COMP_CCD|clk_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|clk_reg~q\,
	datad => VCC,
	combout => \COMP_CCD|count_start_seq[0]~34_combout\,
	cout => \COMP_CCD|count_start_seq[0]~35\);

-- Location: LCCOMB_X23_Y10_N14
\COMP_CCD|count_start_seq[15]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[15]~98_combout\ = (!\COMP_CCD|count\(31) & (!\COMP_CCD|count\(30) & ((\COMP_CCD|count_start_seq[15]~103_combout\) # (!\COMP_CCD|process_1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|process_1~9_combout\,
	datad => \COMP_CCD|count_start_seq[15]~103_combout\,
	combout => \COMP_CCD|count_start_seq[15]~98_combout\);

-- Location: LCCOMB_X23_Y12_N18
\COMP_CCD|count_start_seq[15]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[15]~99_combout\ = (\COMP_CCD|count_start_seq[15]~98_combout\) # (!\COMP_CCD|process_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_1~16_combout\,
	datad => \COMP_CCD|count_start_seq[15]~98_combout\,
	combout => \COMP_CCD|count_start_seq[15]~99_combout\);

-- Location: LCCOMB_X23_Y11_N4
\COMP_CCD|process_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~11_combout\ = (\COMP_CCD|count\(31)) # (\COMP_CCD|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(31),
	datad => \COMP_CCD|LessThan1~2_combout\,
	combout => \COMP_CCD|process_1~11_combout\);

-- Location: LCCOMB_X23_Y9_N22
\COMP_CCD|ccd_ready_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~8_combout\ = (!\COMP_CCD|process_1~16_combout\ & ((\COMP_CCD|LessThan6~3_combout\) # ((!\COMP_CCD|process_1~13_combout\) # (!\COMP_CCD|LessThan9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan6~3_combout\,
	datab => \COMP_CCD|LessThan9~1_combout\,
	datac => \COMP_CCD|process_1~13_combout\,
	datad => \COMP_CCD|process_1~16_combout\,
	combout => \COMP_CCD|ccd_ready_reg~8_combout\);

-- Location: LCCOMB_X22_Y9_N10
\COMP_CCD|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan12~1_combout\ = (\COMP_CCD|count\(7)) # ((!\COMP_CCD|count\(5) & (!\COMP_CCD|LessThan15~1_combout\ & !\COMP_CCD|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datab => \COMP_CCD|LessThan15~1_combout\,
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|count\(7),
	combout => \COMP_CCD|LessThan12~1_combout\);

-- Location: LCCOMB_X23_Y9_N24
\COMP_CCD|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan12~2_combout\ = (\COMP_CCD|LessThan6~1_combout\ & ((\COMP_CCD|count\(12)) # ((\COMP_CCD|LessThan12~0_combout\ & \COMP_CCD|LessThan12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datab => \COMP_CCD|LessThan12~0_combout\,
	datac => \COMP_CCD|LessThan6~1_combout\,
	datad => \COMP_CCD|LessThan12~1_combout\,
	combout => \COMP_CCD|LessThan12~2_combout\);

-- Location: LCCOMB_X23_Y9_N6
\COMP_CCD|process_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~15_combout\ = ((\COMP_CCD|count\(27)) # ((\COMP_CCD|LessThan11~2_combout\) # (!\COMP_CCD|LessThan12~2_combout\))) # (!\COMP_CCD|process_1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~13_combout\,
	datab => \COMP_CCD|count\(27),
	datac => \COMP_CCD|LessThan11~2_combout\,
	datad => \COMP_CCD|LessThan12~2_combout\,
	combout => \COMP_CCD|process_1~15_combout\);

-- Location: LCCOMB_X23_Y9_N16
\COMP_CCD|process_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_1~14_combout\ = (\COMP_CCD|LessThan6~3_combout\) # ((!\COMP_CCD|LessThan9~1_combout\) # (!\COMP_CCD|process_1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan6~3_combout\,
	datac => \COMP_CCD|process_1~13_combout\,
	datad => \COMP_CCD|LessThan9~1_combout\,
	combout => \COMP_CCD|process_1~14_combout\);

-- Location: LCCOMB_X22_Y11_N2
\COMP_CCD|count_start_seq[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[1]~36_combout\ = (\COMP_CCD|count_start_seq\(1) & (!\COMP_CCD|count_start_seq[0]~35\)) # (!\COMP_CCD|count_start_seq\(1) & ((\COMP_CCD|count_start_seq[0]~35\) # (GND)))
-- \COMP_CCD|count_start_seq[1]~37\ = CARRY((!\COMP_CCD|count_start_seq[0]~35\) # (!\COMP_CCD|count_start_seq\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(1),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[0]~35\,
	combout => \COMP_CCD|count_start_seq[1]~36_combout\,
	cout => \COMP_CCD|count_start_seq[1]~37\);

-- Location: LCCOMB_X22_Y11_N4
\COMP_CCD|count_start_seq[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[2]~38_combout\ = (\COMP_CCD|count_start_seq\(2) & (\COMP_CCD|count_start_seq[1]~37\ $ (GND))) # (!\COMP_CCD|count_start_seq\(2) & (!\COMP_CCD|count_start_seq[1]~37\ & VCC))
-- \COMP_CCD|count_start_seq[2]~39\ = CARRY((\COMP_CCD|count_start_seq\(2) & !\COMP_CCD|count_start_seq[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(2),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[1]~37\,
	combout => \COMP_CCD|count_start_seq[2]~38_combout\,
	cout => \COMP_CCD|count_start_seq[2]~39\);

-- Location: FF_X22_Y11_N5
\COMP_CCD|count_start_seq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[2]~38_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(2));

-- Location: LCCOMB_X22_Y11_N6
\COMP_CCD|count_start_seq[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[3]~40_combout\ = (\COMP_CCD|count_start_seq\(3) & (!\COMP_CCD|count_start_seq[2]~39\)) # (!\COMP_CCD|count_start_seq\(3) & ((\COMP_CCD|count_start_seq[2]~39\) # (GND)))
-- \COMP_CCD|count_start_seq[3]~41\ = CARRY((!\COMP_CCD|count_start_seq[2]~39\) # (!\COMP_CCD|count_start_seq\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(3),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[2]~39\,
	combout => \COMP_CCD|count_start_seq[3]~40_combout\,
	cout => \COMP_CCD|count_start_seq[3]~41\);

-- Location: FF_X22_Y11_N7
\COMP_CCD|count_start_seq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[3]~40_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(3));

-- Location: LCCOMB_X22_Y11_N8
\COMP_CCD|count_start_seq[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[4]~42_combout\ = (\COMP_CCD|count_start_seq\(4) & (\COMP_CCD|count_start_seq[3]~41\ $ (GND))) # (!\COMP_CCD|count_start_seq\(4) & (!\COMP_CCD|count_start_seq[3]~41\ & VCC))
-- \COMP_CCD|count_start_seq[4]~43\ = CARRY((\COMP_CCD|count_start_seq\(4) & !\COMP_CCD|count_start_seq[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(4),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[3]~41\,
	combout => \COMP_CCD|count_start_seq[4]~42_combout\,
	cout => \COMP_CCD|count_start_seq[4]~43\);

-- Location: FF_X22_Y11_N9
\COMP_CCD|count_start_seq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[4]~42_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(4));

-- Location: LCCOMB_X22_Y11_N10
\COMP_CCD|count_start_seq[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[5]~44_combout\ = (\COMP_CCD|count_start_seq\(5) & (!\COMP_CCD|count_start_seq[4]~43\)) # (!\COMP_CCD|count_start_seq\(5) & ((\COMP_CCD|count_start_seq[4]~43\) # (GND)))
-- \COMP_CCD|count_start_seq[5]~45\ = CARRY((!\COMP_CCD|count_start_seq[4]~43\) # (!\COMP_CCD|count_start_seq\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(5),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[4]~43\,
	combout => \COMP_CCD|count_start_seq[5]~44_combout\,
	cout => \COMP_CCD|count_start_seq[5]~45\);

-- Location: FF_X22_Y11_N11
\COMP_CCD|count_start_seq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[5]~44_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(5));

-- Location: LCCOMB_X22_Y11_N12
\COMP_CCD|count_start_seq[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[6]~46_combout\ = (\COMP_CCD|count_start_seq\(6) & (\COMP_CCD|count_start_seq[5]~45\ $ (GND))) # (!\COMP_CCD|count_start_seq\(6) & (!\COMP_CCD|count_start_seq[5]~45\ & VCC))
-- \COMP_CCD|count_start_seq[6]~47\ = CARRY((\COMP_CCD|count_start_seq\(6) & !\COMP_CCD|count_start_seq[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(6),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[5]~45\,
	combout => \COMP_CCD|count_start_seq[6]~46_combout\,
	cout => \COMP_CCD|count_start_seq[6]~47\);

-- Location: FF_X22_Y11_N13
\COMP_CCD|count_start_seq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[6]~46_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(6));

-- Location: LCCOMB_X22_Y11_N14
\COMP_CCD|count_start_seq[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[7]~48_combout\ = (\COMP_CCD|count_start_seq\(7) & (!\COMP_CCD|count_start_seq[6]~47\)) # (!\COMP_CCD|count_start_seq\(7) & ((\COMP_CCD|count_start_seq[6]~47\) # (GND)))
-- \COMP_CCD|count_start_seq[7]~49\ = CARRY((!\COMP_CCD|count_start_seq[6]~47\) # (!\COMP_CCD|count_start_seq\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(7),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[6]~47\,
	combout => \COMP_CCD|count_start_seq[7]~48_combout\,
	cout => \COMP_CCD|count_start_seq[7]~49\);

-- Location: FF_X22_Y11_N15
\COMP_CCD|count_start_seq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[7]~48_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(7));

-- Location: LCCOMB_X22_Y11_N16
\COMP_CCD|count_start_seq[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[8]~50_combout\ = (\COMP_CCD|count_start_seq\(8) & (\COMP_CCD|count_start_seq[7]~49\ $ (GND))) # (!\COMP_CCD|count_start_seq\(8) & (!\COMP_CCD|count_start_seq[7]~49\ & VCC))
-- \COMP_CCD|count_start_seq[8]~51\ = CARRY((\COMP_CCD|count_start_seq\(8) & !\COMP_CCD|count_start_seq[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(8),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[7]~49\,
	combout => \COMP_CCD|count_start_seq[8]~50_combout\,
	cout => \COMP_CCD|count_start_seq[8]~51\);

-- Location: FF_X22_Y11_N17
\COMP_CCD|count_start_seq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[8]~50_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(8));

-- Location: LCCOMB_X22_Y11_N18
\COMP_CCD|count_start_seq[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[9]~52_combout\ = (\COMP_CCD|count_start_seq\(9) & (!\COMP_CCD|count_start_seq[8]~51\)) # (!\COMP_CCD|count_start_seq\(9) & ((\COMP_CCD|count_start_seq[8]~51\) # (GND)))
-- \COMP_CCD|count_start_seq[9]~53\ = CARRY((!\COMP_CCD|count_start_seq[8]~51\) # (!\COMP_CCD|count_start_seq\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(9),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[8]~51\,
	combout => \COMP_CCD|count_start_seq[9]~52_combout\,
	cout => \COMP_CCD|count_start_seq[9]~53\);

-- Location: FF_X22_Y11_N19
\COMP_CCD|count_start_seq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[9]~52_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(9));

-- Location: LCCOMB_X22_Y11_N20
\COMP_CCD|count_start_seq[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[10]~54_combout\ = (\COMP_CCD|count_start_seq\(10) & (\COMP_CCD|count_start_seq[9]~53\ $ (GND))) # (!\COMP_CCD|count_start_seq\(10) & (!\COMP_CCD|count_start_seq[9]~53\ & VCC))
-- \COMP_CCD|count_start_seq[10]~55\ = CARRY((\COMP_CCD|count_start_seq\(10) & !\COMP_CCD|count_start_seq[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(10),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[9]~53\,
	combout => \COMP_CCD|count_start_seq[10]~54_combout\,
	cout => \COMP_CCD|count_start_seq[10]~55\);

-- Location: FF_X22_Y11_N21
\COMP_CCD|count_start_seq[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[10]~54_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(10));

-- Location: LCCOMB_X22_Y11_N22
\COMP_CCD|count_start_seq[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[11]~56_combout\ = (\COMP_CCD|count_start_seq\(11) & (!\COMP_CCD|count_start_seq[10]~55\)) # (!\COMP_CCD|count_start_seq\(11) & ((\COMP_CCD|count_start_seq[10]~55\) # (GND)))
-- \COMP_CCD|count_start_seq[11]~57\ = CARRY((!\COMP_CCD|count_start_seq[10]~55\) # (!\COMP_CCD|count_start_seq\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(11),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[10]~55\,
	combout => \COMP_CCD|count_start_seq[11]~56_combout\,
	cout => \COMP_CCD|count_start_seq[11]~57\);

-- Location: FF_X22_Y11_N23
\COMP_CCD|count_start_seq[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[11]~56_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(11));

-- Location: LCCOMB_X22_Y11_N24
\COMP_CCD|count_start_seq[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[12]~58_combout\ = (\COMP_CCD|count_start_seq\(12) & (\COMP_CCD|count_start_seq[11]~57\ $ (GND))) # (!\COMP_CCD|count_start_seq\(12) & (!\COMP_CCD|count_start_seq[11]~57\ & VCC))
-- \COMP_CCD|count_start_seq[12]~59\ = CARRY((\COMP_CCD|count_start_seq\(12) & !\COMP_CCD|count_start_seq[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(12),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[11]~57\,
	combout => \COMP_CCD|count_start_seq[12]~58_combout\,
	cout => \COMP_CCD|count_start_seq[12]~59\);

-- Location: FF_X22_Y11_N25
\COMP_CCD|count_start_seq[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[12]~58_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(12));

-- Location: LCCOMB_X22_Y11_N26
\COMP_CCD|count_start_seq[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[13]~60_combout\ = (\COMP_CCD|count_start_seq\(13) & (!\COMP_CCD|count_start_seq[12]~59\)) # (!\COMP_CCD|count_start_seq\(13) & ((\COMP_CCD|count_start_seq[12]~59\) # (GND)))
-- \COMP_CCD|count_start_seq[13]~61\ = CARRY((!\COMP_CCD|count_start_seq[12]~59\) # (!\COMP_CCD|count_start_seq\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(13),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[12]~59\,
	combout => \COMP_CCD|count_start_seq[13]~60_combout\,
	cout => \COMP_CCD|count_start_seq[13]~61\);

-- Location: FF_X22_Y11_N27
\COMP_CCD|count_start_seq[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[13]~60_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(13));

-- Location: LCCOMB_X22_Y11_N28
\COMP_CCD|count_start_seq[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[14]~62_combout\ = (\COMP_CCD|count_start_seq\(14) & (\COMP_CCD|count_start_seq[13]~61\ $ (GND))) # (!\COMP_CCD|count_start_seq\(14) & (!\COMP_CCD|count_start_seq[13]~61\ & VCC))
-- \COMP_CCD|count_start_seq[14]~63\ = CARRY((\COMP_CCD|count_start_seq\(14) & !\COMP_CCD|count_start_seq[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(14),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[13]~61\,
	combout => \COMP_CCD|count_start_seq[14]~62_combout\,
	cout => \COMP_CCD|count_start_seq[14]~63\);

-- Location: FF_X22_Y11_N29
\COMP_CCD|count_start_seq[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[14]~62_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(14));

-- Location: LCCOMB_X22_Y11_N30
\COMP_CCD|count_start_seq[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[15]~64_combout\ = (\COMP_CCD|count_start_seq\(15) & (!\COMP_CCD|count_start_seq[14]~63\)) # (!\COMP_CCD|count_start_seq\(15) & ((\COMP_CCD|count_start_seq[14]~63\) # (GND)))
-- \COMP_CCD|count_start_seq[15]~65\ = CARRY((!\COMP_CCD|count_start_seq[14]~63\) # (!\COMP_CCD|count_start_seq\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(15),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[14]~63\,
	combout => \COMP_CCD|count_start_seq[15]~64_combout\,
	cout => \COMP_CCD|count_start_seq[15]~65\);

-- Location: FF_X22_Y11_N31
\COMP_CCD|count_start_seq[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[15]~64_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(15));

-- Location: LCCOMB_X22_Y10_N0
\COMP_CCD|count_start_seq[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[16]~66_combout\ = (\COMP_CCD|count_start_seq\(16) & (\COMP_CCD|count_start_seq[15]~65\ $ (GND))) # (!\COMP_CCD|count_start_seq\(16) & (!\COMP_CCD|count_start_seq[15]~65\ & VCC))
-- \COMP_CCD|count_start_seq[16]~67\ = CARRY((\COMP_CCD|count_start_seq\(16) & !\COMP_CCD|count_start_seq[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(16),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[15]~65\,
	combout => \COMP_CCD|count_start_seq[16]~66_combout\,
	cout => \COMP_CCD|count_start_seq[16]~67\);

-- Location: FF_X22_Y10_N1
\COMP_CCD|count_start_seq[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[16]~66_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(16));

-- Location: LCCOMB_X22_Y10_N2
\COMP_CCD|count_start_seq[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[17]~68_combout\ = (\COMP_CCD|count_start_seq\(17) & (!\COMP_CCD|count_start_seq[16]~67\)) # (!\COMP_CCD|count_start_seq\(17) & ((\COMP_CCD|count_start_seq[16]~67\) # (GND)))
-- \COMP_CCD|count_start_seq[17]~69\ = CARRY((!\COMP_CCD|count_start_seq[16]~67\) # (!\COMP_CCD|count_start_seq\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(17),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[16]~67\,
	combout => \COMP_CCD|count_start_seq[17]~68_combout\,
	cout => \COMP_CCD|count_start_seq[17]~69\);

-- Location: FF_X22_Y10_N3
\COMP_CCD|count_start_seq[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[17]~68_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(17));

-- Location: LCCOMB_X22_Y10_N4
\COMP_CCD|count_start_seq[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[18]~70_combout\ = (\COMP_CCD|count_start_seq\(18) & (\COMP_CCD|count_start_seq[17]~69\ $ (GND))) # (!\COMP_CCD|count_start_seq\(18) & (!\COMP_CCD|count_start_seq[17]~69\ & VCC))
-- \COMP_CCD|count_start_seq[18]~71\ = CARRY((\COMP_CCD|count_start_seq\(18) & !\COMP_CCD|count_start_seq[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(18),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[17]~69\,
	combout => \COMP_CCD|count_start_seq[18]~70_combout\,
	cout => \COMP_CCD|count_start_seq[18]~71\);

-- Location: FF_X22_Y10_N5
\COMP_CCD|count_start_seq[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[18]~70_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(18));

-- Location: LCCOMB_X22_Y10_N6
\COMP_CCD|count_start_seq[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[19]~72_combout\ = (\COMP_CCD|count_start_seq\(19) & (!\COMP_CCD|count_start_seq[18]~71\)) # (!\COMP_CCD|count_start_seq\(19) & ((\COMP_CCD|count_start_seq[18]~71\) # (GND)))
-- \COMP_CCD|count_start_seq[19]~73\ = CARRY((!\COMP_CCD|count_start_seq[18]~71\) # (!\COMP_CCD|count_start_seq\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(19),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[18]~71\,
	combout => \COMP_CCD|count_start_seq[19]~72_combout\,
	cout => \COMP_CCD|count_start_seq[19]~73\);

-- Location: FF_X22_Y10_N7
\COMP_CCD|count_start_seq[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[19]~72_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(19));

-- Location: LCCOMB_X22_Y10_N8
\COMP_CCD|count_start_seq[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[20]~74_combout\ = (\COMP_CCD|count_start_seq\(20) & (\COMP_CCD|count_start_seq[19]~73\ $ (GND))) # (!\COMP_CCD|count_start_seq\(20) & (!\COMP_CCD|count_start_seq[19]~73\ & VCC))
-- \COMP_CCD|count_start_seq[20]~75\ = CARRY((\COMP_CCD|count_start_seq\(20) & !\COMP_CCD|count_start_seq[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(20),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[19]~73\,
	combout => \COMP_CCD|count_start_seq[20]~74_combout\,
	cout => \COMP_CCD|count_start_seq[20]~75\);

-- Location: FF_X22_Y10_N9
\COMP_CCD|count_start_seq[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[20]~74_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(20));

-- Location: LCCOMB_X22_Y10_N10
\COMP_CCD|count_start_seq[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[21]~76_combout\ = (\COMP_CCD|count_start_seq\(21) & (!\COMP_CCD|count_start_seq[20]~75\)) # (!\COMP_CCD|count_start_seq\(21) & ((\COMP_CCD|count_start_seq[20]~75\) # (GND)))
-- \COMP_CCD|count_start_seq[21]~77\ = CARRY((!\COMP_CCD|count_start_seq[20]~75\) # (!\COMP_CCD|count_start_seq\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(21),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[20]~75\,
	combout => \COMP_CCD|count_start_seq[21]~76_combout\,
	cout => \COMP_CCD|count_start_seq[21]~77\);

-- Location: FF_X22_Y10_N11
\COMP_CCD|count_start_seq[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[21]~76_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(21));

-- Location: LCCOMB_X22_Y10_N12
\COMP_CCD|count_start_seq[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[22]~78_combout\ = (\COMP_CCD|count_start_seq\(22) & (\COMP_CCD|count_start_seq[21]~77\ $ (GND))) # (!\COMP_CCD|count_start_seq\(22) & (!\COMP_CCD|count_start_seq[21]~77\ & VCC))
-- \COMP_CCD|count_start_seq[22]~79\ = CARRY((\COMP_CCD|count_start_seq\(22) & !\COMP_CCD|count_start_seq[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(22),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[21]~77\,
	combout => \COMP_CCD|count_start_seq[22]~78_combout\,
	cout => \COMP_CCD|count_start_seq[22]~79\);

-- Location: FF_X22_Y10_N13
\COMP_CCD|count_start_seq[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[22]~78_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(22));

-- Location: LCCOMB_X22_Y10_N14
\COMP_CCD|count_start_seq[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[23]~80_combout\ = (\COMP_CCD|count_start_seq\(23) & (!\COMP_CCD|count_start_seq[22]~79\)) # (!\COMP_CCD|count_start_seq\(23) & ((\COMP_CCD|count_start_seq[22]~79\) # (GND)))
-- \COMP_CCD|count_start_seq[23]~81\ = CARRY((!\COMP_CCD|count_start_seq[22]~79\) # (!\COMP_CCD|count_start_seq\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(23),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[22]~79\,
	combout => \COMP_CCD|count_start_seq[23]~80_combout\,
	cout => \COMP_CCD|count_start_seq[23]~81\);

-- Location: FF_X22_Y10_N15
\COMP_CCD|count_start_seq[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[23]~80_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(23));

-- Location: LCCOMB_X22_Y10_N16
\COMP_CCD|count_start_seq[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[24]~82_combout\ = (\COMP_CCD|count_start_seq\(24) & (\COMP_CCD|count_start_seq[23]~81\ $ (GND))) # (!\COMP_CCD|count_start_seq\(24) & (!\COMP_CCD|count_start_seq[23]~81\ & VCC))
-- \COMP_CCD|count_start_seq[24]~83\ = CARRY((\COMP_CCD|count_start_seq\(24) & !\COMP_CCD|count_start_seq[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(24),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[23]~81\,
	combout => \COMP_CCD|count_start_seq[24]~82_combout\,
	cout => \COMP_CCD|count_start_seq[24]~83\);

-- Location: FF_X22_Y10_N17
\COMP_CCD|count_start_seq[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[24]~82_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(24));

-- Location: LCCOMB_X22_Y10_N18
\COMP_CCD|count_start_seq[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[25]~84_combout\ = (\COMP_CCD|count_start_seq\(25) & (!\COMP_CCD|count_start_seq[24]~83\)) # (!\COMP_CCD|count_start_seq\(25) & ((\COMP_CCD|count_start_seq[24]~83\) # (GND)))
-- \COMP_CCD|count_start_seq[25]~85\ = CARRY((!\COMP_CCD|count_start_seq[24]~83\) # (!\COMP_CCD|count_start_seq\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(25),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[24]~83\,
	combout => \COMP_CCD|count_start_seq[25]~84_combout\,
	cout => \COMP_CCD|count_start_seq[25]~85\);

-- Location: FF_X22_Y10_N19
\COMP_CCD|count_start_seq[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[25]~84_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(25));

-- Location: LCCOMB_X22_Y10_N20
\COMP_CCD|count_start_seq[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[26]~86_combout\ = (\COMP_CCD|count_start_seq\(26) & (\COMP_CCD|count_start_seq[25]~85\ $ (GND))) # (!\COMP_CCD|count_start_seq\(26) & (!\COMP_CCD|count_start_seq[25]~85\ & VCC))
-- \COMP_CCD|count_start_seq[26]~87\ = CARRY((\COMP_CCD|count_start_seq\(26) & !\COMP_CCD|count_start_seq[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(26),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[25]~85\,
	combout => \COMP_CCD|count_start_seq[26]~86_combout\,
	cout => \COMP_CCD|count_start_seq[26]~87\);

-- Location: FF_X22_Y10_N21
\COMP_CCD|count_start_seq[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[26]~86_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(26));

-- Location: LCCOMB_X22_Y10_N22
\COMP_CCD|count_start_seq[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[27]~88_combout\ = (\COMP_CCD|count_start_seq\(27) & (!\COMP_CCD|count_start_seq[26]~87\)) # (!\COMP_CCD|count_start_seq\(27) & ((\COMP_CCD|count_start_seq[26]~87\) # (GND)))
-- \COMP_CCD|count_start_seq[27]~89\ = CARRY((!\COMP_CCD|count_start_seq[26]~87\) # (!\COMP_CCD|count_start_seq\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(27),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[26]~87\,
	combout => \COMP_CCD|count_start_seq[27]~88_combout\,
	cout => \COMP_CCD|count_start_seq[27]~89\);

-- Location: FF_X22_Y10_N23
\COMP_CCD|count_start_seq[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[27]~88_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(27));

-- Location: LCCOMB_X22_Y10_N24
\COMP_CCD|count_start_seq[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[28]~90_combout\ = (\COMP_CCD|count_start_seq\(28) & (\COMP_CCD|count_start_seq[27]~89\ $ (GND))) # (!\COMP_CCD|count_start_seq\(28) & (!\COMP_CCD|count_start_seq[27]~89\ & VCC))
-- \COMP_CCD|count_start_seq[28]~91\ = CARRY((\COMP_CCD|count_start_seq\(28) & !\COMP_CCD|count_start_seq[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(28),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[27]~89\,
	combout => \COMP_CCD|count_start_seq[28]~90_combout\,
	cout => \COMP_CCD|count_start_seq[28]~91\);

-- Location: FF_X22_Y10_N25
\COMP_CCD|count_start_seq[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[28]~90_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(28));

-- Location: LCCOMB_X22_Y10_N26
\COMP_CCD|count_start_seq[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[29]~92_combout\ = (\COMP_CCD|count_start_seq\(29) & (!\COMP_CCD|count_start_seq[28]~91\)) # (!\COMP_CCD|count_start_seq\(29) & ((\COMP_CCD|count_start_seq[28]~91\) # (GND)))
-- \COMP_CCD|count_start_seq[29]~93\ = CARRY((!\COMP_CCD|count_start_seq[28]~91\) # (!\COMP_CCD|count_start_seq\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(29),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[28]~91\,
	combout => \COMP_CCD|count_start_seq[29]~92_combout\,
	cout => \COMP_CCD|count_start_seq[29]~93\);

-- Location: FF_X22_Y10_N27
\COMP_CCD|count_start_seq[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[29]~92_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(29));

-- Location: LCCOMB_X22_Y10_N28
\COMP_CCD|count_start_seq[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[30]~94_combout\ = (\COMP_CCD|count_start_seq\(30) & (\COMP_CCD|count_start_seq[29]~93\ $ (GND))) # (!\COMP_CCD|count_start_seq\(30) & (!\COMP_CCD|count_start_seq[29]~93\ & VCC))
-- \COMP_CCD|count_start_seq[30]~95\ = CARRY((\COMP_CCD|count_start_seq\(30) & !\COMP_CCD|count_start_seq[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(30),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[29]~93\,
	combout => \COMP_CCD|count_start_seq[30]~94_combout\,
	cout => \COMP_CCD|count_start_seq[30]~95\);

-- Location: FF_X22_Y10_N29
\COMP_CCD|count_start_seq[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[30]~94_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(30));

-- Location: LCCOMB_X22_Y10_N30
\COMP_CCD|count_start_seq[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~96_combout\ = \COMP_CCD|count_start_seq\(31) $ (\COMP_CCD|count_start_seq[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(31),
	cin => \COMP_CCD|count_start_seq[30]~95\,
	combout => \COMP_CCD|count_start_seq[31]~96_combout\);

-- Location: FF_X22_Y10_N31
\COMP_CCD|count_start_seq[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[31]~96_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(31));

-- Location: LCCOMB_X23_Y10_N20
\COMP_CCD|Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~6_combout\ = (!\COMP_CCD|count_start_seq\(22) & (!\COMP_CCD|count_start_seq\(25) & (!\COMP_CCD|count_start_seq\(24) & !\COMP_CCD|count_start_seq\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(22),
	datab => \COMP_CCD|count_start_seq\(25),
	datac => \COMP_CCD|count_start_seq\(24),
	datad => \COMP_CCD|count_start_seq\(23),
	combout => \COMP_CCD|Equal6~6_combout\);

-- Location: LCCOMB_X25_Y10_N18
\COMP_CCD|Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~7_combout\ = (!\COMP_CCD|count_start_seq\(26) & (!\COMP_CCD|count_start_seq\(27) & (!\COMP_CCD|count_start_seq\(29) & !\COMP_CCD|count_start_seq\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(26),
	datab => \COMP_CCD|count_start_seq\(27),
	datac => \COMP_CCD|count_start_seq\(29),
	datad => \COMP_CCD|count_start_seq\(28),
	combout => \COMP_CCD|Equal6~7_combout\);

-- Location: LCCOMB_X25_Y10_N16
\COMP_CCD|Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~8_combout\ = (!\COMP_CCD|count_start_seq\(30) & \COMP_CCD|Equal6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_start_seq\(30),
	datad => \COMP_CCD|Equal6~7_combout\,
	combout => \COMP_CCD|Equal6~8_combout\);

-- Location: LCCOMB_X25_Y10_N4
\COMP_CCD|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~5_combout\ = (!\COMP_CCD|count_start_seq\(21) & (!\COMP_CCD|count_start_seq\(20) & (!\COMP_CCD|count_start_seq\(19) & !\COMP_CCD|count_start_seq\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(21),
	datab => \COMP_CCD|count_start_seq\(20),
	datac => \COMP_CCD|count_start_seq\(19),
	datad => \COMP_CCD|count_start_seq\(18),
	combout => \COMP_CCD|Equal6~5_combout\);

-- Location: LCCOMB_X25_Y10_N12
\COMP_CCD|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~3_combout\ = (!\COMP_CCD|count_start_seq\(16) & (!\COMP_CCD|count_start_seq\(17) & (!\COMP_CCD|count_start_seq\(14) & !\COMP_CCD|count_start_seq\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(16),
	datab => \COMP_CCD|count_start_seq\(17),
	datac => \COMP_CCD|count_start_seq\(14),
	datad => \COMP_CCD|count_start_seq\(15),
	combout => \COMP_CCD|Equal6~3_combout\);

-- Location: LCCOMB_X26_Y11_N30
\COMP_CCD|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~1_combout\ = (!\COMP_CCD|count_start_seq\(7) & (!\COMP_CCD|count_start_seq\(6) & (!\COMP_CCD|count_start_seq\(8) & !\COMP_CCD|count_start_seq\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(7),
	datab => \COMP_CCD|count_start_seq\(6),
	datac => \COMP_CCD|count_start_seq\(8),
	datad => \COMP_CCD|count_start_seq\(9),
	combout => \COMP_CCD|Equal6~1_combout\);

-- Location: LCCOMB_X26_Y11_N8
\COMP_CCD|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~2_combout\ = (!\COMP_CCD|count_start_seq\(11) & (!\COMP_CCD|count_start_seq\(13) & (!\COMP_CCD|count_start_seq\(12) & !\COMP_CCD|count_start_seq\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(11),
	datab => \COMP_CCD|count_start_seq\(13),
	datac => \COMP_CCD|count_start_seq\(12),
	datad => \COMP_CCD|count_start_seq\(10),
	combout => \COMP_CCD|Equal6~2_combout\);

-- Location: LCCOMB_X26_Y11_N28
\COMP_CCD|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~0_combout\ = (!\COMP_CCD|count_start_seq\(4) & (!\COMP_CCD|count_start_seq\(3) & (!\COMP_CCD|count_start_seq\(2) & !\COMP_CCD|count_start_seq\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(4),
	datab => \COMP_CCD|count_start_seq\(3),
	datac => \COMP_CCD|count_start_seq\(2),
	datad => \COMP_CCD|count_start_seq\(5),
	combout => \COMP_CCD|Equal6~0_combout\);

-- Location: LCCOMB_X25_Y10_N2
\COMP_CCD|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~4_combout\ = (\COMP_CCD|Equal6~3_combout\ & (\COMP_CCD|Equal6~1_combout\ & (\COMP_CCD|Equal6~2_combout\ & \COMP_CCD|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal6~3_combout\,
	datab => \COMP_CCD|Equal6~1_combout\,
	datac => \COMP_CCD|Equal6~2_combout\,
	datad => \COMP_CCD|Equal6~0_combout\,
	combout => \COMP_CCD|Equal6~4_combout\);

-- Location: LCCOMB_X25_Y10_N26
\COMP_CCD|Equal6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~9_combout\ = (\COMP_CCD|Equal6~6_combout\ & (\COMP_CCD|Equal6~8_combout\ & (\COMP_CCD|Equal6~5_combout\ & \COMP_CCD|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal6~6_combout\,
	datab => \COMP_CCD|Equal6~8_combout\,
	datac => \COMP_CCD|Equal6~5_combout\,
	datad => \COMP_CCD|Equal6~4_combout\,
	combout => \COMP_CCD|Equal6~9_combout\);

-- Location: LCCOMB_X24_Y10_N6
\COMP_CCD|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan13~0_combout\ = (\COMP_CCD|count_start_seq\(31)) # ((\COMP_CCD|Equal6~9_combout\ & ((!\COMP_CCD|count_start_seq\(1)) # (!\COMP_CCD|count_start_seq\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|count_start_seq\(31),
	datac => \COMP_CCD|count_start_seq\(1),
	datad => \COMP_CCD|Equal6~9_combout\,
	combout => \COMP_CCD|LessThan13~0_combout\);

-- Location: LCCOMB_X24_Y10_N20
\COMP_CCD|count_start_seq[31]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~100_combout\ = (\COMP_CCD|LessThan13~0_combout\ & ((!\COMP_CCD|process_1~14_combout\) # (!\COMP_CCD|process_1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~15_combout\,
	datac => \COMP_CCD|process_1~14_combout\,
	datad => \COMP_CCD|LessThan13~0_combout\,
	combout => \COMP_CCD|count_start_seq[31]~100_combout\);

-- Location: LCCOMB_X24_Y10_N22
\COMP_CCD|count_start_seq[31]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~101_combout\ = (\COMP_CCD|clk_reg~3_combout\ & ((\COMP_CCD|count_start_seq[15]~98_combout\) # ((\COMP_CCD|ccd_ready_reg~8_combout\) # (\COMP_CCD|count_start_seq[31]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq[15]~98_combout\,
	datab => \COMP_CCD|ccd_ready_reg~8_combout\,
	datac => \COMP_CCD|clk_reg~3_combout\,
	datad => \COMP_CCD|count_start_seq[31]~100_combout\,
	combout => \COMP_CCD|count_start_seq[31]~101_combout\);

-- Location: LCCOMB_X23_Y11_N30
\COMP_CCD|count_start_seq[31]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~102_combout\ = (\COMP_CCD|count_start_seq[31]~101_combout\ & (\COMP_CCD|Equal4~10_combout\ & ((\COMP_CCD|process_1~11_combout\) # (!\COMP_CCD|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~2_combout\,
	datab => \COMP_CCD|process_1~11_combout\,
	datac => \COMP_CCD|count_start_seq[31]~101_combout\,
	datad => \COMP_CCD|Equal4~10_combout\,
	combout => \COMP_CCD|count_start_seq[31]~102_combout\);

-- Location: FF_X22_Y11_N1
\COMP_CCD|count_start_seq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[0]~34_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(0));

-- Location: FF_X22_Y11_N3
\COMP_CCD|count_start_seq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[1]~36_combout\,
	sclr => \COMP_CCD|count_start_seq[15]~99_combout\,
	ena => \COMP_CCD|count_start_seq[31]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(1));

-- Location: LCCOMB_X24_Y10_N18
\COMP_CCD|data_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~1_combout\ = (\COMP_CCD|clk_reg~q\ & (\COMP_CCD|Equal6~9_combout\ & (!\COMP_CCD|count_start_seq\(31) & \COMP_CCD|count_start_seq[31]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~q\,
	datab => \COMP_CCD|Equal6~9_combout\,
	datac => \COMP_CCD|count_start_seq\(31),
	datad => \COMP_CCD|count_start_seq[31]~100_combout\,
	combout => \COMP_CCD|data_out[0]~1_combout\);

-- Location: LCCOMB_X24_Y10_N4
\COMP_CCD|data_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~2_combout\ = (\COMP_CCD|ccd_ready_reg~8_combout\) # ((\COMP_CCD|data_out[0]~1_combout\ & ((!\COMP_CCD|count_start_seq\(0)) # (!\COMP_CCD|count_start_seq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(1),
	datab => \COMP_CCD|ccd_ready_reg~8_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|data_out[0]~1_combout\,
	combout => \COMP_CCD|data_out[0]~2_combout\);

-- Location: LCCOMB_X24_Y10_N2
\COMP_CCD|data_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~3_combout\ = (!\COMP_CCD|count\(31) & (\COMP_CCD|data_out[0]~2_combout\ & ((!\COMP_CCD|LessThan1~2_combout\) # (!\COMP_CCD|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|LessThan1~3_combout\,
	datac => \COMP_CCD|data_out[0]~2_combout\,
	datad => \COMP_CCD|LessThan1~2_combout\,
	combout => \COMP_CCD|data_out[0]~3_combout\);

-- Location: LCCOMB_X24_Y13_N14
\COMP_CCD|data_out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~5_combout\ = (\COMP_CCD|process_1~12_combout\ & (\COMP_CCD|data_out[0]~4_combout\ & (\COMP_CCD|data_out[0]~3_combout\ & \COMP_CCD|Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~12_combout\,
	datab => \COMP_CCD|data_out[0]~4_combout\,
	datac => \COMP_CCD|data_out[0]~3_combout\,
	datad => \COMP_CCD|Equal4~10_combout\,
	combout => \COMP_CCD|data_out[0]~5_combout\);

-- Location: FF_X24_Y13_N3
\COMP_CCD|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~6_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(0));

-- Location: LCCOMB_X24_Y10_N28
\COMP_CCD|Equal6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal6~10_combout\ = (!\COMP_CCD|count_start_seq\(31) & (\COMP_CCD|Equal6~9_combout\ & !\COMP_CCD|count_start_seq\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(31),
	datab => \COMP_CCD|Equal6~9_combout\,
	datac => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Equal6~10_combout\);

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

-- Location: LCCOMB_X24_Y13_N28
\COMP_CCD|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~0_combout\ = (\COMP_CCD|process_1~16_combout\ & (!\COMP_CCD|Equal6~10_combout\)) # (!\COMP_CCD|process_1~16_combout\ & ((\adc_data_in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|Equal6~10_combout\,
	datad => \adc_data_in[8]~input_o\,
	combout => \COMP_CCD|data_out~0_combout\);

-- Location: FF_X24_Y13_N29
\COMP_CCD|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~0_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(8));

-- Location: LCCOMB_X19_Y14_N0
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

-- Location: LCCOMB_X21_Y14_N10
\COMP_USB|ccd_ready_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ccd_ready_reg~2_combout\ = (\usb_rxf~input_o\ & !\usb_txe~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \usb_rxf~input_o\,
	datad => \usb_txe~input_o\,
	combout => \COMP_USB|ccd_ready_reg~2_combout\);

-- Location: LCCOMB_X24_Y10_N8
\COMP_CCD|ccd_ready_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~3_combout\ = (\COMP_CCD|process_1~14_combout\ & (((\COMP_CCD|LessThan13~0_combout\ & !\COMP_CCD|process_1~15_combout\)) # (!\COMP_CCD|process_1~16_combout\))) # (!\COMP_CCD|process_1~14_combout\ & (\COMP_CCD|LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan13~0_combout\,
	datab => \COMP_CCD|process_1~14_combout\,
	datac => \COMP_CCD|process_1~16_combout\,
	datad => \COMP_CCD|process_1~15_combout\,
	combout => \COMP_CCD|ccd_ready_reg~3_combout\);

-- Location: LCCOMB_X24_Y10_N30
\COMP_CCD|ccd_ready_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~4_combout\ = (\COMP_CCD|process_1~10_combout\ & (\COMP_CCD|ccd_ready_reg~3_combout\ & \COMP_CCD|process_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~10_combout\,
	datac => \COMP_CCD|ccd_ready_reg~3_combout\,
	datad => \COMP_CCD|process_1~12_combout\,
	combout => \COMP_CCD|ccd_ready_reg~4_combout\);

-- Location: LCCOMB_X23_Y11_N2
\COMP_CCD|rog_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~0_combout\ = (\COMP_CCD|clk_reg~3_combout\ & (\COMP_CCD|Equal4~10_combout\ & ((\COMP_CCD|process_1~11_combout\) # (!\COMP_CCD|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~2_combout\,
	datab => \COMP_CCD|process_1~11_combout\,
	datac => \COMP_CCD|clk_reg~3_combout\,
	datad => \COMP_CCD|Equal4~10_combout\,
	combout => \COMP_CCD|rog_reg~0_combout\);

-- Location: LCCOMB_X23_Y11_N22
\COMP_CCD|ccd_ready_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~5_combout\ = (!\COMP_CCD|count\(31) & (\COMP_CCD|Equal4~10_combout\ & ((!\COMP_CCD|LessThan1~3_combout\) # (!\COMP_CCD|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan1~2_combout\,
	datab => \COMP_CCD|count\(31),
	datac => \COMP_CCD|LessThan1~3_combout\,
	datad => \COMP_CCD|Equal4~10_combout\,
	combout => \COMP_CCD|ccd_ready_reg~5_combout\);

-- Location: LCCOMB_X23_Y11_N20
\COMP_CCD|ccd_ready_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~6_combout\ = (\COMP_CCD|ccd_ready_reg~q\ & (((\COMP_CCD|process_1~18_combout\ & !\COMP_CCD|ccd_ready_reg~4_combout\)) # (!\COMP_CCD|ccd_ready_reg~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|ccd_ready_reg~q\,
	datab => \COMP_CCD|process_1~18_combout\,
	datac => \COMP_CCD|ccd_ready_reg~5_combout\,
	datad => \COMP_CCD|ccd_ready_reg~4_combout\,
	combout => \COMP_CCD|ccd_ready_reg~6_combout\);

-- Location: LCCOMB_X23_Y11_N26
\COMP_CCD|ccd_ready_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ccd_ready_reg~7_combout\ = (\COMP_CCD|ccd_ready_reg~6_combout\) # ((\COMP_CCD|ccd_ready_reg~4_combout\ & (\COMP_CCD|rog_reg~0_combout\ & \COMP_CCD|clk_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|ccd_ready_reg~4_combout\,
	datab => \COMP_CCD|rog_reg~0_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|ccd_ready_reg~6_combout\,
	combout => \COMP_CCD|ccd_ready_reg~7_combout\);

-- Location: FF_X23_Y11_N27
\COMP_CCD|ccd_ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ccd_ready_reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ccd_ready_reg~q\);

-- Location: FF_X18_Y14_N31
\COMP_CCD|ccd_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|ccd_ready_reg~q\,
	sload => VCC,
	ena => \COMP_CCD|Equal4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ccd_ready~q\);

-- Location: LCCOMB_X18_Y14_N28
\COMP_USB|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~1_combout\ = ((\COMP_USB|switch_write\(0)) # (\COMP_USB|switch_write\(31))) # (!\COMP_USB|switch_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datab => \COMP_USB|switch_write\(0),
	datac => \COMP_USB|switch_write\(31),
	combout => \COMP_USB|process_0~1_combout\);

-- Location: LCCOMB_X18_Y14_N10
\COMP_USB|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~1_combout\ = (!\COMP_USB|switch_write\(8) & (!\COMP_USB|switch_write\(7) & (!\COMP_USB|switch_write\(6) & !\COMP_USB|switch_write\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(8),
	datab => \COMP_USB|switch_write\(7),
	datac => \COMP_USB|switch_write\(6),
	datad => \COMP_USB|switch_write\(9),
	combout => \COMP_USB|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y14_N20
\COMP_USB|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~0_combout\ = (!\COMP_USB|switch_write\(2) & (!\COMP_USB|switch_write\(5) & (!\COMP_USB|switch_write\(4) & !\COMP_USB|switch_write\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(2),
	datab => \COMP_USB|switch_write\(5),
	datac => \COMP_USB|switch_write\(4),
	datad => \COMP_USB|switch_write\(3),
	combout => \COMP_USB|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y14_N26
\COMP_USB|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~3_combout\ = (!\COMP_USB|switch_write\(15) & (!\COMP_USB|switch_write\(14) & (!\COMP_USB|switch_write\(17) & !\COMP_USB|switch_write\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(15),
	datab => \COMP_USB|switch_write\(14),
	datac => \COMP_USB|switch_write\(17),
	datad => \COMP_USB|switch_write\(16),
	combout => \COMP_USB|Equal1~3_combout\);

-- Location: LCCOMB_X18_Y14_N0
\COMP_USB|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~2_combout\ = (!\COMP_USB|switch_write\(10) & (!\COMP_USB|switch_write\(13) & (!\COMP_USB|switch_write\(12) & !\COMP_USB|switch_write\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(10),
	datab => \COMP_USB|switch_write\(13),
	datac => \COMP_USB|switch_write\(12),
	datad => \COMP_USB|switch_write\(11),
	combout => \COMP_USB|Equal1~2_combout\);

-- Location: LCCOMB_X18_Y14_N8
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

-- Location: LCCOMB_X18_Y13_N8
\COMP_USB|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~5_combout\ = (!\COMP_USB|switch_write\(18) & (!\COMP_USB|switch_write\(21) & (!\COMP_USB|switch_write\(20) & !\COMP_USB|switch_write\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(18),
	datab => \COMP_USB|switch_write\(21),
	datac => \COMP_USB|switch_write\(20),
	datad => \COMP_USB|switch_write\(19),
	combout => \COMP_USB|Equal1~5_combout\);

-- Location: LCCOMB_X18_Y13_N30
\COMP_USB|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~6_combout\ = (!\COMP_USB|switch_write\(22) & (!\COMP_USB|switch_write\(25) & (!\COMP_USB|switch_write\(23) & !\COMP_USB|switch_write\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(22),
	datab => \COMP_USB|switch_write\(25),
	datac => \COMP_USB|switch_write\(23),
	datad => \COMP_USB|switch_write\(24),
	combout => \COMP_USB|Equal1~6_combout\);

-- Location: LCCOMB_X18_Y13_N12
\COMP_USB|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~7_combout\ = (!\COMP_USB|switch_write\(29) & (!\COMP_USB|switch_write\(28) & (!\COMP_USB|switch_write\(26) & !\COMP_USB|switch_write\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(29),
	datab => \COMP_USB|switch_write\(28),
	datac => \COMP_USB|switch_write\(26),
	datad => \COMP_USB|switch_write\(27),
	combout => \COMP_USB|Equal1~7_combout\);

-- Location: LCCOMB_X18_Y13_N18
\COMP_USB|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~8_combout\ = (!\COMP_USB|switch_write\(30) & (\COMP_USB|Equal1~5_combout\ & (\COMP_USB|Equal1~6_combout\ & \COMP_USB|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(30),
	datab => \COMP_USB|Equal1~5_combout\,
	datac => \COMP_USB|Equal1~6_combout\,
	datad => \COMP_USB|Equal1~7_combout\,
	combout => \COMP_USB|Equal1~8_combout\);

-- Location: LCCOMB_X18_Y14_N18
\COMP_USB|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~2_combout\ = (\COMP_CCD|ccd_ready~q\) # ((\COMP_USB|process_0~1_combout\) # ((!\COMP_USB|Equal1~8_combout\) # (!\COMP_USB|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|ccd_ready~q\,
	datab => \COMP_USB|process_0~1_combout\,
	datac => \COMP_USB|Equal1~4_combout\,
	datad => \COMP_USB|Equal1~8_combout\,
	combout => \COMP_USB|process_0~2_combout\);

-- Location: LCCOMB_X21_Y14_N0
\COMP_USB|ccd_ready_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ccd_ready_reg~3_combout\ = (\COMP_USB|ccd_ready_reg~2_combout\ & ((\COMP_USB|ccd_ready_reg~q\ & ((\COMP_USB|process_0~2_combout\))) # (!\COMP_USB|ccd_ready_reg~q\ & (\COMP_CCD|ccd_ready~q\)))) # (!\COMP_USB|ccd_ready_reg~2_combout\ & 
-- (((\COMP_USB|ccd_ready_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|ccd_ready_reg~2_combout\,
	datab => \COMP_CCD|ccd_ready~q\,
	datac => \COMP_USB|ccd_ready_reg~q\,
	datad => \COMP_USB|process_0~2_combout\,
	combout => \COMP_USB|ccd_ready_reg~3_combout\);

-- Location: FF_X21_Y14_N1
\COMP_USB|ccd_ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ccd_ready_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ccd_ready_reg~q\);

-- Location: LCCOMB_X18_Y14_N14
\COMP_USB|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~0_combout\ = (!\COMP_USB|ccd_ready_reg~q\ & \COMP_CCD|ccd_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|ccd_ready_reg~q\,
	datac => \COMP_CCD|ccd_ready~q\,
	combout => \COMP_USB|process_0~0_combout\);

-- Location: LCCOMB_X18_Y14_N4
\COMP_USB|wr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~4_combout\ = (!\COMP_USB|switch_write\(31) & ((\COMP_USB|switch_write\(1)) # ((!\COMP_USB|Equal1~8_combout\) # (!\COMP_USB|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datab => \COMP_USB|switch_write\(31),
	datac => \COMP_USB|Equal1~4_combout\,
	datad => \COMP_USB|Equal1~8_combout\,
	combout => \COMP_USB|wr~4_combout\);

-- Location: LCCOMB_X18_Y14_N6
\COMP_USB|switch_write[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[0]~34_combout\ = (\COMP_USB|ccd_ready_reg~2_combout\ & ((\COMP_USB|process_0~0_combout\) # ((!\COMP_USB|wr~4_combout\ & \COMP_USB|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|ccd_ready_reg~2_combout\,
	datab => \COMP_USB|wr~4_combout\,
	datac => \COMP_USB|process_0~0_combout\,
	datad => \COMP_USB|process_0~2_combout\,
	combout => \COMP_USB|switch_write[0]~34_combout\);

-- Location: FF_X19_Y14_N1
\COMP_USB|switch_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[0]~32_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(0));

-- Location: LCCOMB_X19_Y14_N2
\COMP_USB|switch_write[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[1]~35_combout\ = (\COMP_USB|switch_write\(1) & (!\COMP_USB|switch_write[0]~33\)) # (!\COMP_USB|switch_write\(1) & ((\COMP_USB|switch_write[0]~33\) # (GND)))
-- \COMP_USB|switch_write[1]~36\ = CARRY((!\COMP_USB|switch_write[0]~33\) # (!\COMP_USB|switch_write\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(1),
	datad => VCC,
	cin => \COMP_USB|switch_write[0]~33\,
	combout => \COMP_USB|switch_write[1]~35_combout\,
	cout => \COMP_USB|switch_write[1]~36\);

-- Location: FF_X19_Y14_N3
\COMP_USB|switch_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[1]~35_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(1));

-- Location: LCCOMB_X19_Y14_N4
\COMP_USB|switch_write[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[2]~37_combout\ = (\COMP_USB|switch_write\(2) & (\COMP_USB|switch_write[1]~36\ $ (GND))) # (!\COMP_USB|switch_write\(2) & (!\COMP_USB|switch_write[1]~36\ & VCC))
-- \COMP_USB|switch_write[2]~38\ = CARRY((\COMP_USB|switch_write\(2) & !\COMP_USB|switch_write[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|switch_write\(2),
	datad => VCC,
	cin => \COMP_USB|switch_write[1]~36\,
	combout => \COMP_USB|switch_write[2]~37_combout\,
	cout => \COMP_USB|switch_write[2]~38\);

-- Location: FF_X19_Y14_N5
\COMP_USB|switch_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[2]~37_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(2));

-- Location: LCCOMB_X19_Y14_N6
\COMP_USB|switch_write[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[3]~39_combout\ = (\COMP_USB|switch_write\(3) & (!\COMP_USB|switch_write[2]~38\)) # (!\COMP_USB|switch_write\(3) & ((\COMP_USB|switch_write[2]~38\) # (GND)))
-- \COMP_USB|switch_write[3]~40\ = CARRY((!\COMP_USB|switch_write[2]~38\) # (!\COMP_USB|switch_write\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(3),
	datad => VCC,
	cin => \COMP_USB|switch_write[2]~38\,
	combout => \COMP_USB|switch_write[3]~39_combout\,
	cout => \COMP_USB|switch_write[3]~40\);

-- Location: FF_X19_Y14_N7
\COMP_USB|switch_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[3]~39_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(3));

-- Location: LCCOMB_X19_Y14_N8
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

-- Location: FF_X19_Y14_N9
\COMP_USB|switch_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[4]~41_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(4));

-- Location: LCCOMB_X19_Y14_N10
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

-- Location: FF_X19_Y14_N11
\COMP_USB|switch_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[5]~43_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(5));

-- Location: LCCOMB_X19_Y14_N12
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

-- Location: FF_X19_Y14_N13
\COMP_USB|switch_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[6]~45_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(6));

-- Location: LCCOMB_X19_Y14_N14
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

-- Location: FF_X19_Y14_N15
\COMP_USB|switch_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[7]~47_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(7));

-- Location: LCCOMB_X19_Y14_N16
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

-- Location: FF_X19_Y14_N17
\COMP_USB|switch_write[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[8]~49_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(8));

-- Location: LCCOMB_X19_Y14_N18
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

-- Location: FF_X19_Y14_N19
\COMP_USB|switch_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[9]~51_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(9));

-- Location: LCCOMB_X19_Y14_N20
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

-- Location: FF_X19_Y14_N21
\COMP_USB|switch_write[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[10]~53_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(10));

-- Location: LCCOMB_X19_Y14_N22
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

-- Location: FF_X19_Y14_N23
\COMP_USB|switch_write[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[11]~55_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(11));

-- Location: LCCOMB_X19_Y14_N24
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

-- Location: FF_X19_Y14_N25
\COMP_USB|switch_write[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[12]~57_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(12));

-- Location: LCCOMB_X19_Y14_N26
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

-- Location: FF_X19_Y14_N27
\COMP_USB|switch_write[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[13]~59_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(13));

-- Location: LCCOMB_X19_Y14_N28
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

-- Location: FF_X19_Y14_N29
\COMP_USB|switch_write[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[14]~61_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(14));

-- Location: LCCOMB_X19_Y14_N30
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

-- Location: FF_X19_Y14_N31
\COMP_USB|switch_write[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[15]~63_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(15));

-- Location: LCCOMB_X19_Y13_N0
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

-- Location: FF_X19_Y13_N1
\COMP_USB|switch_write[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[16]~65_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(16));

-- Location: LCCOMB_X19_Y13_N2
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

-- Location: FF_X19_Y13_N3
\COMP_USB|switch_write[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[17]~67_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(17));

-- Location: LCCOMB_X19_Y13_N4
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

-- Location: FF_X19_Y13_N5
\COMP_USB|switch_write[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[18]~69_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(18));

-- Location: LCCOMB_X19_Y13_N6
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

-- Location: FF_X19_Y13_N7
\COMP_USB|switch_write[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[19]~71_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(19));

-- Location: LCCOMB_X19_Y13_N8
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

-- Location: FF_X19_Y13_N9
\COMP_USB|switch_write[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[20]~73_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(20));

-- Location: LCCOMB_X19_Y13_N10
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

-- Location: FF_X19_Y13_N11
\COMP_USB|switch_write[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[21]~75_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(21));

-- Location: LCCOMB_X19_Y13_N12
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

-- Location: FF_X19_Y13_N13
\COMP_USB|switch_write[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[22]~77_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(22));

-- Location: LCCOMB_X19_Y13_N14
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

-- Location: FF_X19_Y13_N15
\COMP_USB|switch_write[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[23]~79_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(23));

-- Location: LCCOMB_X19_Y13_N16
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

-- Location: FF_X19_Y13_N17
\COMP_USB|switch_write[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[24]~81_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(24));

-- Location: LCCOMB_X19_Y13_N18
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

-- Location: FF_X19_Y13_N19
\COMP_USB|switch_write[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[25]~83_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(25));

-- Location: LCCOMB_X19_Y13_N20
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

-- Location: FF_X19_Y13_N21
\COMP_USB|switch_write[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[26]~85_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(26));

-- Location: LCCOMB_X19_Y13_N22
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

-- Location: FF_X19_Y13_N23
\COMP_USB|switch_write[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[27]~87_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(27));

-- Location: LCCOMB_X19_Y13_N24
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

-- Location: FF_X19_Y13_N25
\COMP_USB|switch_write[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[28]~89_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(28));

-- Location: LCCOMB_X19_Y13_N26
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

-- Location: FF_X19_Y13_N27
\COMP_USB|switch_write[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[29]~91_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(29));

-- Location: LCCOMB_X19_Y13_N28
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

-- Location: FF_X19_Y13_N29
\COMP_USB|switch_write[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[30]~93_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(30));

-- Location: LCCOMB_X19_Y13_N30
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

-- Location: FF_X19_Y13_N31
\COMP_USB|switch_write[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[31]~95_combout\,
	sclr => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|switch_write[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(31));

-- Location: LCCOMB_X18_Y14_N22
\COMP_USB|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~0_combout\ = (!\COMP_USB|switch_write\(1) & (\COMP_USB|Equal1~4_combout\ & \COMP_USB|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_USB|Equal1~4_combout\,
	datad => \COMP_USB|Equal1~8_combout\,
	combout => \COMP_USB|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y14_N6
\COMP_USB|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Equal1~9_combout\ = (!\COMP_USB|switch_write\(31) & (!\COMP_USB|switch_write\(0) & \COMP_USB|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	datab => \COMP_USB|switch_write\(0),
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|Equal1~9_combout\);

-- Location: LCCOMB_X17_Y14_N28
\COMP_USB|data[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[0]~9_combout\ = (\COMP_USB|Equal1~9_combout\ & ((\COMP_CCD|data_out\(8)))) # (!\COMP_USB|Equal1~9_combout\ & (\COMP_CCD|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(0),
	datac => \COMP_CCD|data_out\(8),
	datad => \COMP_USB|Equal1~9_combout\,
	combout => \COMP_USB|data[0]~9_combout\);

-- Location: LCCOMB_X18_Y14_N2
\COMP_USB|wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~0_combout\ = ((\COMP_USB|switch_write\(31)) # ((!\COMP_USB|Equal1~8_combout\) # (!\COMP_USB|Equal1~4_combout\))) # (!\COMP_USB|switch_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datab => \COMP_USB|switch_write\(31),
	datac => \COMP_USB|Equal1~4_combout\,
	datad => \COMP_USB|Equal1~8_combout\,
	combout => \COMP_USB|wr~0_combout\);

-- Location: LCCOMB_X18_Y14_N24
\COMP_USB|wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~1_combout\ = (\COMP_CCD|ccd_ready~q\ & (((\COMP_USB|ccd_ready_reg~q\)))) # (!\COMP_CCD|ccd_ready~q\ & ((\COMP_USB|switch_write\(0)) # ((\COMP_USB|wr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(0),
	datab => \COMP_USB|ccd_ready_reg~q\,
	datac => \COMP_CCD|ccd_ready~q\,
	datad => \COMP_USB|wr~0_combout\,
	combout => \COMP_USB|wr~1_combout\);

-- Location: LCCOMB_X18_Y14_N16
\COMP_USB|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[7]~0_combout\ = (!\COMP_USB|switch_write\(31) & (\COMP_USB|LessThan0~0_combout\ & \COMP_USB|wr~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	datac => \COMP_USB|LessThan0~0_combout\,
	datad => \COMP_USB|wr~1_combout\,
	combout => \COMP_USB|data[7]~0_combout\);

-- Location: LCCOMB_X17_Y14_N30
\COMP_USB|data[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[7]~10_combout\ = ((!\COMP_USB|wr~4_combout\ & (!\usb_txe~input_o\ & \COMP_USB|data[7]~0_combout\))) # (!\usb_rxf~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|wr~4_combout\,
	datab => \usb_txe~input_o\,
	datac => \usb_rxf~input_o\,
	datad => \COMP_USB|data[7]~0_combout\,
	combout => \COMP_USB|data[7]~10_combout\);

-- Location: FF_X17_Y14_N29
\COMP_USB|data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[0]~9_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[0]~reg0_q\);

-- Location: FF_X17_Y14_N27
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[0]~en_q\);

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

-- Location: LCCOMB_X24_Y13_N8
\COMP_CCD|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~7_combout\ = (\COMP_CCD|process_1~16_combout\ & (!\COMP_CCD|Equal6~10_combout\)) # (!\COMP_CCD|process_1~16_combout\ & ((\adc_data_in[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|Equal6~10_combout\,
	datad => \adc_data_in[9]~input_o\,
	combout => \COMP_CCD|data_out~7_combout\);

-- Location: FF_X24_Y13_N9
\COMP_CCD|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~7_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(9));

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

-- Location: LCCOMB_X24_Y13_N22
\COMP_CCD|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~8_combout\ = (\COMP_CCD|process_1~16_combout\ & (\COMP_CCD|Equal6~10_combout\)) # (!\COMP_CCD|process_1~16_combout\ & ((\adc_data_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal6~10_combout\,
	datac => \COMP_CCD|process_1~16_combout\,
	datad => \adc_data_in[1]~input_o\,
	combout => \COMP_CCD|data_out~8_combout\);

-- Location: FF_X24_Y13_N23
\COMP_CCD|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~8_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(1));

-- Location: LCCOMB_X17_Y14_N24
\COMP_USB|data[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[1]~11_combout\ = (\COMP_USB|Equal1~9_combout\ & (\COMP_CCD|data_out\(9))) # (!\COMP_USB|Equal1~9_combout\ & ((\COMP_CCD|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|data_out\(9),
	datac => \COMP_CCD|data_out\(1),
	datad => \COMP_USB|Equal1~9_combout\,
	combout => \COMP_USB|data[1]~11_combout\);

-- Location: FF_X17_Y14_N25
\COMP_USB|data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[1]~11_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[1]~reg0_q\);

-- Location: FF_X17_Y14_N31
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[1]~en_q\);

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

-- Location: LCCOMB_X24_Y13_N30
\COMP_CCD|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~10_combout\ = (\COMP_CCD|process_1~16_combout\ & (\COMP_CCD|Equal6~10_combout\ & (\COMP_CCD|count_start_seq\(0)))) # (!\COMP_CCD|process_1~16_combout\ & (((\adc_data_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal6~10_combout\,
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \adc_data_in[2]~input_o\,
	combout => \COMP_CCD|data_out~10_combout\);

-- Location: FF_X24_Y13_N31
\COMP_CCD|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~10_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(2));

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

-- Location: LCCOMB_X24_Y13_N12
\COMP_CCD|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~9_combout\ = (!\COMP_CCD|process_1~16_combout\ & \adc_data_in[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|process_1~16_combout\,
	datad => \adc_data_in[10]~input_o\,
	combout => \COMP_CCD|data_out~9_combout\);

-- Location: FF_X24_Y13_N13
\COMP_CCD|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~9_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(10));

-- Location: LCCOMB_X17_Y14_N12
\COMP_USB|data[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[2]~12_combout\ = (\COMP_USB|Equal1~9_combout\ & ((\COMP_CCD|data_out\(10)))) # (!\COMP_USB|Equal1~9_combout\ & (\COMP_CCD|data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(2),
	datac => \COMP_CCD|data_out\(10),
	datad => \COMP_USB|Equal1~9_combout\,
	combout => \COMP_USB|data[2]~12_combout\);

-- Location: FF_X17_Y14_N13
\COMP_USB|data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[2]~12_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[2]~reg0_q\);

-- Location: FF_X17_Y14_N7
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[2]~en_q\);

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

-- Location: LCCOMB_X24_Y13_N0
\COMP_CCD|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~11_combout\ = (\COMP_CCD|process_1~16_combout\ & (!\COMP_CCD|Equal6~10_combout\)) # (!\COMP_CCD|process_1~16_combout\ & ((\adc_data_in[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|Equal6~10_combout\,
	datad => \adc_data_in[11]~input_o\,
	combout => \COMP_CCD|data_out~11_combout\);

-- Location: FF_X24_Y13_N1
\COMP_CCD|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~11_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(11));

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

-- Location: LCCOMB_X24_Y13_N26
\COMP_CCD|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~12_combout\ = (\COMP_CCD|process_1~16_combout\ & (\COMP_CCD|Equal6~10_combout\ & (\COMP_CCD|count_start_seq\(0)))) # (!\COMP_CCD|process_1~16_combout\ & (((\adc_data_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal6~10_combout\,
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \adc_data_in[3]~input_o\,
	combout => \COMP_CCD|data_out~12_combout\);

-- Location: FF_X24_Y13_N27
\COMP_CCD|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~12_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(3));

-- Location: LCCOMB_X17_Y14_N8
\COMP_USB|data[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[3]~13_combout\ = (\COMP_USB|Equal1~9_combout\ & (\COMP_CCD|data_out\(11))) # (!\COMP_USB|Equal1~9_combout\ & ((\COMP_CCD|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|data_out\(11),
	datac => \COMP_CCD|data_out\(3),
	datad => \COMP_USB|Equal1~9_combout\,
	combout => \COMP_USB|data[3]~13_combout\);

-- Location: FF_X17_Y14_N9
\COMP_USB|data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[3]~13_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[3]~reg0_q\);

-- Location: FF_X17_Y14_N3
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[3]~en_q\);

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

-- Location: LCCOMB_X24_Y13_N24
\COMP_CCD|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~13_combout\ = (\COMP_CCD|process_1~16_combout\ & (\COMP_CCD|Equal6~10_combout\ & (\COMP_CCD|count_start_seq\(0)))) # (!\COMP_CCD|process_1~16_combout\ & (((\adc_data_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal6~10_combout\,
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \adc_data_in[4]~input_o\,
	combout => \COMP_CCD|data_out~13_combout\);

-- Location: FF_X24_Y13_N25
\COMP_CCD|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~13_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(4));

-- Location: LCCOMB_X17_Y14_N0
\COMP_USB|data[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[4]~14_combout\ = (\COMP_CCD|data_out\(4) & ((\COMP_USB|switch_write\(31)) # ((\COMP_USB|switch_write\(0)) # (!\COMP_USB|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	datab => \COMP_CCD|data_out\(4),
	datac => \COMP_USB|switch_write\(0),
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|data[4]~14_combout\);

-- Location: FF_X17_Y14_N1
\COMP_USB|data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[4]~14_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[4]~reg0_q\);

-- Location: FF_X17_Y14_N19
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[4]~en_q\);

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

-- Location: LCCOMB_X24_Y13_N18
\COMP_CCD|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~14_combout\ = (\COMP_CCD|process_1~16_combout\ & (\COMP_CCD|Equal6~10_combout\ & (\COMP_CCD|count_start_seq\(0)))) # (!\COMP_CCD|process_1~16_combout\ & (((\adc_data_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal6~10_combout\,
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \adc_data_in[5]~input_o\,
	combout => \COMP_CCD|data_out~14_combout\);

-- Location: FF_X24_Y13_N19
\COMP_CCD|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~14_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(5));

-- Location: LCCOMB_X17_Y14_N20
\COMP_USB|data[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[5]~15_combout\ = (\COMP_CCD|data_out\(5) & ((\COMP_USB|switch_write\(31)) # ((\COMP_USB|switch_write\(0)) # (!\COMP_USB|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	datab => \COMP_USB|switch_write\(0),
	datac => \COMP_CCD|data_out\(5),
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|data[5]~15_combout\);

-- Location: FF_X17_Y14_N21
\COMP_USB|data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[5]~15_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[5]~reg0_q\);

-- Location: FF_X17_Y14_N11
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[5]~en_q\);

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

-- Location: LCCOMB_X24_Y13_N20
\COMP_CCD|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~15_combout\ = (\COMP_CCD|process_1~16_combout\ & ((\COMP_CCD|count_start_seq\(0)) # ((!\COMP_CCD|Equal6~10_combout\)))) # (!\COMP_CCD|process_1~16_combout\ & (((\adc_data_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|Equal6~10_combout\,
	datad => \adc_data_in[6]~input_o\,
	combout => \COMP_CCD|data_out~15_combout\);

-- Location: FF_X24_Y13_N21
\COMP_CCD|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~15_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(6));

-- Location: LCCOMB_X17_Y14_N4
\COMP_USB|data[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[6]~16_combout\ = (\COMP_CCD|data_out\(6) & ((\COMP_USB|switch_write\(31)) # ((\COMP_USB|switch_write\(0)) # (!\COMP_USB|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	datab => \COMP_USB|switch_write\(0),
	datac => \COMP_CCD|data_out\(6),
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|data[6]~16_combout\);

-- Location: FF_X17_Y14_N5
\COMP_USB|data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[6]~16_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[6]~reg0_q\);

-- Location: FF_X17_Y14_N15
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[6]~en_q\);

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

-- Location: LCCOMB_X24_Y13_N10
\COMP_CCD|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~16_combout\ = (\COMP_CCD|process_1~16_combout\ & (!\COMP_CCD|Equal6~10_combout\)) # (!\COMP_CCD|process_1~16_combout\ & ((\adc_data_in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|Equal6~10_combout\,
	datad => \adc_data_in[7]~input_o\,
	combout => \COMP_CCD|data_out~16_combout\);

-- Location: FF_X24_Y13_N11
\COMP_CCD|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~16_combout\,
	ena => \COMP_CCD|data_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(7));

-- Location: LCCOMB_X17_Y14_N16
\COMP_USB|data[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[7]~17_combout\ = (\COMP_CCD|data_out\(7) & ((\COMP_USB|switch_write\(31)) # ((\COMP_USB|switch_write\(0)) # (!\COMP_USB|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	datab => \COMP_USB|switch_write\(0),
	datac => \COMP_CCD|data_out\(7),
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|data[7]~17_combout\);

-- Location: FF_X17_Y14_N17
\COMP_USB|data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|data[7]~17_combout\,
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[7]~reg0_q\);

-- Location: FF_X17_Y14_N23
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
	ena => \COMP_USB|data[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[7]~en_q\);

-- Location: LCCOMB_X23_Y9_N28
\COMP_CCD|rog_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~1_combout\ = (\COMP_CCD|LessThan11~2_combout\ & (!\COMP_CCD|LessThan9~1_combout\)) # (!\COMP_CCD|LessThan11~2_combout\ & ((\COMP_CCD|LessThan12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan11~2_combout\,
	datab => \COMP_CCD|LessThan9~1_combout\,
	datad => \COMP_CCD|LessThan12~2_combout\,
	combout => \COMP_CCD|rog_reg~1_combout\);

-- Location: LCCOMB_X23_Y9_N14
\COMP_CCD|rog_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~2_combout\ = (\COMP_CCD|LessThan6~3_combout\ & (((!\COMP_CCD|count\(27) & \COMP_CCD|rog_reg~1_combout\)))) # (!\COMP_CCD|LessThan6~3_combout\ & ((\COMP_CCD|LessThan9~1_combout\) # ((!\COMP_CCD|count\(27) & 
-- \COMP_CCD|rog_reg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan6~3_combout\,
	datab => \COMP_CCD|LessThan9~1_combout\,
	datac => \COMP_CCD|count\(27),
	datad => \COMP_CCD|rog_reg~1_combout\,
	combout => \COMP_CCD|rog_reg~2_combout\);

-- Location: LCCOMB_X24_Y10_N26
\COMP_CCD|rog_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~3_combout\ = (\COMP_CCD|process_1~13_combout\ & (\COMP_CCD|rog_reg~2_combout\ & \COMP_CCD|process_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~13_combout\,
	datac => \COMP_CCD|rog_reg~2_combout\,
	datad => \COMP_CCD|process_1~12_combout\,
	combout => \COMP_CCD|rog_reg~3_combout\);

-- Location: LCCOMB_X24_Y10_N24
\COMP_CCD|rog_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~4_combout\ = (\COMP_CCD|rog_reg~0_combout\ & (((\COMP_CCD|rog_reg~3_combout\ & \COMP_CCD|rog_reg~q\)) # (!\COMP_CCD|process_1~10_combout\))) # (!\COMP_CCD|rog_reg~0_combout\ & (((\COMP_CCD|rog_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_reg~3_combout\,
	datab => \COMP_CCD|process_1~10_combout\,
	datac => \COMP_CCD|rog_reg~q\,
	datad => \COMP_CCD|rog_reg~0_combout\,
	combout => \COMP_CCD|rog_reg~4_combout\);

-- Location: FF_X24_Y10_N25
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

-- Location: LCCOMB_X24_Y10_N16
\COMP_CCD|shut_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~0_combout\ = (\COMP_CCD|count\(30)) # ((!\COMP_CCD|LessThan4~2_combout\ & ((\COMP_CCD|process_1~9_combout\) # (\COMP_CCD|count\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datab => \COMP_CCD|process_1~9_combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \COMP_CCD|count\(31),
	combout => \COMP_CCD|shut_reg~0_combout\);

-- Location: LCCOMB_X24_Y10_N10
\COMP_CCD|shut_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~1_combout\ = (\COMP_CCD|process_1~15_combout\ & (\COMP_CCD|process_1~16_combout\ & (\COMP_CCD|process_1~14_combout\ & \COMP_CCD|shut_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_1~15_combout\,
	datab => \COMP_CCD|process_1~16_combout\,
	datac => \COMP_CCD|process_1~14_combout\,
	datad => \COMP_CCD|shut_reg~0_combout\,
	combout => \COMP_CCD|shut_reg~1_combout\);

-- Location: LCCOMB_X24_Y9_N30
\COMP_CCD|shut_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~2_combout\ = (\COMP_CCD|shut_reg~1_combout\ & (((!\COMP_CCD|LessThan12~2_combout\ & \COMP_CCD|LessThan15~4_combout\)))) # (!\COMP_CCD|shut_reg~1_combout\ & (\COMP_CCD|shut_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|shut_reg~q\,
	datab => \COMP_CCD|LessThan12~2_combout\,
	datac => \COMP_CCD|shut_reg~1_combout\,
	datad => \COMP_CCD|LessThan15~4_combout\,
	combout => \COMP_CCD|shut_reg~2_combout\);

-- Location: LCCOMB_X24_Y9_N4
\COMP_CCD|shut_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|shut_reg~3_combout\ = ((\COMP_CCD|shut_reg~2_combout\ & !\COMP_CCD|LessThan3~2_combout\)) # (!\COMP_CCD|clk_reg~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~3_combout\,
	datac => \COMP_CCD|shut_reg~2_combout\,
	datad => \COMP_CCD|LessThan3~2_combout\,
	combout => \COMP_CCD|shut_reg~3_combout\);

-- Location: FF_X24_Y9_N5
\COMP_CCD|shut_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|shut_reg~3_combout\,
	ena => \COMP_CCD|Equal4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|shut_reg~q\);

-- Location: LCCOMB_X16_Y12_N4
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

-- Location: FF_X16_Y12_N5
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

-- Location: LCCOMB_X18_Y14_N30
\COMP_USB|wr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~2_combout\ = (!\COMP_USB|switch_write\(31) & (\COMP_USB|wr~1_combout\ & !\COMP_USB|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(31),
	datab => \COMP_USB|wr~1_combout\,
	datad => \COMP_USB|LessThan0~0_combout\,
	combout => \COMP_USB|wr~2_combout\);

-- Location: LCCOMB_X18_Y14_N12
\COMP_USB|wr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~3_combout\ = (\COMP_USB|ccd_ready_reg~2_combout\ & (!\COMP_USB|wr~2_combout\ & ((\COMP_USB|data[7]~0_combout\) # (\COMP_USB|wr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|data[7]~0_combout\,
	datab => \COMP_USB|ccd_ready_reg~2_combout\,
	datac => \COMP_USB|wr~q\,
	datad => \COMP_USB|wr~2_combout\,
	combout => \COMP_USB|wr~3_combout\);

-- Location: FF_X18_Y14_N13
\COMP_USB|wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|wr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|wr~q\);

-- Location: LCCOMB_X21_Y9_N0
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

-- Location: FF_X21_Y9_N1
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

-- Location: IOIBUF_X34_Y9_N15
\r_sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_sda,
	o => \r_sda~input_o\);

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

ww_r_sda <= \r_sda~output_o\;

usb_data(0) <= \usb_data[0]~output_o\;

usb_data(1) <= \usb_data[1]~output_o\;

usb_data(2) <= \usb_data[2]~output_o\;

usb_data(3) <= \usb_data[3]~output_o\;

usb_data(4) <= \usb_data[4]~output_o\;

usb_data(5) <= \usb_data[5]~output_o\;

usb_data(6) <= \usb_data[6]~output_o\;

usb_data(7) <= \usb_data[7]~output_o\;
END structure;


