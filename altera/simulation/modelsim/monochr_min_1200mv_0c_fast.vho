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

-- DATE "12/25/2020 18:09:56"

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
-- button	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clk50Mhz	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- usb_rxf	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- usb_clk	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- usb_txe	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- adc_data_in[0]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[8]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[1]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[9]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[2]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[10]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[3]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[4]	=>  Location: PIN_L12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[5]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[6]	=>  Location: PIN_K12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adc_data_in[7]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_otr~input_o\ : std_logic;
SIGNAL \trigger_start~input_o\ : std_logic;
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
SIGNAL \COMP_USB|switch_write[0]~0_combout\ : std_logic;
SIGNAL \COMP_USB|count[0]~32_combout\ : std_logic;
SIGNAL \clk50Mhz~input_o\ : std_logic;
SIGNAL \clk50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|line_pos_end[0]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count~10_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \COMP_CCD|Add0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~9\ : std_logic;
SIGNAL \COMP_CCD|Add0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~11\ : std_logic;
SIGNAL \COMP_CCD|Add0~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~13\ : std_logic;
SIGNAL \COMP_CCD|Add0~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~15\ : std_logic;
SIGNAL \COMP_CCD|Add0~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~17\ : std_logic;
SIGNAL \COMP_CCD|Add0~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~19\ : std_logic;
SIGNAL \COMP_CCD|Add0~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~21\ : std_logic;
SIGNAL \COMP_CCD|Add0~22_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~23\ : std_logic;
SIGNAL \COMP_CCD|Add0~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~25\ : std_logic;
SIGNAL \COMP_CCD|Add0~26_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~27\ : std_logic;
SIGNAL \COMP_CCD|Add0~28_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~29\ : std_logic;
SIGNAL \COMP_CCD|Add0~30_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~9_combout\ : std_logic;
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
SIGNAL \COMP_CCD|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~4_combout\ : std_logic;
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
SIGNAL \COMP_CCD|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count_div~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~1\ : std_logic;
SIGNAL \COMP_CCD|Add0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~3\ : std_logic;
SIGNAL \COMP_CCD|Add0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~5\ : std_logic;
SIGNAL \COMP_CCD|Add0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~7\ : std_logic;
SIGNAL \COMP_CCD|Add0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~11_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|count[31]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~1\ : std_logic;
SIGNAL \COMP_CCD|Add3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~3\ : std_logic;
SIGNAL \COMP_CCD|Add3~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~5\ : std_logic;
SIGNAL \COMP_CCD|Add3~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~7\ : std_logic;
SIGNAL \COMP_CCD|Add3~8_combout\ : std_logic;
SIGNAL \COMP_CCD|count~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~9\ : std_logic;
SIGNAL \COMP_CCD|Add3~10_combout\ : std_logic;
SIGNAL \COMP_CCD|count~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~11\ : std_logic;
SIGNAL \COMP_CCD|Add3~12_combout\ : std_logic;
SIGNAL \COMP_CCD|count~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~13\ : std_logic;
SIGNAL \COMP_CCD|Add3~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~15\ : std_logic;
SIGNAL \COMP_CCD|Add3~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~17\ : std_logic;
SIGNAL \COMP_CCD|Add3~18_combout\ : std_logic;
SIGNAL \COMP_CCD|count~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~19\ : std_logic;
SIGNAL \COMP_CCD|Add3~20_combout\ : std_logic;
SIGNAL \COMP_CCD|count~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~61\ : std_logic;
SIGNAL \COMP_CCD|Add3~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~11_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add3~21\ : std_logic;
SIGNAL \COMP_CCD|Add3~22_combout\ : std_logic;
SIGNAL \COMP_CCD|count~5_combout\ : std_logic;
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
SIGNAL \COMP_CCD|count~1_combout\ : std_logic;
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
SIGNAL \COMP_CCD|LessThan0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan4~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~32_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan4~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan4~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~3_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[1]~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan6~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~4_combout\ : std_logic;
SIGNAL \COMP_CCD|line_pos_end[0]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~33_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~6_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~7_combout\ : std_logic;
SIGNAL \COMP_CCD|line_pos_end[0]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|line_pos_end[0]~_wirecell_combout\ : std_logic;
SIGNAL \usb_txe~input_o\ : std_logic;
SIGNAL \usb_rxf~input_o\ : std_logic;
SIGNAL \COMP_USB|count[11]~88_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~7_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan7~6_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~10_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~9_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~6_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~_emulated_q\ : std_logic;
SIGNAL \COMP_CCD|line_ready_reg~2_combout\ : std_logic;
SIGNAL \COMP_USB|count[11]~89_combout\ : std_logic;
SIGNAL \COMP_USB|count[0]~33\ : std_logic;
SIGNAL \COMP_USB|count[1]~34_combout\ : std_logic;
SIGNAL \COMP_CCD|line_pos_end_reg[11]~0_combout\ : std_logic;
SIGNAL \COMP_USB|count[1]~35\ : std_logic;
SIGNAL \COMP_USB|count[2]~36_combout\ : std_logic;
SIGNAL \COMP_USB|count[2]~37\ : std_logic;
SIGNAL \COMP_USB|count[3]~38_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
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
SIGNAL \COMP_USB|count[11]~55\ : std_logic;
SIGNAL \COMP_USB|count[12]~56_combout\ : std_logic;
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
SIGNAL \COMP_USB|count[28]~90_combout\ : std_logic;
SIGNAL \COMP_USB|count[28]~91\ : std_logic;
SIGNAL \COMP_USB|count[29]~92_combout\ : std_logic;
SIGNAL \COMP_USB|count[29]~93\ : std_logic;
SIGNAL \COMP_USB|count[30]~94_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~0_combout\ : std_logic;
SIGNAL \COMP_USB|count[30]~95\ : std_logic;
SIGNAL \COMP_USB|count[31]~96_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~3_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~2_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~4_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~1_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~5_combout\ : std_logic;
SIGNAL \COMP_CCD|line_pos_end[11]~2_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~6_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~7_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~8_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~9_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~10_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~11_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~12_combout\ : std_logic;
SIGNAL \COMP_USB|LessThan0~13_combout\ : std_logic;
SIGNAL \COMP_USB|ccd_ready_reg~0_combout\ : std_logic;
SIGNAL \COMP_USB|ccd_ready_reg~q\ : std_logic;
SIGNAL \COMP_USB|process_0~0_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[0]~0_combout\ : std_logic;
SIGNAL \COMP_USB|Mux0~0_combout\ : std_logic;
SIGNAL \COMP_USB|switch_write[1]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan2~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~5_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~1_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[0]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~6_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_reg~q\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~4_combout\ : std_logic;
SIGNAL \COMP_CCD|dram_we_a~0_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~34_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan5~5_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan3~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq~38_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~39_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~40_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[0]~35\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[1]~36_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[1]~37\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[2]~41_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[2]~42\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[3]~43_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[3]~44\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[4]~45_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[4]~46\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[5]~47_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[5]~48\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[6]~49_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[6]~50\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[7]~51_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[7]~52\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[8]~53_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[8]~54\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~55_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[9]~56\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[10]~57_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[10]~58\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~59_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[11]~60\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[12]~61_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[12]~62\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[13]~63_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[13]~64\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[14]~65_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[14]~66\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~67_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[15]~68\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[16]~69_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[16]~70\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[17]~71_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[17]~72\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[18]~73_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[18]~74\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[19]~75_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[19]~76\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[20]~77_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[20]~78\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[21]~79_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~5_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[21]~80\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[22]~81_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[22]~82\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[23]~83_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[23]~84\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[24]~85_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[24]~86\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[25]~87_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~4_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[25]~88\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[26]~89_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[26]~90\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[27]~91_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[27]~92\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[28]~93_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[28]~94\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[29]~95_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[29]~96\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[30]~97_combout\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[30]~98\ : std_logic;
SIGNAL \COMP_CCD|count_start_seq[31]~99_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~9_combout\ : std_logic;
SIGNAL \COMP_CCD|WideNor0~combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[1]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|dram_we_a~1_combout\ : std_logic;
SIGNAL \COMP_CCD|dram_we_a~2_combout\ : std_logic;
SIGNAL \COMP_CCD|dram_we_a~q\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~9_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~10_combout\ : std_logic;
SIGNAL \adc_data_in[0]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~8_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[0]~11_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count_data[0]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[0]~2_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[0]~3_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[0]~_wirecell_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~1\ : std_logic;
SIGNAL \COMP_CCD|Add1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~5_combout\ : std_logic;
SIGNAL \COMP_CCD|dram_we_a~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~4\ : std_logic;
SIGNAL \COMP_CCD|Add1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[2]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~7\ : std_logic;
SIGNAL \COMP_CCD|Add1~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~11_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[3]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~10\ : std_logic;
SIGNAL \COMP_CCD|Add1~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~13\ : std_logic;
SIGNAL \COMP_CCD|Add1~15_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~17_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[5]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~16\ : std_logic;
SIGNAL \COMP_CCD|Add1~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~20_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[6]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~19\ : std_logic;
SIGNAL \COMP_CCD|Add1~21_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~23_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[7]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~22\ : std_logic;
SIGNAL \COMP_CCD|Add1~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~26_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[8]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~25\ : std_logic;
SIGNAL \COMP_CCD|Add1~27_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~29_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[9]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~28\ : std_logic;
SIGNAL \COMP_CCD|Add1~30_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~32_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[10]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~31\ : std_logic;
SIGNAL \COMP_CCD|Add1~33_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~35_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[11]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~34\ : std_logic;
SIGNAL \COMP_CCD|Add1~36_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~38_combout\ : std_logic;
SIGNAL \COMP_CCD|ram_addr[12]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[0]~3_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[0]~1_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[0]~2_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[0]~_wirecell_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[1]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[3]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[6]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[7]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[8]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[9]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[10]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|ram_addr[12]~feeder_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \adc_data_in[8]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~12_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out~13_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[1]~14_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[8]~15_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[8]~16_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux72~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~8_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~9_combout\ : std_logic;
SIGNAL \COMP_USB|data[0]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[0]~en_q\ : std_logic;
SIGNAL \adc_data_in[1]~input_o\ : std_logic;
SIGNAL \COMP_CCD|Selector17~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[1]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Selector6~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[1]~17_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[1]~18_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \adc_data_in[9]~input_o\ : std_logic;
SIGNAL \COMP_CCD|Equal7~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out~19_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out~20_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux71~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[1]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[1]~en_q\ : std_logic;
SIGNAL \adc_data_in[10]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~21_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out~22_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \adc_data_in[2]~input_o\ : std_logic;
SIGNAL \COMP_CCD|Selector16~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[2]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Selector5~0_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux70~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[2]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[2]~en_q\ : std_logic;
SIGNAL \COMP_CCD|data_out~23_combout\ : std_logic;
SIGNAL \adc_data_in[11]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out~24_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \adc_data_in[3]~input_o\ : std_logic;
SIGNAL \COMP_CCD|Selector15~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[3]~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Selector4~0_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux69~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[3]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[3]~en_q\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \COMP_CCD|Selector14~0_combout\ : std_logic;
SIGNAL \adc_data_in[4]~input_o\ : std_logic;
SIGNAL \COMP_CCD|data_out[4]~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Selector3~0_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux68~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[4]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[4]~en_q\ : std_logic;
SIGNAL \adc_data_in[5]~input_o\ : std_logic;
SIGNAL \COMP_CCD|Selector13~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[5]~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Selector2~0_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux67~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[5]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[5]~en_q\ : std_logic;
SIGNAL \adc_data_in[6]~input_o\ : std_logic;
SIGNAL \COMP_CCD|Selector12~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[6]~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Selector1~0_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux66~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[6]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[6]~en_q\ : std_logic;
SIGNAL \adc_data_in[7]~input_o\ : std_logic;
SIGNAL \COMP_CCD|Selector11~0_combout\ : std_logic;
SIGNAL \COMP_CCD|data_out[7]~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Selector0~0_combout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \COMP_USB|Mux65~0_combout\ : std_logic;
SIGNAL \COMP_USB|data[7]~reg0_q\ : std_logic;
SIGNAL \COMP_USB|data[7]~en_q\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~2_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~5_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_reg~q\ : std_logic;
SIGNAL \COMP_USB|read_delay_reg~0_combout\ : std_logic;
SIGNAL \COMP_USB|oe~1_combout\ : std_logic;
SIGNAL \COMP_USB|read_delay_reg~q\ : std_logic;
SIGNAL \COMP_USB|oe~0_combout\ : std_logic;
SIGNAL \COMP_USB|oe~q\ : std_logic;
SIGNAL \COMP_USB|wr~0_combout\ : std_logic;
SIGNAL \COMP_USB|wr~q\ : std_logic;
SIGNAL \COMP_USB|rd~0_combout\ : std_logic;
SIGNAL \COMP_USB|rd~q\ : std_logic;
SIGNAL \COMP_CCD|line_pos_end\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \COMP_CCD|count_start_seq\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count_div\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|switch_write\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \COMP_CCD|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|line_pos_end_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|ram_addr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|ram_addr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_USB|ALT_INV_rd~q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_wr~q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_oe~q\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_reg~q\ : std_logic;
SIGNAL \ALT_INV_usb_clk~input_o\ : std_logic;

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

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(8);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(1);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(9);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(2);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(10);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(3);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(11);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(4);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \~GND~combout\;

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(5);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \~GND~combout\;

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(6);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \~GND~combout\;

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \COMP_CCD|data_out\(7);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \~GND~combout\;

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\COMP_CCD|ram_addr\(12) & \COMP_CCD|ram_addr\(11) & \COMP_CCD|ram_addr\(10) & \COMP_CCD|ram_addr\(9) & \COMP_CCD|ram_addr\(8) & \COMP_CCD|ram_addr\(7) & \COMP_CCD|ram_addr\(6)
& \COMP_CCD|ram_addr\(5) & \COMP_CCD|ram_addr\(4) & \COMP_CCD|ram_addr\(3) & \COMP_CCD|ram_addr\(2) & \COMP_CCD|ram_addr\(1) & \COMP_CCD|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\COMP_USB|ram_addr\(12) & \COMP_USB|ram_addr\(11) & \COMP_USB|ram_addr\(10) & \COMP_USB|ram_addr\(9) & \COMP_USB|ram_addr\(8) & \COMP_USB|ram_addr\(7) & \COMP_USB|ram_addr\(6)
& \COMP_USB|ram_addr\(5) & \COMP_USB|ram_addr\(4) & \COMP_USB|ram_addr\(3) & \COMP_USB|ram_addr\(2) & \COMP_USB|ram_addr\(1) & \COMP_USB|ram_addr[0]~_wirecell_combout\);

\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\clk50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50Mhz~input_o\);
\COMP_USB|ALT_INV_rd~q\ <= NOT \COMP_USB|rd~q\;
\COMP_USB|ALT_INV_wr~q\ <= NOT \COMP_USB|wr~q\;
\COMP_USB|ALT_INV_oe~q\ <= NOT \COMP_USB|oe~q\;
\COMP_CCD|ALT_INV_clk_reg~q\ <= NOT \COMP_CCD|clk_reg~q\;
\ALT_INV_usb_clk~input_o\ <= NOT \usb_clk~input_o\;

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

-- Location: LCCOMB_X21_Y11_N12
\COMP_USB|switch_write[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[0]~0_combout\ = !\COMP_USB|switch_write\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_USB|switch_write\(0),
	combout => \COMP_USB|switch_write[0]~0_combout\);

-- Location: LCCOMB_X24_Y10_N0
\COMP_USB|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[0]~32_combout\ = \COMP_USB|count\(0) $ (VCC)
-- \COMP_USB|count[0]~33\ = CARRY(\COMP_USB|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(0),
	datad => VCC,
	combout => \COMP_USB|count[0]~32_combout\,
	cout => \COMP_USB|count[0]~33\);

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

-- Location: LCCOMB_X23_Y11_N12
\COMP_CCD|line_pos_end[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_pos_end[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \COMP_CCD|line_pos_end[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y13_N0
\COMP_CCD|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~0_combout\ = \COMP_CCD|count\(0) $ (VCC)
-- \COMP_CCD|Add3~1\ = CARRY(\COMP_CCD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(0),
	datad => VCC,
	combout => \COMP_CCD|Add3~0_combout\,
	cout => \COMP_CCD|Add3~1\);

-- Location: LCCOMB_X22_Y15_N12
\COMP_CCD|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~10_combout\ = (\COMP_CCD|Add3~0_combout\ & !\COMP_CCD|Equal2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~0_combout\,
	datad => \COMP_CCD|Equal2~12_combout\,
	combout => \COMP_CCD|count~10_combout\);

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

-- Location: FF_X24_Y13_N9
\COMP_CCD|count_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~8_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(4));

-- Location: LCCOMB_X24_Y13_N0
\COMP_CCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~0_combout\ = \COMP_CCD|count_div\(0) $ (VCC)
-- \COMP_CCD|Add0~1\ = CARRY(\COMP_CCD|count_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(0),
	datad => VCC,
	combout => \COMP_CCD|Add0~0_combout\,
	cout => \COMP_CCD|Add0~1\);

-- Location: LCCOMB_X24_Y13_N8
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

-- Location: LCCOMB_X24_Y13_N10
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

-- Location: FF_X24_Y13_N11
\COMP_CCD|count_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~10_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(5));

-- Location: LCCOMB_X24_Y13_N12
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

-- Location: FF_X24_Y13_N13
\COMP_CCD|count_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~12_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(6));

-- Location: LCCOMB_X24_Y13_N14
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

-- Location: FF_X24_Y13_N15
\COMP_CCD|count_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~14_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(7));

-- Location: LCCOMB_X25_Y13_N26
\COMP_CCD|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~7_combout\ = (!\COMP_CCD|count_div\(6) & (!\COMP_CCD|count_div\(4) & (!\COMP_CCD|count_div\(7) & !\COMP_CCD|count_div\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(6),
	datab => \COMP_CCD|count_div\(4),
	datac => \COMP_CCD|count_div\(7),
	datad => \COMP_CCD|count_div\(5),
	combout => \COMP_CCD|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y13_N8
\COMP_CCD|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~8_combout\ = (!\COMP_CCD|count_div\(1) & (\COMP_CCD|count_div\(2) & (!\COMP_CCD|count_div\(3) & !\COMP_CCD|count_div\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(1),
	datab => \COMP_CCD|count_div\(2),
	datac => \COMP_CCD|count_div\(3),
	datad => \COMP_CCD|count_div\(0),
	combout => \COMP_CCD|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y13_N16
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

-- Location: FF_X24_Y13_N17
\COMP_CCD|count_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~16_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(8));

-- Location: LCCOMB_X24_Y13_N18
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

-- Location: FF_X24_Y13_N19
\COMP_CCD|count_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~18_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(9));

-- Location: LCCOMB_X24_Y13_N20
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

-- Location: FF_X24_Y13_N21
\COMP_CCD|count_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~20_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(10));

-- Location: LCCOMB_X24_Y13_N22
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

-- Location: FF_X24_Y13_N23
\COMP_CCD|count_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~22_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(11));

-- Location: LCCOMB_X25_Y13_N4
\COMP_CCD|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~6_combout\ = (!\COMP_CCD|count_div\(8) & (!\COMP_CCD|count_div\(11) & (!\COMP_CCD|count_div\(9) & !\COMP_CCD|count_div\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(8),
	datab => \COMP_CCD|count_div\(11),
	datac => \COMP_CCD|count_div\(9),
	datad => \COMP_CCD|count_div\(10),
	combout => \COMP_CCD|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y13_N24
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

-- Location: FF_X24_Y13_N25
\COMP_CCD|count_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~24_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(12));

-- Location: LCCOMB_X24_Y13_N26
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

-- Location: FF_X24_Y13_N27
\COMP_CCD|count_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~26_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(13));

-- Location: LCCOMB_X24_Y13_N28
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

-- Location: FF_X24_Y13_N29
\COMP_CCD|count_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~28_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(14));

-- Location: LCCOMB_X24_Y13_N30
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

-- Location: FF_X24_Y13_N31
\COMP_CCD|count_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~30_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(15));

-- Location: LCCOMB_X25_Y13_N18
\COMP_CCD|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~5_combout\ = (!\COMP_CCD|count_div\(13) & (!\COMP_CCD|count_div\(12) & (!\COMP_CCD|count_div\(14) & !\COMP_CCD|count_div\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(13),
	datab => \COMP_CCD|count_div\(12),
	datac => \COMP_CCD|count_div\(14),
	datad => \COMP_CCD|count_div\(15),
	combout => \COMP_CCD|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y13_N22
\COMP_CCD|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~9_combout\ = (\COMP_CCD|Equal0~7_combout\ & (\COMP_CCD|Equal0~8_combout\ & (\COMP_CCD|Equal0~6_combout\ & \COMP_CCD|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~7_combout\,
	datab => \COMP_CCD|Equal0~8_combout\,
	datac => \COMP_CCD|Equal0~6_combout\,
	datad => \COMP_CCD|Equal0~5_combout\,
	combout => \COMP_CCD|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y12_N0
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

-- Location: FF_X24_Y12_N1
\COMP_CCD|count_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~32_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(16));

-- Location: LCCOMB_X24_Y12_N2
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

-- Location: FF_X24_Y12_N3
\COMP_CCD|count_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~34_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(17));

-- Location: LCCOMB_X24_Y12_N4
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

-- Location: FF_X24_Y12_N5
\COMP_CCD|count_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~36_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(18));

-- Location: LCCOMB_X24_Y12_N6
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

-- Location: FF_X24_Y12_N7
\COMP_CCD|count_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~38_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(19));

-- Location: LCCOMB_X24_Y12_N8
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

-- Location: FF_X24_Y12_N9
\COMP_CCD|count_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~40_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(20));

-- Location: LCCOMB_X24_Y12_N10
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

-- Location: FF_X24_Y12_N11
\COMP_CCD|count_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~42_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(21));

-- Location: LCCOMB_X24_Y12_N12
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

-- Location: FF_X24_Y12_N13
\COMP_CCD|count_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~44_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(22));

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: FF_X24_Y12_N15
\COMP_CCD|count_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~46_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(23));

-- Location: LCCOMB_X25_Y12_N24
\COMP_CCD|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~3_combout\ = (!\COMP_CCD|count_div\(21) & (!\COMP_CCD|count_div\(23) & (!\COMP_CCD|count_div\(22) & !\COMP_CCD|count_div\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(21),
	datab => \COMP_CCD|count_div\(23),
	datac => \COMP_CCD|count_div\(22),
	datad => \COMP_CCD|count_div\(20),
	combout => \COMP_CCD|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y12_N22
\COMP_CCD|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~4_combout\ = (!\COMP_CCD|count_div\(16) & (!\COMP_CCD|count_div\(19) & (!\COMP_CCD|count_div\(18) & !\COMP_CCD|count_div\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(16),
	datab => \COMP_CCD|count_div\(19),
	datac => \COMP_CCD|count_div\(18),
	datad => \COMP_CCD|count_div\(17),
	combout => \COMP_CCD|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y12_N16
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

-- Location: FF_X24_Y12_N17
\COMP_CCD|count_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~48_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(24));

-- Location: LCCOMB_X24_Y12_N18
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

-- Location: FF_X24_Y12_N19
\COMP_CCD|count_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~50_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(25));

-- Location: LCCOMB_X24_Y12_N20
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

-- Location: FF_X24_Y12_N21
\COMP_CCD|count_div[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~52_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(26));

-- Location: LCCOMB_X24_Y12_N22
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

-- Location: FF_X24_Y12_N23
\COMP_CCD|count_div[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~54_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(27));

-- Location: LCCOMB_X24_Y12_N24
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

-- Location: FF_X24_Y12_N25
\COMP_CCD|count_div[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~56_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(28));

-- Location: LCCOMB_X24_Y12_N26
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

-- Location: FF_X24_Y12_N27
\COMP_CCD|count_div[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~58_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(29));

-- Location: LCCOMB_X24_Y12_N28
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

-- Location: FF_X24_Y12_N29
\COMP_CCD|count_div[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~60_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(30));

-- Location: LCCOMB_X24_Y12_N30
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

-- Location: FF_X24_Y12_N31
\COMP_CCD|count_div[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~62_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(31));

-- Location: LCCOMB_X25_Y12_N0
\COMP_CCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~0_combout\ = (!\COMP_CCD|count_div\(29) & (!\COMP_CCD|count_div\(30) & (!\COMP_CCD|count_div\(28) & !\COMP_CCD|count_div\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(29),
	datab => \COMP_CCD|count_div\(30),
	datac => \COMP_CCD|count_div\(28),
	datad => \COMP_CCD|count_div\(31),
	combout => \COMP_CCD|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y12_N10
\COMP_CCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~1_combout\ = (!\COMP_CCD|count_div\(27) & !\COMP_CCD|count_div\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_div\(27),
	datad => \COMP_CCD|count_div\(26),
	combout => \COMP_CCD|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y13_N24
\COMP_CCD|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~2_combout\ = (!\COMP_CCD|count_div\(25) & (\COMP_CCD|Equal0~0_combout\ & (!\COMP_CCD|count_div\(24) & \COMP_CCD|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_div\(25),
	datab => \COMP_CCD|Equal0~0_combout\,
	datac => \COMP_CCD|count_div\(24),
	datad => \COMP_CCD|Equal0~1_combout\,
	combout => \COMP_CCD|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y13_N0
\COMP_CCD|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~10_combout\ = (\COMP_CCD|Equal0~9_combout\ & (\COMP_CCD|Equal0~3_combout\ & (\COMP_CCD|Equal0~4_combout\ & \COMP_CCD|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~9_combout\,
	datab => \COMP_CCD|Equal0~3_combout\,
	datac => \COMP_CCD|Equal0~4_combout\,
	datad => \COMP_CCD|Equal0~2_combout\,
	combout => \COMP_CCD|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y13_N2
\COMP_CCD|count_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_div~1_combout\ = (\COMP_CCD|Add0~0_combout\ & !\COMP_CCD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add0~0_combout\,
	datad => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|count_div~1_combout\);

-- Location: FF_X25_Y13_N3
\COMP_CCD|count_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_div~1_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(0));

-- Location: LCCOMB_X24_Y13_N2
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

-- Location: FF_X24_Y13_N3
\COMP_CCD|count_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~2_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(1));

-- Location: LCCOMB_X24_Y13_N4
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

-- Location: LCCOMB_X25_Y13_N20
\COMP_CCD|count_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_div~0_combout\ = (\COMP_CCD|Add0~4_combout\ & !\COMP_CCD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add0~4_combout\,
	datad => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|count_div~0_combout\);

-- Location: FF_X25_Y13_N21
\COMP_CCD|count_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_div~0_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(2));

-- Location: LCCOMB_X24_Y13_N6
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

-- Location: FF_X24_Y13_N7
\COMP_CCD|count_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~6_combout\,
	ena => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_div\(3));

-- Location: LCCOMB_X25_Y13_N28
\COMP_CCD|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~2_combout\ = (!\COMP_CCD|Add0~8_combout\ & (!\COMP_CCD|Add0~6_combout\ & (!\COMP_CCD|Add0~2_combout\ & !\COMP_CCD|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~8_combout\,
	datab => \COMP_CCD|Add0~6_combout\,
	datac => \COMP_CCD|Add0~2_combout\,
	datad => \COMP_CCD|Add0~10_combout\,
	combout => \COMP_CCD|Equal1~2_combout\);

-- Location: LCCOMB_X25_Y13_N30
\COMP_CCD|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~3_combout\ = (!\COMP_CCD|Add0~12_combout\ & (!\COMP_CCD|Add0~18_combout\ & (!\COMP_CCD|Add0~16_combout\ & !\COMP_CCD|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~12_combout\,
	datab => \COMP_CCD|Add0~18_combout\,
	datac => \COMP_CCD|Add0~16_combout\,
	datad => \COMP_CCD|Add0~14_combout\,
	combout => \COMP_CCD|Equal1~3_combout\);

-- Location: LCCOMB_X23_Y12_N30
\COMP_CCD|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~4_combout\ = (!\COMP_CCD|Add0~20_combout\ & (!\COMP_CCD|Add0~22_combout\ & (!\COMP_CCD|Add0~24_combout\ & !\COMP_CCD|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~20_combout\,
	datab => \COMP_CCD|Add0~22_combout\,
	datac => \COMP_CCD|Add0~24_combout\,
	datad => \COMP_CCD|Add0~26_combout\,
	combout => \COMP_CCD|Equal1~4_combout\);

-- Location: LCCOMB_X23_Y12_N20
\COMP_CCD|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~5_combout\ = (!\COMP_CCD|Add0~34_combout\ & (!\COMP_CCD|Add0~32_combout\ & (!\COMP_CCD|Add0~30_combout\ & !\COMP_CCD|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~34_combout\,
	datab => \COMP_CCD|Add0~32_combout\,
	datac => \COMP_CCD|Add0~30_combout\,
	datad => \COMP_CCD|Add0~28_combout\,
	combout => \COMP_CCD|Equal1~5_combout\);

-- Location: LCCOMB_X23_Y12_N22
\COMP_CCD|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~6_combout\ = (\COMP_CCD|Equal1~2_combout\ & (\COMP_CCD|Equal1~3_combout\ & (\COMP_CCD|Equal1~4_combout\ & \COMP_CCD|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~2_combout\,
	datab => \COMP_CCD|Equal1~3_combout\,
	datac => \COMP_CCD|Equal1~4_combout\,
	datad => \COMP_CCD|Equal1~5_combout\,
	combout => \COMP_CCD|Equal1~6_combout\);

-- Location: LCCOMB_X23_Y12_N8
\COMP_CCD|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~0_combout\ = (!\COMP_CCD|Add0~52_combout\ & (!\COMP_CCD|Add0~54_combout\ & (!\COMP_CCD|Add0~56_combout\ & !\COMP_CCD|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~52_combout\,
	datab => \COMP_CCD|Add0~54_combout\,
	datac => \COMP_CCD|Add0~56_combout\,
	datad => \COMP_CCD|Add0~58_combout\,
	combout => \COMP_CCD|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y12_N4
\COMP_CCD|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~7_combout\ = (!\COMP_CCD|Add0~36_combout\ & (!\COMP_CCD|Add0~40_combout\ & (!\COMP_CCD|Add0~42_combout\ & !\COMP_CCD|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~36_combout\,
	datab => \COMP_CCD|Add0~40_combout\,
	datac => \COMP_CCD|Add0~42_combout\,
	datad => \COMP_CCD|Add0~38_combout\,
	combout => \COMP_CCD|Equal1~7_combout\);

-- Location: LCCOMB_X23_Y12_N18
\COMP_CCD|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~8_combout\ = (!\COMP_CCD|Add0~44_combout\ & (!\COMP_CCD|Add0~48_combout\ & (!\COMP_CCD|Add0~46_combout\ & !\COMP_CCD|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~44_combout\,
	datab => \COMP_CCD|Add0~48_combout\,
	datac => \COMP_CCD|Add0~46_combout\,
	datad => \COMP_CCD|Add0~50_combout\,
	combout => \COMP_CCD|Equal1~8_combout\);

-- Location: LCCOMB_X23_Y12_N24
\COMP_CCD|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~11_combout\ = (\COMP_CCD|Equal1~7_combout\ & \COMP_CCD|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal1~7_combout\,
	datad => \COMP_CCD|Equal1~8_combout\,
	combout => \COMP_CCD|Equal1~11_combout\);

-- Location: LCCOMB_X23_Y12_N14
\COMP_CCD|Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~12_combout\ = (!\COMP_CCD|Add0~62_combout\ & (!\COMP_CCD|Add0~60_combout\ & (\COMP_CCD|Equal1~0_combout\ & \COMP_CCD|Equal1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~62_combout\,
	datab => \COMP_CCD|Add0~60_combout\,
	datac => \COMP_CCD|Equal1~0_combout\,
	datad => \COMP_CCD|Equal1~11_combout\,
	combout => \COMP_CCD|Equal1~12_combout\);

-- Location: LCCOMB_X25_Y13_N6
\COMP_CCD|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~1_combout\ = (!\COMP_CCD|Add0~0_combout\ & (\COMP_CCD|Add0~4_combout\ & !\COMP_CCD|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~0_combout\,
	datac => \COMP_CCD|Add0~4_combout\,
	datad => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y12_N16
\COMP_CCD|count[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count[31]~0_combout\ = (\COMP_CCD|Equal1~6_combout\ & (\button~input_o\ & (\COMP_CCD|Equal1~12_combout\ & \COMP_CCD|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~6_combout\,
	datab => \button~input_o\,
	datac => \COMP_CCD|Equal1~12_combout\,
	datad => \COMP_CCD|Equal1~1_combout\,
	combout => \COMP_CCD|count[31]~0_combout\);

-- Location: FF_X22_Y15_N13
\COMP_CCD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~10_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(0));

-- Location: LCCOMB_X21_Y13_N2
\COMP_CCD|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~2_combout\ = (\COMP_CCD|count\(1) & (!\COMP_CCD|Add3~1\)) # (!\COMP_CCD|count\(1) & ((\COMP_CCD|Add3~1\) # (GND)))
-- \COMP_CCD|Add3~3\ = CARRY((!\COMP_CCD|Add3~1\) # (!\COMP_CCD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datad => VCC,
	cin => \COMP_CCD|Add3~1\,
	combout => \COMP_CCD|Add3~2_combout\,
	cout => \COMP_CCD|Add3~3\);

-- Location: LCCOMB_X22_Y13_N18
\COMP_CCD|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~9_combout\ = (\COMP_CCD|Add3~2_combout\ & !\COMP_CCD|Equal2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~2_combout\,
	datac => \COMP_CCD|Equal2~12_combout\,
	combout => \COMP_CCD|count~9_combout\);

-- Location: FF_X22_Y13_N19
\COMP_CCD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~9_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(1));

-- Location: LCCOMB_X21_Y13_N4
\COMP_CCD|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~4_combout\ = (\COMP_CCD|count\(2) & (\COMP_CCD|Add3~3\ $ (GND))) # (!\COMP_CCD|count\(2) & (!\COMP_CCD|Add3~3\ & VCC))
-- \COMP_CCD|Add3~5\ = CARRY((\COMP_CCD|count\(2) & !\COMP_CCD|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(2),
	datad => VCC,
	cin => \COMP_CCD|Add3~3\,
	combout => \COMP_CCD|Add3~4_combout\,
	cout => \COMP_CCD|Add3~5\);

-- Location: LCCOMB_X22_Y13_N0
\COMP_CCD|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~8_combout\ = (\COMP_CCD|Add3~4_combout\ & !\COMP_CCD|Equal2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add3~4_combout\,
	datac => \COMP_CCD|Equal2~12_combout\,
	combout => \COMP_CCD|count~8_combout\);

-- Location: FF_X22_Y13_N1
\COMP_CCD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~8_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(2));

-- Location: LCCOMB_X21_Y13_N6
\COMP_CCD|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~6_combout\ = (\COMP_CCD|count\(3) & (!\COMP_CCD|Add3~5\)) # (!\COMP_CCD|count\(3) & ((\COMP_CCD|Add3~5\) # (GND)))
-- \COMP_CCD|Add3~7\ = CARRY((!\COMP_CCD|Add3~5\) # (!\COMP_CCD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datad => VCC,
	cin => \COMP_CCD|Add3~5\,
	combout => \COMP_CCD|Add3~6_combout\,
	cout => \COMP_CCD|Add3~7\);

-- Location: FF_X21_Y13_N7
\COMP_CCD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~6_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(3));

-- Location: LCCOMB_X22_Y13_N16
\COMP_CCD|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~5_combout\ = (!\COMP_CCD|count\(13) & (!\COMP_CCD|count\(14) & (!\COMP_CCD|count\(15) & !\COMP_CCD|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(13),
	datab => \COMP_CCD|count\(14),
	datac => \COMP_CCD|count\(15),
	datad => \COMP_CCD|count\(12),
	combout => \COMP_CCD|Equal2~5_combout\);

-- Location: LCCOMB_X23_Y13_N2
\COMP_CCD|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~6_combout\ = (\COMP_CCD|count\(2) & \COMP_CCD|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(2),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|Equal2~6_combout\);

-- Location: LCCOMB_X21_Y13_N8
\COMP_CCD|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~8_combout\ = (\COMP_CCD|count\(4) & (\COMP_CCD|Add3~7\ $ (GND))) # (!\COMP_CCD|count\(4) & (!\COMP_CCD|Add3~7\ & VCC))
-- \COMP_CCD|Add3~9\ = CARRY((\COMP_CCD|count\(4) & !\COMP_CCD|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(4),
	datad => VCC,
	cin => \COMP_CCD|Add3~7\,
	combout => \COMP_CCD|Add3~8_combout\,
	cout => \COMP_CCD|Add3~9\);

-- Location: LCCOMB_X23_Y13_N14
\COMP_CCD|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~2_combout\ = (\COMP_CCD|Add3~8_combout\ & !\COMP_CCD|Equal2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~8_combout\,
	datad => \COMP_CCD|Equal2~12_combout\,
	combout => \COMP_CCD|count~2_combout\);

-- Location: FF_X22_Y13_N27
\COMP_CCD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count~2_combout\,
	sload => VCC,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(4));

-- Location: LCCOMB_X21_Y13_N10
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

-- Location: LCCOMB_X22_Y13_N20
\COMP_CCD|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~4_combout\ = (!\COMP_CCD|Equal2~12_combout\ & \COMP_CCD|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal2~12_combout\,
	datad => \COMP_CCD|Add3~10_combout\,
	combout => \COMP_CCD|count~4_combout\);

-- Location: FF_X22_Y13_N21
\COMP_CCD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~4_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(5));

-- Location: LCCOMB_X21_Y13_N12
\COMP_CCD|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~12_combout\ = (\COMP_CCD|count\(6) & (\COMP_CCD|Add3~11\ $ (GND))) # (!\COMP_CCD|count\(6) & (!\COMP_CCD|Add3~11\ & VCC))
-- \COMP_CCD|Add3~13\ = CARRY((\COMP_CCD|count\(6) & !\COMP_CCD|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datad => VCC,
	cin => \COMP_CCD|Add3~11\,
	combout => \COMP_CCD|Add3~12_combout\,
	cout => \COMP_CCD|Add3~13\);

-- Location: LCCOMB_X23_Y13_N4
\COMP_CCD|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~3_combout\ = (\COMP_CCD|Add3~12_combout\ & !\COMP_CCD|Equal2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add3~12_combout\,
	datad => \COMP_CCD|Equal2~12_combout\,
	combout => \COMP_CCD|count~3_combout\);

-- Location: FF_X23_Y13_N5
\COMP_CCD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~3_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(6));

-- Location: LCCOMB_X21_Y13_N14
\COMP_CCD|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~14_combout\ = (\COMP_CCD|count\(7) & (!\COMP_CCD|Add3~13\)) # (!\COMP_CCD|count\(7) & ((\COMP_CCD|Add3~13\) # (GND)))
-- \COMP_CCD|Add3~15\ = CARRY((!\COMP_CCD|Add3~13\) # (!\COMP_CCD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(7),
	datad => VCC,
	cin => \COMP_CCD|Add3~13\,
	combout => \COMP_CCD|Add3~14_combout\,
	cout => \COMP_CCD|Add3~15\);

-- Location: FF_X21_Y13_N15
\COMP_CCD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~14_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(7));

-- Location: LCCOMB_X21_Y13_N16
\COMP_CCD|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~16_combout\ = (\COMP_CCD|count\(8) & (\COMP_CCD|Add3~15\ $ (GND))) # (!\COMP_CCD|count\(8) & (!\COMP_CCD|Add3~15\ & VCC))
-- \COMP_CCD|Add3~17\ = CARRY((\COMP_CCD|count\(8) & !\COMP_CCD|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(8),
	datad => VCC,
	cin => \COMP_CCD|Add3~15\,
	combout => \COMP_CCD|Add3~16_combout\,
	cout => \COMP_CCD|Add3~17\);

-- Location: FF_X21_Y13_N17
\COMP_CCD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~16_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(8));

-- Location: LCCOMB_X21_Y13_N18
\COMP_CCD|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~18_combout\ = (\COMP_CCD|count\(9) & (!\COMP_CCD|Add3~17\)) # (!\COMP_CCD|count\(9) & ((\COMP_CCD|Add3~17\) # (GND)))
-- \COMP_CCD|Add3~19\ = CARRY((!\COMP_CCD|Add3~17\) # (!\COMP_CCD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(9),
	datad => VCC,
	cin => \COMP_CCD|Add3~17\,
	combout => \COMP_CCD|Add3~18_combout\,
	cout => \COMP_CCD|Add3~19\);

-- Location: LCCOMB_X22_Y13_N10
\COMP_CCD|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~7_combout\ = (!\COMP_CCD|Equal2~12_combout\ & \COMP_CCD|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal2~12_combout\,
	datad => \COMP_CCD|Add3~18_combout\,
	combout => \COMP_CCD|count~7_combout\);

-- Location: FF_X22_Y13_N11
\COMP_CCD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~7_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(9));

-- Location: LCCOMB_X21_Y13_N20
\COMP_CCD|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~20_combout\ = (\COMP_CCD|count\(10) & (\COMP_CCD|Add3~19\ $ (GND))) # (!\COMP_CCD|count\(10) & (!\COMP_CCD|Add3~19\ & VCC))
-- \COMP_CCD|Add3~21\ = CARRY((\COMP_CCD|count\(10) & !\COMP_CCD|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(10),
	datad => VCC,
	cin => \COMP_CCD|Add3~19\,
	combout => \COMP_CCD|Add3~20_combout\,
	cout => \COMP_CCD|Add3~21\);

-- Location: LCCOMB_X22_Y13_N28
\COMP_CCD|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~6_combout\ = (!\COMP_CCD|Equal2~12_combout\ & \COMP_CCD|Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal2~12_combout\,
	datad => \COMP_CCD|Add3~20_combout\,
	combout => \COMP_CCD|count~6_combout\);

-- Location: FF_X22_Y13_N29
\COMP_CCD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~6_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(10));

-- Location: LCCOMB_X22_Y13_N14
\COMP_CCD|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~8_combout\ = (\COMP_CCD|count\(10) & (\COMP_CCD|count\(11) & \COMP_CCD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(10),
	datac => \COMP_CCD|count\(11),
	datad => \COMP_CCD|count\(9),
	combout => \COMP_CCD|Equal2~8_combout\);

-- Location: LCCOMB_X23_Y13_N8
\COMP_CCD|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~7_combout\ = (\COMP_CCD|count\(6) & (\COMP_CCD|count\(4) & \COMP_CCD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|count\(5),
	combout => \COMP_CCD|Equal2~7_combout\);

-- Location: LCCOMB_X21_Y12_N28
\COMP_CCD|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~60_combout\ = (\COMP_CCD|count\(30) & (\COMP_CCD|Add3~59\ $ (GND))) # (!\COMP_CCD|count\(30) & (!\COMP_CCD|Add3~59\ & VCC))
-- \COMP_CCD|Add3~61\ = CARRY((\COMP_CCD|count\(30) & !\COMP_CCD|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(30),
	datad => VCC,
	cin => \COMP_CCD|Add3~59\,
	combout => \COMP_CCD|Add3~60_combout\,
	cout => \COMP_CCD|Add3~61\);

-- Location: LCCOMB_X21_Y12_N30
\COMP_CCD|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~62_combout\ = \COMP_CCD|count\(31) $ (\COMP_CCD|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	cin => \COMP_CCD|Add3~61\,
	combout => \COMP_CCD|Add3~62_combout\);

-- Location: FF_X21_Y12_N31
\COMP_CCD|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~62_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(31));

-- Location: LCCOMB_X23_Y13_N22
\COMP_CCD|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~10_combout\ = (\COMP_CCD|Equal2~8_combout\ & (\COMP_CCD|count\(16) & (\COMP_CCD|Equal2~7_combout\ & !\COMP_CCD|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~8_combout\,
	datab => \COMP_CCD|count\(16),
	datac => \COMP_CCD|Equal2~7_combout\,
	datad => \COMP_CCD|count\(31),
	combout => \COMP_CCD|Equal2~10_combout\);

-- Location: LCCOMB_X22_Y13_N8
\COMP_CCD|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~4_combout\ = (!\COMP_CCD|count\(8) & !\COMP_CCD|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(8),
	datad => \COMP_CCD|count\(7),
	combout => \COMP_CCD|Equal2~4_combout\);

-- Location: LCCOMB_X23_Y13_N28
\COMP_CCD|Equal2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~11_combout\ = (\COMP_CCD|Equal2~5_combout\ & (\COMP_CCD|Equal2~6_combout\ & (\COMP_CCD|Equal2~10_combout\ & \COMP_CCD|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~5_combout\,
	datab => \COMP_CCD|Equal2~6_combout\,
	datac => \COMP_CCD|Equal2~10_combout\,
	datad => \COMP_CCD|Equal2~4_combout\,
	combout => \COMP_CCD|Equal2~11_combout\);

-- Location: LCCOMB_X22_Y11_N24
\COMP_CCD|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~0_combout\ = (!\COMP_CCD|count\(28) & (!\COMP_CCD|count\(29) & (!\COMP_CCD|count\(26) & !\COMP_CCD|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(28),
	datab => \COMP_CCD|count\(29),
	datac => \COMP_CCD|count\(26),
	datad => \COMP_CCD|count\(27),
	combout => \COMP_CCD|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y11_N30
\COMP_CCD|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~1_combout\ = (!\COMP_CCD|count\(23) & (!\COMP_CCD|count\(22) & (!\COMP_CCD|count\(24) & !\COMP_CCD|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(23),
	datab => \COMP_CCD|count\(22),
	datac => \COMP_CCD|count\(24),
	datad => \COMP_CCD|count\(25),
	combout => \COMP_CCD|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y11_N16
\COMP_CCD|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~2_combout\ = (!\COMP_CCD|count\(20) & (!\COMP_CCD|count\(19) & (!\COMP_CCD|count\(21) & !\COMP_CCD|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(20),
	datab => \COMP_CCD|count\(19),
	datac => \COMP_CCD|count\(21),
	datad => \COMP_CCD|count\(18),
	combout => \COMP_CCD|Equal2~2_combout\);

-- Location: LCCOMB_X22_Y11_N6
\COMP_CCD|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~3_combout\ = (!\COMP_CCD|count\(17) & (\COMP_CCD|Equal2~0_combout\ & (\COMP_CCD|Equal2~1_combout\ & \COMP_CCD|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(17),
	datab => \COMP_CCD|Equal2~0_combout\,
	datac => \COMP_CCD|Equal2~1_combout\,
	datad => \COMP_CCD|Equal2~2_combout\,
	combout => \COMP_CCD|Equal2~3_combout\);

-- Location: LCCOMB_X22_Y11_N12
\COMP_CCD|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~9_combout\ = (!\COMP_CCD|count\(30) & \COMP_CCD|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datad => \COMP_CCD|Equal2~3_combout\,
	combout => \COMP_CCD|Equal2~9_combout\);

-- Location: LCCOMB_X22_Y11_N14
\COMP_CCD|Equal2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~12_combout\ = (!\COMP_CCD|count\(0) & (!\COMP_CCD|count\(3) & (\COMP_CCD|Equal2~11_combout\ & \COMP_CCD|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(0),
	datab => \COMP_CCD|count\(3),
	datac => \COMP_CCD|Equal2~11_combout\,
	datad => \COMP_CCD|Equal2~9_combout\,
	combout => \COMP_CCD|Equal2~12_combout\);

-- Location: LCCOMB_X21_Y13_N22
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

-- Location: LCCOMB_X22_Y13_N30
\COMP_CCD|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~5_combout\ = (!\COMP_CCD|Equal2~12_combout\ & \COMP_CCD|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal2~12_combout\,
	datad => \COMP_CCD|Add3~22_combout\,
	combout => \COMP_CCD|count~5_combout\);

-- Location: FF_X22_Y13_N31
\COMP_CCD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~5_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(11));

-- Location: LCCOMB_X21_Y13_N24
\COMP_CCD|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~24_combout\ = (\COMP_CCD|count\(12) & (\COMP_CCD|Add3~23\ $ (GND))) # (!\COMP_CCD|count\(12) & (!\COMP_CCD|Add3~23\ & VCC))
-- \COMP_CCD|Add3~25\ = CARRY((\COMP_CCD|count\(12) & !\COMP_CCD|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(12),
	datad => VCC,
	cin => \COMP_CCD|Add3~23\,
	combout => \COMP_CCD|Add3~24_combout\,
	cout => \COMP_CCD|Add3~25\);

-- Location: FF_X21_Y13_N25
\COMP_CCD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~24_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(12));

-- Location: LCCOMB_X21_Y13_N26
\COMP_CCD|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~26_combout\ = (\COMP_CCD|count\(13) & (!\COMP_CCD|Add3~25\)) # (!\COMP_CCD|count\(13) & ((\COMP_CCD|Add3~25\) # (GND)))
-- \COMP_CCD|Add3~27\ = CARRY((!\COMP_CCD|Add3~25\) # (!\COMP_CCD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(13),
	datad => VCC,
	cin => \COMP_CCD|Add3~25\,
	combout => \COMP_CCD|Add3~26_combout\,
	cout => \COMP_CCD|Add3~27\);

-- Location: FF_X21_Y13_N27
\COMP_CCD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~26_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(13));

-- Location: LCCOMB_X21_Y13_N28
\COMP_CCD|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~28_combout\ = (\COMP_CCD|count\(14) & (\COMP_CCD|Add3~27\ $ (GND))) # (!\COMP_CCD|count\(14) & (!\COMP_CCD|Add3~27\ & VCC))
-- \COMP_CCD|Add3~29\ = CARRY((\COMP_CCD|count\(14) & !\COMP_CCD|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(14),
	datad => VCC,
	cin => \COMP_CCD|Add3~27\,
	combout => \COMP_CCD|Add3~28_combout\,
	cout => \COMP_CCD|Add3~29\);

-- Location: FF_X21_Y13_N29
\COMP_CCD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~28_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(14));

-- Location: LCCOMB_X21_Y13_N30
\COMP_CCD|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~30_combout\ = (\COMP_CCD|count\(15) & (!\COMP_CCD|Add3~29\)) # (!\COMP_CCD|count\(15) & ((\COMP_CCD|Add3~29\) # (GND)))
-- \COMP_CCD|Add3~31\ = CARRY((!\COMP_CCD|Add3~29\) # (!\COMP_CCD|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(15),
	datad => VCC,
	cin => \COMP_CCD|Add3~29\,
	combout => \COMP_CCD|Add3~30_combout\,
	cout => \COMP_CCD|Add3~31\);

-- Location: FF_X21_Y13_N31
\COMP_CCD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~30_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(15));

-- Location: LCCOMB_X21_Y12_N0
\COMP_CCD|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~32_combout\ = (\COMP_CCD|count\(16) & (\COMP_CCD|Add3~31\ $ (GND))) # (!\COMP_CCD|count\(16) & (!\COMP_CCD|Add3~31\ & VCC))
-- \COMP_CCD|Add3~33\ = CARRY((\COMP_CCD|count\(16) & !\COMP_CCD|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(16),
	datad => VCC,
	cin => \COMP_CCD|Add3~31\,
	combout => \COMP_CCD|Add3~32_combout\,
	cout => \COMP_CCD|Add3~33\);

-- Location: LCCOMB_X22_Y11_N0
\COMP_CCD|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~1_combout\ = (\COMP_CCD|Add3~32_combout\ & !\COMP_CCD|Equal2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add3~32_combout\,
	datac => \COMP_CCD|Equal2~12_combout\,
	combout => \COMP_CCD|count~1_combout\);

-- Location: FF_X22_Y11_N1
\COMP_CCD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count~1_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(16));

-- Location: LCCOMB_X21_Y12_N2
\COMP_CCD|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~34_combout\ = (\COMP_CCD|count\(17) & (!\COMP_CCD|Add3~33\)) # (!\COMP_CCD|count\(17) & ((\COMP_CCD|Add3~33\) # (GND)))
-- \COMP_CCD|Add3~35\ = CARRY((!\COMP_CCD|Add3~33\) # (!\COMP_CCD|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(17),
	datad => VCC,
	cin => \COMP_CCD|Add3~33\,
	combout => \COMP_CCD|Add3~34_combout\,
	cout => \COMP_CCD|Add3~35\);

-- Location: FF_X21_Y12_N3
\COMP_CCD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~34_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(17));

-- Location: LCCOMB_X21_Y12_N4
\COMP_CCD|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~36_combout\ = (\COMP_CCD|count\(18) & (\COMP_CCD|Add3~35\ $ (GND))) # (!\COMP_CCD|count\(18) & (!\COMP_CCD|Add3~35\ & VCC))
-- \COMP_CCD|Add3~37\ = CARRY((\COMP_CCD|count\(18) & !\COMP_CCD|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(18),
	datad => VCC,
	cin => \COMP_CCD|Add3~35\,
	combout => \COMP_CCD|Add3~36_combout\,
	cout => \COMP_CCD|Add3~37\);

-- Location: FF_X21_Y12_N5
\COMP_CCD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~36_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(18));

-- Location: LCCOMB_X21_Y12_N6
\COMP_CCD|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~38_combout\ = (\COMP_CCD|count\(19) & (!\COMP_CCD|Add3~37\)) # (!\COMP_CCD|count\(19) & ((\COMP_CCD|Add3~37\) # (GND)))
-- \COMP_CCD|Add3~39\ = CARRY((!\COMP_CCD|Add3~37\) # (!\COMP_CCD|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(19),
	datad => VCC,
	cin => \COMP_CCD|Add3~37\,
	combout => \COMP_CCD|Add3~38_combout\,
	cout => \COMP_CCD|Add3~39\);

-- Location: FF_X21_Y12_N7
\COMP_CCD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~38_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(19));

-- Location: LCCOMB_X21_Y12_N8
\COMP_CCD|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~40_combout\ = (\COMP_CCD|count\(20) & (\COMP_CCD|Add3~39\ $ (GND))) # (!\COMP_CCD|count\(20) & (!\COMP_CCD|Add3~39\ & VCC))
-- \COMP_CCD|Add3~41\ = CARRY((\COMP_CCD|count\(20) & !\COMP_CCD|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(20),
	datad => VCC,
	cin => \COMP_CCD|Add3~39\,
	combout => \COMP_CCD|Add3~40_combout\,
	cout => \COMP_CCD|Add3~41\);

-- Location: FF_X21_Y12_N9
\COMP_CCD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~40_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(20));

-- Location: LCCOMB_X21_Y12_N10
\COMP_CCD|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~42_combout\ = (\COMP_CCD|count\(21) & (!\COMP_CCD|Add3~41\)) # (!\COMP_CCD|count\(21) & ((\COMP_CCD|Add3~41\) # (GND)))
-- \COMP_CCD|Add3~43\ = CARRY((!\COMP_CCD|Add3~41\) # (!\COMP_CCD|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(21),
	datad => VCC,
	cin => \COMP_CCD|Add3~41\,
	combout => \COMP_CCD|Add3~42_combout\,
	cout => \COMP_CCD|Add3~43\);

-- Location: FF_X21_Y12_N11
\COMP_CCD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~42_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(21));

-- Location: LCCOMB_X21_Y12_N12
\COMP_CCD|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~44_combout\ = (\COMP_CCD|count\(22) & (\COMP_CCD|Add3~43\ $ (GND))) # (!\COMP_CCD|count\(22) & (!\COMP_CCD|Add3~43\ & VCC))
-- \COMP_CCD|Add3~45\ = CARRY((\COMP_CCD|count\(22) & !\COMP_CCD|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(22),
	datad => VCC,
	cin => \COMP_CCD|Add3~43\,
	combout => \COMP_CCD|Add3~44_combout\,
	cout => \COMP_CCD|Add3~45\);

-- Location: FF_X21_Y12_N13
\COMP_CCD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~44_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(22));

-- Location: LCCOMB_X21_Y12_N14
\COMP_CCD|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~46_combout\ = (\COMP_CCD|count\(23) & (!\COMP_CCD|Add3~45\)) # (!\COMP_CCD|count\(23) & ((\COMP_CCD|Add3~45\) # (GND)))
-- \COMP_CCD|Add3~47\ = CARRY((!\COMP_CCD|Add3~45\) # (!\COMP_CCD|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(23),
	datad => VCC,
	cin => \COMP_CCD|Add3~45\,
	combout => \COMP_CCD|Add3~46_combout\,
	cout => \COMP_CCD|Add3~47\);

-- Location: FF_X21_Y12_N15
\COMP_CCD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~46_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(23));

-- Location: LCCOMB_X21_Y12_N16
\COMP_CCD|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~48_combout\ = (\COMP_CCD|count\(24) & (\COMP_CCD|Add3~47\ $ (GND))) # (!\COMP_CCD|count\(24) & (!\COMP_CCD|Add3~47\ & VCC))
-- \COMP_CCD|Add3~49\ = CARRY((\COMP_CCD|count\(24) & !\COMP_CCD|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(24),
	datad => VCC,
	cin => \COMP_CCD|Add3~47\,
	combout => \COMP_CCD|Add3~48_combout\,
	cout => \COMP_CCD|Add3~49\);

-- Location: FF_X21_Y12_N17
\COMP_CCD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~48_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(24));

-- Location: LCCOMB_X21_Y12_N18
\COMP_CCD|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~50_combout\ = (\COMP_CCD|count\(25) & (!\COMP_CCD|Add3~49\)) # (!\COMP_CCD|count\(25) & ((\COMP_CCD|Add3~49\) # (GND)))
-- \COMP_CCD|Add3~51\ = CARRY((!\COMP_CCD|Add3~49\) # (!\COMP_CCD|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(25),
	datad => VCC,
	cin => \COMP_CCD|Add3~49\,
	combout => \COMP_CCD|Add3~50_combout\,
	cout => \COMP_CCD|Add3~51\);

-- Location: FF_X21_Y12_N19
\COMP_CCD|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~50_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(25));

-- Location: LCCOMB_X21_Y12_N20
\COMP_CCD|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~52_combout\ = (\COMP_CCD|count\(26) & (\COMP_CCD|Add3~51\ $ (GND))) # (!\COMP_CCD|count\(26) & (!\COMP_CCD|Add3~51\ & VCC))
-- \COMP_CCD|Add3~53\ = CARRY((\COMP_CCD|count\(26) & !\COMP_CCD|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(26),
	datad => VCC,
	cin => \COMP_CCD|Add3~51\,
	combout => \COMP_CCD|Add3~52_combout\,
	cout => \COMP_CCD|Add3~53\);

-- Location: FF_X21_Y12_N21
\COMP_CCD|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~52_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(26));

-- Location: LCCOMB_X21_Y12_N22
\COMP_CCD|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~54_combout\ = (\COMP_CCD|count\(27) & (!\COMP_CCD|Add3~53\)) # (!\COMP_CCD|count\(27) & ((\COMP_CCD|Add3~53\) # (GND)))
-- \COMP_CCD|Add3~55\ = CARRY((!\COMP_CCD|Add3~53\) # (!\COMP_CCD|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(27),
	datad => VCC,
	cin => \COMP_CCD|Add3~53\,
	combout => \COMP_CCD|Add3~54_combout\,
	cout => \COMP_CCD|Add3~55\);

-- Location: FF_X21_Y12_N23
\COMP_CCD|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~54_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(27));

-- Location: LCCOMB_X21_Y12_N24
\COMP_CCD|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~56_combout\ = (\COMP_CCD|count\(28) & (\COMP_CCD|Add3~55\ $ (GND))) # (!\COMP_CCD|count\(28) & (!\COMP_CCD|Add3~55\ & VCC))
-- \COMP_CCD|Add3~57\ = CARRY((\COMP_CCD|count\(28) & !\COMP_CCD|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(28),
	datad => VCC,
	cin => \COMP_CCD|Add3~55\,
	combout => \COMP_CCD|Add3~56_combout\,
	cout => \COMP_CCD|Add3~57\);

-- Location: FF_X21_Y12_N25
\COMP_CCD|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~56_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(28));

-- Location: LCCOMB_X21_Y12_N26
\COMP_CCD|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add3~58_combout\ = (\COMP_CCD|count\(29) & (!\COMP_CCD|Add3~57\)) # (!\COMP_CCD|count\(29) & ((\COMP_CCD|Add3~57\) # (GND)))
-- \COMP_CCD|Add3~59\ = CARRY((!\COMP_CCD|Add3~57\) # (!\COMP_CCD|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(29),
	datad => VCC,
	cin => \COMP_CCD|Add3~57\,
	combout => \COMP_CCD|Add3~58_combout\,
	cout => \COMP_CCD|Add3~59\);

-- Location: FF_X21_Y12_N27
\COMP_CCD|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~58_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(29));

-- Location: FF_X21_Y12_N29
\COMP_CCD|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add3~60_combout\,
	ena => \COMP_CCD|count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(30));

-- Location: LCCOMB_X22_Y11_N10
\COMP_CCD|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~0_combout\ = (!\COMP_CCD|count\(30) & (!\COMP_CCD|count\(16) & \COMP_CCD|Equal2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datab => \COMP_CCD|count\(16),
	datad => \COMP_CCD|Equal2~3_combout\,
	combout => \COMP_CCD|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y13_N4
\COMP_CCD|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan4~0_combout\ = (\COMP_CCD|count\(13) & (\COMP_CCD|count\(14) & (\COMP_CCD|count\(15) & \COMP_CCD|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(13),
	datab => \COMP_CCD|count\(14),
	datac => \COMP_CCD|count\(15),
	datad => \COMP_CCD|count\(12),
	combout => \COMP_CCD|LessThan4~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\COMP_CCD|count_start_seq[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[11]~32_combout\ = (\COMP_CCD|count\(11) & (\COMP_CCD|count\(10) & (\COMP_CCD|LessThan4~0_combout\ & \COMP_CCD|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(11),
	datab => \COMP_CCD|count\(10),
	datac => \COMP_CCD|LessThan4~0_combout\,
	datad => \COMP_CCD|count\(9),
	combout => \COMP_CCD|count_start_seq[11]~32_combout\);

-- Location: LCCOMB_X23_Y13_N18
\COMP_CCD|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~1_combout\ = (!\COMP_CCD|count\(8) & (!\COMP_CCD|count\(6) & !\COMP_CCD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(8),
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|count\(7),
	combout => \COMP_CCD|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y13_N12
\COMP_CCD|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~2_combout\ = (!\COMP_CCD|count\(4) & !\COMP_CCD|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(4),
	datac => \COMP_CCD|count\(3),
	combout => \COMP_CCD|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y14_N8
\COMP_CCD|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~0_combout\ = (\COMP_CCD|LessThan0~1_combout\ & (((!\COMP_CCD|count\(2) & \COMP_CCD|LessThan0~2_combout\)) # (!\COMP_CCD|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan0~1_combout\,
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|LessThan0~2_combout\,
	datad => \COMP_CCD|count\(5),
	combout => \COMP_CCD|LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\COMP_CCD|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~1_combout\ = (\COMP_CCD|count\(31)) # ((\COMP_CCD|LessThan0~0_combout\ & ((\COMP_CCD|LessThan3~0_combout\) # (!\COMP_CCD|count_start_seq[11]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan0~0_combout\,
	datab => \COMP_CCD|count_start_seq[11]~32_combout\,
	datac => \COMP_CCD|LessThan3~0_combout\,
	datad => \COMP_CCD|count\(31),
	combout => \COMP_CCD|LessThan3~1_combout\);

-- Location: LCCOMB_X23_Y13_N10
\COMP_CCD|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~4_combout\ = (\COMP_CCD|Equal2~4_combout\ & (((!\COMP_CCD|count\(3) & !\COMP_CCD|Equal2~6_combout\)) # (!\COMP_CCD|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|Equal2~6_combout\,
	datac => \COMP_CCD|Equal2~7_combout\,
	datad => \COMP_CCD|Equal2~4_combout\,
	combout => \COMP_CCD|LessThan7~4_combout\);

-- Location: LCCOMB_X23_Y13_N16
\COMP_CCD|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~5_combout\ = ((\COMP_CCD|Equal2~5_combout\ & ((\COMP_CCD|LessThan7~4_combout\) # (!\COMP_CCD|Equal2~8_combout\)))) # (!\COMP_CCD|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~8_combout\,
	datab => \COMP_CCD|count\(16),
	datac => \COMP_CCD|Equal2~5_combout\,
	datad => \COMP_CCD|LessThan7~4_combout\,
	combout => \COMP_CCD|LessThan7~5_combout\);

-- Location: LCCOMB_X23_Y14_N2
\COMP_CCD|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~7_combout\ = (\COMP_CCD|count\(31)) # ((!\COMP_CCD|count\(30) & (\COMP_CCD|Equal2~3_combout\ & \COMP_CCD|LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|Equal2~3_combout\,
	datad => \COMP_CCD|LessThan7~5_combout\,
	combout => \COMP_CCD|LessThan7~7_combout\);

-- Location: LCCOMB_X22_Y13_N2
\COMP_CCD|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~0_combout\ = (!\COMP_CCD|count\(4) & (!\COMP_CCD|count\(3) & ((!\COMP_CCD|count\(1)) # (!\COMP_CCD|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(4),
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|count\(3),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|LessThan5~0_combout\);

-- Location: LCCOMB_X22_Y13_N24
\COMP_CCD|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~1_combout\ = (\COMP_CCD|Equal2~4_combout\ & (((\COMP_CCD|LessThan5~0_combout\) # (!\COMP_CCD|count\(5))) # (!\COMP_CCD|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datab => \COMP_CCD|LessThan5~0_combout\,
	datac => \COMP_CCD|Equal2~4_combout\,
	datad => \COMP_CCD|count\(5),
	combout => \COMP_CCD|LessThan5~1_combout\);

-- Location: LCCOMB_X22_Y13_N22
\COMP_CCD|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~2_combout\ = (((\COMP_CCD|LessThan5~1_combout\) # (!\COMP_CCD|count\(11))) # (!\COMP_CCD|count\(10))) # (!\COMP_CCD|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(9),
	datab => \COMP_CCD|count\(10),
	datac => \COMP_CCD|count\(11),
	datad => \COMP_CCD|LessThan5~1_combout\,
	combout => \COMP_CCD|LessThan5~2_combout\);

-- Location: LCCOMB_X22_Y14_N24
\COMP_CCD|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan4~1_combout\ = (!\COMP_CCD|count\(16) & (\COMP_CCD|Equal2~3_combout\ & ((\COMP_CCD|LessThan5~2_combout\) # (!\COMP_CCD|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan4~0_combout\,
	datab => \COMP_CCD|count\(16),
	datac => \COMP_CCD|Equal2~3_combout\,
	datad => \COMP_CCD|LessThan5~2_combout\,
	combout => \COMP_CCD|LessThan4~1_combout\);

-- Location: LCCOMB_X22_Y14_N14
\COMP_CCD|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan4~2_combout\ = (\COMP_CCD|count\(31)) # ((!\COMP_CCD|count\(30) & \COMP_CCD|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|LessThan4~1_combout\,
	combout => \COMP_CCD|LessThan4~2_combout\);

-- Location: LCCOMB_X22_Y13_N12
\COMP_CCD|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~2_combout\ = (!\COMP_CCD|count\(2) & (!\COMP_CCD|count\(3) & !\COMP_CCD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|count\(3),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|LessThan6~2_combout\);

-- Location: LCCOMB_X23_Y13_N6
\COMP_CCD|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~3_combout\ = (!\COMP_CCD|count\(7) & (!\COMP_CCD|count\(8) & ((\COMP_CCD|LessThan6~2_combout\) # (!\COMP_CCD|Equal2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(7),
	datab => \COMP_CCD|Equal2~7_combout\,
	datac => \COMP_CCD|count\(8),
	datad => \COMP_CCD|LessThan6~2_combout\,
	combout => \COMP_CCD|LessThan6~3_combout\);

-- Location: LCCOMB_X23_Y13_N20
\COMP_CCD|data_out[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[1]~7_combout\ = (\COMP_CCD|count\(16) & (((\COMP_CCD|Equal2~8_combout\ & !\COMP_CCD|LessThan6~3_combout\)) # (!\COMP_CCD|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~8_combout\,
	datab => \COMP_CCD|count\(16),
	datac => \COMP_CCD|Equal2~5_combout\,
	datad => \COMP_CCD|LessThan6~3_combout\,
	combout => \COMP_CCD|data_out[1]~7_combout\);

-- Location: LCCOMB_X22_Y14_N26
\COMP_CCD|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan6~4_combout\ = (\COMP_CCD|count\(31)) # ((!\COMP_CCD|count\(30) & (\COMP_CCD|Equal2~3_combout\ & !\COMP_CCD|data_out[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|Equal2~3_combout\,
	datad => \COMP_CCD|data_out[1]~7_combout\,
	combout => \COMP_CCD|LessThan6~4_combout\);

-- Location: LCCOMB_X22_Y14_N20
\COMP_CCD|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~3_combout\ = (\COMP_CCD|Equal2~3_combout\ & (((\COMP_CCD|Equal2~5_combout\ & \COMP_CCD|LessThan5~2_combout\)) # (!\COMP_CCD|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(16),
	datab => \COMP_CCD|Equal2~5_combout\,
	datac => \COMP_CCD|Equal2~3_combout\,
	datad => \COMP_CCD|LessThan5~2_combout\,
	combout => \COMP_CCD|LessThan5~3_combout\);

-- Location: LCCOMB_X22_Y14_N16
\COMP_CCD|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~4_combout\ = (\COMP_CCD|count\(31)) # ((!\COMP_CCD|count\(30) & \COMP_CCD|LessThan5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|LessThan5~3_combout\,
	combout => \COMP_CCD|LessThan5~4_combout\);

-- Location: LCCOMB_X22_Y14_N2
\COMP_CCD|line_pos_end[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_pos_end[0]~0_combout\ = (!\COMP_CCD|LessThan4~2_combout\ & (!\COMP_CCD|LessThan6~4_combout\ & !\COMP_CCD|LessThan5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|LessThan4~2_combout\,
	datac => \COMP_CCD|LessThan6~4_combout\,
	datad => \COMP_CCD|LessThan5~4_combout\,
	combout => \COMP_CCD|line_pos_end[0]~0_combout\);

-- Location: LCCOMB_X22_Y13_N26
\COMP_CCD|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan2~2_combout\ = (((!\COMP_CCD|count\(2) & !\COMP_CCD|count\(1))) # (!\COMP_CCD|count\(4))) # (!\COMP_CCD|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(2),
	datab => \COMP_CCD|count\(3),
	datac => \COMP_CCD|count\(4),
	datad => \COMP_CCD|count\(1),
	combout => \COMP_CCD|LessThan2~2_combout\);

-- Location: LCCOMB_X23_Y14_N6
\COMP_CCD|count_start_seq[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[11]~33_combout\ = (\COMP_CCD|count_start_seq[11]~32_combout\ & (((\COMP_CCD|count\(5)) # (!\COMP_CCD|LessThan0~1_combout\)) # (!\COMP_CCD|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan2~2_combout\,
	datab => \COMP_CCD|count\(5),
	datac => \COMP_CCD|count_start_seq[11]~32_combout\,
	datad => \COMP_CCD|LessThan0~1_combout\,
	combout => \COMP_CCD|count_start_seq[11]~33_combout\);

-- Location: LCCOMB_X23_Y14_N14
\COMP_CCD|rog_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~1_combout\ = (!\COMP_CCD|count\(31) & ((\COMP_CCD|count_start_seq[11]~33_combout\) # (!\COMP_CCD|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(31),
	datac => \COMP_CCD|LessThan0~0_combout\,
	datad => \COMP_CCD|count_start_seq[11]~33_combout\,
	combout => \COMP_CCD|rog_reg~1_combout\);

-- Location: LCCOMB_X23_Y13_N26
\COMP_CCD|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~3_combout\ = (!\COMP_CCD|count\(11) & (\COMP_CCD|Equal2~5_combout\ & ((\COMP_CCD|LessThan0~2_combout\) # (!\COMP_CCD|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan0~2_combout\,
	datab => \COMP_CCD|count\(11),
	datac => \COMP_CCD|Equal2~5_combout\,
	datad => \COMP_CCD|count\(5),
	combout => \COMP_CCD|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y13_N24
\COMP_CCD|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~4_combout\ = (!\COMP_CCD|count\(10) & (!\COMP_CCD|count\(9) & (\COMP_CCD|LessThan0~3_combout\ & \COMP_CCD|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(10),
	datab => \COMP_CCD|count\(9),
	datac => \COMP_CCD|LessThan0~3_combout\,
	datad => \COMP_CCD|LessThan0~1_combout\,
	combout => \COMP_CCD|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y13_N30
\COMP_CCD|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~0_combout\ = (!\COMP_CCD|count\(4) & (!\COMP_CCD|count\(5) & (!\COMP_CCD|count\(6) & \COMP_CCD|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(4),
	datab => \COMP_CCD|count\(5),
	datac => \COMP_CCD|count\(6),
	datad => \COMP_CCD|Equal2~4_combout\,
	combout => \COMP_CCD|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y13_N0
\COMP_CCD|clk_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~0_combout\ = (\COMP_CCD|count\(31)) # ((\COMP_CCD|LessThan0~0_combout\ & ((\COMP_CCD|LessThan1~0_combout\) # (!\COMP_CCD|count_start_seq[11]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan1~0_combout\,
	datab => \COMP_CCD|count_start_seq[11]~32_combout\,
	datac => \COMP_CCD|LessThan0~0_combout\,
	datad => \COMP_CCD|count\(31),
	combout => \COMP_CCD|clk_reg~0_combout\);

-- Location: LCCOMB_X23_Y12_N6
\COMP_CCD|rog_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~3_combout\ = (!\COMP_CCD|count\(31) & (!\COMP_CCD|clk_reg~0_combout\ & ((!\COMP_CCD|LessThan0~4_combout\) # (!\COMP_CCD|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan0~0_combout\,
	datab => \COMP_CCD|LessThan0~4_combout\,
	datac => \COMP_CCD|count\(31),
	datad => \COMP_CCD|clk_reg~0_combout\,
	combout => \COMP_CCD|rog_reg~3_combout\);

-- Location: LCCOMB_X23_Y12_N26
\COMP_CCD|rog_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~6_combout\ = (!\COMP_CCD|Equal2~12_combout\ & (\COMP_CCD|Equal1~1_combout\ & (\COMP_CCD|Equal1~6_combout\ & \COMP_CCD|rog_reg~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~12_combout\,
	datab => \COMP_CCD|Equal1~1_combout\,
	datac => \COMP_CCD|Equal1~6_combout\,
	datad => \COMP_CCD|rog_reg~3_combout\,
	combout => \COMP_CCD|rog_reg~6_combout\);

-- Location: LCCOMB_X23_Y12_N28
\COMP_CCD|rog_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~7_combout\ = (\COMP_CCD|rog_reg~1_combout\ & (\COMP_CCD|Equal1~12_combout\ & (\COMP_CCD|rog_reg~6_combout\ & \button~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_reg~1_combout\,
	datab => \COMP_CCD|Equal1~12_combout\,
	datac => \COMP_CCD|rog_reg~6_combout\,
	datad => \button~input_o\,
	combout => \COMP_CCD|rog_reg~7_combout\);

-- Location: LCCOMB_X23_Y11_N14
\COMP_CCD|line_pos_end[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_pos_end[0]~1_combout\ = (!\COMP_CCD|LessThan3~1_combout\ & (\COMP_CCD|LessThan7~7_combout\ & (\COMP_CCD|line_pos_end[0]~0_combout\ & \COMP_CCD|rog_reg~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~1_combout\,
	datab => \COMP_CCD|LessThan7~7_combout\,
	datac => \COMP_CCD|line_pos_end[0]~0_combout\,
	datad => \COMP_CCD|rog_reg~7_combout\,
	combout => \COMP_CCD|line_pos_end[0]~1_combout\);

-- Location: FF_X23_Y11_N13
\COMP_CCD|line_pos_end[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|line_pos_end[0]~feeder_combout\,
	ena => \COMP_CCD|line_pos_end[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|line_pos_end\(0));

-- Location: LCCOMB_X24_Y11_N22
\COMP_CCD|line_pos_end[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_pos_end[0]~_wirecell_combout\ = !\COMP_CCD|line_pos_end\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|line_pos_end\(0),
	combout => \COMP_CCD|line_pos_end[0]~_wirecell_combout\);

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

-- Location: LCCOMB_X21_Y11_N22
\COMP_USB|count[11]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[11]~88_combout\ = (\COMP_USB|switch_write\(1) & (!\usb_txe~input_o\ & (\usb_rxf~input_o\ & \COMP_USB|switch_write\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datab => \usb_txe~input_o\,
	datac => \usb_rxf~input_o\,
	datad => \COMP_USB|switch_write\(0),
	combout => \COMP_USB|count[11]~88_combout\);

-- Location: LCCOMB_X22_Y11_N2
\COMP_CCD|line_ready_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~1_combout\ = (\button~input_o\ & (\COMP_CCD|line_ready_reg~1_combout\)) # (!\button~input_o\ & ((!\COMP_CCD|line_ready_reg~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|line_ready_reg~1_combout\,
	datac => \button~input_o\,
	datad => \COMP_CCD|line_ready_reg~2_combout\,
	combout => \COMP_CCD|line_ready_reg~1_combout\);

-- Location: LCCOMB_X23_Y14_N18
\COMP_CCD|line_ready_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~7_combout\ = (\COMP_CCD|LessThan3~1_combout\) # ((\COMP_CCD|LessThan0~0_combout\ & ((\COMP_CCD|LessThan1~0_combout\) # (!\COMP_CCD|count_start_seq[11]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq[11]~33_combout\,
	datab => \COMP_CCD|LessThan1~0_combout\,
	datac => \COMP_CCD|LessThan0~0_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|line_ready_reg~7_combout\);

-- Location: LCCOMB_X22_Y14_N22
\COMP_CCD|line_ready_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~4_combout\ = (\COMP_CCD|count\(30)) # ((!\COMP_CCD|LessThan5~3_combout\ & ((\COMP_CCD|data_out[1]~7_combout\) # (!\COMP_CCD|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out[1]~7_combout\,
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|Equal2~3_combout\,
	datad => \COMP_CCD|LessThan5~3_combout\,
	combout => \COMP_CCD|line_ready_reg~4_combout\);

-- Location: LCCOMB_X22_Y11_N28
\COMP_CCD|LessThan7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan7~6_combout\ = (!\COMP_CCD|count\(30) & (\COMP_CCD|Equal2~3_combout\ & \COMP_CCD|LessThan7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datac => \COMP_CCD|Equal2~3_combout\,
	datad => \COMP_CCD|LessThan7~5_combout\,
	combout => \COMP_CCD|LessThan7~6_combout\);

-- Location: LCCOMB_X22_Y11_N8
\COMP_CCD|line_ready_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~8_combout\ = (\COMP_CCD|LessThan4~2_combout\ & (((\COMP_CCD|line_ready_reg~2_combout\)))) # (!\COMP_CCD|LessThan4~2_combout\ & (\COMP_CCD|line_ready_reg~4_combout\ & ((\COMP_CCD|LessThan7~6_combout\) # 
-- (\COMP_CCD|line_ready_reg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|line_ready_reg~4_combout\,
	datab => \COMP_CCD|LessThan7~6_combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \COMP_CCD|line_ready_reg~2_combout\,
	combout => \COMP_CCD|line_ready_reg~8_combout\);

-- Location: LCCOMB_X23_Y12_N0
\COMP_CCD|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~9_combout\ = (!\COMP_CCD|Add0~62_combout\ & (!\COMP_CCD|Add0~60_combout\ & (\COMP_CCD|Equal1~7_combout\ & \COMP_CCD|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add0~62_combout\,
	datab => \COMP_CCD|Add0~60_combout\,
	datac => \COMP_CCD|Equal1~7_combout\,
	datad => \COMP_CCD|Equal1~8_combout\,
	combout => \COMP_CCD|Equal1~9_combout\);

-- Location: LCCOMB_X23_Y12_N10
\COMP_CCD|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~10_combout\ = (\COMP_CCD|Equal1~6_combout\ & (\COMP_CCD|Equal1~1_combout\ & (\COMP_CCD|Equal1~0_combout\ & \COMP_CCD|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~6_combout\,
	datab => \COMP_CCD|Equal1~1_combout\,
	datac => \COMP_CCD|Equal1~0_combout\,
	datad => \COMP_CCD|Equal1~9_combout\,
	combout => \COMP_CCD|Equal1~10_combout\);

-- Location: LCCOMB_X22_Y11_N22
\COMP_CCD|line_ready_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~9_combout\ = (!\COMP_CCD|Equal2~12_combout\ & (!\COMP_CCD|line_ready_reg~7_combout\ & (\COMP_CCD|line_ready_reg~8_combout\ & \COMP_CCD|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~12_combout\,
	datab => \COMP_CCD|line_ready_reg~7_combout\,
	datac => \COMP_CCD|line_ready_reg~8_combout\,
	datad => \COMP_CCD|Equal1~10_combout\,
	combout => \COMP_CCD|line_ready_reg~9_combout\);

-- Location: LCCOMB_X22_Y11_N18
\COMP_CCD|line_ready_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~6_combout\ = (\COMP_CCD|Equal1~6_combout\ & (\COMP_CCD|Equal1~1_combout\ & (!\COMP_CCD|Equal2~12_combout\ & \COMP_CCD|Equal1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~6_combout\,
	datab => \COMP_CCD|Equal1~1_combout\,
	datac => \COMP_CCD|Equal2~12_combout\,
	datad => \COMP_CCD|Equal1~12_combout\,
	combout => \COMP_CCD|line_ready_reg~6_combout\);

-- Location: LCCOMB_X22_Y11_N26
\COMP_CCD|line_ready_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~3_combout\ = \COMP_CCD|line_ready_reg~1_combout\ $ (((\COMP_CCD|line_ready_reg~9_combout\) # ((\COMP_CCD|line_ready_reg~2_combout\ & !\COMP_CCD|line_ready_reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|line_ready_reg~2_combout\,
	datab => \COMP_CCD|line_ready_reg~1_combout\,
	datac => \COMP_CCD|line_ready_reg~9_combout\,
	datad => \COMP_CCD|line_ready_reg~6_combout\,
	combout => \COMP_CCD|line_ready_reg~3_combout\);

-- Location: FF_X22_Y11_N27
\COMP_CCD|line_ready_reg~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|line_ready_reg~3_combout\,
	clrn => \button~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|line_ready_reg~_emulated_q\);

-- Location: LCCOMB_X22_Y11_N20
\COMP_CCD|line_ready_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_ready_reg~2_combout\ = (\button~input_o\ & (\COMP_CCD|line_ready_reg~_emulated_q\ $ (((\COMP_CCD|line_ready_reg~1_combout\))))) # (!\button~input_o\ & (((!\COMP_CCD|line_ready_reg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|line_ready_reg~_emulated_q\,
	datab => \COMP_CCD|line_ready_reg~2_combout\,
	datac => \button~input_o\,
	datad => \COMP_CCD|line_ready_reg~1_combout\,
	combout => \COMP_CCD|line_ready_reg~2_combout\);

-- Location: LCCOMB_X23_Y11_N30
\COMP_USB|count[11]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[11]~89_combout\ = (\COMP_USB|count[11]~88_combout\ & ((\COMP_USB|LessThan0~13_combout\) # ((\COMP_CCD|line_ready_reg~2_combout\ & !\COMP_USB|ccd_ready_reg~q\)))) # (!\COMP_USB|count[11]~88_combout\ & (\COMP_CCD|line_ready_reg~2_combout\ & 
-- (!\COMP_USB|ccd_ready_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count[11]~88_combout\,
	datab => \COMP_CCD|line_ready_reg~2_combout\,
	datac => \COMP_USB|ccd_ready_reg~q\,
	datad => \COMP_USB|LessThan0~13_combout\,
	combout => \COMP_USB|count[11]~89_combout\);

-- Location: FF_X24_Y10_N1
\COMP_USB|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[0]~32_combout\,
	asdata => \COMP_CCD|line_pos_end[0]~_wirecell_combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(0));

-- Location: LCCOMB_X24_Y10_N2
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

-- Location: LCCOMB_X22_Y11_N4
\COMP_CCD|line_pos_end_reg[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_pos_end_reg[11]~0_combout\ = \COMP_CCD|line_pos_end_reg\(11) $ (((\COMP_CCD|Equal2~12_combout\ & (\button~input_o\ & \COMP_CCD|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~12_combout\,
	datab => \button~input_o\,
	datac => \COMP_CCD|line_pos_end_reg\(11),
	datad => \COMP_CCD|Equal1~10_combout\,
	combout => \COMP_CCD|line_pos_end_reg[11]~0_combout\);

-- Location: FF_X22_Y11_N5
\COMP_CCD|line_pos_end_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|line_pos_end_reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|line_pos_end_reg\(11));

-- Location: FF_X23_Y11_N11
\COMP_CCD|line_pos_end[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|line_pos_end_reg\(11),
	sload => VCC,
	ena => \COMP_CCD|line_pos_end[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|line_pos_end\(12));

-- Location: FF_X24_Y10_N3
\COMP_USB|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[1]~34_combout\,
	asdata => \COMP_CCD|line_pos_end\(12),
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(1));

-- Location: LCCOMB_X24_Y10_N4
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

-- Location: FF_X24_Y10_N5
\COMP_USB|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[2]~36_combout\,
	asdata => \COMP_CCD|line_pos_end\(12),
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(2));

-- Location: LCCOMB_X24_Y10_N6
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

-- Location: LCCOMB_X16_Y7_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X24_Y10_N7
\COMP_USB|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[3]~38_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(3));

-- Location: LCCOMB_X24_Y10_N8
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

-- Location: FF_X24_Y10_N9
\COMP_USB|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[4]~40_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(4));

-- Location: LCCOMB_X24_Y10_N10
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

-- Location: FF_X24_Y10_N11
\COMP_USB|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[5]~42_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(5));

-- Location: LCCOMB_X24_Y10_N12
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

-- Location: FF_X24_Y10_N13
\COMP_USB|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[6]~44_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(6));

-- Location: LCCOMB_X24_Y10_N14
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

-- Location: FF_X24_Y10_N15
\COMP_USB|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[7]~46_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(7));

-- Location: LCCOMB_X24_Y10_N16
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

-- Location: FF_X24_Y10_N17
\COMP_USB|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[8]~48_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(8));

-- Location: LCCOMB_X24_Y10_N18
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

-- Location: FF_X24_Y10_N19
\COMP_USB|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[9]~50_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(9));

-- Location: LCCOMB_X24_Y10_N20
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

-- Location: FF_X24_Y10_N21
\COMP_USB|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[10]~52_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(10));

-- Location: LCCOMB_X24_Y10_N22
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

-- Location: FF_X24_Y10_N23
\COMP_USB|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[11]~54_combout\,
	asdata => \COMP_CCD|line_pos_end\(12),
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(11));

-- Location: LCCOMB_X24_Y10_N24
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

-- Location: FF_X24_Y10_N25
\COMP_USB|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[12]~56_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(12));

-- Location: LCCOMB_X24_Y10_N26
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

-- Location: FF_X24_Y10_N27
\COMP_USB|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[13]~58_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(13));

-- Location: LCCOMB_X24_Y10_N28
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

-- Location: FF_X24_Y10_N29
\COMP_USB|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[14]~60_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(14));

-- Location: LCCOMB_X24_Y10_N30
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

-- Location: FF_X24_Y10_N31
\COMP_USB|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[15]~62_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(15));

-- Location: LCCOMB_X24_Y9_N0
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

-- Location: FF_X24_Y9_N1
\COMP_USB|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[16]~64_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(16));

-- Location: LCCOMB_X24_Y9_N2
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

-- Location: FF_X24_Y9_N3
\COMP_USB|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[17]~66_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(17));

-- Location: LCCOMB_X24_Y9_N4
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

-- Location: FF_X24_Y9_N5
\COMP_USB|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[18]~68_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(18));

-- Location: LCCOMB_X24_Y9_N6
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

-- Location: FF_X24_Y9_N7
\COMP_USB|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[19]~70_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(19));

-- Location: LCCOMB_X24_Y9_N8
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

-- Location: FF_X24_Y9_N9
\COMP_USB|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[20]~72_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(20));

-- Location: LCCOMB_X24_Y9_N10
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

-- Location: FF_X24_Y9_N11
\COMP_USB|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[21]~74_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(21));

-- Location: LCCOMB_X24_Y9_N12
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

-- Location: FF_X24_Y9_N13
\COMP_USB|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[22]~76_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(22));

-- Location: LCCOMB_X24_Y9_N14
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

-- Location: FF_X24_Y9_N15
\COMP_USB|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[23]~78_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(23));

-- Location: LCCOMB_X24_Y9_N16
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

-- Location: FF_X24_Y9_N17
\COMP_USB|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[24]~80_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(24));

-- Location: LCCOMB_X24_Y9_N18
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

-- Location: FF_X24_Y9_N19
\COMP_USB|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[25]~82_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(25));

-- Location: LCCOMB_X24_Y9_N20
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

-- Location: FF_X24_Y9_N21
\COMP_USB|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[26]~84_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(26));

-- Location: LCCOMB_X24_Y9_N22
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

-- Location: FF_X24_Y9_N23
\COMP_USB|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[27]~86_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(27));

-- Location: LCCOMB_X24_Y9_N24
\COMP_USB|count[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[28]~90_combout\ = (\COMP_USB|count\(28) & (\COMP_USB|count[27]~87\ $ (GND))) # (!\COMP_USB|count\(28) & (!\COMP_USB|count[27]~87\ & VCC))
-- \COMP_USB|count[28]~91\ = CARRY((\COMP_USB|count\(28) & !\COMP_USB|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(28),
	datad => VCC,
	cin => \COMP_USB|count[27]~87\,
	combout => \COMP_USB|count[28]~90_combout\,
	cout => \COMP_USB|count[28]~91\);

-- Location: FF_X24_Y9_N25
\COMP_USB|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[28]~90_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(28));

-- Location: LCCOMB_X24_Y9_N26
\COMP_USB|count[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[29]~92_combout\ = (\COMP_USB|count\(29) & (!\COMP_USB|count[28]~91\)) # (!\COMP_USB|count\(29) & ((\COMP_USB|count[28]~91\) # (GND)))
-- \COMP_USB|count[29]~93\ = CARRY((!\COMP_USB|count[28]~91\) # (!\COMP_USB|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(29),
	datad => VCC,
	cin => \COMP_USB|count[28]~91\,
	combout => \COMP_USB|count[29]~92_combout\,
	cout => \COMP_USB|count[29]~93\);

-- Location: FF_X24_Y9_N27
\COMP_USB|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[29]~92_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(29));

-- Location: LCCOMB_X24_Y9_N28
\COMP_USB|count[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[30]~94_combout\ = (\COMP_USB|count\(30) & (\COMP_USB|count[29]~93\ $ (GND))) # (!\COMP_USB|count\(30) & (!\COMP_USB|count[29]~93\ & VCC))
-- \COMP_USB|count[30]~95\ = CARRY((\COMP_USB|count\(30) & !\COMP_USB|count[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|count\(30),
	datad => VCC,
	cin => \COMP_USB|count[29]~93\,
	combout => \COMP_USB|count[30]~94_combout\,
	cout => \COMP_USB|count[30]~95\);

-- Location: FF_X24_Y9_N29
\COMP_USB|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[30]~94_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(30));

-- Location: LCCOMB_X23_Y9_N12
\COMP_USB|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~0_combout\ = (!\COMP_USB|count\(28) & (!\COMP_USB|count\(29) & (!\COMP_USB|count\(30) & !\COMP_USB|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(28),
	datab => \COMP_USB|count\(29),
	datac => \COMP_USB|count\(30),
	datad => \COMP_USB|count\(27),
	combout => \COMP_USB|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\COMP_USB|count[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|count[31]~96_combout\ = \COMP_USB|count\(31) $ (\COMP_USB|count[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(31),
	cin => \COMP_USB|count[30]~95\,
	combout => \COMP_USB|count[31]~96_combout\);

-- Location: FF_X24_Y9_N31
\COMP_USB|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|count[31]~96_combout\,
	asdata => \COMP_CCD|line_pos_end[0]~_wirecell_combout\,
	sload => \COMP_USB|process_0~0_combout\,
	ena => \COMP_USB|count[11]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|count\(31));

-- Location: LCCOMB_X24_Y11_N30
\COMP_USB|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~3_combout\ = (!\COMP_USB|count\(22) & (!\COMP_USB|count\(20) & (!\COMP_USB|count\(21) & !\COMP_USB|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(22),
	datab => \COMP_USB|count\(20),
	datac => \COMP_USB|count\(21),
	datad => \COMP_USB|count\(19),
	combout => \COMP_USB|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y11_N16
\COMP_USB|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~2_combout\ = (!\COMP_USB|count\(18) & (!\COMP_USB|count\(16) & (!\COMP_USB|count\(17) & !\COMP_USB|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(18),
	datab => \COMP_USB|count\(16),
	datac => \COMP_USB|count\(17),
	datad => \COMP_USB|count\(15),
	combout => \COMP_USB|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y11_N4
\COMP_USB|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~4_combout\ = (!\COMP_USB|count\(24) & (!\COMP_USB|count\(26) & (!\COMP_USB|count\(23) & !\COMP_USB|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(24),
	datab => \COMP_USB|count\(26),
	datac => \COMP_USB|count\(23),
	datad => \COMP_USB|count\(25),
	combout => \COMP_USB|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y11_N2
\COMP_USB|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~1_combout\ = (!\COMP_USB|count\(14) & (!\COMP_USB|count\(13) & (\COMP_USB|count\(31) $ (\COMP_CCD|line_pos_end\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(14),
	datab => \COMP_USB|count\(13),
	datac => \COMP_USB|count\(31),
	datad => \COMP_CCD|line_pos_end\(0),
	combout => \COMP_USB|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y11_N6
\COMP_USB|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~5_combout\ = (\COMP_USB|LessThan0~3_combout\ & (\COMP_USB|LessThan0~2_combout\ & (\COMP_USB|LessThan0~4_combout\ & \COMP_USB|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|LessThan0~3_combout\,
	datab => \COMP_USB|LessThan0~2_combout\,
	datac => \COMP_USB|LessThan0~4_combout\,
	datad => \COMP_USB|LessThan0~1_combout\,
	combout => \COMP_USB|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y11_N16
\COMP_CCD|line_pos_end[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|line_pos_end[11]~2_combout\ = !\COMP_CCD|line_pos_end_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|line_pos_end_reg\(11),
	combout => \COMP_CCD|line_pos_end[11]~2_combout\);

-- Location: FF_X23_Y11_N17
\COMP_CCD|line_pos_end[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|line_pos_end[11]~2_combout\,
	ena => \COMP_CCD|line_pos_end[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|line_pos_end\(11));

-- Location: LCCOMB_X25_Y11_N4
\COMP_USB|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~6_combout\ = (!\COMP_USB|count\(6) & (!\COMP_USB|count\(7) & (!\COMP_USB|count\(5) & !\COMP_USB|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(6),
	datab => \COMP_USB|count\(7),
	datac => \COMP_USB|count\(5),
	datad => \COMP_USB|count\(4),
	combout => \COMP_USB|LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y11_N22
\COMP_USB|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~7_combout\ = (!\COMP_USB|count\(9) & (!\COMP_USB|count\(8) & (\COMP_USB|LessThan0~6_combout\ & !\COMP_USB|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(9),
	datab => \COMP_USB|count\(8),
	datac => \COMP_USB|LessThan0~6_combout\,
	datad => \COMP_USB|count\(10),
	combout => \COMP_USB|LessThan0~7_combout\);

-- Location: LCCOMB_X23_Y11_N18
\COMP_USB|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~8_combout\ = (\COMP_USB|count\(1) & (\COMP_CCD|line_pos_end\(11) & (!\COMP_USB|count\(0) & !\COMP_CCD|line_pos_end\(0)))) # (!\COMP_USB|count\(1) & ((\COMP_CCD|line_pos_end\(11)) # ((!\COMP_USB|count\(0) & 
-- !\COMP_CCD|line_pos_end\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(1),
	datab => \COMP_CCD|line_pos_end\(11),
	datac => \COMP_USB|count\(0),
	datad => \COMP_CCD|line_pos_end\(0),
	combout => \COMP_USB|LessThan0~8_combout\);

-- Location: LCCOMB_X23_Y11_N24
\COMP_USB|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~9_combout\ = (\COMP_CCD|line_pos_end\(0) & ((\COMP_USB|LessThan0~8_combout\) # (!\COMP_USB|count\(2)))) # (!\COMP_CCD|line_pos_end\(0) & (!\COMP_USB|count\(2) & \COMP_USB|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|line_pos_end\(0),
	datab => \COMP_USB|count\(2),
	datad => \COMP_USB|LessThan0~8_combout\,
	combout => \COMP_USB|LessThan0~9_combout\);

-- Location: LCCOMB_X23_Y11_N2
\COMP_USB|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~10_combout\ = (\COMP_USB|LessThan0~7_combout\ & ((\COMP_USB|count\(3) & (\COMP_USB|count\(12) & \COMP_USB|LessThan0~9_combout\)) # (!\COMP_USB|count\(3) & ((\COMP_USB|count\(12)) # (\COMP_USB|LessThan0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|count\(3),
	datab => \COMP_USB|count\(12),
	datac => \COMP_USB|LessThan0~7_combout\,
	datad => \COMP_USB|LessThan0~9_combout\,
	combout => \COMP_USB|LessThan0~10_combout\);

-- Location: LCCOMB_X23_Y11_N28
\COMP_USB|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~11_combout\ = (\COMP_CCD|line_pos_end\(11) & ((\COMP_USB|LessThan0~10_combout\) # (!\COMP_USB|count\(11)))) # (!\COMP_CCD|line_pos_end\(11) & (!\COMP_USB|count\(11) & \COMP_USB|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|line_pos_end\(11),
	datac => \COMP_USB|count\(11),
	datad => \COMP_USB|LessThan0~10_combout\,
	combout => \COMP_USB|LessThan0~11_combout\);

-- Location: LCCOMB_X23_Y11_N10
\COMP_USB|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~12_combout\ = (\COMP_USB|LessThan0~5_combout\ & ((\COMP_USB|count\(12) & (\COMP_CCD|line_pos_end\(12) & \COMP_USB|LessThan0~11_combout\)) # (!\COMP_USB|count\(12) & ((\COMP_CCD|line_pos_end\(12)) # (\COMP_USB|LessThan0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|LessThan0~5_combout\,
	datab => \COMP_USB|count\(12),
	datac => \COMP_CCD|line_pos_end\(12),
	datad => \COMP_USB|LessThan0~11_combout\,
	combout => \COMP_USB|LessThan0~12_combout\);

-- Location: LCCOMB_X23_Y11_N6
\COMP_USB|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|LessThan0~13_combout\ = (\COMP_USB|LessThan0~0_combout\ & ((\COMP_USB|LessThan0~12_combout\) # ((\COMP_USB|count\(31) & \COMP_CCD|line_pos_end\(0))))) # (!\COMP_USB|LessThan0~0_combout\ & (\COMP_USB|count\(31) & (\COMP_CCD|line_pos_end\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|LessThan0~0_combout\,
	datab => \COMP_USB|count\(31),
	datac => \COMP_CCD|line_pos_end\(0),
	datad => \COMP_USB|LessThan0~12_combout\,
	combout => \COMP_USB|LessThan0~13_combout\);

-- Location: LCCOMB_X24_Y11_N12
\COMP_USB|ccd_ready_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ccd_ready_reg~0_combout\ = (\COMP_CCD|line_ready_reg~2_combout\) # ((\COMP_USB|LessThan0~13_combout\ & \COMP_USB|ccd_ready_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|LessThan0~13_combout\,
	datac => \COMP_USB|ccd_ready_reg~q\,
	datad => \COMP_CCD|line_ready_reg~2_combout\,
	combout => \COMP_USB|ccd_ready_reg~0_combout\);

-- Location: FF_X24_Y11_N13
\COMP_USB|ccd_ready_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ccd_ready_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ccd_ready_reg~q\);

-- Location: LCCOMB_X23_Y11_N0
\COMP_USB|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|process_0~0_combout\ = (!\COMP_USB|ccd_ready_reg~q\ & \COMP_CCD|line_ready_reg~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_USB|ccd_ready_reg~q\,
	datad => \COMP_CCD|line_ready_reg~2_combout\,
	combout => \COMP_USB|process_0~0_combout\);

-- Location: LCCOMB_X21_Y11_N24
\COMP_USB|ram_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[0]~0_combout\ = (!\COMP_USB|process_0~0_combout\ & (!\usb_txe~input_o\ & (\usb_rxf~input_o\ & \COMP_USB|LessThan0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|process_0~0_combout\,
	datab => \usb_txe~input_o\,
	datac => \usb_rxf~input_o\,
	datad => \COMP_USB|LessThan0~13_combout\,
	combout => \COMP_USB|ram_addr[0]~0_combout\);

-- Location: FF_X21_Y11_N13
\COMP_USB|switch_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[0]~0_combout\,
	ena => \COMP_USB|ram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(0));

-- Location: LCCOMB_X21_Y11_N28
\COMP_USB|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux0~0_combout\ = \COMP_USB|switch_write\(0) $ (\COMP_USB|switch_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(0),
	datad => \COMP_USB|switch_write\(1),
	combout => \COMP_USB|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y11_N6
\COMP_USB|switch_write[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|switch_write[1]~feeder_combout\ = \COMP_USB|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|Mux0~0_combout\,
	combout => \COMP_USB|switch_write[1]~feeder_combout\);

-- Location: FF_X21_Y11_N7
\COMP_USB|switch_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|switch_write[1]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|switch_write\(1));

-- Location: LCCOMB_X22_Y14_N0
\COMP_CCD|rog_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~0_combout\ = (!\COMP_CCD|count\(31) & (!\COMP_CCD|LessThan6~4_combout\ & ((\COMP_CCD|count\(30)) # (!\COMP_CCD|LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|LessThan6~4_combout\,
	datad => \COMP_CCD|LessThan5~3_combout\,
	combout => \COMP_CCD|rog_reg~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\COMP_CCD|clk_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~4_combout\ = (!\COMP_CCD|LessThan7~6_combout\ & (!\COMP_CCD|count\(31) & (\COMP_CCD|rog_reg~0_combout\ & !\COMP_CCD|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan7~6_combout\,
	datab => \COMP_CCD|count\(31),
	datac => \COMP_CCD|rog_reg~0_combout\,
	datad => \COMP_CCD|LessThan4~2_combout\,
	combout => \COMP_CCD|clk_reg~4_combout\);

-- Location: LCCOMB_X23_Y14_N24
\COMP_CCD|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan2~3_combout\ = (!\COMP_CCD|count\(16) & (\COMP_CCD|Equal2~3_combout\ & (!\COMP_CCD|count\(30) & !\COMP_CCD|count_start_seq[11]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(16),
	datab => \COMP_CCD|Equal2~3_combout\,
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|count_start_seq[11]~33_combout\,
	combout => \COMP_CCD|LessThan2~3_combout\);

-- Location: LCCOMB_X23_Y14_N4
\COMP_CCD|clk_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~5_combout\ = (\COMP_CCD|LessThan3~1_combout\) # (((\COMP_CCD|LessThan2~3_combout\) # (\COMP_CCD|Equal2~12_combout\)) # (!\COMP_CCD|count[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~1_combout\,
	datab => \COMP_CCD|count[31]~0_combout\,
	datac => \COMP_CCD|LessThan2~3_combout\,
	datad => \COMP_CCD|Equal2~12_combout\,
	combout => \COMP_CCD|clk_reg~5_combout\);

-- Location: LCCOMB_X23_Y14_N20
\COMP_CCD|clk_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~1_combout\ = (\COMP_CCD|clk_reg~q\ & (!\COMP_CCD|LessThan3~1_combout\ & ((\COMP_CCD|count_start_seq[11]~33_combout\) # (!\COMP_CCD|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq[11]~33_combout\,
	datab => \COMP_CCD|clk_reg~q\,
	datac => \COMP_CCD|LessThan0~0_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|clk_reg~1_combout\);

-- Location: LCCOMB_X22_Y14_N18
\COMP_CCD|ram_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[0]~0_combout\ = (\COMP_CCD|line_ready_reg~4_combout\ & ((\COMP_CCD|count\(30)) # (!\COMP_CCD|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|line_ready_reg~4_combout\,
	datad => \COMP_CCD|LessThan4~1_combout\,
	combout => \COMP_CCD|ram_addr[0]~0_combout\);

-- Location: LCCOMB_X23_Y14_N30
\COMP_CCD|clk_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~2_combout\ = (\COMP_CCD|clk_reg~0_combout\) # ((\COMP_CCD|clk_reg~1_combout\ & ((\COMP_CCD|LessThan7~6_combout\) # (!\COMP_CCD|ram_addr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~0_combout\,
	datab => \COMP_CCD|clk_reg~1_combout\,
	datac => \COMP_CCD|LessThan7~6_combout\,
	datad => \COMP_CCD|ram_addr[0]~0_combout\,
	combout => \COMP_CCD|clk_reg~2_combout\);

-- Location: LCCOMB_X23_Y14_N16
\COMP_CCD|clk_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~3_combout\ = (\COMP_CCD|clk_reg~2_combout\ & (!\COMP_CCD|Equal2~12_combout\ & (\button~input_o\ & \COMP_CCD|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~2_combout\,
	datab => \COMP_CCD|Equal2~12_combout\,
	datac => \button~input_o\,
	datad => \COMP_CCD|Equal1~10_combout\,
	combout => \COMP_CCD|clk_reg~3_combout\);

-- Location: LCCOMB_X23_Y14_N28
\COMP_CCD|clk_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_reg~6_combout\ = (!\COMP_CCD|clk_reg~3_combout\ & ((\COMP_CCD|clk_reg~q\) # ((!\COMP_CCD|clk_reg~4_combout\ & !\COMP_CCD|clk_reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~4_combout\,
	datab => \COMP_CCD|clk_reg~5_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|clk_reg~3_combout\,
	combout => \COMP_CCD|clk_reg~6_combout\);

-- Location: FF_X23_Y14_N29
\COMP_CCD|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|clk_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_reg~q\);

-- Location: LCCOMB_X23_Y12_N12
\COMP_CCD|rog_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~4_combout\ = (\COMP_CCD|Equal1~10_combout\ & (\COMP_CCD|rog_reg~3_combout\ & (!\COMP_CCD|Equal2~12_combout\ & \button~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~10_combout\,
	datab => \COMP_CCD|rog_reg~3_combout\,
	datac => \COMP_CCD|Equal2~12_combout\,
	datad => \button~input_o\,
	combout => \COMP_CCD|rog_reg~4_combout\);

-- Location: LCCOMB_X22_Y12_N26
\COMP_CCD|dram_we_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|dram_we_a~0_combout\ = (\COMP_CCD|rog_reg~1_combout\ & (\COMP_CCD|clk_reg~q\ & (\COMP_CCD|rog_reg~4_combout\ & !\COMP_CCD|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_reg~1_combout\,
	datab => \COMP_CCD|clk_reg~q\,
	datac => \COMP_CCD|rog_reg~4_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|dram_we_a~0_combout\);

-- Location: LCCOMB_X23_Y16_N0
\COMP_CCD|count_start_seq[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[0]~34_combout\ = (\COMP_CCD|clk_reg~q\ & (\COMP_CCD|count_start_seq\(0) $ (VCC))) # (!\COMP_CCD|clk_reg~q\ & (\COMP_CCD|count_start_seq\(0) & VCC))
-- \COMP_CCD|count_start_seq[0]~35\ = CARRY((\COMP_CCD|clk_reg~q\ & \COMP_CCD|count_start_seq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~q\,
	datab => \COMP_CCD|count_start_seq\(0),
	datad => VCC,
	combout => \COMP_CCD|count_start_seq[0]~34_combout\,
	cout => \COMP_CCD|count_start_seq[0]~35\);

-- Location: LCCOMB_X22_Y14_N4
\COMP_CCD|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan5~5_combout\ = (!\COMP_CCD|count\(30) & \COMP_CCD|LessThan5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(30),
	datad => \COMP_CCD|LessThan5~3_combout\,
	combout => \COMP_CCD|LessThan5~5_combout\);

-- Location: LCCOMB_X23_Y14_N12
\COMP_CCD|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan3~2_combout\ = (\COMP_CCD|LessThan0~0_combout\ & ((\COMP_CCD|LessThan3~0_combout\) # (!\COMP_CCD|count_start_seq[11]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan0~0_combout\,
	datac => \COMP_CCD|LessThan3~0_combout\,
	datad => \COMP_CCD|count_start_seq[11]~32_combout\,
	combout => \COMP_CCD|LessThan3~2_combout\);

-- Location: LCCOMB_X22_Y14_N8
\COMP_CCD|count_start_seq~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq~38_combout\ = (\COMP_CCD|LessThan3~2_combout\) # ((\COMP_CCD|LessThan2~3_combout\) # ((!\COMP_CCD|LessThan4~1_combout\ & \COMP_CCD|LessThan5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan4~1_combout\,
	datab => \COMP_CCD|LessThan5~5_combout\,
	datac => \COMP_CCD|LessThan3~2_combout\,
	datad => \COMP_CCD|LessThan2~3_combout\,
	combout => \COMP_CCD|count_start_seq~38_combout\);

-- Location: LCCOMB_X23_Y14_N26
\COMP_CCD|count_start_seq[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~39_combout\ = (\COMP_CCD|LessThan0~0_combout\ & ((\COMP_CCD|LessThan5~1_combout\) # ((\COMP_CCD|LessThan3~0_combout\) # (!\COMP_CCD|count_start_seq[11]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan0~0_combout\,
	datab => \COMP_CCD|LessThan5~1_combout\,
	datac => \COMP_CCD|LessThan3~0_combout\,
	datad => \COMP_CCD|count_start_seq[11]~33_combout\,
	combout => \COMP_CCD|count_start_seq[31]~39_combout\);

-- Location: LCCOMB_X23_Y12_N2
\COMP_CCD|count_start_seq[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~40_combout\ = (\COMP_CCD|rog_reg~4_combout\ & ((\COMP_CCD|count\(31)) # ((\COMP_CCD|count_start_seq[31]~39_combout\) # (!\COMP_CCD|line_ready_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count_start_seq[31]~39_combout\,
	datac => \COMP_CCD|line_ready_reg~4_combout\,
	datad => \COMP_CCD|rog_reg~4_combout\,
	combout => \COMP_CCD|count_start_seq[31]~40_combout\);

-- Location: FF_X23_Y16_N1
\COMP_CCD|count_start_seq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[0]~34_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(0));

-- Location: LCCOMB_X23_Y16_N2
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

-- Location: FF_X23_Y16_N3
\COMP_CCD|count_start_seq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[1]~36_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(1));

-- Location: LCCOMB_X23_Y16_N4
\COMP_CCD|count_start_seq[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[2]~41_combout\ = (\COMP_CCD|count_start_seq\(2) & (\COMP_CCD|count_start_seq[1]~37\ $ (GND))) # (!\COMP_CCD|count_start_seq\(2) & (!\COMP_CCD|count_start_seq[1]~37\ & VCC))
-- \COMP_CCD|count_start_seq[2]~42\ = CARRY((\COMP_CCD|count_start_seq\(2) & !\COMP_CCD|count_start_seq[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(2),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[1]~37\,
	combout => \COMP_CCD|count_start_seq[2]~41_combout\,
	cout => \COMP_CCD|count_start_seq[2]~42\);

-- Location: FF_X23_Y16_N5
\COMP_CCD|count_start_seq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[2]~41_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(2));

-- Location: LCCOMB_X23_Y16_N6
\COMP_CCD|count_start_seq[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[3]~43_combout\ = (\COMP_CCD|count_start_seq\(3) & (!\COMP_CCD|count_start_seq[2]~42\)) # (!\COMP_CCD|count_start_seq\(3) & ((\COMP_CCD|count_start_seq[2]~42\) # (GND)))
-- \COMP_CCD|count_start_seq[3]~44\ = CARRY((!\COMP_CCD|count_start_seq[2]~42\) # (!\COMP_CCD|count_start_seq\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(3),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[2]~42\,
	combout => \COMP_CCD|count_start_seq[3]~43_combout\,
	cout => \COMP_CCD|count_start_seq[3]~44\);

-- Location: FF_X23_Y16_N7
\COMP_CCD|count_start_seq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[3]~43_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(3));

-- Location: LCCOMB_X23_Y16_N8
\COMP_CCD|count_start_seq[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[4]~45_combout\ = (\COMP_CCD|count_start_seq\(4) & (\COMP_CCD|count_start_seq[3]~44\ $ (GND))) # (!\COMP_CCD|count_start_seq\(4) & (!\COMP_CCD|count_start_seq[3]~44\ & VCC))
-- \COMP_CCD|count_start_seq[4]~46\ = CARRY((\COMP_CCD|count_start_seq\(4) & !\COMP_CCD|count_start_seq[3]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(4),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[3]~44\,
	combout => \COMP_CCD|count_start_seq[4]~45_combout\,
	cout => \COMP_CCD|count_start_seq[4]~46\);

-- Location: FF_X23_Y16_N9
\COMP_CCD|count_start_seq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[4]~45_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(4));

-- Location: LCCOMB_X23_Y16_N10
\COMP_CCD|count_start_seq[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[5]~47_combout\ = (\COMP_CCD|count_start_seq\(5) & (!\COMP_CCD|count_start_seq[4]~46\)) # (!\COMP_CCD|count_start_seq\(5) & ((\COMP_CCD|count_start_seq[4]~46\) # (GND)))
-- \COMP_CCD|count_start_seq[5]~48\ = CARRY((!\COMP_CCD|count_start_seq[4]~46\) # (!\COMP_CCD|count_start_seq\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(5),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[4]~46\,
	combout => \COMP_CCD|count_start_seq[5]~47_combout\,
	cout => \COMP_CCD|count_start_seq[5]~48\);

-- Location: FF_X23_Y16_N11
\COMP_CCD|count_start_seq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[5]~47_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(5));

-- Location: LCCOMB_X23_Y16_N12
\COMP_CCD|count_start_seq[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[6]~49_combout\ = (\COMP_CCD|count_start_seq\(6) & (\COMP_CCD|count_start_seq[5]~48\ $ (GND))) # (!\COMP_CCD|count_start_seq\(6) & (!\COMP_CCD|count_start_seq[5]~48\ & VCC))
-- \COMP_CCD|count_start_seq[6]~50\ = CARRY((\COMP_CCD|count_start_seq\(6) & !\COMP_CCD|count_start_seq[5]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(6),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[5]~48\,
	combout => \COMP_CCD|count_start_seq[6]~49_combout\,
	cout => \COMP_CCD|count_start_seq[6]~50\);

-- Location: FF_X23_Y16_N13
\COMP_CCD|count_start_seq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[6]~49_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(6));

-- Location: LCCOMB_X23_Y16_N14
\COMP_CCD|count_start_seq[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[7]~51_combout\ = (\COMP_CCD|count_start_seq\(7) & (!\COMP_CCD|count_start_seq[6]~50\)) # (!\COMP_CCD|count_start_seq\(7) & ((\COMP_CCD|count_start_seq[6]~50\) # (GND)))
-- \COMP_CCD|count_start_seq[7]~52\ = CARRY((!\COMP_CCD|count_start_seq[6]~50\) # (!\COMP_CCD|count_start_seq\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(7),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[6]~50\,
	combout => \COMP_CCD|count_start_seq[7]~51_combout\,
	cout => \COMP_CCD|count_start_seq[7]~52\);

-- Location: FF_X23_Y16_N15
\COMP_CCD|count_start_seq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[7]~51_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(7));

-- Location: LCCOMB_X23_Y16_N16
\COMP_CCD|count_start_seq[8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[8]~53_combout\ = (\COMP_CCD|count_start_seq\(8) & (\COMP_CCD|count_start_seq[7]~52\ $ (GND))) # (!\COMP_CCD|count_start_seq\(8) & (!\COMP_CCD|count_start_seq[7]~52\ & VCC))
-- \COMP_CCD|count_start_seq[8]~54\ = CARRY((\COMP_CCD|count_start_seq\(8) & !\COMP_CCD|count_start_seq[7]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(8),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[7]~52\,
	combout => \COMP_CCD|count_start_seq[8]~53_combout\,
	cout => \COMP_CCD|count_start_seq[8]~54\);

-- Location: FF_X23_Y16_N17
\COMP_CCD|count_start_seq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[8]~53_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(8));

-- Location: LCCOMB_X23_Y16_N18
\COMP_CCD|count_start_seq[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[9]~55_combout\ = (\COMP_CCD|count_start_seq\(9) & (!\COMP_CCD|count_start_seq[8]~54\)) # (!\COMP_CCD|count_start_seq\(9) & ((\COMP_CCD|count_start_seq[8]~54\) # (GND)))
-- \COMP_CCD|count_start_seq[9]~56\ = CARRY((!\COMP_CCD|count_start_seq[8]~54\) # (!\COMP_CCD|count_start_seq\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(9),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[8]~54\,
	combout => \COMP_CCD|count_start_seq[9]~55_combout\,
	cout => \COMP_CCD|count_start_seq[9]~56\);

-- Location: FF_X23_Y16_N19
\COMP_CCD|count_start_seq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[9]~55_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(9));

-- Location: LCCOMB_X23_Y16_N20
\COMP_CCD|count_start_seq[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[10]~57_combout\ = (\COMP_CCD|count_start_seq\(10) & (\COMP_CCD|count_start_seq[9]~56\ $ (GND))) # (!\COMP_CCD|count_start_seq\(10) & (!\COMP_CCD|count_start_seq[9]~56\ & VCC))
-- \COMP_CCD|count_start_seq[10]~58\ = CARRY((\COMP_CCD|count_start_seq\(10) & !\COMP_CCD|count_start_seq[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(10),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[9]~56\,
	combout => \COMP_CCD|count_start_seq[10]~57_combout\,
	cout => \COMP_CCD|count_start_seq[10]~58\);

-- Location: FF_X23_Y16_N21
\COMP_CCD|count_start_seq[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[10]~57_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(10));

-- Location: LCCOMB_X23_Y16_N22
\COMP_CCD|count_start_seq[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[11]~59_combout\ = (\COMP_CCD|count_start_seq\(11) & (!\COMP_CCD|count_start_seq[10]~58\)) # (!\COMP_CCD|count_start_seq\(11) & ((\COMP_CCD|count_start_seq[10]~58\) # (GND)))
-- \COMP_CCD|count_start_seq[11]~60\ = CARRY((!\COMP_CCD|count_start_seq[10]~58\) # (!\COMP_CCD|count_start_seq\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(11),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[10]~58\,
	combout => \COMP_CCD|count_start_seq[11]~59_combout\,
	cout => \COMP_CCD|count_start_seq[11]~60\);

-- Location: FF_X23_Y16_N23
\COMP_CCD|count_start_seq[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[11]~59_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(11));

-- Location: LCCOMB_X23_Y16_N24
\COMP_CCD|count_start_seq[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[12]~61_combout\ = (\COMP_CCD|count_start_seq\(12) & (\COMP_CCD|count_start_seq[11]~60\ $ (GND))) # (!\COMP_CCD|count_start_seq\(12) & (!\COMP_CCD|count_start_seq[11]~60\ & VCC))
-- \COMP_CCD|count_start_seq[12]~62\ = CARRY((\COMP_CCD|count_start_seq\(12) & !\COMP_CCD|count_start_seq[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(12),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[11]~60\,
	combout => \COMP_CCD|count_start_seq[12]~61_combout\,
	cout => \COMP_CCD|count_start_seq[12]~62\);

-- Location: FF_X23_Y16_N25
\COMP_CCD|count_start_seq[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[12]~61_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(12));

-- Location: LCCOMB_X23_Y16_N26
\COMP_CCD|count_start_seq[13]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[13]~63_combout\ = (\COMP_CCD|count_start_seq\(13) & (!\COMP_CCD|count_start_seq[12]~62\)) # (!\COMP_CCD|count_start_seq\(13) & ((\COMP_CCD|count_start_seq[12]~62\) # (GND)))
-- \COMP_CCD|count_start_seq[13]~64\ = CARRY((!\COMP_CCD|count_start_seq[12]~62\) # (!\COMP_CCD|count_start_seq\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(13),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[12]~62\,
	combout => \COMP_CCD|count_start_seq[13]~63_combout\,
	cout => \COMP_CCD|count_start_seq[13]~64\);

-- Location: FF_X23_Y16_N27
\COMP_CCD|count_start_seq[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[13]~63_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(13));

-- Location: LCCOMB_X23_Y16_N28
\COMP_CCD|count_start_seq[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[14]~65_combout\ = (\COMP_CCD|count_start_seq\(14) & (\COMP_CCD|count_start_seq[13]~64\ $ (GND))) # (!\COMP_CCD|count_start_seq\(14) & (!\COMP_CCD|count_start_seq[13]~64\ & VCC))
-- \COMP_CCD|count_start_seq[14]~66\ = CARRY((\COMP_CCD|count_start_seq\(14) & !\COMP_CCD|count_start_seq[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(14),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[13]~64\,
	combout => \COMP_CCD|count_start_seq[14]~65_combout\,
	cout => \COMP_CCD|count_start_seq[14]~66\);

-- Location: FF_X23_Y16_N29
\COMP_CCD|count_start_seq[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[14]~65_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(14));

-- Location: LCCOMB_X23_Y16_N30
\COMP_CCD|count_start_seq[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[15]~67_combout\ = (\COMP_CCD|count_start_seq\(15) & (!\COMP_CCD|count_start_seq[14]~66\)) # (!\COMP_CCD|count_start_seq\(15) & ((\COMP_CCD|count_start_seq[14]~66\) # (GND)))
-- \COMP_CCD|count_start_seq[15]~68\ = CARRY((!\COMP_CCD|count_start_seq[14]~66\) # (!\COMP_CCD|count_start_seq\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(15),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[14]~66\,
	combout => \COMP_CCD|count_start_seq[15]~67_combout\,
	cout => \COMP_CCD|count_start_seq[15]~68\);

-- Location: FF_X23_Y16_N31
\COMP_CCD|count_start_seq[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[15]~67_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(15));

-- Location: LCCOMB_X23_Y15_N0
\COMP_CCD|count_start_seq[16]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[16]~69_combout\ = (\COMP_CCD|count_start_seq\(16) & (\COMP_CCD|count_start_seq[15]~68\ $ (GND))) # (!\COMP_CCD|count_start_seq\(16) & (!\COMP_CCD|count_start_seq[15]~68\ & VCC))
-- \COMP_CCD|count_start_seq[16]~70\ = CARRY((\COMP_CCD|count_start_seq\(16) & !\COMP_CCD|count_start_seq[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(16),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[15]~68\,
	combout => \COMP_CCD|count_start_seq[16]~69_combout\,
	cout => \COMP_CCD|count_start_seq[16]~70\);

-- Location: FF_X23_Y15_N1
\COMP_CCD|count_start_seq[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[16]~69_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(16));

-- Location: LCCOMB_X23_Y15_N2
\COMP_CCD|count_start_seq[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[17]~71_combout\ = (\COMP_CCD|count_start_seq\(17) & (!\COMP_CCD|count_start_seq[16]~70\)) # (!\COMP_CCD|count_start_seq\(17) & ((\COMP_CCD|count_start_seq[16]~70\) # (GND)))
-- \COMP_CCD|count_start_seq[17]~72\ = CARRY((!\COMP_CCD|count_start_seq[16]~70\) # (!\COMP_CCD|count_start_seq\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(17),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[16]~70\,
	combout => \COMP_CCD|count_start_seq[17]~71_combout\,
	cout => \COMP_CCD|count_start_seq[17]~72\);

-- Location: FF_X23_Y15_N3
\COMP_CCD|count_start_seq[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[17]~71_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(17));

-- Location: LCCOMB_X23_Y15_N4
\COMP_CCD|count_start_seq[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[18]~73_combout\ = (\COMP_CCD|count_start_seq\(18) & (\COMP_CCD|count_start_seq[17]~72\ $ (GND))) # (!\COMP_CCD|count_start_seq\(18) & (!\COMP_CCD|count_start_seq[17]~72\ & VCC))
-- \COMP_CCD|count_start_seq[18]~74\ = CARRY((\COMP_CCD|count_start_seq\(18) & !\COMP_CCD|count_start_seq[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(18),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[17]~72\,
	combout => \COMP_CCD|count_start_seq[18]~73_combout\,
	cout => \COMP_CCD|count_start_seq[18]~74\);

-- Location: FF_X23_Y15_N5
\COMP_CCD|count_start_seq[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[18]~73_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(18));

-- Location: LCCOMB_X23_Y15_N6
\COMP_CCD|count_start_seq[19]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[19]~75_combout\ = (\COMP_CCD|count_start_seq\(19) & (!\COMP_CCD|count_start_seq[18]~74\)) # (!\COMP_CCD|count_start_seq\(19) & ((\COMP_CCD|count_start_seq[18]~74\) # (GND)))
-- \COMP_CCD|count_start_seq[19]~76\ = CARRY((!\COMP_CCD|count_start_seq[18]~74\) # (!\COMP_CCD|count_start_seq\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(19),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[18]~74\,
	combout => \COMP_CCD|count_start_seq[19]~75_combout\,
	cout => \COMP_CCD|count_start_seq[19]~76\);

-- Location: FF_X23_Y15_N7
\COMP_CCD|count_start_seq[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[19]~75_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(19));

-- Location: LCCOMB_X23_Y15_N8
\COMP_CCD|count_start_seq[20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[20]~77_combout\ = (\COMP_CCD|count_start_seq\(20) & (\COMP_CCD|count_start_seq[19]~76\ $ (GND))) # (!\COMP_CCD|count_start_seq\(20) & (!\COMP_CCD|count_start_seq[19]~76\ & VCC))
-- \COMP_CCD|count_start_seq[20]~78\ = CARRY((\COMP_CCD|count_start_seq\(20) & !\COMP_CCD|count_start_seq[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(20),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[19]~76\,
	combout => \COMP_CCD|count_start_seq[20]~77_combout\,
	cout => \COMP_CCD|count_start_seq[20]~78\);

-- Location: FF_X23_Y15_N9
\COMP_CCD|count_start_seq[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[20]~77_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(20));

-- Location: LCCOMB_X23_Y15_N10
\COMP_CCD|count_start_seq[21]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[21]~79_combout\ = (\COMP_CCD|count_start_seq\(21) & (!\COMP_CCD|count_start_seq[20]~78\)) # (!\COMP_CCD|count_start_seq\(21) & ((\COMP_CCD|count_start_seq[20]~78\) # (GND)))
-- \COMP_CCD|count_start_seq[21]~80\ = CARRY((!\COMP_CCD|count_start_seq[20]~78\) # (!\COMP_CCD|count_start_seq\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(21),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[20]~78\,
	combout => \COMP_CCD|count_start_seq[21]~79_combout\,
	cout => \COMP_CCD|count_start_seq[21]~80\);

-- Location: FF_X23_Y15_N11
\COMP_CCD|count_start_seq[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[21]~79_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(21));

-- Location: LCCOMB_X22_Y15_N18
\COMP_CCD|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~5_combout\ = (!\COMP_CCD|count_start_seq\(19) & (!\COMP_CCD|count_start_seq\(21) & (!\COMP_CCD|count_start_seq\(20) & !\COMP_CCD|count_start_seq\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(19),
	datab => \COMP_CCD|count_start_seq\(21),
	datac => \COMP_CCD|count_start_seq\(20),
	datad => \COMP_CCD|count_start_seq\(18),
	combout => \COMP_CCD|Equal5~5_combout\);

-- Location: LCCOMB_X23_Y15_N12
\COMP_CCD|count_start_seq[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[22]~81_combout\ = (\COMP_CCD|count_start_seq\(22) & (\COMP_CCD|count_start_seq[21]~80\ $ (GND))) # (!\COMP_CCD|count_start_seq\(22) & (!\COMP_CCD|count_start_seq[21]~80\ & VCC))
-- \COMP_CCD|count_start_seq[22]~82\ = CARRY((\COMP_CCD|count_start_seq\(22) & !\COMP_CCD|count_start_seq[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(22),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[21]~80\,
	combout => \COMP_CCD|count_start_seq[22]~81_combout\,
	cout => \COMP_CCD|count_start_seq[22]~82\);

-- Location: FF_X23_Y15_N13
\COMP_CCD|count_start_seq[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[22]~81_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(22));

-- Location: LCCOMB_X23_Y15_N14
\COMP_CCD|count_start_seq[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[23]~83_combout\ = (\COMP_CCD|count_start_seq\(23) & (!\COMP_CCD|count_start_seq[22]~82\)) # (!\COMP_CCD|count_start_seq\(23) & ((\COMP_CCD|count_start_seq[22]~82\) # (GND)))
-- \COMP_CCD|count_start_seq[23]~84\ = CARRY((!\COMP_CCD|count_start_seq[22]~82\) # (!\COMP_CCD|count_start_seq\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(23),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[22]~82\,
	combout => \COMP_CCD|count_start_seq[23]~83_combout\,
	cout => \COMP_CCD|count_start_seq[23]~84\);

-- Location: FF_X23_Y15_N15
\COMP_CCD|count_start_seq[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[23]~83_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(23));

-- Location: LCCOMB_X23_Y15_N16
\COMP_CCD|count_start_seq[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[24]~85_combout\ = (\COMP_CCD|count_start_seq\(24) & (\COMP_CCD|count_start_seq[23]~84\ $ (GND))) # (!\COMP_CCD|count_start_seq\(24) & (!\COMP_CCD|count_start_seq[23]~84\ & VCC))
-- \COMP_CCD|count_start_seq[24]~86\ = CARRY((\COMP_CCD|count_start_seq\(24) & !\COMP_CCD|count_start_seq[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(24),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[23]~84\,
	combout => \COMP_CCD|count_start_seq[24]~85_combout\,
	cout => \COMP_CCD|count_start_seq[24]~86\);

-- Location: FF_X23_Y15_N17
\COMP_CCD|count_start_seq[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[24]~85_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(24));

-- Location: LCCOMB_X23_Y15_N18
\COMP_CCD|count_start_seq[25]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[25]~87_combout\ = (\COMP_CCD|count_start_seq\(25) & (!\COMP_CCD|count_start_seq[24]~86\)) # (!\COMP_CCD|count_start_seq\(25) & ((\COMP_CCD|count_start_seq[24]~86\) # (GND)))
-- \COMP_CCD|count_start_seq[25]~88\ = CARRY((!\COMP_CCD|count_start_seq[24]~86\) # (!\COMP_CCD|count_start_seq\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(25),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[24]~86\,
	combout => \COMP_CCD|count_start_seq[25]~87_combout\,
	cout => \COMP_CCD|count_start_seq[25]~88\);

-- Location: FF_X23_Y15_N19
\COMP_CCD|count_start_seq[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[25]~87_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(25));

-- Location: LCCOMB_X22_Y15_N0
\COMP_CCD|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~6_combout\ = (!\COMP_CCD|count_start_seq\(22) & (!\COMP_CCD|count_start_seq\(25) & (!\COMP_CCD|count_start_seq\(23) & !\COMP_CCD|count_start_seq\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(22),
	datab => \COMP_CCD|count_start_seq\(25),
	datac => \COMP_CCD|count_start_seq\(23),
	datad => \COMP_CCD|count_start_seq\(24),
	combout => \COMP_CCD|Equal5~6_combout\);

-- Location: LCCOMB_X22_Y16_N22
\COMP_CCD|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~3_combout\ = (!\COMP_CCD|count_start_seq\(15) & (!\COMP_CCD|count_start_seq\(14) & (!\COMP_CCD|count_start_seq\(17) & !\COMP_CCD|count_start_seq\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(15),
	datab => \COMP_CCD|count_start_seq\(14),
	datac => \COMP_CCD|count_start_seq\(17),
	datad => \COMP_CCD|count_start_seq\(16),
	combout => \COMP_CCD|Equal5~3_combout\);

-- Location: LCCOMB_X22_Y16_N18
\COMP_CCD|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~1_combout\ = (!\COMP_CCD|count_start_seq\(7) & (!\COMP_CCD|count_start_seq\(9) & (!\COMP_CCD|count_start_seq\(6) & !\COMP_CCD|count_start_seq\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(7),
	datab => \COMP_CCD|count_start_seq\(9),
	datac => \COMP_CCD|count_start_seq\(6),
	datad => \COMP_CCD|count_start_seq\(8),
	combout => \COMP_CCD|Equal5~1_combout\);

-- Location: LCCOMB_X22_Y16_N8
\COMP_CCD|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~2_combout\ = (!\COMP_CCD|count_start_seq\(10) & (!\COMP_CCD|count_start_seq\(11) & (!\COMP_CCD|count_start_seq\(13) & !\COMP_CCD|count_start_seq\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(10),
	datab => \COMP_CCD|count_start_seq\(11),
	datac => \COMP_CCD|count_start_seq\(13),
	datad => \COMP_CCD|count_start_seq\(12),
	combout => \COMP_CCD|Equal5~2_combout\);

-- Location: LCCOMB_X22_Y16_N28
\COMP_CCD|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~0_combout\ = (!\COMP_CCD|count_start_seq\(3) & (!\COMP_CCD|count_start_seq\(5) & (!\COMP_CCD|count_start_seq\(4) & !\COMP_CCD|count_start_seq\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(3),
	datab => \COMP_CCD|count_start_seq\(5),
	datac => \COMP_CCD|count_start_seq\(4),
	datad => \COMP_CCD|count_start_seq\(2),
	combout => \COMP_CCD|Equal5~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\COMP_CCD|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~4_combout\ = (\COMP_CCD|Equal5~3_combout\ & (\COMP_CCD|Equal5~1_combout\ & (\COMP_CCD|Equal5~2_combout\ & \COMP_CCD|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal5~3_combout\,
	datab => \COMP_CCD|Equal5~1_combout\,
	datac => \COMP_CCD|Equal5~2_combout\,
	datad => \COMP_CCD|Equal5~0_combout\,
	combout => \COMP_CCD|Equal5~4_combout\);

-- Location: LCCOMB_X23_Y15_N20
\COMP_CCD|count_start_seq[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[26]~89_combout\ = (\COMP_CCD|count_start_seq\(26) & (\COMP_CCD|count_start_seq[25]~88\ $ (GND))) # (!\COMP_CCD|count_start_seq\(26) & (!\COMP_CCD|count_start_seq[25]~88\ & VCC))
-- \COMP_CCD|count_start_seq[26]~90\ = CARRY((\COMP_CCD|count_start_seq\(26) & !\COMP_CCD|count_start_seq[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(26),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[25]~88\,
	combout => \COMP_CCD|count_start_seq[26]~89_combout\,
	cout => \COMP_CCD|count_start_seq[26]~90\);

-- Location: FF_X23_Y15_N21
\COMP_CCD|count_start_seq[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[26]~89_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(26));

-- Location: LCCOMB_X23_Y15_N22
\COMP_CCD|count_start_seq[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[27]~91_combout\ = (\COMP_CCD|count_start_seq\(27) & (!\COMP_CCD|count_start_seq[26]~90\)) # (!\COMP_CCD|count_start_seq\(27) & ((\COMP_CCD|count_start_seq[26]~90\) # (GND)))
-- \COMP_CCD|count_start_seq[27]~92\ = CARRY((!\COMP_CCD|count_start_seq[26]~90\) # (!\COMP_CCD|count_start_seq\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(27),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[26]~90\,
	combout => \COMP_CCD|count_start_seq[27]~91_combout\,
	cout => \COMP_CCD|count_start_seq[27]~92\);

-- Location: FF_X23_Y15_N23
\COMP_CCD|count_start_seq[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[27]~91_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(27));

-- Location: LCCOMB_X23_Y15_N24
\COMP_CCD|count_start_seq[28]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[28]~93_combout\ = (\COMP_CCD|count_start_seq\(28) & (\COMP_CCD|count_start_seq[27]~92\ $ (GND))) # (!\COMP_CCD|count_start_seq\(28) & (!\COMP_CCD|count_start_seq[27]~92\ & VCC))
-- \COMP_CCD|count_start_seq[28]~94\ = CARRY((\COMP_CCD|count_start_seq\(28) & !\COMP_CCD|count_start_seq[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(28),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[27]~92\,
	combout => \COMP_CCD|count_start_seq[28]~93_combout\,
	cout => \COMP_CCD|count_start_seq[28]~94\);

-- Location: FF_X23_Y15_N25
\COMP_CCD|count_start_seq[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[28]~93_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(28));

-- Location: LCCOMB_X23_Y15_N26
\COMP_CCD|count_start_seq[29]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[29]~95_combout\ = (\COMP_CCD|count_start_seq\(29) & (!\COMP_CCD|count_start_seq[28]~94\)) # (!\COMP_CCD|count_start_seq\(29) & ((\COMP_CCD|count_start_seq[28]~94\) # (GND)))
-- \COMP_CCD|count_start_seq[29]~96\ = CARRY((!\COMP_CCD|count_start_seq[28]~94\) # (!\COMP_CCD|count_start_seq\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(29),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[28]~94\,
	combout => \COMP_CCD|count_start_seq[29]~95_combout\,
	cout => \COMP_CCD|count_start_seq[29]~96\);

-- Location: FF_X23_Y15_N27
\COMP_CCD|count_start_seq[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[29]~95_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(29));

-- Location: LCCOMB_X23_Y15_N28
\COMP_CCD|count_start_seq[30]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[30]~97_combout\ = (\COMP_CCD|count_start_seq\(30) & (\COMP_CCD|count_start_seq[29]~96\ $ (GND))) # (!\COMP_CCD|count_start_seq\(30) & (!\COMP_CCD|count_start_seq[29]~96\ & VCC))
-- \COMP_CCD|count_start_seq[30]~98\ = CARRY((\COMP_CCD|count_start_seq\(30) & !\COMP_CCD|count_start_seq[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(30),
	datad => VCC,
	cin => \COMP_CCD|count_start_seq[29]~96\,
	combout => \COMP_CCD|count_start_seq[30]~97_combout\,
	cout => \COMP_CCD|count_start_seq[30]~98\);

-- Location: FF_X23_Y15_N29
\COMP_CCD|count_start_seq[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[30]~97_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(30));

-- Location: LCCOMB_X23_Y15_N30
\COMP_CCD|count_start_seq[31]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_start_seq[31]~99_combout\ = \COMP_CCD|count_start_seq\(31) $ (\COMP_CCD|count_start_seq[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(31),
	cin => \COMP_CCD|count_start_seq[30]~98\,
	combout => \COMP_CCD|count_start_seq[31]~99_combout\);

-- Location: FF_X23_Y15_N31
\COMP_CCD|count_start_seq[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|count_start_seq[31]~99_combout\,
	sclr => \COMP_CCD|count_start_seq~38_combout\,
	ena => \COMP_CCD|count_start_seq[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_start_seq\(31));

-- Location: LCCOMB_X22_Y15_N26
\COMP_CCD|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~7_combout\ = (!\COMP_CCD|count_start_seq\(26) & (!\COMP_CCD|count_start_seq\(29) & (!\COMP_CCD|count_start_seq\(28) & !\COMP_CCD|count_start_seq\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(26),
	datab => \COMP_CCD|count_start_seq\(29),
	datac => \COMP_CCD|count_start_seq\(28),
	datad => \COMP_CCD|count_start_seq\(27),
	combout => \COMP_CCD|Equal5~7_combout\);

-- Location: LCCOMB_X22_Y16_N10
\COMP_CCD|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~8_combout\ = (!\COMP_CCD|count_start_seq\(31) & (!\COMP_CCD|count_start_seq\(30) & \COMP_CCD|Equal5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(31),
	datac => \COMP_CCD|count_start_seq\(30),
	datad => \COMP_CCD|Equal5~7_combout\,
	combout => \COMP_CCD|Equal5~8_combout\);

-- Location: LCCOMB_X22_Y16_N12
\COMP_CCD|Equal5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~9_combout\ = (\COMP_CCD|Equal5~5_combout\ & (\COMP_CCD|Equal5~6_combout\ & (\COMP_CCD|Equal5~4_combout\ & \COMP_CCD|Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal5~5_combout\,
	datab => \COMP_CCD|Equal5~6_combout\,
	datac => \COMP_CCD|Equal5~4_combout\,
	datad => \COMP_CCD|Equal5~8_combout\,
	combout => \COMP_CCD|Equal5~9_combout\);

-- Location: LCCOMB_X22_Y14_N12
\COMP_CCD|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|WideNor0~combout\ = ((\COMP_CCD|count_start_seq\(1) & \COMP_CCD|count_start_seq\(0))) # (!\COMP_CCD|Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(1),
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|Equal5~9_combout\,
	combout => \COMP_CCD|WideNor0~combout\);

-- Location: LCCOMB_X22_Y14_N30
\COMP_CCD|ram_addr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[1]~1_combout\ = (\COMP_CCD|LessThan4~2_combout\ & (((!\COMP_CCD|WideNor0~combout\)))) # (!\COMP_CCD|LessThan4~2_combout\ & ((\COMP_CCD|LessThan5~4_combout\) # ((\COMP_CCD|LessThan6~4_combout\ & !\COMP_CCD|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan6~4_combout\,
	datab => \COMP_CCD|LessThan5~4_combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \COMP_CCD|WideNor0~combout\,
	combout => \COMP_CCD|ram_addr[1]~1_combout\);

-- Location: LCCOMB_X19_Y12_N26
\COMP_CCD|dram_we_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|dram_we_a~1_combout\ = (((\COMP_CCD|line_pos_end[0]~0_combout\ & !\COMP_CCD|LessThan3~1_combout\)) # (!\COMP_CCD|rog_reg~1_combout\)) # (!\COMP_CCD|rog_reg~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|line_pos_end[0]~0_combout\,
	datab => \COMP_CCD|rog_reg~4_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	datad => \COMP_CCD|rog_reg~1_combout\,
	combout => \COMP_CCD|dram_we_a~1_combout\);

-- Location: LCCOMB_X19_Y12_N16
\COMP_CCD|dram_we_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|dram_we_a~2_combout\ = (\COMP_CCD|dram_we_a~0_combout\ & ((\COMP_CCD|ram_addr[1]~1_combout\) # ((\COMP_CCD|dram_we_a~q\ & \COMP_CCD|dram_we_a~1_combout\)))) # (!\COMP_CCD|dram_we_a~0_combout\ & (((\COMP_CCD|dram_we_a~q\ & 
-- \COMP_CCD|dram_we_a~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|dram_we_a~0_combout\,
	datab => \COMP_CCD|ram_addr[1]~1_combout\,
	datac => \COMP_CCD|dram_we_a~q\,
	datad => \COMP_CCD|dram_we_a~1_combout\,
	combout => \COMP_CCD|dram_we_a~2_combout\);

-- Location: FF_X19_Y12_N17
\COMP_CCD|dram_we_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|dram_we_a~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|dram_we_a~q\);

-- Location: LCCOMB_X21_Y14_N0
\COMP_CCD|data_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~9_combout\ = (!\COMP_CCD|LessThan5~3_combout\ & (\COMP_CCD|Equal2~9_combout\ & (\COMP_CCD|WideNor0~combout\ & !\COMP_CCD|data_out[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~3_combout\,
	datab => \COMP_CCD|Equal2~9_combout\,
	datac => \COMP_CCD|WideNor0~combout\,
	datad => \COMP_CCD|data_out[1]~7_combout\,
	combout => \COMP_CCD|data_out[0]~9_combout\);

-- Location: LCCOMB_X21_Y14_N22
\COMP_CCD|data_out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~10_combout\ = (\COMP_CCD|rog_reg~0_combout\) # ((\COMP_CCD|LessThan4~2_combout\) # (\COMP_CCD|data_out[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|rog_reg~0_combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \COMP_CCD|data_out[0]~9_combout\,
	combout => \COMP_CCD|data_out[0]~10_combout\);

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

-- Location: LCCOMB_X21_Y14_N18
\COMP_CCD|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~8_combout\ = (\COMP_CCD|LessThan4~2_combout\ & (((!\COMP_CCD|WideNor0~combout\)))) # (!\COMP_CCD|LessThan4~2_combout\ & (\COMP_CCD|LessThan5~5_combout\ & ((\adc_data_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~5_combout\,
	datab => \COMP_CCD|WideNor0~combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \adc_data_in[0]~input_o\,
	combout => \COMP_CCD|data_out[0]~8_combout\);

-- Location: LCCOMB_X21_Y14_N24
\COMP_CCD|data_out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[0]~11_combout\ = (\COMP_CCD|dram_we_a~0_combout\ & ((\COMP_CCD|data_out[0]~8_combout\) # ((\COMP_CCD|data_out[0]~10_combout\ & \COMP_CCD|data_out\(0))))) # (!\COMP_CCD|dram_we_a~0_combout\ & (((\COMP_CCD|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out[0]~10_combout\,
	datab => \COMP_CCD|data_out[0]~8_combout\,
	datac => \COMP_CCD|data_out\(0),
	datad => \COMP_CCD|dram_we_a~0_combout\,
	combout => \COMP_CCD|data_out[0]~11_combout\);

-- Location: FF_X21_Y14_N25
\COMP_CCD|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(0));

-- Location: LCCOMB_X18_Y12_N4
\COMP_CCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~0_combout\ = \COMP_CCD|count_data\(0) $ (GND)
-- \COMP_CCD|Add1~1\ = CARRY(!\COMP_CCD|count_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_data\(0),
	datad => VCC,
	combout => \COMP_CCD|Add1~0_combout\,
	cout => \COMP_CCD|Add1~1\);

-- Location: LCCOMB_X19_Y12_N12
\COMP_CCD|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~2_combout\ = (\COMP_CCD|LessThan3~1_combout\) # (!\COMP_CCD|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~0_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~2_combout\);

-- Location: LCCOMB_X19_Y12_N14
\COMP_CCD|count_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count_data[0]~0_combout\ = (\COMP_CCD|rog_reg~7_combout\ & ((\COMP_CCD|LessThan3~1_combout\) # ((\COMP_CCD|clk_reg~q\ & \COMP_CCD|ram_addr[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~1_combout\,
	datab => \COMP_CCD|clk_reg~q\,
	datac => \COMP_CCD|ram_addr[1]~1_combout\,
	datad => \COMP_CCD|rog_reg~7_combout\,
	combout => \COMP_CCD|count_data[0]~0_combout\);

-- Location: FF_X19_Y12_N13
\COMP_CCD|count_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~2_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(0));

-- Location: LCCOMB_X22_Y14_N6
\COMP_CCD|ram_addr[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[0]~2_combout\ = (!\COMP_CCD|ram_addr[0]~0_combout\ & (((\COMP_CCD|LessThan5~4_combout\ & !\COMP_CCD|LessThan4~2_combout\)) # (!\COMP_CCD|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|WideNor0~combout\,
	datab => \COMP_CCD|LessThan5~4_combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \COMP_CCD|ram_addr[0]~0_combout\,
	combout => \COMP_CCD|ram_addr[0]~2_combout\);

-- Location: LCCOMB_X26_Y12_N18
\COMP_CCD|ram_addr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[0]~3_combout\ = (\COMP_CCD|ram_addr[0]~2_combout\ & ((\COMP_CCD|dram_we_a~0_combout\ & (\COMP_CCD|count_data\(0))) # (!\COMP_CCD|dram_we_a~0_combout\ & ((\COMP_CCD|ram_addr\(0)))))) # (!\COMP_CCD|ram_addr[0]~2_combout\ & 
-- (((\COMP_CCD|ram_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_data\(0),
	datab => \COMP_CCD|ram_addr[0]~2_combout\,
	datac => \COMP_CCD|ram_addr\(0),
	datad => \COMP_CCD|dram_we_a~0_combout\,
	combout => \COMP_CCD|ram_addr[0]~3_combout\);

-- Location: FF_X26_Y12_N19
\COMP_CCD|ram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(0));

-- Location: LCCOMB_X26_Y12_N20
\COMP_CCD|ram_addr[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[0]~_wirecell_combout\ = !\COMP_CCD|ram_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|ram_addr\(0),
	combout => \COMP_CCD|ram_addr[0]~_wirecell_combout\);

-- Location: LCCOMB_X18_Y12_N6
\COMP_CCD|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~3_combout\ = (\COMP_CCD|count_data\(1) & (!\COMP_CCD|Add1~1\)) # (!\COMP_CCD|count_data\(1) & ((\COMP_CCD|Add1~1\) # (GND)))
-- \COMP_CCD|Add1~4\ = CARRY((!\COMP_CCD|Add1~1\) # (!\COMP_CCD|count_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_data\(1),
	datad => VCC,
	cin => \COMP_CCD|Add1~1\,
	combout => \COMP_CCD|Add1~3_combout\,
	cout => \COMP_CCD|Add1~4\);

-- Location: LCCOMB_X19_Y12_N18
\COMP_CCD|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~5_combout\ = (\COMP_CCD|LessThan3~1_combout\ & (\COMP_CCD|line_pos_end_reg\(11))) # (!\COMP_CCD|LessThan3~1_combout\ & ((\COMP_CCD|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan3~1_combout\,
	datac => \COMP_CCD|line_pos_end_reg\(11),
	datad => \COMP_CCD|Add1~3_combout\,
	combout => \COMP_CCD|Add1~5_combout\);

-- Location: FF_X19_Y12_N19
\COMP_CCD|count_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~5_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(1));

-- Location: LCCOMB_X22_Y12_N8
\COMP_CCD|dram_we_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|dram_we_a~3_combout\ = (\COMP_CCD|ram_addr[1]~1_combout\ & (!\COMP_CCD|LessThan3~1_combout\ & (\COMP_CCD|clk_reg~q\ & \COMP_CCD|rog_reg~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|ram_addr[1]~1_combout\,
	datab => \COMP_CCD|LessThan3~1_combout\,
	datac => \COMP_CCD|clk_reg~q\,
	datad => \COMP_CCD|rog_reg~7_combout\,
	combout => \COMP_CCD|dram_we_a~3_combout\);

-- Location: FF_X21_Y12_N1
\COMP_CCD|ram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_data\(1),
	sload => VCC,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(1));

-- Location: LCCOMB_X18_Y12_N8
\COMP_CCD|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~6_combout\ = (\COMP_CCD|count_data\(2) & (\COMP_CCD|Add1~4\ $ (GND))) # (!\COMP_CCD|count_data\(2) & (!\COMP_CCD|Add1~4\ & VCC))
-- \COMP_CCD|Add1~7\ = CARRY((\COMP_CCD|count_data\(2) & !\COMP_CCD|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_data\(2),
	datad => VCC,
	cin => \COMP_CCD|Add1~4\,
	combout => \COMP_CCD|Add1~6_combout\,
	cout => \COMP_CCD|Add1~7\);

-- Location: LCCOMB_X19_Y12_N4
\COMP_CCD|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~8_combout\ = (\COMP_CCD|LessThan3~1_combout\ & ((\COMP_CCD|line_pos_end_reg\(11)))) # (!\COMP_CCD|LessThan3~1_combout\ & (\COMP_CCD|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~6_combout\,
	datab => \COMP_CCD|line_pos_end_reg\(11),
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~8_combout\);

-- Location: FF_X19_Y12_N5
\COMP_CCD|count_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~8_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(2));

-- Location: LCCOMB_X22_Y12_N24
\COMP_CCD|ram_addr[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[2]~feeder_combout\ = \COMP_CCD|count_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count_data\(2),
	combout => \COMP_CCD|ram_addr[2]~feeder_combout\);

-- Location: FF_X22_Y12_N25
\COMP_CCD|ram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[2]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(2));

-- Location: LCCOMB_X18_Y12_N10
\COMP_CCD|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~9_combout\ = (\COMP_CCD|count_data\(3) & (!\COMP_CCD|Add1~7\)) # (!\COMP_CCD|count_data\(3) & ((\COMP_CCD|Add1~7\) # (GND)))
-- \COMP_CCD|Add1~10\ = CARRY((!\COMP_CCD|Add1~7\) # (!\COMP_CCD|count_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_data\(3),
	datad => VCC,
	cin => \COMP_CCD|Add1~7\,
	combout => \COMP_CCD|Add1~9_combout\,
	cout => \COMP_CCD|Add1~10\);

-- Location: LCCOMB_X19_Y12_N2
\COMP_CCD|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~11_combout\ = (\COMP_CCD|Add1~9_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~9_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~11_combout\);

-- Location: FF_X19_Y12_N3
\COMP_CCD|count_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~11_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(3));

-- Location: LCCOMB_X22_Y12_N30
\COMP_CCD|ram_addr[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[3]~feeder_combout\ = \COMP_CCD|count_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_data\(3),
	combout => \COMP_CCD|ram_addr[3]~feeder_combout\);

-- Location: FF_X22_Y12_N31
\COMP_CCD|ram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[3]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(3));

-- Location: LCCOMB_X18_Y12_N12
\COMP_CCD|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~12_combout\ = (\COMP_CCD|count_data\(4) & (\COMP_CCD|Add1~10\ $ (GND))) # (!\COMP_CCD|count_data\(4) & (!\COMP_CCD|Add1~10\ & VCC))
-- \COMP_CCD|Add1~13\ = CARRY((\COMP_CCD|count_data\(4) & !\COMP_CCD|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_data\(4),
	datad => VCC,
	cin => \COMP_CCD|Add1~10\,
	combout => \COMP_CCD|Add1~12_combout\,
	cout => \COMP_CCD|Add1~13\);

-- Location: LCCOMB_X19_Y12_N0
\COMP_CCD|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~14_combout\ = (\COMP_CCD|Add1~12_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~12_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~14_combout\);

-- Location: FF_X19_Y12_N1
\COMP_CCD|count_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~14_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(4));

-- Location: FF_X18_Y12_N1
\COMP_CCD|ram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	asdata => \COMP_CCD|count_data\(4),
	sload => VCC,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(4));

-- Location: LCCOMB_X18_Y12_N14
\COMP_CCD|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~15_combout\ = (\COMP_CCD|count_data\(5) & (!\COMP_CCD|Add1~13\)) # (!\COMP_CCD|count_data\(5) & ((\COMP_CCD|Add1~13\) # (GND)))
-- \COMP_CCD|Add1~16\ = CARRY((!\COMP_CCD|Add1~13\) # (!\COMP_CCD|count_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_data\(5),
	datad => VCC,
	cin => \COMP_CCD|Add1~13\,
	combout => \COMP_CCD|Add1~15_combout\,
	cout => \COMP_CCD|Add1~16\);

-- Location: LCCOMB_X19_Y12_N22
\COMP_CCD|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~17_combout\ = (\COMP_CCD|Add1~15_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~15_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~17_combout\);

-- Location: FF_X19_Y12_N23
\COMP_CCD|count_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~17_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(5));

-- Location: LCCOMB_X22_Y12_N16
\COMP_CCD|ram_addr[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[5]~feeder_combout\ = \COMP_CCD|count_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count_data\(5),
	combout => \COMP_CCD|ram_addr[5]~feeder_combout\);

-- Location: FF_X22_Y12_N17
\COMP_CCD|ram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[5]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(5));

-- Location: LCCOMB_X18_Y12_N16
\COMP_CCD|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~18_combout\ = (\COMP_CCD|count_data\(6) & (\COMP_CCD|Add1~16\ $ (GND))) # (!\COMP_CCD|count_data\(6) & (!\COMP_CCD|Add1~16\ & VCC))
-- \COMP_CCD|Add1~19\ = CARRY((\COMP_CCD|count_data\(6) & !\COMP_CCD|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_data\(6),
	datad => VCC,
	cin => \COMP_CCD|Add1~16\,
	combout => \COMP_CCD|Add1~18_combout\,
	cout => \COMP_CCD|Add1~19\);

-- Location: LCCOMB_X19_Y12_N24
\COMP_CCD|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~20_combout\ = (\COMP_CCD|Add1~18_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~18_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~20_combout\);

-- Location: FF_X19_Y12_N25
\COMP_CCD|count_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~20_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(6));

-- Location: LCCOMB_X18_Y12_N30
\COMP_CCD|ram_addr[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[6]~feeder_combout\ = \COMP_CCD|count_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count_data\(6),
	combout => \COMP_CCD|ram_addr[6]~feeder_combout\);

-- Location: FF_X18_Y12_N31
\COMP_CCD|ram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[6]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(6));

-- Location: LCCOMB_X18_Y12_N18
\COMP_CCD|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~21_combout\ = (\COMP_CCD|count_data\(7) & (!\COMP_CCD|Add1~19\)) # (!\COMP_CCD|count_data\(7) & ((\COMP_CCD|Add1~19\) # (GND)))
-- \COMP_CCD|Add1~22\ = CARRY((!\COMP_CCD|Add1~19\) # (!\COMP_CCD|count_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_data\(7),
	datad => VCC,
	cin => \COMP_CCD|Add1~19\,
	combout => \COMP_CCD|Add1~21_combout\,
	cout => \COMP_CCD|Add1~22\);

-- Location: LCCOMB_X19_Y12_N10
\COMP_CCD|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~23_combout\ = (\COMP_CCD|Add1~21_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~21_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~23_combout\);

-- Location: FF_X19_Y12_N11
\COMP_CCD|count_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~23_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(7));

-- Location: LCCOMB_X22_Y12_N6
\COMP_CCD|ram_addr[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[7]~feeder_combout\ = \COMP_CCD|count_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count_data\(7),
	combout => \COMP_CCD|ram_addr[7]~feeder_combout\);

-- Location: FF_X22_Y12_N7
\COMP_CCD|ram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[7]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(7));

-- Location: LCCOMB_X18_Y12_N20
\COMP_CCD|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~24_combout\ = (\COMP_CCD|count_data\(8) & (\COMP_CCD|Add1~22\ $ (GND))) # (!\COMP_CCD|count_data\(8) & (!\COMP_CCD|Add1~22\ & VCC))
-- \COMP_CCD|Add1~25\ = CARRY((\COMP_CCD|count_data\(8) & !\COMP_CCD|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_data\(8),
	datad => VCC,
	cin => \COMP_CCD|Add1~22\,
	combout => \COMP_CCD|Add1~24_combout\,
	cout => \COMP_CCD|Add1~25\);

-- Location: LCCOMB_X19_Y12_N20
\COMP_CCD|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~26_combout\ = (\COMP_CCD|Add1~24_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~24_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~26_combout\);

-- Location: FF_X19_Y12_N21
\COMP_CCD|count_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~26_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(8));

-- Location: LCCOMB_X22_Y12_N20
\COMP_CCD|ram_addr[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[8]~feeder_combout\ = \COMP_CCD|count_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_data\(8),
	combout => \COMP_CCD|ram_addr[8]~feeder_combout\);

-- Location: FF_X22_Y12_N21
\COMP_CCD|ram_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[8]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(8));

-- Location: LCCOMB_X18_Y12_N22
\COMP_CCD|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~27_combout\ = (\COMP_CCD|count_data\(9) & (!\COMP_CCD|Add1~25\)) # (!\COMP_CCD|count_data\(9) & ((\COMP_CCD|Add1~25\) # (GND)))
-- \COMP_CCD|Add1~28\ = CARRY((!\COMP_CCD|Add1~25\) # (!\COMP_CCD|count_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_data\(9),
	datad => VCC,
	cin => \COMP_CCD|Add1~25\,
	combout => \COMP_CCD|Add1~27_combout\,
	cout => \COMP_CCD|Add1~28\);

-- Location: LCCOMB_X19_Y12_N6
\COMP_CCD|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~29_combout\ = (!\COMP_CCD|LessThan3~1_combout\ & \COMP_CCD|Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|LessThan3~1_combout\,
	datad => \COMP_CCD|Add1~27_combout\,
	combout => \COMP_CCD|Add1~29_combout\);

-- Location: FF_X19_Y12_N7
\COMP_CCD|count_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~29_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(9));

-- Location: LCCOMB_X22_Y12_N10
\COMP_CCD|ram_addr[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[9]~feeder_combout\ = \COMP_CCD|count_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_data\(9),
	combout => \COMP_CCD|ram_addr[9]~feeder_combout\);

-- Location: FF_X22_Y12_N11
\COMP_CCD|ram_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[9]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(9));

-- Location: LCCOMB_X18_Y12_N24
\COMP_CCD|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~30_combout\ = (\COMP_CCD|count_data\(10) & (\COMP_CCD|Add1~28\ $ (GND))) # (!\COMP_CCD|count_data\(10) & (!\COMP_CCD|Add1~28\ & VCC))
-- \COMP_CCD|Add1~31\ = CARRY((\COMP_CCD|count_data\(10) & !\COMP_CCD|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_data\(10),
	datad => VCC,
	cin => \COMP_CCD|Add1~28\,
	combout => \COMP_CCD|Add1~30_combout\,
	cout => \COMP_CCD|Add1~31\);

-- Location: LCCOMB_X19_Y12_N28
\COMP_CCD|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~32_combout\ = (\COMP_CCD|Add1~30_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~30_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~32_combout\);

-- Location: FF_X19_Y12_N29
\COMP_CCD|count_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~32_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(10));

-- Location: LCCOMB_X22_Y12_N12
\COMP_CCD|ram_addr[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[10]~feeder_combout\ = \COMP_CCD|count_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_data\(10),
	combout => \COMP_CCD|ram_addr[10]~feeder_combout\);

-- Location: FF_X22_Y12_N13
\COMP_CCD|ram_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[10]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(10));

-- Location: LCCOMB_X18_Y12_N26
\COMP_CCD|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~33_combout\ = (\COMP_CCD|count_data\(11) & (!\COMP_CCD|Add1~31\)) # (!\COMP_CCD|count_data\(11) & ((\COMP_CCD|Add1~31\) # (GND)))
-- \COMP_CCD|Add1~34\ = CARRY((!\COMP_CCD|Add1~31\) # (!\COMP_CCD|count_data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_data\(11),
	datad => VCC,
	cin => \COMP_CCD|Add1~31\,
	combout => \COMP_CCD|Add1~33_combout\,
	cout => \COMP_CCD|Add1~34\);

-- Location: LCCOMB_X19_Y12_N30
\COMP_CCD|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~35_combout\ = (\COMP_CCD|LessThan3~1_combout\ & ((\COMP_CCD|line_pos_end_reg\(11)))) # (!\COMP_CCD|LessThan3~1_combout\ & (\COMP_CCD|Add1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~33_combout\,
	datab => \COMP_CCD|line_pos_end_reg\(11),
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~35_combout\);

-- Location: FF_X19_Y12_N31
\COMP_CCD|count_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~35_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(11));

-- Location: LCCOMB_X22_Y12_N22
\COMP_CCD|ram_addr[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[11]~feeder_combout\ = \COMP_CCD|count_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count_data\(11),
	combout => \COMP_CCD|ram_addr[11]~feeder_combout\);

-- Location: FF_X22_Y12_N23
\COMP_CCD|ram_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[11]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(11));

-- Location: LCCOMB_X18_Y12_N28
\COMP_CCD|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~36_combout\ = \COMP_CCD|count_data\(12) $ (!\COMP_CCD|Add1~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_data\(12),
	cin => \COMP_CCD|Add1~34\,
	combout => \COMP_CCD|Add1~36_combout\);

-- Location: LCCOMB_X19_Y12_N8
\COMP_CCD|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~38_combout\ = (\COMP_CCD|Add1~36_combout\ & !\COMP_CCD|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~36_combout\,
	datac => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|Add1~38_combout\);

-- Location: FF_X19_Y12_N9
\COMP_CCD|count_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~38_combout\,
	ena => \COMP_CCD|count_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count_data\(12));

-- Location: LCCOMB_X22_Y12_N28
\COMP_CCD|ram_addr[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|ram_addr[12]~feeder_combout\ = \COMP_CCD|count_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count_data\(12),
	combout => \COMP_CCD|ram_addr[12]~feeder_combout\);

-- Location: FF_X22_Y12_N29
\COMP_CCD|ram_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|ram_addr[12]~feeder_combout\,
	ena => \COMP_CCD|dram_we_a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|ram_addr\(12));

-- Location: LCCOMB_X25_Y11_N16
\COMP_USB|ram_addr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[0]~3_combout\ = !\COMP_USB|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_USB|count\(0),
	combout => \COMP_USB|ram_addr[0]~3_combout\);

-- Location: LCCOMB_X21_Y11_N2
\COMP_USB|ram_addr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[0]~1_combout\ = (!\COMP_USB|switch_write\(0) & (\usb_rxf~input_o\ & !\usb_txe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(0),
	datac => \usb_rxf~input_o\,
	datad => \usb_txe~input_o\,
	combout => \COMP_USB|ram_addr[0]~1_combout\);

-- Location: LCCOMB_X25_Y11_N10
\COMP_USB|ram_addr[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[0]~2_combout\ = (\COMP_USB|ram_addr[0]~1_combout\ & (!\COMP_USB|switch_write\(1) & (\COMP_USB|LessThan0~13_combout\ & !\COMP_USB|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|ram_addr[0]~1_combout\,
	datab => \COMP_USB|switch_write\(1),
	datac => \COMP_USB|LessThan0~13_combout\,
	datad => \COMP_USB|process_0~0_combout\,
	combout => \COMP_USB|ram_addr[0]~2_combout\);

-- Location: FF_X25_Y11_N17
\COMP_USB|ram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[0]~3_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(0));

-- Location: LCCOMB_X25_Y11_N28
\COMP_USB|ram_addr[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[0]~_wirecell_combout\ = !\COMP_USB|ram_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|ram_addr\(0),
	combout => \COMP_USB|ram_addr[0]~_wirecell_combout\);

-- Location: LCCOMB_X25_Y11_N30
\COMP_USB|ram_addr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[1]~feeder_combout\ = \COMP_USB|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(1),
	combout => \COMP_USB|ram_addr[1]~feeder_combout\);

-- Location: FF_X25_Y11_N31
\COMP_USB|ram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[1]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(1));

-- Location: FF_X25_Y11_N1
\COMP_USB|ram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \COMP_USB|count\(2),
	sload => VCC,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(2));

-- Location: LCCOMB_X25_Y11_N18
\COMP_USB|ram_addr[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[3]~feeder_combout\ = \COMP_USB|count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(3),
	combout => \COMP_USB|ram_addr[3]~feeder_combout\);

-- Location: FF_X25_Y11_N19
\COMP_USB|ram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[3]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(3));

-- Location: FF_X25_Y11_N29
\COMP_USB|ram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \COMP_USB|count\(4),
	sload => VCC,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(4));

-- Location: FF_X25_Y11_N3
\COMP_USB|ram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \COMP_USB|count\(5),
	sload => VCC,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(5));

-- Location: LCCOMB_X25_Y11_N20
\COMP_USB|ram_addr[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[6]~feeder_combout\ = \COMP_USB|count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(6),
	combout => \COMP_USB|ram_addr[6]~feeder_combout\);

-- Location: FF_X25_Y11_N21
\COMP_USB|ram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[6]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(6));

-- Location: LCCOMB_X25_Y11_N14
\COMP_USB|ram_addr[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[7]~feeder_combout\ = \COMP_USB|count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(7),
	combout => \COMP_USB|ram_addr[7]~feeder_combout\);

-- Location: FF_X25_Y11_N15
\COMP_USB|ram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[7]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(7));

-- Location: LCCOMB_X25_Y11_N12
\COMP_USB|ram_addr[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[8]~feeder_combout\ = \COMP_USB|count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(8),
	combout => \COMP_USB|ram_addr[8]~feeder_combout\);

-- Location: FF_X25_Y11_N13
\COMP_USB|ram_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[8]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(8));

-- Location: LCCOMB_X25_Y11_N26
\COMP_USB|ram_addr[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[9]~feeder_combout\ = \COMP_USB|count\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(9),
	combout => \COMP_USB|ram_addr[9]~feeder_combout\);

-- Location: FF_X25_Y11_N27
\COMP_USB|ram_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[9]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(9));

-- Location: LCCOMB_X25_Y11_N8
\COMP_USB|ram_addr[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[10]~feeder_combout\ = \COMP_USB|count\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(10),
	combout => \COMP_USB|ram_addr[10]~feeder_combout\);

-- Location: FF_X25_Y11_N9
\COMP_USB|ram_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[10]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(10));

-- Location: FF_X25_Y11_N7
\COMP_USB|ram_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	asdata => \COMP_USB|count\(11),
	sload => VCC,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(11));

-- Location: LCCOMB_X25_Y11_N24
\COMP_USB|ram_addr[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|ram_addr[12]~feeder_combout\ = \COMP_USB|count\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_USB|count\(12),
	combout => \COMP_USB|ram_addr[12]~feeder_combout\);

-- Location: FF_X25_Y11_N25
\COMP_USB|ram_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|ram_addr[12]~feeder_combout\,
	ena => \COMP_USB|ram_addr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|ram_addr\(12));

-- Location: M9K_X15_Y12_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

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

-- Location: LCCOMB_X21_Y14_N28
\COMP_CCD|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~12_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(1) & ((\COMP_CCD|data_out\(8)) # (!\COMP_CCD|count_start_seq\(0))))) # (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(8),
	datab => \COMP_CCD|count_start_seq\(1),
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|Equal5~9_combout\,
	combout => \COMP_CCD|data_out~12_combout\);

-- Location: LCCOMB_X22_Y12_N14
\COMP_CCD|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~13_combout\ = (!\COMP_CCD|LessThan4~2_combout\ & ((\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[8]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|data_out~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_in[8]~input_o\,
	datab => \COMP_CCD|data_out~12_combout\,
	datac => \COMP_CCD|LessThan5~4_combout\,
	datad => \COMP_CCD|LessThan4~2_combout\,
	combout => \COMP_CCD|data_out~13_combout\);

-- Location: LCCOMB_X22_Y14_N28
\COMP_CCD|data_out[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[1]~14_combout\ = ((\COMP_CCD|data_out[1]~7_combout\ & ((!\COMP_CCD|LessThan5~2_combout\) # (!\COMP_CCD|Equal2~5_combout\)))) # (!\COMP_CCD|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~5_combout\,
	datab => \COMP_CCD|LessThan5~2_combout\,
	datac => \COMP_CCD|Equal2~9_combout\,
	datad => \COMP_CCD|data_out[1]~7_combout\,
	combout => \COMP_CCD|data_out[1]~14_combout\);

-- Location: LCCOMB_X22_Y14_N10
\COMP_CCD|data_out[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[8]~15_combout\ = (\COMP_CCD|LessThan4~2_combout\ & (!\COMP_CCD|WideNor0~combout\)) # (!\COMP_CCD|LessThan4~2_combout\ & ((!\COMP_CCD|data_out[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|WideNor0~combout\,
	datac => \COMP_CCD|LessThan4~2_combout\,
	datad => \COMP_CCD|data_out[1]~14_combout\,
	combout => \COMP_CCD|data_out[8]~15_combout\);

-- Location: LCCOMB_X22_Y12_N2
\COMP_CCD|data_out[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[8]~16_combout\ = (\COMP_CCD|clk_reg~q\ & (\COMP_CCD|rog_reg~7_combout\ & (\COMP_CCD|data_out[8]~15_combout\ & !\COMP_CCD|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_reg~q\,
	datab => \COMP_CCD|rog_reg~7_combout\,
	datac => \COMP_CCD|data_out[8]~15_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|data_out[8]~16_combout\);

-- Location: FF_X22_Y12_N15
\COMP_CCD|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~13_combout\,
	ena => \COMP_CCD|data_out[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(8));

-- Location: M9K_X27_Y9_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N24
\COMP_USB|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux72~0_combout\ = (\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \COMP_USB|Mux72~0_combout\);

-- Location: LCCOMB_X23_Y11_N20
\COMP_USB|data[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[7]~8_combout\ = (\usb_rxf~input_o\ & (!\usb_txe~input_o\ & (\COMP_USB|Mux0~0_combout\ & !\COMP_USB|process_0~0_combout\))) # (!\usb_rxf~input_o\ & (((\COMP_USB|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usb_txe~input_o\,
	datab => \usb_rxf~input_o\,
	datac => \COMP_USB|Mux0~0_combout\,
	datad => \COMP_USB|process_0~0_combout\,
	combout => \COMP_USB|data[7]~8_combout\);

-- Location: LCCOMB_X23_Y11_N26
\COMP_USB|data[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|data[7]~9_combout\ = (\COMP_USB|LessThan0~13_combout\ & ((\usb_rxf~input_o\ $ (!\COMP_USB|data[7]~8_combout\)))) # (!\COMP_USB|LessThan0~13_combout\ & (\COMP_CCD|line_ready_reg~2_combout\ & (!\usb_rxf~input_o\ & !\COMP_USB|data[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|LessThan0~13_combout\,
	datab => \COMP_CCD|line_ready_reg~2_combout\,
	datac => \usb_rxf~input_o\,
	datad => \COMP_USB|data[7]~8_combout\,
	combout => \COMP_USB|data[7]~9_combout\);

-- Location: FF_X26_Y11_N25
\COMP_USB|data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux72~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[0]~reg0_q\);

-- Location: FF_X24_Y11_N1
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

-- Location: LCCOMB_X22_Y10_N10
\COMP_CCD|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector17~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(1) & ((\COMP_CCD|data_out\(1)) # (!\COMP_CCD|count_start_seq\(0))))) # (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(1),
	datab => \COMP_CCD|Equal5~9_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector17~0_combout\);

-- Location: LCCOMB_X22_Y10_N24
\COMP_CCD|data_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[1]~0_combout\ = (\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[1]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~4_combout\,
	datab => \adc_data_in[1]~input_o\,
	datad => \COMP_CCD|Selector17~0_combout\,
	combout => \COMP_CCD|data_out[1]~0_combout\);

-- Location: LCCOMB_X21_Y14_N6
\COMP_CCD|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector6~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(1) & \COMP_CCD|count_start_seq\(0))) # (!\COMP_CCD|count_start_seq\(1)))) # (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(1),
	datab => \COMP_CCD|count_start_seq\(1),
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|Equal5~9_combout\,
	combout => \COMP_CCD|Selector6~0_combout\);

-- Location: LCCOMB_X21_Y14_N20
\COMP_CCD|data_out[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[1]~17_combout\ = (\COMP_CCD|count\(31)) # (!\COMP_CCD|data_out[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|count\(31),
	datad => \COMP_CCD|data_out[1]~14_combout\,
	combout => \COMP_CCD|data_out[1]~17_combout\);

-- Location: LCCOMB_X22_Y10_N4
\COMP_CCD|data_out[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[1]~18_combout\ = (\COMP_CCD|data_out[1]~17_combout\ & (\COMP_CCD|clk_reg~q\ & (\COMP_CCD|rog_reg~7_combout\ & !\COMP_CCD|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out[1]~17_combout\,
	datab => \COMP_CCD|clk_reg~q\,
	datac => \COMP_CCD|rog_reg~7_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|data_out[1]~18_combout\);

-- Location: FF_X22_Y10_N25
\COMP_CCD|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[1]~0_combout\,
	asdata => \COMP_CCD|Selector6~0_combout\,
	sload => \COMP_CCD|LessThan4~2_combout\,
	ena => \COMP_CCD|data_out[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(1));

-- Location: M9K_X27_Y14_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

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

-- Location: LCCOMB_X21_Y14_N26
\COMP_CCD|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal7~0_combout\ = (\COMP_CCD|count_start_seq\(1) & (!\COMP_CCD|count_start_seq\(0) & \COMP_CCD|Equal5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count_start_seq\(1),
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|Equal5~9_combout\,
	combout => \COMP_CCD|Equal7~0_combout\);

-- Location: LCCOMB_X21_Y14_N4
\COMP_CCD|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~19_combout\ = (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Equal7~0_combout\) # ((\COMP_CCD|data_out\(9) & \COMP_CCD|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(9),
	datab => \COMP_CCD|WideNor0~combout\,
	datac => \COMP_CCD|Equal7~0_combout\,
	datad => \COMP_CCD|LessThan5~4_combout\,
	combout => \COMP_CCD|data_out~19_combout\);

-- Location: LCCOMB_X22_Y12_N4
\COMP_CCD|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~20_combout\ = (!\COMP_CCD|LessThan4~2_combout\ & ((\COMP_CCD|data_out~19_combout\) # ((\adc_data_in[9]~input_o\ & \COMP_CCD|LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_in[9]~input_o\,
	datab => \COMP_CCD|LessThan4~2_combout\,
	datac => \COMP_CCD|LessThan5~4_combout\,
	datad => \COMP_CCD|data_out~19_combout\,
	combout => \COMP_CCD|data_out~20_combout\);

-- Location: FF_X22_Y12_N5
\COMP_CCD|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~20_combout\,
	ena => \COMP_CCD|data_out[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(9));

-- Location: M9K_X27_Y13_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N14
\COMP_USB|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux71~0_combout\ = (\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\)) # (!\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	combout => \COMP_USB|Mux71~0_combout\);

-- Location: FF_X26_Y11_N15
\COMP_USB|data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux71~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[1]~reg0_q\);

-- Location: FF_X24_Y11_N11
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

-- Location: LCCOMB_X21_Y14_N10
\COMP_CCD|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~21_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(1) & ((\COMP_CCD|data_out\(10)) # (!\COMP_CCD|count_start_seq\(0))))) # (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(10),
	datab => \COMP_CCD|count_start_seq\(1),
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|Equal5~9_combout\,
	combout => \COMP_CCD|data_out~21_combout\);

-- Location: LCCOMB_X22_Y12_N18
\COMP_CCD|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~22_combout\ = (!\COMP_CCD|LessThan4~2_combout\ & ((\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[10]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|data_out~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_in[10]~input_o\,
	datab => \COMP_CCD|LessThan4~2_combout\,
	datac => \COMP_CCD|LessThan5~4_combout\,
	datad => \COMP_CCD|data_out~21_combout\,
	combout => \COMP_CCD|data_out~22_combout\);

-- Location: FF_X22_Y12_N19
\COMP_CCD|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~22_combout\,
	ena => \COMP_CCD|data_out[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(10));

-- Location: M9K_X27_Y6_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

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

-- Location: LCCOMB_X23_Y10_N4
\COMP_CCD|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector16~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(2) & \COMP_CCD|count_start_seq\(1))) # (!\COMP_CCD|count_start_seq\(0)))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|data_out\(2),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector16~0_combout\);

-- Location: LCCOMB_X22_Y10_N18
\COMP_CCD|data_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[2]~1_combout\ = (\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[2]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~4_combout\,
	datab => \adc_data_in[2]~input_o\,
	datad => \COMP_CCD|Selector16~0_combout\,
	combout => \COMP_CCD|data_out[2]~1_combout\);

-- Location: LCCOMB_X23_Y10_N30
\COMP_CCD|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector5~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(0) & ((\COMP_CCD|data_out\(2)) # (!\COMP_CCD|count_start_seq\(1))))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|data_out\(2),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector5~0_combout\);

-- Location: FF_X22_Y10_N19
\COMP_CCD|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[2]~1_combout\,
	asdata => \COMP_CCD|Selector5~0_combout\,
	sload => \COMP_CCD|LessThan4~2_combout\,
	ena => \COMP_CCD|data_out[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(2));

-- Location: M9K_X15_Y10_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N12
\COMP_USB|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux70~0_combout\ = (\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))) # (!\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	combout => \COMP_USB|Mux70~0_combout\);

-- Location: FF_X26_Y11_N13
\COMP_USB|data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux70~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[2]~reg0_q\);

-- Location: FF_X24_Y11_N29
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

-- Location: LCCOMB_X21_Y14_N8
\COMP_CCD|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~23_combout\ = (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Equal7~0_combout\) # ((\COMP_CCD|data_out\(11) & \COMP_CCD|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal7~0_combout\,
	datab => \COMP_CCD|data_out\(11),
	datac => \COMP_CCD|WideNor0~combout\,
	datad => \COMP_CCD|LessThan5~4_combout\,
	combout => \COMP_CCD|data_out~23_combout\);

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

-- Location: LCCOMB_X22_Y12_N0
\COMP_CCD|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out~24_combout\ = (!\COMP_CCD|LessThan4~2_combout\ & ((\COMP_CCD|data_out~23_combout\) # ((\adc_data_in[11]~input_o\ & \COMP_CCD|LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out~23_combout\,
	datab => \adc_data_in[11]~input_o\,
	datac => \COMP_CCD|LessThan5~4_combout\,
	datad => \COMP_CCD|LessThan4~2_combout\,
	combout => \COMP_CCD|data_out~24_combout\);

-- Location: FF_X22_Y12_N1
\COMP_CCD|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out~24_combout\,
	ena => \COMP_CCD|data_out[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(11));

-- Location: M9K_X15_Y13_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

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

-- Location: LCCOMB_X23_Y10_N16
\COMP_CCD|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector15~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(3) & \COMP_CCD|count_start_seq\(1))) # (!\COMP_CCD|count_start_seq\(0)))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|data_out\(3),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector15~0_combout\);

-- Location: LCCOMB_X22_Y10_N28
\COMP_CCD|data_out[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[3]~2_combout\ = (\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[3]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~4_combout\,
	datab => \adc_data_in[3]~input_o\,
	datad => \COMP_CCD|Selector15~0_combout\,
	combout => \COMP_CCD|data_out[3]~2_combout\);

-- Location: LCCOMB_X22_Y10_N22
\COMP_CCD|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector4~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(0) & ((\COMP_CCD|data_out\(3)) # (!\COMP_CCD|count_start_seq\(1))))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(1),
	datab => \COMP_CCD|Equal5~9_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|data_out\(3),
	combout => \COMP_CCD|Selector4~0_combout\);

-- Location: FF_X22_Y10_N29
\COMP_CCD|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[3]~2_combout\,
	asdata => \COMP_CCD|Selector4~0_combout\,
	sload => \COMP_CCD|LessThan4~2_combout\,
	ena => \COMP_CCD|data_out[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(3));

-- Location: M9K_X15_Y9_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y11_N12
\COMP_USB|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux69~0_combout\ = (\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\))) # (!\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	combout => \COMP_USB|Mux69~0_combout\);

-- Location: FF_X19_Y11_N13
\COMP_USB|data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux69~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[3]~reg0_q\);

-- Location: FF_X24_Y11_N27
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

-- Location: M9K_X15_Y8_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y10_N8
\COMP_CCD|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector14~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(4) & \COMP_CCD|count_start_seq\(1))) # (!\COMP_CCD|count_start_seq\(0)))) # (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(4),
	datab => \COMP_CCD|Equal5~9_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector14~0_combout\);

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

-- Location: LCCOMB_X22_Y10_N2
\COMP_CCD|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[4]~3_combout\ = (\COMP_CCD|LessThan5~4_combout\ & ((\adc_data_in[4]~input_o\))) # (!\COMP_CCD|LessThan5~4_combout\ & (\COMP_CCD|Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~4_combout\,
	datab => \COMP_CCD|Selector14~0_combout\,
	datad => \adc_data_in[4]~input_o\,
	combout => \COMP_CCD|data_out[4]~3_combout\);

-- Location: LCCOMB_X22_Y10_N14
\COMP_CCD|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector3~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(0) & ((\COMP_CCD|data_out\(4)) # (!\COMP_CCD|count_start_seq\(1))))) # (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(4),
	datab => \COMP_CCD|Equal5~9_combout\,
	datac => \COMP_CCD|count_start_seq\(0),
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector3~0_combout\);

-- Location: FF_X22_Y10_N3
\COMP_CCD|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[4]~3_combout\,
	asdata => \COMP_CCD|Selector3~0_combout\,
	sload => \COMP_CCD|LessThan4~2_combout\,
	ena => \COMP_CCD|data_out[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(4));

-- Location: M9K_X15_Y7_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y11_N8
\COMP_USB|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux68~0_combout\ = (\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\))) # (!\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	combout => \COMP_USB|Mux68~0_combout\);

-- Location: FF_X24_Y11_N9
\COMP_USB|data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux68~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[4]~reg0_q\);

-- Location: FF_X26_Y11_N27
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

-- Location: LCCOMB_X22_Y10_N16
\COMP_CCD|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector13~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(1) & ((\COMP_CCD|data_out\(5)) # (!\COMP_CCD|count_start_seq\(0))))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(1),
	datab => \COMP_CCD|count_start_seq\(0),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|data_out\(5),
	combout => \COMP_CCD|Selector13~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\COMP_CCD|data_out[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[5]~4_combout\ = (\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[5]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~4_combout\,
	datab => \adc_data_in[5]~input_o\,
	datad => \COMP_CCD|Selector13~0_combout\,
	combout => \COMP_CCD|data_out[5]~4_combout\);

-- Location: LCCOMB_X22_Y10_N30
\COMP_CCD|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector2~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(0) & ((\COMP_CCD|data_out\(5)) # (!\COMP_CCD|count_start_seq\(1))))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(1),
	datab => \COMP_CCD|count_start_seq\(0),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|data_out\(5),
	combout => \COMP_CCD|Selector2~0_combout\);

-- Location: FF_X22_Y10_N1
\COMP_CCD|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[5]~4_combout\,
	asdata => \COMP_CCD|Selector2~0_combout\,
	sload => \COMP_CCD|LessThan4~2_combout\,
	ena => \COMP_CCD|data_out[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(5));

-- Location: M9K_X27_Y8_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X15_Y11_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N20
\COMP_USB|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux67~0_combout\ = (\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\)) # (!\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	combout => \COMP_USB|Mux67~0_combout\);

-- Location: FF_X26_Y11_N21
\COMP_USB|data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux67~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[5]~reg0_q\);

-- Location: FF_X24_Y11_N19
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

-- Location: LCCOMB_X22_Y10_N12
\COMP_CCD|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector12~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & ((\COMP_CCD|count_start_seq\(0) & (\COMP_CCD|data_out\(6) & \COMP_CCD|count_start_seq\(1))) # (!\COMP_CCD|count_start_seq\(0) & ((!\COMP_CCD|count_start_seq\(1)))))) # 
-- (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(6),
	datab => \COMP_CCD|count_start_seq\(0),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector12~0_combout\);

-- Location: LCCOMB_X22_Y10_N6
\COMP_CCD|data_out[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[6]~5_combout\ = (\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[6]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~4_combout\,
	datab => \adc_data_in[6]~input_o\,
	datad => \COMP_CCD|Selector12~0_combout\,
	combout => \COMP_CCD|data_out[6]~5_combout\);

-- Location: LCCOMB_X22_Y10_N26
\COMP_CCD|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector1~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & ((\COMP_CCD|count_start_seq\(0) & ((\COMP_CCD|data_out\(6)) # (!\COMP_CCD|count_start_seq\(1)))) # (!\COMP_CCD|count_start_seq\(0) & ((\COMP_CCD|count_start_seq\(1)))))) # 
-- (!\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|data_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|data_out\(6),
	datab => \COMP_CCD|count_start_seq\(0),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector1~0_combout\);

-- Location: FF_X22_Y10_N7
\COMP_CCD|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[6]~5_combout\,
	asdata => \COMP_CCD|Selector1~0_combout\,
	sload => \COMP_CCD|LessThan4~2_combout\,
	ena => \COMP_CCD|data_out[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(6));

-- Location: M9K_X27_Y10_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y11_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N22
\COMP_USB|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux66~0_combout\ = (\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\)) # (!\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	combout => \COMP_USB|Mux66~0_combout\);

-- Location: FF_X26_Y11_N23
\COMP_USB|data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux66~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[6]~reg0_q\);

-- Location: FF_X26_Y11_N9
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

-- Location: LCCOMB_X23_Y10_N6
\COMP_CCD|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector11~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(0) & ((\COMP_CCD|data_out\(7)) # (!\COMP_CCD|count_start_seq\(1))))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|data_out\(7),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector11~0_combout\);

-- Location: LCCOMB_X22_Y10_N20
\COMP_CCD|data_out[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|data_out[7]~6_combout\ = (\COMP_CCD|LessThan5~4_combout\ & (\adc_data_in[7]~input_o\)) # (!\COMP_CCD|LessThan5~4_combout\ & ((\COMP_CCD|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan5~4_combout\,
	datab => \adc_data_in[7]~input_o\,
	datad => \COMP_CCD|Selector11~0_combout\,
	combout => \COMP_CCD|data_out[7]~6_combout\);

-- Location: LCCOMB_X23_Y10_N12
\COMP_CCD|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Selector0~0_combout\ = (\COMP_CCD|Equal5~9_combout\ & (\COMP_CCD|count_start_seq\(1) & ((\COMP_CCD|data_out\(7)) # (!\COMP_CCD|count_start_seq\(0))))) # (!\COMP_CCD|Equal5~9_combout\ & (((\COMP_CCD|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count_start_seq\(0),
	datab => \COMP_CCD|data_out\(7),
	datac => \COMP_CCD|Equal5~9_combout\,
	datad => \COMP_CCD|count_start_seq\(1),
	combout => \COMP_CCD|Selector0~0_combout\);

-- Location: FF_X22_Y10_N21
\COMP_CCD|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|data_out[7]~6_combout\,
	asdata => \COMP_CCD|Selector0~0_combout\,
	sload => \COMP_CCD|LessThan4~2_combout\,
	ena => \COMP_CCD|data_out[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|data_out\(7));

-- Location: M9K_X27_Y12_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y7_N0
\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dpram_sclk:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_cmc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 6162,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 6162,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \COMP_CCD|dram_we_a~q\,
	portbre => VCC,
	clk0 => \usb_clk~input_o\,
	clk1 => \usb_clk~input_o\,
	ena0 => \COMP_CCD|dram_we_a~q\,
	portadatain => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N30
\COMP_USB|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|Mux65~0_combout\ = (\COMP_USB|switch_write\(1) & (\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\)) # (!\COMP_USB|switch_write\(1) & ((\COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|switch_write\(1),
	datac => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \COMP_RAM|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	combout => \COMP_USB|Mux65~0_combout\);

-- Location: FF_X26_Y11_N31
\COMP_USB|data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|Mux65~0_combout\,
	ena => \COMP_USB|data[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|data[7]~reg0_q\);

-- Location: FF_X24_Y11_N25
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

-- Location: LCCOMB_X23_Y14_N0
\COMP_CCD|rog_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~2_combout\ = (\COMP_CCD|LessThan3~1_combout\) # ((\COMP_CCD|LessThan7~6_combout\ & (!\COMP_CCD|LessThan4~1_combout\ & \COMP_CCD|rog_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan7~6_combout\,
	datab => \COMP_CCD|LessThan4~1_combout\,
	datac => \COMP_CCD|rog_reg~0_combout\,
	datad => \COMP_CCD|LessThan3~1_combout\,
	combout => \COMP_CCD|rog_reg~2_combout\);

-- Location: LCCOMB_X26_Y12_N16
\COMP_CCD|rog_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_reg~5_combout\ = (\COMP_CCD|rog_reg~4_combout\ & (((\COMP_CCD|rog_reg~q\ & !\COMP_CCD|rog_reg~2_combout\)) # (!\COMP_CCD|rog_reg~1_combout\))) # (!\COMP_CCD|rog_reg~4_combout\ & (((\COMP_CCD|rog_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|rog_reg~1_combout\,
	datab => \COMP_CCD|rog_reg~4_combout\,
	datac => \COMP_CCD|rog_reg~q\,
	datad => \COMP_CCD|rog_reg~2_combout\,
	combout => \COMP_CCD|rog_reg~5_combout\);

-- Location: FF_X26_Y12_N17
\COMP_CCD|rog_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \COMP_CCD|rog_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|rog_reg~q\);

-- Location: LCCOMB_X26_Y11_N10
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

-- Location: LCCOMB_X23_Y11_N8
\COMP_USB|oe~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|oe~1_combout\ = (\COMP_CCD|line_ready_reg~2_combout\ & (\COMP_USB|ccd_ready_reg~q\)) # (!\COMP_CCD|line_ready_reg~2_combout\ & ((\COMP_USB|LessThan0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|line_ready_reg~2_combout\,
	datac => \COMP_USB|ccd_ready_reg~q\,
	datad => \COMP_USB|LessThan0~13_combout\,
	combout => \COMP_USB|oe~1_combout\);

-- Location: FF_X26_Y11_N11
\COMP_USB|read_delay_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|read_delay_reg~0_combout\,
	ena => \COMP_USB|oe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|read_delay_reg~q\);

-- Location: LCCOMB_X26_Y11_N28
\COMP_USB|oe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|oe~0_combout\ = (!\usb_rxf~input_o\ & ((\COMP_USB|oe~q\) # (!\COMP_USB|read_delay_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usb_rxf~input_o\,
	datac => \COMP_USB|oe~q\,
	datad => \COMP_USB|read_delay_reg~q\,
	combout => \COMP_USB|oe~0_combout\);

-- Location: FF_X26_Y11_N29
\COMP_USB|oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|oe~0_combout\,
	ena => \COMP_USB|oe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|oe~q\);

-- Location: LCCOMB_X23_Y11_N4
\COMP_USB|wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr~0_combout\ = (\COMP_USB|Mux0~0_combout\ & (\usb_rxf~input_o\ & (\COMP_USB|LessThan0~13_combout\ & !\usb_txe~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_USB|Mux0~0_combout\,
	datab => \usb_rxf~input_o\,
	datac => \COMP_USB|LessThan0~13_combout\,
	datad => \usb_txe~input_o\,
	combout => \COMP_USB|wr~0_combout\);

-- Location: FF_X23_Y11_N5
\COMP_USB|wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|wr~0_combout\,
	ena => \COMP_USB|oe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|wr~q\);

-- Location: LCCOMB_X23_Y11_N22
\COMP_USB|rd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|rd~0_combout\ = (!\usb_rxf~input_o\ & ((\COMP_USB|read_delay_reg~q\) # (\COMP_USB|rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_USB|read_delay_reg~q\,
	datac => \COMP_USB|rd~q\,
	datad => \usb_rxf~input_o\,
	combout => \COMP_USB|rd~0_combout\);

-- Location: FF_X23_Y11_N23
\COMP_USB|rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_usb_clk~input_o\,
	d => \COMP_USB|rd~0_combout\,
	ena => \COMP_USB|oe~1_combout\,
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


