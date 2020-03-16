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

-- DATE "03/10/2020 18:59:59"

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
	CLK : IN std_logic;
	RESET : IN std_logic;
	KEY_1 : IN std_logic;
	VGA_RED : BUFFER std_logic_vector(4 DOWNTO 0);
	VGA_GRN : BUFFER std_logic_vector(5 DOWNTO 0);
	VGA_BLU : BUFFER std_logic_vector(4 DOWNTO 0);
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	ccd_data : IN std_logic_vector(10 DOWNTO 0);
	clk_ccd : BUFFER std_logic;
	rog_ccd : BUFFER std_logic;
	clk_adc : BUFFER std_logic;
	key_add : IN std_logic;
	key_sub : IN std_logic;
	CLK_USB : IN std_logic;
	TXE_USB : IN std_logic;
	DATA_USB : BUFFER std_logic_vector(7 DOWNTO 0);
	OE_USB : BUFFER std_logic;
	WR_USB : BUFFER std_logic
	);
END monochr;

-- Design Ports Information
-- VGA_RED[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RED[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RED[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RED[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_RED[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GRN[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GRN[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GRN[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GRN[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GRN[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GRN[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLU[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLU[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLU[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLU[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLU[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ccd	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rog_ccd	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_adc	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_sub	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- RESET	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_USB	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TXE_USB	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_add	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ccd_data[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_1	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_KEY_1 : std_logic;
SIGNAL ww_VGA_RED : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_VGA_GRN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_VGA_BLU : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_ccd_data : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_clk_ccd : std_logic;
SIGNAL ww_rog_ccd : std_logic;
SIGNAL ww_clk_adc : std_logic;
SIGNAL ww_key_add : std_logic;
SIGNAL ww_key_sub : std_logic;
SIGNAL ww_CLK_USB : std_logic;
SIGNAL ww_TXE_USB : std_logic;
SIGNAL ww_DATA_USB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OE_USB : std_logic;
SIGNAL ww_WR_USB : std_logic;
SIGNAL \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \COMP_CCD|clk_adc_buf~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COMP_CCD|clk_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_add~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COMP_MEM|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ccd_data[0]~input_o\ : std_logic;
SIGNAL \key_sub~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[0]~11_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \COMP_VGA|hsync_r~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[3]~15_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[0]~12\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[1]~13_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[1]~14\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[2]~16_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[2]~17\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[3]~18_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[3]~19\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[4]~20_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[4]~21\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[5]~22_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[5]~23\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[6]~24_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[6]~25\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[7]~26_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[7]~27\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[8]~28_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[8]~29\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[9]~30_combout\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[9]~31\ : std_logic;
SIGNAL \COMP_VGA|x_cnt[10]~32_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~30_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~2\ : std_logic;
SIGNAL \COMP_VGA|Add1~3_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~8_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~4\ : std_logic;
SIGNAL \COMP_VGA|Add1~6\ : std_logic;
SIGNAL \COMP_VGA|Add1~9_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~21_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~10\ : std_logic;
SIGNAL \COMP_VGA|Add1~11_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~22_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~12\ : std_logic;
SIGNAL \COMP_VGA|Add1~13_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~23_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~14\ : std_logic;
SIGNAL \COMP_VGA|Add1~15_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~17_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~16\ : std_logic;
SIGNAL \COMP_VGA|Add1~18_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~20_combout\ : std_logic;
SIGNAL \COMP_VGA|always0~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal5~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~19\ : std_logic;
SIGNAL \COMP_VGA|Add1~24_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~26_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~25\ : std_logic;
SIGNAL \COMP_VGA|Add1~27_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~29_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal5~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~5_combout\ : std_logic;
SIGNAL \COMP_VGA|Add1~7_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal8~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vsync_de~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vsync_de~1_combout\ : std_logic;
SIGNAL \COMP_VGA|vsync_de~q\ : std_logic;
SIGNAL \COMP_VGA|hsync_r~1_combout\ : std_logic;
SIGNAL \COMP_VGA|hsync_de~0_combout\ : std_logic;
SIGNAL \COMP_VGA|hsync_de~1_combout\ : std_logic;
SIGNAL \COMP_VGA|hsync_de~q\ : std_logic;
SIGNAL \COMP_VGA|vga_dis_mode~0_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[0]~24_combout\ : std_logic;
SIGNAL \key_add~input_o\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[4]~36_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[12]~51\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[13]~52_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[13]~53\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[14]~54_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[14]~55\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[15]~56_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[15]~57\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[16]~58_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[16]~59\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[17]~60_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[17]~61\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[18]~62_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[18]~63\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[19]~64_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[19]~65\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[20]~66_combout\ : std_logic;
SIGNAL \COMP_VGA|LessThan2~1_combout\ : std_logic;
SIGNAL \COMP_VGA|LessThan2~2_combout\ : std_logic;
SIGNAL \COMP_VGA|LessThan2~3_combout\ : std_logic;
SIGNAL \COMP_VGA|LessThan2~4_combout\ : std_logic;
SIGNAL \COMP_VGA|LessThan2~5_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[20]~67\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[21]~68_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[21]~69\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[22]~70_combout\ : std_logic;
SIGNAL \COMP_VGA|LessThan2~0_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[22]~71\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[23]~72_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[4]~37_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[0]~25\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[1]~26_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[1]~27\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[2]~28_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[2]~29\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[3]~30_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[3]~31\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[4]~32_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[4]~33\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[5]~34_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[5]~35\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[6]~38_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[6]~39\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[7]~40_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[7]~41\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[8]~42_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[8]~43\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[9]~44_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[9]~45\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[10]~46_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[10]~47\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[11]~48_combout\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[11]~49\ : std_logic;
SIGNAL \COMP_VGA|key1_counter[12]~50_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal11~6_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal11~5_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal11~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal11~2_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal11~3_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal11~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal11~4_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_dis_mode[3]~1_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg[4]~40_combout\ : std_logic;
SIGNAL \COMP_VGA|Add4~1_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_dis_mode~4_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_dis_mode[3]~2_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_dis_mode~5_combout\ : std_logic;
SIGNAL \COMP_VGA|Add4~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_dis_mode~3_combout\ : std_logic;
SIGNAL \COMP_VGA|always5~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~13_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~56_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg[4]~41_combout\ : std_logic;
SIGNAL \COMP_VGA|always0~2_combout\ : std_logic;
SIGNAL \COMP_VGA|always0~1_combout\ : std_logic;
SIGNAL \COMP_VGA|always0~3_combout\ : std_logic;
SIGNAL \COMP_VGA|always0~4_combout\ : std_logic;
SIGNAL \COMP_VGA|always0~5_combout\ : std_logic;
SIGNAL \COMP_VGA|always0~6_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~67_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~1\ : std_logic;
SIGNAL \COMP_CCD|Add1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~68_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~3\ : std_logic;
SIGNAL \COMP_CCD|Add1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~69_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~5\ : std_logic;
SIGNAL \COMP_CCD|Add1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~70_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~7\ : std_logic;
SIGNAL \COMP_CCD|Add1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~71_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~9\ : std_logic;
SIGNAL \COMP_CCD|Add1~11\ : std_logic;
SIGNAL \COMP_CCD|Add1~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~73_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~13\ : std_logic;
SIGNAL \COMP_CCD|Add1~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~74_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~15\ : std_logic;
SIGNAL \COMP_CCD|Add1~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~75_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~17\ : std_logic;
SIGNAL \COMP_CCD|Add1~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~19\ : std_logic;
SIGNAL \COMP_CCD|Add1~21_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~23_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~22\ : std_logic;
SIGNAL \COMP_CCD|Add1~24_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~26_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~25\ : std_logic;
SIGNAL \COMP_CCD|Add1~27_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~76_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~28\ : std_logic;
SIGNAL \COMP_CCD|Add1~29_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~77_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~30\ : std_logic;
SIGNAL \COMP_CCD|Add1~31_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~78_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~32\ : std_logic;
SIGNAL \COMP_CCD|Add1~33_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~79_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~34\ : std_logic;
SIGNAL \COMP_CCD|Add1~35_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~80_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~36\ : std_logic;
SIGNAL \COMP_CCD|Add1~37_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~81_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~38\ : std_logic;
SIGNAL \COMP_CCD|Add1~39_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~82_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~40\ : std_logic;
SIGNAL \COMP_CCD|Add1~41_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~83_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~42\ : std_logic;
SIGNAL \COMP_CCD|Add1~43_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~84_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~44\ : std_logic;
SIGNAL \COMP_CCD|Add1~45_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~85_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~46\ : std_logic;
SIGNAL \COMP_CCD|Add1~47_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~86_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~48\ : std_logic;
SIGNAL \COMP_CCD|Add1~49_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~87_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~50\ : std_logic;
SIGNAL \COMP_CCD|Add1~51_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~88_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~52\ : std_logic;
SIGNAL \COMP_CCD|Add1~53_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~89_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~54\ : std_logic;
SIGNAL \COMP_CCD|Add1~55_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~90_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~56\ : std_logic;
SIGNAL \COMP_CCD|Add1~57_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~91_combout\ : std_logic;
SIGNAL \key_add~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|freq[0]~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~1_cout\ : std_logic;
SIGNAL \COMP_CCD|Add0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|freq[1]~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~3\ : std_logic;
SIGNAL \COMP_CCD|Add0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~5\ : std_logic;
SIGNAL \COMP_CCD|Add0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~7\ : std_logic;
SIGNAL \COMP_CCD|Add0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~9\ : std_logic;
SIGNAL \COMP_CCD|Add0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|freq[5]~2_combout\ : std_logic;
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
SIGNAL \COMP_CCD|Equal0~16_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~58\ : std_logic;
SIGNAL \COMP_CCD|Add1~59_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~92_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~60\ : std_logic;
SIGNAL \COMP_CCD|Add1~61_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~93_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~62\ : std_logic;
SIGNAL \COMP_CCD|Add1~63_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~94_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~64\ : std_logic;
SIGNAL \COMP_CCD|Add1~65_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~95_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~55\ : std_logic;
SIGNAL \COMP_CCD|Add0~56_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~57\ : std_logic;
SIGNAL \COMP_CCD|Add0~58_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~59\ : std_logic;
SIGNAL \COMP_CCD|Add0~60_combout\ : std_logic;
SIGNAL \COMP_CCD|Add0~61\ : std_logic;
SIGNAL \COMP_CCD|Add0~62_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~18_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~15_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~17_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~19_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~11_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~13_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~12_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~14_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal0~20_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~72_combout\ : std_logic;
SIGNAL \COMP_CCD|Add1~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~7_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~10_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~9_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~11_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_div~q\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_buf~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_buf~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_buf~q\ : std_logic;
SIGNAL \COMP_CCD|clk_div~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_div~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_div~q\ : std_logic;
SIGNAL \COMP_CCD|clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|Add2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[0]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~1\ : std_logic;
SIGNAL \COMP_CCD|Add2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[1]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~3\ : std_logic;
SIGNAL \COMP_CCD|Add2~4_combout\ : std_logic;
SIGNAL \COMP_CCD|Add2~11\ : std_logic;
SIGNAL \COMP_CCD|Add2~12_combout\ : std_logic;
SIGNAL \COMP_CCD|count~3_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[6]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~13\ : std_logic;
SIGNAL \COMP_CCD|Add2~14_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[7]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~15\ : std_logic;
SIGNAL \COMP_CCD|Add2~16_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[8]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~17\ : std_logic;
SIGNAL \COMP_CCD|Add2~18_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[9]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~19\ : std_logic;
SIGNAL \COMP_CCD|Add2~20_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[10]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~21\ : std_logic;
SIGNAL \COMP_CCD|Add2~22_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[11]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~23\ : std_logic;
SIGNAL \COMP_CCD|Add2~24_combout\ : std_logic;
SIGNAL \COMP_CCD|count~4_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[12]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~25\ : std_logic;
SIGNAL \COMP_CCD|Add2~26_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[13]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[13]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~27\ : std_logic;
SIGNAL \COMP_CCD|Add2~28_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[14]~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[14]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~29\ : std_logic;
SIGNAL \COMP_CCD|Add2~30_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[15]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~31\ : std_logic;
SIGNAL \COMP_CCD|Add2~32_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[16]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~33\ : std_logic;
SIGNAL \COMP_CCD|Add2~34_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[17]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~35\ : std_logic;
SIGNAL \COMP_CCD|Add2~36_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[18]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~37\ : std_logic;
SIGNAL \COMP_CCD|Add2~38_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[19]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~39\ : std_logic;
SIGNAL \COMP_CCD|Add2~40_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[20]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~41\ : std_logic;
SIGNAL \COMP_CCD|Add2~42_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[21]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~43\ : std_logic;
SIGNAL \COMP_CCD|Add2~44_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[22]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~45\ : std_logic;
SIGNAL \COMP_CCD|Add2~46_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[23]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~47\ : std_logic;
SIGNAL \COMP_CCD|Add2~48_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[24]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~49\ : std_logic;
SIGNAL \COMP_CCD|Add2~50_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[25]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~51\ : std_logic;
SIGNAL \COMP_CCD|Add2~52_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[26]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~53\ : std_logic;
SIGNAL \COMP_CCD|Add2~54_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[27]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~55\ : std_logic;
SIGNAL \COMP_CCD|Add2~56_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[28]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~57\ : std_logic;
SIGNAL \COMP_CCD|Add2~58_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[29]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~59\ : std_logic;
SIGNAL \COMP_CCD|Add2~60_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[30]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~61\ : std_logic;
SIGNAL \COMP_CCD|Add2~62_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[31]~q\ : std_logic;
SIGNAL \COMP_CCD|Equal5~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~2_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~3_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~4_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~5_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal5~2_combout\ : std_logic;
SIGNAL \COMP_CCD|count~0_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[2]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~5\ : std_logic;
SIGNAL \COMP_CCD|Add2~6_combout\ : std_logic;
SIGNAL \COMP_CCD|count~2_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[3]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~7\ : std_logic;
SIGNAL \COMP_CCD|Add2~8_combout\ : std_logic;
SIGNAL \COMP_CCD|count~1_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[4]~q\ : std_logic;
SIGNAL \COMP_CCD|Add2~9\ : std_logic;
SIGNAL \COMP_CCD|Add2~10_combout\ : std_logic;
SIGNAL \COMP_CCD|process_2:count[5]~q\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~6_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~1_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~0_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan0~1_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal4~0_combout\ : std_logic;
SIGNAL \COMP_CCD|Equal2~2_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_buf~0_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_buf~feeder_combout\ : std_logic;
SIGNAL \COMP_CCD|rog_buf~q\ : std_logic;
SIGNAL \mem_reg~0_combout\ : std_logic;
SIGNAL \mem_reg~q\ : std_logic;
SIGNAL \KEY_1~input_o\ : std_logic;
SIGNAL \COMP_CCD|clk_adc_buf~clkctrl_outclk\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \tmp~q\ : std_logic;
SIGNAL \cnt[0]~34_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \cnt[17]~99_combout\ : std_logic;
SIGNAL \cnt[17]~98_combout\ : std_logic;
SIGNAL \cnt[0]~35\ : std_logic;
SIGNAL \cnt[1]~36_combout\ : std_logic;
SIGNAL \cnt[1]~37\ : std_logic;
SIGNAL \cnt[2]~38_combout\ : std_logic;
SIGNAL \cnt[2]~39\ : std_logic;
SIGNAL \cnt[3]~40_combout\ : std_logic;
SIGNAL \cnt[3]~41\ : std_logic;
SIGNAL \cnt[4]~42_combout\ : std_logic;
SIGNAL \cnt[4]~43\ : std_logic;
SIGNAL \cnt[5]~44_combout\ : std_logic;
SIGNAL \cnt[5]~45\ : std_logic;
SIGNAL \cnt[6]~46_combout\ : std_logic;
SIGNAL \cnt[6]~47\ : std_logic;
SIGNAL \cnt[7]~48_combout\ : std_logic;
SIGNAL \cnt[7]~49\ : std_logic;
SIGNAL \cnt[8]~50_combout\ : std_logic;
SIGNAL \cnt[8]~51\ : std_logic;
SIGNAL \cnt[9]~52_combout\ : std_logic;
SIGNAL \cnt[9]~53\ : std_logic;
SIGNAL \cnt[10]~54_combout\ : std_logic;
SIGNAL \cnt[10]~55\ : std_logic;
SIGNAL \cnt[11]~56_combout\ : std_logic;
SIGNAL \cnt[11]~57\ : std_logic;
SIGNAL \cnt[12]~58_combout\ : std_logic;
SIGNAL \cnt[12]~59\ : std_logic;
SIGNAL \cnt[13]~60_combout\ : std_logic;
SIGNAL \cnt[13]~61\ : std_logic;
SIGNAL \cnt[14]~62_combout\ : std_logic;
SIGNAL \cnt[14]~63\ : std_logic;
SIGNAL \cnt[15]~64_combout\ : std_logic;
SIGNAL \cnt[15]~65\ : std_logic;
SIGNAL \cnt[16]~66_combout\ : std_logic;
SIGNAL \cnt[16]~67\ : std_logic;
SIGNAL \cnt[17]~68_combout\ : std_logic;
SIGNAL \cnt[17]~69\ : std_logic;
SIGNAL \cnt[18]~70_combout\ : std_logic;
SIGNAL \cnt[18]~71\ : std_logic;
SIGNAL \cnt[19]~72_combout\ : std_logic;
SIGNAL \cnt[19]~73\ : std_logic;
SIGNAL \cnt[20]~74_combout\ : std_logic;
SIGNAL \cnt[20]~75\ : std_logic;
SIGNAL \cnt[21]~76_combout\ : std_logic;
SIGNAL \cnt[21]~77\ : std_logic;
SIGNAL \cnt[22]~78_combout\ : std_logic;
SIGNAL \cnt[22]~79\ : std_logic;
SIGNAL \cnt[23]~80_combout\ : std_logic;
SIGNAL \cnt[23]~81\ : std_logic;
SIGNAL \cnt[24]~82_combout\ : std_logic;
SIGNAL \cnt[24]~83\ : std_logic;
SIGNAL \cnt[25]~84_combout\ : std_logic;
SIGNAL \cnt[25]~85\ : std_logic;
SIGNAL \cnt[26]~86_combout\ : std_logic;
SIGNAL \cnt[26]~87\ : std_logic;
SIGNAL \cnt[27]~88_combout\ : std_logic;
SIGNAL \cnt[27]~89\ : std_logic;
SIGNAL \cnt[28]~90_combout\ : std_logic;
SIGNAL \cnt[28]~91\ : std_logic;
SIGNAL \cnt[29]~92_combout\ : std_logic;
SIGNAL \cnt[29]~93\ : std_logic;
SIGNAL \cnt[30]~94_combout\ : std_logic;
SIGNAL \cnt[30]~95\ : std_logic;
SIGNAL \cnt[31]~96_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \wr_ena~2_combout\ : std_logic;
SIGNAL \wr_ena~3_combout\ : std_logic;
SIGNAL \wr_ena~q\ : std_logic;
SIGNAL \COMP_MEM|clk~combout\ : std_logic;
SIGNAL \COMP_MEM|clk~clkctrl_outclk\ : std_logic;
SIGNAL \ccd_data[1]~input_o\ : std_logic;
SIGNAL \COMP_MEM|addr[0]~10_combout\ : std_logic;
SIGNAL \COMP_VGA|memory_ack_reg~q\ : std_logic;
SIGNAL \COMP_MEM|cntrl~0_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[0]~11\ : std_logic;
SIGNAL \COMP_MEM|addr[1]~12_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[1]~13\ : std_logic;
SIGNAL \COMP_MEM|addr[2]~14_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[2]~15\ : std_logic;
SIGNAL \COMP_MEM|addr[3]~16_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[3]~17\ : std_logic;
SIGNAL \COMP_MEM|addr[4]~18_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[4]~19\ : std_logic;
SIGNAL \COMP_MEM|addr[5]~20_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[5]~21\ : std_logic;
SIGNAL \COMP_MEM|addr[6]~22_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[6]~23\ : std_logic;
SIGNAL \COMP_MEM|addr[7]~24_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[7]~25\ : std_logic;
SIGNAL \COMP_MEM|addr[8]~26_combout\ : std_logic;
SIGNAL \COMP_MEM|addr[8]~27\ : std_logic;
SIGNAL \COMP_MEM|addr[9]~28_combout\ : std_logic;
SIGNAL \ccd_data[2]~input_o\ : std_logic;
SIGNAL \ccd_data[3]~input_o\ : std_logic;
SIGNAL \ccd_data[4]~input_o\ : std_logic;
SIGNAL \ccd_data[5]~input_o\ : std_logic;
SIGNAL \ccd_data[6]~input_o\ : std_logic;
SIGNAL \ccd_data[7]~input_o\ : std_logic;
SIGNAL \ccd_data[8]~input_o\ : std_logic;
SIGNAL \ccd_data[10]~input_o\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \COMP_VGA|memory~8_combout\ : std_logic;
SIGNAL \ccd_data[9]~input_o\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \COMP_VGA|memory~9_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \COMP_VGA|memory~6_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \COMP_VGA|memory~7_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \COMP_VGA|memory~4_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \COMP_VGA|memory~5_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \COMP_VGA|memory~2_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \COMP_VGA|memory~3_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \COMP_VGA|memory~0_combout\ : std_logic;
SIGNAL \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \COMP_VGA|memory~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~1\ : std_logic;
SIGNAL \COMP_VGA|Add2~3\ : std_logic;
SIGNAL \COMP_VGA|Add2~5\ : std_logic;
SIGNAL \COMP_VGA|Add2~7\ : std_logic;
SIGNAL \COMP_VGA|Add2~9\ : std_logic;
SIGNAL \COMP_VGA|Add2~11\ : std_logic;
SIGNAL \COMP_VGA|Add2~13\ : std_logic;
SIGNAL \COMP_VGA|Add2~15\ : std_logic;
SIGNAL \COMP_VGA|Add2~17\ : std_logic;
SIGNAL \COMP_VGA|Add2~19\ : std_logic;
SIGNAL \COMP_VGA|Add2~20_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~18_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~16_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal10~5_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~2_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal10~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~12_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~14_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal10~3_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~8_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~10_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal10~2_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~4_combout\ : std_logic;
SIGNAL \COMP_VGA|Add2~6_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal10~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal10~4_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal10~6_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~1_combout\ : std_logic;
SIGNAL \COMP_VGA|always5~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~10_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~11_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~20_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r[0]~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~2_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~12_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~13_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~19_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~57_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~21_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r[1]~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~3_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~14_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~15_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~25_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~58_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~22_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r[2]~2_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~31_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~59_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~4_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~16_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~17_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~23_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r[3]~3_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~37_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~60_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~5_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~18_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~19_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r_reg~24_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_r[4]~4_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~6_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~7_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~8_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~9_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux10~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux10~1_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g[0]~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg[3]~11_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~10_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg[3]~12_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~13_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~14_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~10_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~27_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g[1]~1_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~15_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~11_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~12_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~16_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~17_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~28_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g[2]~2_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~18_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~13_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~19_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~20_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~29_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g[3]~3_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~21_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~15_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~14_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~22_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~23_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~30_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g[4]~4_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~24_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~16_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~25_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~26_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g_reg~31_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_g[5]~5_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~17_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~42_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~43_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~51_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b[0]~0_combout\ : std_logic;
SIGNAL \COMP_VGA|Mux4~18_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~44_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~45_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~52_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b[1]~1_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~46_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~47_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~53_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b[2]~2_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~48_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~54_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b[3]~3_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~49_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~50_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b_reg~55_combout\ : std_logic;
SIGNAL \COMP_VGA|vga_b[4]~4_combout\ : std_logic;
SIGNAL \COMP_VGA|hsync_r~2_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal1~1_combout\ : std_logic;
SIGNAL \COMP_VGA|Equal1~2_combout\ : std_logic;
SIGNAL \COMP_VGA|hsync_r~3_combout\ : std_logic;
SIGNAL \COMP_VGA|hsync_r~q\ : std_logic;
SIGNAL \COMP_VGA|Equal6~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vsync_r~0_combout\ : std_logic;
SIGNAL \COMP_VGA|vsync_r~1_combout\ : std_logic;
SIGNAL \COMP_VGA|vsync_r~q\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~7_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~8_combout\ : std_logic;
SIGNAL \COMP_CCD|LessThan1~9_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~0_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~1_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~2_combout\ : std_logic;
SIGNAL \COMP_CCD|clk_buf~q\ : std_logic;
SIGNAL \CLK_USB~input_o\ : std_logic;
SIGNAL \TXE_USB~input_o\ : std_logic;
SIGNAL \COMP_USB|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \COMP_USB|wr_cond~0_combout\ : std_logic;
SIGNAL \COMP_USB|wr_cond~q\ : std_logic;
SIGNAL \COMP_MEM|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \COMP_VGA|key1_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \COMP_VGA|vga_r_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \COMP_VGA|vga_g_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \COMP_VGA|vga_b_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \COMP_VGA|x_cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \COMP_USB|DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \COMP_VGA|bar_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_VGA|y_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \COMP_VGA|vga_dis_mode\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COMP_VGA|grid_data_1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \COMP_VGA|grid_data_2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \COMP_VGA|memory\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \COMP_CCD|freq\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_CCD|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COMP_MEM|ALT_INV_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_key_add~inputclkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_TXE_USB~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_wr_ena~q\ : std_logic;
SIGNAL \COMP_USB|ALT_INV_wr_cond~q\ : std_logic;
SIGNAL \COMP_CCD|ALT_INV_clk_adc_buf~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_KEY_1 <= KEY_1;
VGA_RED <= ww_VGA_RED;
VGA_GRN <= ww_VGA_GRN;
VGA_BLU <= ww_VGA_BLU;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_ccd_data <= ccd_data;
clk_ccd <= ww_clk_ccd;
rog_ccd <= ww_rog_ccd;
clk_adc <= ww_clk_adc;
ww_key_add <= key_add;
ww_key_sub <= key_sub;
ww_CLK_USB <= CLK_USB;
ww_TXE_USB <= TXE_USB;
DATA_USB <= ww_DATA_USB;
OE_USB <= ww_OE_USB;
WR_USB <= ww_WR_USB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\ccd_data[10]~input_o\ & \ccd_data[8]~input_o\ & \ccd_data[7]~input_o\ & \ccd_data[6]~input_o\ & \ccd_data[5]~input_o\ & \ccd_data[4]~input_o\ & \ccd_data[3]~input_o\ & 
\ccd_data[2]~input_o\ & \ccd_data[1]~input_o\);

\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\COMP_MEM|addr\(9) & \COMP_MEM|addr\(8) & \COMP_MEM|addr\(7) & \COMP_MEM|addr\(6) & \COMP_MEM|addr\(5) & \COMP_MEM|addr\(4) & \COMP_MEM|addr\(3) & 
\COMP_MEM|addr\(2) & \COMP_MEM|addr\(1) & \COMP_MEM|addr\(0));

\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \ccd_data[9]~input_o\);

\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\COMP_MEM|addr\(9) & \COMP_MEM|addr\(8) & \COMP_MEM|addr\(7) & \COMP_MEM|addr\(6) & \COMP_MEM|addr\(5) & \COMP_MEM|addr\(4) & \COMP_MEM|addr\(3) & 
\COMP_MEM|addr\(2) & \COMP_MEM|addr\(1) & \COMP_MEM|addr\(0));

\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\COMP_CCD|clk_adc_buf~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \COMP_CCD|clk_adc_buf~q\);

\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\COMP_CCD|clk_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \COMP_CCD|clk_div~q\);

\key_add~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \key_add~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\COMP_MEM|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \COMP_MEM|clk~combout\);
\COMP_MEM|ALT_INV_clk~clkctrl_outclk\ <= NOT \COMP_MEM|clk~clkctrl_outclk\;
\ALT_INV_key_add~inputclkctrl_outclk\ <= NOT \key_add~inputclkctrl_outclk\;
\COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\ <= NOT \COMP_CCD|clk_div~clkctrl_outclk\;
\COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\ <= NOT \COMP_CCD|clk_adc_buf~clkctrl_outclk\;
\ALT_INV_TXE_USB~input_o\ <= NOT \TXE_USB~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_wr_ena~q\ <= NOT \wr_ena~q\;
\COMP_USB|ALT_INV_wr_cond~q\ <= NOT \COMP_USB|wr_cond~q\;
\COMP_CCD|ALT_INV_clk_adc_buf~q\ <= NOT \COMP_CCD|clk_adc_buf~q\;

-- Location: IOOBUF_X0_Y9_N2
\VGA_RED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_r[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_RED(0));

-- Location: IOOBUF_X0_Y6_N16
\VGA_RED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_r[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_RED(1));

-- Location: IOOBUF_X11_Y0_N9
\VGA_RED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_r[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_RED(2));

-- Location: IOOBUF_X0_Y7_N2
\VGA_RED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_r[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_RED(3));

-- Location: IOOBUF_X0_Y6_N23
\VGA_RED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_r[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_RED(4));

-- Location: IOOBUF_X0_Y23_N16
\VGA_GRN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_g[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_GRN(0));

-- Location: IOOBUF_X0_Y19_N2
\VGA_GRN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_g[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_GRN(1));

-- Location: IOOBUF_X11_Y24_N23
\VGA_GRN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_g[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_GRN(2));

-- Location: IOOBUF_X9_Y0_N16
\VGA_GRN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_g[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_GRN(3));

-- Location: IOOBUF_X13_Y0_N16
\VGA_GRN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_g[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_GRN(4));

-- Location: IOOBUF_X0_Y10_N23
\VGA_GRN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_g[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_VGA_GRN(5));

-- Location: IOOBUF_X1_Y24_N2
\VGA_BLU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_b[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLU(0));

-- Location: IOOBUF_X0_Y23_N2
\VGA_BLU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_b[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLU(1));

-- Location: IOOBUF_X1_Y24_N9
\VGA_BLU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_b[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLU(2));

-- Location: IOOBUF_X0_Y23_N9
\VGA_BLU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_b[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLU(3));

-- Location: IOOBUF_X11_Y24_N16
\VGA_BLU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vga_b[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLU(4));

-- Location: IOOBUF_X0_Y9_N9
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|hsync_r~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X1_Y0_N23
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_VGA|vsync_r~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

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
	o => ww_clk_ccd);

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
	o => ww_rog_ccd);

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
	o => ww_clk_adc);

-- Location: IOOBUF_X0_Y7_N16
\DATA_USB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(0),
	devoe => ww_devoe,
	o => ww_DATA_USB(0));

-- Location: IOOBUF_X0_Y4_N23
\DATA_USB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(1),
	devoe => ww_devoe,
	o => ww_DATA_USB(1));

-- Location: IOOBUF_X0_Y4_N16
\DATA_USB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(2),
	devoe => ww_devoe,
	o => ww_DATA_USB(2));

-- Location: IOOBUF_X0_Y5_N23
\DATA_USB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(3),
	devoe => ww_devoe,
	o => ww_DATA_USB(3));

-- Location: IOOBUF_X16_Y0_N16
\DATA_USB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(4),
	devoe => ww_devoe,
	o => ww_DATA_USB(4));

-- Location: IOOBUF_X18_Y0_N9
\DATA_USB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(5),
	devoe => ww_devoe,
	o => ww_DATA_USB(5));

-- Location: IOOBUF_X18_Y0_N2
\DATA_USB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(6),
	devoe => ww_devoe,
	o => ww_DATA_USB(6));

-- Location: IOOBUF_X25_Y0_N9
\DATA_USB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|DATA\(7),
	devoe => ww_devoe,
	o => ww_DATA_USB(7));

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
	o => ww_OE_USB);

-- Location: IOOBUF_X16_Y0_N2
\WR_USB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_USB|ALT_INV_wr_cond~q\,
	devoe => ww_devoe,
	o => ww_WR_USB);

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

-- Location: PLL_1
\COMP_VGA|pll_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 5,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 10,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 13,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
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
	m => 13,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3267,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 192,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y5_N4
\COMP_VGA|x_cnt[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[0]~11_combout\ = \COMP_VGA|x_cnt\(0) $ (VCC)
-- \COMP_VGA|x_cnt[0]~12\ = CARRY(\COMP_VGA|x_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|x_cnt\(0),
	datad => VCC,
	combout => \COMP_VGA|x_cnt[0]~11_combout\,
	cout => \COMP_VGA|x_cnt[0]~12\);

-- Location: IOIBUF_X34_Y2_N22
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X6_Y5_N0
\COMP_VGA|hsync_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|hsync_r~0_combout\ = (!\COMP_VGA|x_cnt\(1) & (!\COMP_VGA|x_cnt\(2) & (!\COMP_VGA|x_cnt\(9) & !\COMP_VGA|x_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(1),
	datab => \COMP_VGA|x_cnt\(2),
	datac => \COMP_VGA|x_cnt\(9),
	datad => \COMP_VGA|x_cnt\(4),
	combout => \COMP_VGA|hsync_r~0_combout\);

-- Location: LCCOMB_X6_Y5_N30
\COMP_VGA|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal1~0_combout\ = (!\COMP_VGA|x_cnt\(3) & (!\COMP_VGA|x_cnt\(7) & (!\COMP_VGA|x_cnt\(5) & \COMP_VGA|hsync_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(3),
	datab => \COMP_VGA|x_cnt\(7),
	datac => \COMP_VGA|x_cnt\(5),
	datad => \COMP_VGA|hsync_r~0_combout\,
	combout => \COMP_VGA|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y3_N12
\COMP_VGA|x_cnt[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[3]~15_combout\ = ((!\COMP_VGA|Equal0~0_combout\ & \COMP_VGA|Equal1~0_combout\)) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Equal0~0_combout\,
	datac => \RESET~input_o\,
	datad => \COMP_VGA|Equal1~0_combout\,
	combout => \COMP_VGA|x_cnt[3]~15_combout\);

-- Location: FF_X6_Y5_N5
\COMP_VGA|x_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[0]~11_combout\,
	asdata => VCC,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(0));

-- Location: LCCOMB_X6_Y5_N6
\COMP_VGA|x_cnt[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[1]~13_combout\ = (\COMP_VGA|x_cnt\(1) & (!\COMP_VGA|x_cnt[0]~12\)) # (!\COMP_VGA|x_cnt\(1) & ((\COMP_VGA|x_cnt[0]~12\) # (GND)))
-- \COMP_VGA|x_cnt[1]~14\ = CARRY((!\COMP_VGA|x_cnt[0]~12\) # (!\COMP_VGA|x_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(1),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[0]~12\,
	combout => \COMP_VGA|x_cnt[1]~13_combout\,
	cout => \COMP_VGA|x_cnt[1]~14\);

-- Location: LCCOMB_X6_Y4_N14
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

-- Location: FF_X6_Y5_N7
\COMP_VGA|x_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[1]~13_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(1));

-- Location: LCCOMB_X6_Y5_N8
\COMP_VGA|x_cnt[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[2]~16_combout\ = (\COMP_VGA|x_cnt\(2) & (\COMP_VGA|x_cnt[1]~14\ $ (GND))) # (!\COMP_VGA|x_cnt\(2) & (!\COMP_VGA|x_cnt[1]~14\ & VCC))
-- \COMP_VGA|x_cnt[2]~17\ = CARRY((\COMP_VGA|x_cnt\(2) & !\COMP_VGA|x_cnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|x_cnt\(2),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[1]~14\,
	combout => \COMP_VGA|x_cnt[2]~16_combout\,
	cout => \COMP_VGA|x_cnt[2]~17\);

-- Location: FF_X6_Y5_N9
\COMP_VGA|x_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[2]~16_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(2));

-- Location: LCCOMB_X6_Y5_N10
\COMP_VGA|x_cnt[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[3]~18_combout\ = (\COMP_VGA|x_cnt\(3) & (!\COMP_VGA|x_cnt[2]~17\)) # (!\COMP_VGA|x_cnt\(3) & ((\COMP_VGA|x_cnt[2]~17\) # (GND)))
-- \COMP_VGA|x_cnt[3]~19\ = CARRY((!\COMP_VGA|x_cnt[2]~17\) # (!\COMP_VGA|x_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(3),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[2]~17\,
	combout => \COMP_VGA|x_cnt[3]~18_combout\,
	cout => \COMP_VGA|x_cnt[3]~19\);

-- Location: FF_X6_Y5_N11
\COMP_VGA|x_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[3]~18_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(3));

-- Location: LCCOMB_X6_Y5_N12
\COMP_VGA|x_cnt[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[4]~20_combout\ = (\COMP_VGA|x_cnt\(4) & (\COMP_VGA|x_cnt[3]~19\ $ (GND))) # (!\COMP_VGA|x_cnt\(4) & (!\COMP_VGA|x_cnt[3]~19\ & VCC))
-- \COMP_VGA|x_cnt[4]~21\ = CARRY((\COMP_VGA|x_cnt\(4) & !\COMP_VGA|x_cnt[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(4),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[3]~19\,
	combout => \COMP_VGA|x_cnt[4]~20_combout\,
	cout => \COMP_VGA|x_cnt[4]~21\);

-- Location: FF_X6_Y5_N13
\COMP_VGA|x_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[4]~20_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(4));

-- Location: LCCOMB_X6_Y5_N14
\COMP_VGA|x_cnt[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[5]~22_combout\ = (\COMP_VGA|x_cnt\(5) & (!\COMP_VGA|x_cnt[4]~21\)) # (!\COMP_VGA|x_cnt\(5) & ((\COMP_VGA|x_cnt[4]~21\) # (GND)))
-- \COMP_VGA|x_cnt[5]~23\ = CARRY((!\COMP_VGA|x_cnt[4]~21\) # (!\COMP_VGA|x_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|x_cnt\(5),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[4]~21\,
	combout => \COMP_VGA|x_cnt[5]~22_combout\,
	cout => \COMP_VGA|x_cnt[5]~23\);

-- Location: FF_X6_Y5_N15
\COMP_VGA|x_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[5]~22_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(5));

-- Location: LCCOMB_X6_Y5_N16
\COMP_VGA|x_cnt[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[6]~24_combout\ = (\COMP_VGA|x_cnt\(6) & (\COMP_VGA|x_cnt[5]~23\ $ (GND))) # (!\COMP_VGA|x_cnt\(6) & (!\COMP_VGA|x_cnt[5]~23\ & VCC))
-- \COMP_VGA|x_cnt[6]~25\ = CARRY((\COMP_VGA|x_cnt\(6) & !\COMP_VGA|x_cnt[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|x_cnt\(6),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[5]~23\,
	combout => \COMP_VGA|x_cnt[6]~24_combout\,
	cout => \COMP_VGA|x_cnt[6]~25\);

-- Location: FF_X6_Y5_N17
\COMP_VGA|x_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[6]~24_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(6));

-- Location: LCCOMB_X6_Y5_N18
\COMP_VGA|x_cnt[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[7]~26_combout\ = (\COMP_VGA|x_cnt\(7) & (!\COMP_VGA|x_cnt[6]~25\)) # (!\COMP_VGA|x_cnt\(7) & ((\COMP_VGA|x_cnt[6]~25\) # (GND)))
-- \COMP_VGA|x_cnt[7]~27\ = CARRY((!\COMP_VGA|x_cnt[6]~25\) # (!\COMP_VGA|x_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|x_cnt\(7),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[6]~25\,
	combout => \COMP_VGA|x_cnt[7]~26_combout\,
	cout => \COMP_VGA|x_cnt[7]~27\);

-- Location: FF_X6_Y5_N19
\COMP_VGA|x_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[7]~26_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(7));

-- Location: LCCOMB_X6_Y5_N20
\COMP_VGA|x_cnt[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[8]~28_combout\ = (\COMP_VGA|x_cnt\(8) & (\COMP_VGA|x_cnt[7]~27\ $ (GND))) # (!\COMP_VGA|x_cnt\(8) & (!\COMP_VGA|x_cnt[7]~27\ & VCC))
-- \COMP_VGA|x_cnt[8]~29\ = CARRY((\COMP_VGA|x_cnt\(8) & !\COMP_VGA|x_cnt[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|x_cnt\(8),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[7]~27\,
	combout => \COMP_VGA|x_cnt[8]~28_combout\,
	cout => \COMP_VGA|x_cnt[8]~29\);

-- Location: FF_X6_Y5_N21
\COMP_VGA|x_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[8]~28_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(8));

-- Location: LCCOMB_X6_Y5_N22
\COMP_VGA|x_cnt[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[9]~30_combout\ = (\COMP_VGA|x_cnt\(9) & (!\COMP_VGA|x_cnt[8]~29\)) # (!\COMP_VGA|x_cnt\(9) & ((\COMP_VGA|x_cnt[8]~29\) # (GND)))
-- \COMP_VGA|x_cnt[9]~31\ = CARRY((!\COMP_VGA|x_cnt[8]~29\) # (!\COMP_VGA|x_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(9),
	datad => VCC,
	cin => \COMP_VGA|x_cnt[8]~29\,
	combout => \COMP_VGA|x_cnt[9]~30_combout\,
	cout => \COMP_VGA|x_cnt[9]~31\);

-- Location: FF_X6_Y5_N23
\COMP_VGA|x_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[9]~30_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(9));

-- Location: LCCOMB_X6_Y5_N24
\COMP_VGA|x_cnt[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|x_cnt[10]~32_combout\ = \COMP_VGA|x_cnt\(10) $ (!\COMP_VGA|x_cnt[9]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|x_cnt\(10),
	cin => \COMP_VGA|x_cnt[9]~31\,
	combout => \COMP_VGA|x_cnt[10]~32_combout\);

-- Location: FF_X6_Y5_N25
\COMP_VGA|x_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|x_cnt[10]~32_combout\,
	asdata => \~GND~combout\,
	sload => \COMP_VGA|x_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|x_cnt\(10));

-- Location: LCCOMB_X6_Y5_N26
\COMP_VGA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal0~0_combout\ = (((\COMP_VGA|x_cnt\(0)) # (!\COMP_VGA|x_cnt\(6))) # (!\COMP_VGA|x_cnt\(8))) # (!\COMP_VGA|x_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(10),
	datab => \COMP_VGA|x_cnt\(8),
	datac => \COMP_VGA|x_cnt\(0),
	datad => \COMP_VGA|x_cnt\(6),
	combout => \COMP_VGA|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y3_N2
\COMP_VGA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal0~1_combout\ = (\COMP_VGA|Equal0~0_combout\) # (!\COMP_VGA|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|Equal0~0_combout\,
	datad => \COMP_VGA|Equal1~0_combout\,
	combout => \COMP_VGA|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y4_N8
\COMP_VGA|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~1_combout\ = (\COMP_VGA|y_cnt\(0) & (\COMP_VGA|Equal0~1_combout\ $ (GND))) # (!\COMP_VGA|y_cnt\(0) & (!\COMP_VGA|Equal0~1_combout\ & VCC))
-- \COMP_VGA|Add1~2\ = CARRY((\COMP_VGA|y_cnt\(0) & !\COMP_VGA|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(0),
	datab => \COMP_VGA|Equal0~1_combout\,
	datad => VCC,
	combout => \COMP_VGA|Add1~1_combout\,
	cout => \COMP_VGA|Add1~2\);

-- Location: LCCOMB_X8_Y4_N30
\COMP_VGA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~30_combout\ = (\COMP_VGA|Add1~1_combout\) # (!\COMP_VGA|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|Add1~1_combout\,
	datad => \COMP_VGA|Add1~0_combout\,
	combout => \COMP_VGA|Add1~30_combout\);

-- Location: FF_X8_Y4_N31
\COMP_VGA|y_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(0));

-- Location: LCCOMB_X8_Y4_N10
\COMP_VGA|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~3_combout\ = (\COMP_VGA|y_cnt\(1) & (!\COMP_VGA|Add1~2\)) # (!\COMP_VGA|y_cnt\(1) & ((\COMP_VGA|Add1~2\) # (GND)))
-- \COMP_VGA|Add1~4\ = CARRY((!\COMP_VGA|Add1~2\) # (!\COMP_VGA|y_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(1),
	datad => VCC,
	cin => \COMP_VGA|Add1~2\,
	combout => \COMP_VGA|Add1~3_combout\,
	cout => \COMP_VGA|Add1~4\);

-- Location: LCCOMB_X7_Y4_N16
\COMP_VGA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~8_combout\ = (\COMP_VGA|Add1~3_combout\ & \COMP_VGA|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|Add1~3_combout\,
	datad => \COMP_VGA|Add1~0_combout\,
	combout => \COMP_VGA|Add1~8_combout\);

-- Location: FF_X7_Y4_N17
\COMP_VGA|y_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(1));

-- Location: LCCOMB_X8_Y4_N12
\COMP_VGA|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~5_combout\ = (\COMP_VGA|y_cnt\(2) & (\COMP_VGA|Add1~4\ $ (GND))) # (!\COMP_VGA|y_cnt\(2) & (!\COMP_VGA|Add1~4\ & VCC))
-- \COMP_VGA|Add1~6\ = CARRY((\COMP_VGA|y_cnt\(2) & !\COMP_VGA|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(2),
	datad => VCC,
	cin => \COMP_VGA|Add1~4\,
	combout => \COMP_VGA|Add1~5_combout\,
	cout => \COMP_VGA|Add1~6\);

-- Location: LCCOMB_X8_Y4_N14
\COMP_VGA|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~9_combout\ = (\COMP_VGA|y_cnt\(3) & (!\COMP_VGA|Add1~6\)) # (!\COMP_VGA|y_cnt\(3) & ((\COMP_VGA|Add1~6\) # (GND)))
-- \COMP_VGA|Add1~10\ = CARRY((!\COMP_VGA|Add1~6\) # (!\COMP_VGA|y_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(3),
	datad => VCC,
	cin => \COMP_VGA|Add1~6\,
	combout => \COMP_VGA|Add1~9_combout\,
	cout => \COMP_VGA|Add1~10\);

-- Location: LCCOMB_X8_Y4_N6
\COMP_VGA|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~21_combout\ = (\COMP_VGA|Add1~9_combout\ & \COMP_VGA|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|Add1~9_combout\,
	datad => \COMP_VGA|Add1~0_combout\,
	combout => \COMP_VGA|Add1~21_combout\);

-- Location: FF_X8_Y4_N7
\COMP_VGA|y_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(3));

-- Location: LCCOMB_X8_Y4_N16
\COMP_VGA|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~11_combout\ = (\COMP_VGA|y_cnt\(4) & (\COMP_VGA|Add1~10\ $ (GND))) # (!\COMP_VGA|y_cnt\(4) & (!\COMP_VGA|Add1~10\ & VCC))
-- \COMP_VGA|Add1~12\ = CARRY((\COMP_VGA|y_cnt\(4) & !\COMP_VGA|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(4),
	datad => VCC,
	cin => \COMP_VGA|Add1~10\,
	combout => \COMP_VGA|Add1~11_combout\,
	cout => \COMP_VGA|Add1~12\);

-- Location: LCCOMB_X8_Y4_N28
\COMP_VGA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~22_combout\ = (\COMP_VGA|Add1~0_combout\ & \COMP_VGA|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|Add1~0_combout\,
	datad => \COMP_VGA|Add1~11_combout\,
	combout => \COMP_VGA|Add1~22_combout\);

-- Location: FF_X8_Y4_N29
\COMP_VGA|y_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(4));

-- Location: LCCOMB_X8_Y4_N18
\COMP_VGA|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~13_combout\ = (\COMP_VGA|y_cnt\(5) & (!\COMP_VGA|Add1~12\)) # (!\COMP_VGA|y_cnt\(5) & ((\COMP_VGA|Add1~12\) # (GND)))
-- \COMP_VGA|Add1~14\ = CARRY((!\COMP_VGA|Add1~12\) # (!\COMP_VGA|y_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(5),
	datad => VCC,
	cin => \COMP_VGA|Add1~12\,
	combout => \COMP_VGA|Add1~13_combout\,
	cout => \COMP_VGA|Add1~14\);

-- Location: LCCOMB_X7_Y5_N12
\COMP_VGA|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~23_combout\ = (\COMP_VGA|Add1~0_combout\ & \COMP_VGA|Add1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|Add1~0_combout\,
	datad => \COMP_VGA|Add1~13_combout\,
	combout => \COMP_VGA|Add1~23_combout\);

-- Location: FF_X7_Y5_N13
\COMP_VGA|y_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(5));

-- Location: LCCOMB_X8_Y4_N20
\COMP_VGA|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~15_combout\ = (\COMP_VGA|y_cnt\(6) & (\COMP_VGA|Add1~14\ $ (GND))) # (!\COMP_VGA|y_cnt\(6) & (!\COMP_VGA|Add1~14\ & VCC))
-- \COMP_VGA|Add1~16\ = CARRY((\COMP_VGA|y_cnt\(6) & !\COMP_VGA|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(6),
	datad => VCC,
	cin => \COMP_VGA|Add1~14\,
	combout => \COMP_VGA|Add1~15_combout\,
	cout => \COMP_VGA|Add1~16\);

-- Location: LCCOMB_X8_Y4_N2
\COMP_VGA|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~17_combout\ = (\COMP_VGA|Add1~0_combout\ & \COMP_VGA|Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|Add1~0_combout\,
	datad => \COMP_VGA|Add1~15_combout\,
	combout => \COMP_VGA|Add1~17_combout\);

-- Location: FF_X8_Y4_N3
\COMP_VGA|y_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(6));

-- Location: LCCOMB_X8_Y4_N22
\COMP_VGA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~18_combout\ = (\COMP_VGA|y_cnt\(7) & (!\COMP_VGA|Add1~16\)) # (!\COMP_VGA|y_cnt\(7) & ((\COMP_VGA|Add1~16\) # (GND)))
-- \COMP_VGA|Add1~19\ = CARRY((!\COMP_VGA|Add1~16\) # (!\COMP_VGA|y_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(7),
	datad => VCC,
	cin => \COMP_VGA|Add1~16\,
	combout => \COMP_VGA|Add1~18_combout\,
	cout => \COMP_VGA|Add1~19\);

-- Location: LCCOMB_X8_Y4_N0
\COMP_VGA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~20_combout\ = (\COMP_VGA|Add1~18_combout\ & \COMP_VGA|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|Add1~18_combout\,
	datad => \COMP_VGA|Add1~0_combout\,
	combout => \COMP_VGA|Add1~20_combout\);

-- Location: FF_X8_Y4_N1
\COMP_VGA|y_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(7));

-- Location: LCCOMB_X8_Y3_N10
\COMP_VGA|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always0~0_combout\ = (!\COMP_VGA|y_cnt\(7) & !\COMP_VGA|y_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(7),
	datad => \COMP_VGA|y_cnt\(6),
	combout => \COMP_VGA|always0~0_combout\);

-- Location: LCCOMB_X9_Y4_N10
\COMP_VGA|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal5~0_combout\ = (\COMP_VGA|always0~0_combout\ & (!\COMP_VGA|y_cnt\(3) & (\COMP_VGA|y_cnt\(1) & !\COMP_VGA|y_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|always0~0_combout\,
	datab => \COMP_VGA|y_cnt\(3),
	datac => \COMP_VGA|y_cnt\(1),
	datad => \COMP_VGA|y_cnt\(4),
	combout => \COMP_VGA|Equal5~0_combout\);

-- Location: LCCOMB_X8_Y4_N24
\COMP_VGA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~24_combout\ = (\COMP_VGA|y_cnt\(8) & (\COMP_VGA|Add1~19\ $ (GND))) # (!\COMP_VGA|y_cnt\(8) & (!\COMP_VGA|Add1~19\ & VCC))
-- \COMP_VGA|Add1~25\ = CARRY((\COMP_VGA|y_cnt\(8) & !\COMP_VGA|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(8),
	datad => VCC,
	cin => \COMP_VGA|Add1~19\,
	combout => \COMP_VGA|Add1~24_combout\,
	cout => \COMP_VGA|Add1~25\);

-- Location: LCCOMB_X9_Y4_N4
\COMP_VGA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~26_combout\ = (\COMP_VGA|Add1~0_combout\ & \COMP_VGA|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|Add1~0_combout\,
	datad => \COMP_VGA|Add1~24_combout\,
	combout => \COMP_VGA|Add1~26_combout\);

-- Location: FF_X9_Y4_N5
\COMP_VGA|y_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(8));

-- Location: LCCOMB_X8_Y4_N26
\COMP_VGA|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~27_combout\ = \COMP_VGA|y_cnt\(9) $ (\COMP_VGA|Add1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(9),
	cin => \COMP_VGA|Add1~25\,
	combout => \COMP_VGA|Add1~27_combout\);

-- Location: LCCOMB_X9_Y4_N14
\COMP_VGA|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~29_combout\ = (\COMP_VGA|Add1~0_combout\ & \COMP_VGA|Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Add1~0_combout\,
	datac => \COMP_VGA|Add1~27_combout\,
	combout => \COMP_VGA|Add1~29_combout\);

-- Location: FF_X9_Y4_N15
\COMP_VGA|y_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(9));

-- Location: LCCOMB_X9_Y4_N20
\COMP_VGA|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal5~1_combout\ = (\COMP_VGA|Equal5~0_combout\ & (\COMP_VGA|y_cnt\(9) & (\COMP_VGA|y_cnt\(8) & \COMP_VGA|y_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Equal5~0_combout\,
	datab => \COMP_VGA|y_cnt\(9),
	datac => \COMP_VGA|y_cnt\(8),
	datad => \COMP_VGA|y_cnt\(5),
	combout => \COMP_VGA|Equal5~1_combout\);

-- Location: LCCOMB_X9_Y4_N22
\COMP_VGA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~0_combout\ = (\RESET~input_o\ & (((\COMP_VGA|y_cnt\(0)) # (!\COMP_VGA|y_cnt\(2))) # (!\COMP_VGA|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Equal5~1_combout\,
	datab => \COMP_VGA|y_cnt\(2),
	datac => \RESET~input_o\,
	datad => \COMP_VGA|y_cnt\(0),
	combout => \COMP_VGA|Add1~0_combout\);

-- Location: LCCOMB_X8_Y4_N4
\COMP_VGA|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add1~7_combout\ = (\COMP_VGA|Add1~0_combout\ & \COMP_VGA|Add1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|Add1~0_combout\,
	datad => \COMP_VGA|Add1~5_combout\,
	combout => \COMP_VGA|Add1~7_combout\);

-- Location: FF_X8_Y4_N5
\COMP_VGA|y_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Add1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|y_cnt\(2));

-- Location: LCCOMB_X9_Y4_N18
\COMP_VGA|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal8~0_combout\ = (!\COMP_VGA|y_cnt\(8) & (!\COMP_VGA|y_cnt\(9) & \COMP_VGA|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(8),
	datac => \COMP_VGA|y_cnt\(9),
	datad => \COMP_VGA|Equal5~0_combout\,
	combout => \COMP_VGA|Equal8~0_combout\);

-- Location: LCCOMB_X9_Y4_N28
\COMP_VGA|vsync_de~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vsync_de~0_combout\ = (\COMP_VGA|y_cnt\(0) & (\COMP_VGA|vsync_de~q\ $ (((\COMP_VGA|y_cnt\(5) & \COMP_VGA|Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vsync_de~q\,
	datab => \COMP_VGA|y_cnt\(5),
	datac => \COMP_VGA|y_cnt\(0),
	datad => \COMP_VGA|Equal8~0_combout\,
	combout => \COMP_VGA|vsync_de~0_combout\);

-- Location: LCCOMB_X8_Y3_N4
\COMP_VGA|vsync_de~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vsync_de~1_combout\ = (\COMP_VGA|y_cnt\(2) & (((\COMP_VGA|vsync_de~q\)))) # (!\COMP_VGA|y_cnt\(2) & ((\COMP_VGA|vsync_de~0_combout\ & ((!\COMP_VGA|Equal5~1_combout\) # (!\COMP_VGA|vsync_de~q\))) # (!\COMP_VGA|vsync_de~0_combout\ & 
-- (\COMP_VGA|vsync_de~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(2),
	datab => \COMP_VGA|vsync_de~0_combout\,
	datac => \COMP_VGA|vsync_de~q\,
	datad => \COMP_VGA|Equal5~1_combout\,
	combout => \COMP_VGA|vsync_de~1_combout\);

-- Location: FF_X8_Y3_N5
\COMP_VGA|vsync_de\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vsync_de~1_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vsync_de~q\);

-- Location: LCCOMB_X6_Y5_N2
\COMP_VGA|hsync_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|hsync_r~1_combout\ = (\COMP_VGA|x_cnt\(3) & (\COMP_VGA|hsync_r~0_combout\ & (!\COMP_VGA|x_cnt\(0) & !\COMP_VGA|x_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(3),
	datab => \COMP_VGA|hsync_r~0_combout\,
	datac => \COMP_VGA|x_cnt\(0),
	datad => \COMP_VGA|x_cnt\(6),
	combout => \COMP_VGA|hsync_r~1_combout\);

-- Location: LCCOMB_X7_Y5_N10
\COMP_VGA|hsync_de~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|hsync_de~0_combout\ = (\COMP_VGA|x_cnt\(5) & (\COMP_VGA|x_cnt\(8) & !\COMP_VGA|x_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(5),
	datab => \COMP_VGA|x_cnt\(8),
	datad => \COMP_VGA|x_cnt\(7),
	combout => \COMP_VGA|hsync_de~0_combout\);

-- Location: LCCOMB_X7_Y5_N0
\COMP_VGA|hsync_de~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|hsync_de~1_combout\ = (\COMP_VGA|hsync_r~1_combout\ & ((\COMP_VGA|hsync_de~0_combout\ & (!\COMP_VGA|x_cnt\(10))) # (!\COMP_VGA|hsync_de~0_combout\ & ((\COMP_VGA|hsync_de~q\))))) # (!\COMP_VGA|hsync_r~1_combout\ & (((\COMP_VGA|hsync_de~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|hsync_r~1_combout\,
	datab => \COMP_VGA|x_cnt\(10),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|hsync_de~0_combout\,
	combout => \COMP_VGA|hsync_de~1_combout\);

-- Location: FF_X7_Y5_N1
\COMP_VGA|hsync_de\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|hsync_de~1_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|hsync_de~q\);

-- Location: LCCOMB_X6_Y6_N0
\COMP_VGA|vga_dis_mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_dis_mode~0_combout\ = (!\COMP_VGA|vga_dis_mode\(0) & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|vga_dis_mode\(0),
	datad => \RESET~input_o\,
	combout => \COMP_VGA|vga_dis_mode~0_combout\);

-- Location: LCCOMB_X1_Y10_N8
\COMP_VGA|key1_counter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[0]~24_combout\ = \COMP_VGA|key1_counter\(0) $ (VCC)
-- \COMP_VGA|key1_counter[0]~25\ = CARRY(\COMP_VGA|key1_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(0),
	datad => VCC,
	combout => \COMP_VGA|key1_counter[0]~24_combout\,
	cout => \COMP_VGA|key1_counter[0]~25\);

-- Location: IOIBUF_X0_Y11_N15
\key_add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_add,
	o => \key_add~input_o\);

-- Location: LCCOMB_X1_Y9_N26
\COMP_VGA|key1_counter[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[4]~36_combout\ = (\key_add~input_o\) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \key_add~input_o\,
	combout => \COMP_VGA|key1_counter[4]~36_combout\);

-- Location: LCCOMB_X1_Y9_N0
\COMP_VGA|key1_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[12]~50_combout\ = (\COMP_VGA|key1_counter\(12) & (\COMP_VGA|key1_counter[11]~49\ $ (GND))) # (!\COMP_VGA|key1_counter\(12) & (!\COMP_VGA|key1_counter[11]~49\ & VCC))
-- \COMP_VGA|key1_counter[12]~51\ = CARRY((\COMP_VGA|key1_counter\(12) & !\COMP_VGA|key1_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(12),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[11]~49\,
	combout => \COMP_VGA|key1_counter[12]~50_combout\,
	cout => \COMP_VGA|key1_counter[12]~51\);

-- Location: LCCOMB_X1_Y9_N2
\COMP_VGA|key1_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[13]~52_combout\ = (\COMP_VGA|key1_counter\(13) & (!\COMP_VGA|key1_counter[12]~51\)) # (!\COMP_VGA|key1_counter\(13) & ((\COMP_VGA|key1_counter[12]~51\) # (GND)))
-- \COMP_VGA|key1_counter[13]~53\ = CARRY((!\COMP_VGA|key1_counter[12]~51\) # (!\COMP_VGA|key1_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(13),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[12]~51\,
	combout => \COMP_VGA|key1_counter[13]~52_combout\,
	cout => \COMP_VGA|key1_counter[13]~53\);

-- Location: FF_X1_Y9_N3
\COMP_VGA|key1_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[13]~52_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(13));

-- Location: LCCOMB_X1_Y9_N4
\COMP_VGA|key1_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[14]~54_combout\ = (\COMP_VGA|key1_counter\(14) & (\COMP_VGA|key1_counter[13]~53\ $ (GND))) # (!\COMP_VGA|key1_counter\(14) & (!\COMP_VGA|key1_counter[13]~53\ & VCC))
-- \COMP_VGA|key1_counter[14]~55\ = CARRY((\COMP_VGA|key1_counter\(14) & !\COMP_VGA|key1_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(14),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[13]~53\,
	combout => \COMP_VGA|key1_counter[14]~54_combout\,
	cout => \COMP_VGA|key1_counter[14]~55\);

-- Location: FF_X1_Y9_N5
\COMP_VGA|key1_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[14]~54_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(14));

-- Location: LCCOMB_X1_Y9_N6
\COMP_VGA|key1_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[15]~56_combout\ = (\COMP_VGA|key1_counter\(15) & (!\COMP_VGA|key1_counter[14]~55\)) # (!\COMP_VGA|key1_counter\(15) & ((\COMP_VGA|key1_counter[14]~55\) # (GND)))
-- \COMP_VGA|key1_counter[15]~57\ = CARRY((!\COMP_VGA|key1_counter[14]~55\) # (!\COMP_VGA|key1_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(15),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[14]~55\,
	combout => \COMP_VGA|key1_counter[15]~56_combout\,
	cout => \COMP_VGA|key1_counter[15]~57\);

-- Location: FF_X1_Y9_N7
\COMP_VGA|key1_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[15]~56_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(15));

-- Location: LCCOMB_X1_Y9_N8
\COMP_VGA|key1_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[16]~58_combout\ = (\COMP_VGA|key1_counter\(16) & (\COMP_VGA|key1_counter[15]~57\ $ (GND))) # (!\COMP_VGA|key1_counter\(16) & (!\COMP_VGA|key1_counter[15]~57\ & VCC))
-- \COMP_VGA|key1_counter[16]~59\ = CARRY((\COMP_VGA|key1_counter\(16) & !\COMP_VGA|key1_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(16),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[15]~57\,
	combout => \COMP_VGA|key1_counter[16]~58_combout\,
	cout => \COMP_VGA|key1_counter[16]~59\);

-- Location: FF_X1_Y9_N9
\COMP_VGA|key1_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[16]~58_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(16));

-- Location: LCCOMB_X1_Y9_N10
\COMP_VGA|key1_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[17]~60_combout\ = (\COMP_VGA|key1_counter\(17) & (!\COMP_VGA|key1_counter[16]~59\)) # (!\COMP_VGA|key1_counter\(17) & ((\COMP_VGA|key1_counter[16]~59\) # (GND)))
-- \COMP_VGA|key1_counter[17]~61\ = CARRY((!\COMP_VGA|key1_counter[16]~59\) # (!\COMP_VGA|key1_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(17),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[16]~59\,
	combout => \COMP_VGA|key1_counter[17]~60_combout\,
	cout => \COMP_VGA|key1_counter[17]~61\);

-- Location: FF_X1_Y9_N11
\COMP_VGA|key1_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[17]~60_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(17));

-- Location: LCCOMB_X1_Y9_N12
\COMP_VGA|key1_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[18]~62_combout\ = (\COMP_VGA|key1_counter\(18) & (\COMP_VGA|key1_counter[17]~61\ $ (GND))) # (!\COMP_VGA|key1_counter\(18) & (!\COMP_VGA|key1_counter[17]~61\ & VCC))
-- \COMP_VGA|key1_counter[18]~63\ = CARRY((\COMP_VGA|key1_counter\(18) & !\COMP_VGA|key1_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(18),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[17]~61\,
	combout => \COMP_VGA|key1_counter[18]~62_combout\,
	cout => \COMP_VGA|key1_counter[18]~63\);

-- Location: FF_X1_Y9_N13
\COMP_VGA|key1_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[18]~62_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(18));

-- Location: LCCOMB_X1_Y9_N14
\COMP_VGA|key1_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[19]~64_combout\ = (\COMP_VGA|key1_counter\(19) & (!\COMP_VGA|key1_counter[18]~63\)) # (!\COMP_VGA|key1_counter\(19) & ((\COMP_VGA|key1_counter[18]~63\) # (GND)))
-- \COMP_VGA|key1_counter[19]~65\ = CARRY((!\COMP_VGA|key1_counter[18]~63\) # (!\COMP_VGA|key1_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(19),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[18]~63\,
	combout => \COMP_VGA|key1_counter[19]~64_combout\,
	cout => \COMP_VGA|key1_counter[19]~65\);

-- Location: FF_X1_Y9_N15
\COMP_VGA|key1_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[19]~64_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(19));

-- Location: LCCOMB_X1_Y9_N16
\COMP_VGA|key1_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[20]~66_combout\ = (\COMP_VGA|key1_counter\(20) & (\COMP_VGA|key1_counter[19]~65\ $ (GND))) # (!\COMP_VGA|key1_counter\(20) & (!\COMP_VGA|key1_counter[19]~65\ & VCC))
-- \COMP_VGA|key1_counter[20]~67\ = CARRY((\COMP_VGA|key1_counter\(20) & !\COMP_VGA|key1_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(20),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[19]~65\,
	combout => \COMP_VGA|key1_counter[20]~66_combout\,
	cout => \COMP_VGA|key1_counter[20]~67\);

-- Location: FF_X1_Y9_N17
\COMP_VGA|key1_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[20]~66_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(20));

-- Location: LCCOMB_X1_Y10_N0
\COMP_VGA|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|LessThan2~1_combout\ = (\COMP_VGA|key1_counter\(8)) # ((\COMP_VGA|key1_counter\(7) & ((\COMP_VGA|key1_counter\(5)) # (\COMP_VGA|key1_counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(5),
	datab => \COMP_VGA|key1_counter\(6),
	datac => \COMP_VGA|key1_counter\(7),
	datad => \COMP_VGA|key1_counter\(8),
	combout => \COMP_VGA|LessThan2~1_combout\);

-- Location: LCCOMB_X1_Y10_N6
\COMP_VGA|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|LessThan2~2_combout\ = (\COMP_VGA|key1_counter\(11) & (\COMP_VGA|LessThan2~1_combout\ & (\COMP_VGA|key1_counter\(9) & \COMP_VGA|key1_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(11),
	datab => \COMP_VGA|LessThan2~1_combout\,
	datac => \COMP_VGA|key1_counter\(9),
	datad => \COMP_VGA|key1_counter\(10),
	combout => \COMP_VGA|LessThan2~2_combout\);

-- Location: LCCOMB_X4_Y9_N18
\COMP_VGA|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|LessThan2~3_combout\ = (\COMP_VGA|key1_counter\(15)) # ((\COMP_VGA|key1_counter\(13) & ((\COMP_VGA|key1_counter\(12)) # (\COMP_VGA|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(12),
	datab => \COMP_VGA|key1_counter\(13),
	datac => \COMP_VGA|key1_counter\(15),
	datad => \COMP_VGA|LessThan2~2_combout\,
	combout => \COMP_VGA|LessThan2~3_combout\);

-- Location: LCCOMB_X4_Y9_N12
\COMP_VGA|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|LessThan2~4_combout\ = (\COMP_VGA|key1_counter\(16) & (\COMP_VGA|key1_counter\(17) & ((\COMP_VGA|key1_counter\(14)) # (\COMP_VGA|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(16),
	datab => \COMP_VGA|key1_counter\(14),
	datac => \COMP_VGA|key1_counter\(17),
	datad => \COMP_VGA|LessThan2~3_combout\,
	combout => \COMP_VGA|LessThan2~4_combout\);

-- Location: LCCOMB_X4_Y9_N22
\COMP_VGA|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|LessThan2~5_combout\ = (\COMP_VGA|key1_counter\(19)) # ((\COMP_VGA|key1_counter\(18)) # ((\COMP_VGA|key1_counter\(20)) # (\COMP_VGA|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(19),
	datab => \COMP_VGA|key1_counter\(18),
	datac => \COMP_VGA|key1_counter\(20),
	datad => \COMP_VGA|LessThan2~4_combout\,
	combout => \COMP_VGA|LessThan2~5_combout\);

-- Location: LCCOMB_X1_Y9_N18
\COMP_VGA|key1_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[21]~68_combout\ = (\COMP_VGA|key1_counter\(21) & (!\COMP_VGA|key1_counter[20]~67\)) # (!\COMP_VGA|key1_counter\(21) & ((\COMP_VGA|key1_counter[20]~67\) # (GND)))
-- \COMP_VGA|key1_counter[21]~69\ = CARRY((!\COMP_VGA|key1_counter[20]~67\) # (!\COMP_VGA|key1_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(21),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[20]~67\,
	combout => \COMP_VGA|key1_counter[21]~68_combout\,
	cout => \COMP_VGA|key1_counter[21]~69\);

-- Location: FF_X1_Y9_N19
\COMP_VGA|key1_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[21]~68_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(21));

-- Location: LCCOMB_X1_Y9_N20
\COMP_VGA|key1_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[22]~70_combout\ = (\COMP_VGA|key1_counter\(22) & (\COMP_VGA|key1_counter[21]~69\ $ (GND))) # (!\COMP_VGA|key1_counter\(22) & (!\COMP_VGA|key1_counter[21]~69\ & VCC))
-- \COMP_VGA|key1_counter[22]~71\ = CARRY((\COMP_VGA|key1_counter\(22) & !\COMP_VGA|key1_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(22),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[21]~69\,
	combout => \COMP_VGA|key1_counter[22]~70_combout\,
	cout => \COMP_VGA|key1_counter[22]~71\);

-- Location: FF_X1_Y9_N21
\COMP_VGA|key1_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[22]~70_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(22));

-- Location: LCCOMB_X1_Y9_N24
\COMP_VGA|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|LessThan2~0_combout\ = (\COMP_VGA|key1_counter\(22) & \COMP_VGA|key1_counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(22),
	datac => \COMP_VGA|key1_counter\(21),
	combout => \COMP_VGA|LessThan2~0_combout\);

-- Location: LCCOMB_X1_Y9_N22
\COMP_VGA|key1_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[23]~72_combout\ = \COMP_VGA|key1_counter\(23) $ (\COMP_VGA|key1_counter[22]~71\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(23),
	cin => \COMP_VGA|key1_counter[22]~71\,
	combout => \COMP_VGA|key1_counter[23]~72_combout\);

-- Location: FF_X1_Y9_N23
\COMP_VGA|key1_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[23]~72_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(23));

-- Location: LCCOMB_X1_Y9_N30
\COMP_VGA|key1_counter[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[4]~37_combout\ = (\COMP_VGA|key1_counter[4]~36_combout\) # ((!\COMP_VGA|key1_counter\(23) & ((!\COMP_VGA|LessThan2~0_combout\) # (!\COMP_VGA|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|LessThan2~5_combout\,
	datab => \COMP_VGA|LessThan2~0_combout\,
	datac => \COMP_VGA|key1_counter[4]~36_combout\,
	datad => \COMP_VGA|key1_counter\(23),
	combout => \COMP_VGA|key1_counter[4]~37_combout\);

-- Location: FF_X1_Y10_N9
\COMP_VGA|key1_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[0]~24_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(0));

-- Location: LCCOMB_X1_Y10_N10
\COMP_VGA|key1_counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[1]~26_combout\ = (\COMP_VGA|key1_counter\(1) & (!\COMP_VGA|key1_counter[0]~25\)) # (!\COMP_VGA|key1_counter\(1) & ((\COMP_VGA|key1_counter[0]~25\) # (GND)))
-- \COMP_VGA|key1_counter[1]~27\ = CARRY((!\COMP_VGA|key1_counter[0]~25\) # (!\COMP_VGA|key1_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(1),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[0]~25\,
	combout => \COMP_VGA|key1_counter[1]~26_combout\,
	cout => \COMP_VGA|key1_counter[1]~27\);

-- Location: FF_X1_Y10_N11
\COMP_VGA|key1_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[1]~26_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(1));

-- Location: LCCOMB_X1_Y10_N12
\COMP_VGA|key1_counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[2]~28_combout\ = (\COMP_VGA|key1_counter\(2) & (\COMP_VGA|key1_counter[1]~27\ $ (GND))) # (!\COMP_VGA|key1_counter\(2) & (!\COMP_VGA|key1_counter[1]~27\ & VCC))
-- \COMP_VGA|key1_counter[2]~29\ = CARRY((\COMP_VGA|key1_counter\(2) & !\COMP_VGA|key1_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(2),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[1]~27\,
	combout => \COMP_VGA|key1_counter[2]~28_combout\,
	cout => \COMP_VGA|key1_counter[2]~29\);

-- Location: FF_X1_Y10_N13
\COMP_VGA|key1_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[2]~28_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(2));

-- Location: LCCOMB_X1_Y10_N14
\COMP_VGA|key1_counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[3]~30_combout\ = (\COMP_VGA|key1_counter\(3) & (!\COMP_VGA|key1_counter[2]~29\)) # (!\COMP_VGA|key1_counter\(3) & ((\COMP_VGA|key1_counter[2]~29\) # (GND)))
-- \COMP_VGA|key1_counter[3]~31\ = CARRY((!\COMP_VGA|key1_counter[2]~29\) # (!\COMP_VGA|key1_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(3),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[2]~29\,
	combout => \COMP_VGA|key1_counter[3]~30_combout\,
	cout => \COMP_VGA|key1_counter[3]~31\);

-- Location: FF_X1_Y10_N15
\COMP_VGA|key1_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[3]~30_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(3));

-- Location: LCCOMB_X1_Y10_N16
\COMP_VGA|key1_counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[4]~32_combout\ = (\COMP_VGA|key1_counter\(4) & (\COMP_VGA|key1_counter[3]~31\ $ (GND))) # (!\COMP_VGA|key1_counter\(4) & (!\COMP_VGA|key1_counter[3]~31\ & VCC))
-- \COMP_VGA|key1_counter[4]~33\ = CARRY((\COMP_VGA|key1_counter\(4) & !\COMP_VGA|key1_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(4),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[3]~31\,
	combout => \COMP_VGA|key1_counter[4]~32_combout\,
	cout => \COMP_VGA|key1_counter[4]~33\);

-- Location: FF_X1_Y10_N17
\COMP_VGA|key1_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[4]~32_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(4));

-- Location: LCCOMB_X1_Y10_N18
\COMP_VGA|key1_counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[5]~34_combout\ = (\COMP_VGA|key1_counter\(5) & (!\COMP_VGA|key1_counter[4]~33\)) # (!\COMP_VGA|key1_counter\(5) & ((\COMP_VGA|key1_counter[4]~33\) # (GND)))
-- \COMP_VGA|key1_counter[5]~35\ = CARRY((!\COMP_VGA|key1_counter[4]~33\) # (!\COMP_VGA|key1_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(5),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[4]~33\,
	combout => \COMP_VGA|key1_counter[5]~34_combout\,
	cout => \COMP_VGA|key1_counter[5]~35\);

-- Location: FF_X1_Y10_N19
\COMP_VGA|key1_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[5]~34_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(5));

-- Location: LCCOMB_X1_Y10_N20
\COMP_VGA|key1_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[6]~38_combout\ = (\COMP_VGA|key1_counter\(6) & (\COMP_VGA|key1_counter[5]~35\ $ (GND))) # (!\COMP_VGA|key1_counter\(6) & (!\COMP_VGA|key1_counter[5]~35\ & VCC))
-- \COMP_VGA|key1_counter[6]~39\ = CARRY((\COMP_VGA|key1_counter\(6) & !\COMP_VGA|key1_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(6),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[5]~35\,
	combout => \COMP_VGA|key1_counter[6]~38_combout\,
	cout => \COMP_VGA|key1_counter[6]~39\);

-- Location: FF_X1_Y10_N21
\COMP_VGA|key1_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[6]~38_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(6));

-- Location: LCCOMB_X1_Y10_N22
\COMP_VGA|key1_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[7]~40_combout\ = (\COMP_VGA|key1_counter\(7) & (!\COMP_VGA|key1_counter[6]~39\)) # (!\COMP_VGA|key1_counter\(7) & ((\COMP_VGA|key1_counter[6]~39\) # (GND)))
-- \COMP_VGA|key1_counter[7]~41\ = CARRY((!\COMP_VGA|key1_counter[6]~39\) # (!\COMP_VGA|key1_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(7),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[6]~39\,
	combout => \COMP_VGA|key1_counter[7]~40_combout\,
	cout => \COMP_VGA|key1_counter[7]~41\);

-- Location: FF_X1_Y10_N23
\COMP_VGA|key1_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[7]~40_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(7));

-- Location: LCCOMB_X1_Y10_N24
\COMP_VGA|key1_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[8]~42_combout\ = (\COMP_VGA|key1_counter\(8) & (\COMP_VGA|key1_counter[7]~41\ $ (GND))) # (!\COMP_VGA|key1_counter\(8) & (!\COMP_VGA|key1_counter[7]~41\ & VCC))
-- \COMP_VGA|key1_counter[8]~43\ = CARRY((\COMP_VGA|key1_counter\(8) & !\COMP_VGA|key1_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(8),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[7]~41\,
	combout => \COMP_VGA|key1_counter[8]~42_combout\,
	cout => \COMP_VGA|key1_counter[8]~43\);

-- Location: FF_X1_Y10_N25
\COMP_VGA|key1_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[8]~42_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(8));

-- Location: LCCOMB_X1_Y10_N26
\COMP_VGA|key1_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[9]~44_combout\ = (\COMP_VGA|key1_counter\(9) & (!\COMP_VGA|key1_counter[8]~43\)) # (!\COMP_VGA|key1_counter\(9) & ((\COMP_VGA|key1_counter[8]~43\) # (GND)))
-- \COMP_VGA|key1_counter[9]~45\ = CARRY((!\COMP_VGA|key1_counter[8]~43\) # (!\COMP_VGA|key1_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(9),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[8]~43\,
	combout => \COMP_VGA|key1_counter[9]~44_combout\,
	cout => \COMP_VGA|key1_counter[9]~45\);

-- Location: FF_X1_Y10_N27
\COMP_VGA|key1_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[9]~44_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(9));

-- Location: LCCOMB_X1_Y10_N28
\COMP_VGA|key1_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[10]~46_combout\ = (\COMP_VGA|key1_counter\(10) & (\COMP_VGA|key1_counter[9]~45\ $ (GND))) # (!\COMP_VGA|key1_counter\(10) & (!\COMP_VGA|key1_counter[9]~45\ & VCC))
-- \COMP_VGA|key1_counter[10]~47\ = CARRY((\COMP_VGA|key1_counter\(10) & !\COMP_VGA|key1_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|key1_counter\(10),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[9]~45\,
	combout => \COMP_VGA|key1_counter[10]~46_combout\,
	cout => \COMP_VGA|key1_counter[10]~47\);

-- Location: FF_X1_Y10_N29
\COMP_VGA|key1_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[10]~46_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(10));

-- Location: LCCOMB_X1_Y10_N30
\COMP_VGA|key1_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|key1_counter[11]~48_combout\ = (\COMP_VGA|key1_counter\(11) & (!\COMP_VGA|key1_counter[10]~47\)) # (!\COMP_VGA|key1_counter\(11) & ((\COMP_VGA|key1_counter[10]~47\) # (GND)))
-- \COMP_VGA|key1_counter[11]~49\ = CARRY((!\COMP_VGA|key1_counter[10]~47\) # (!\COMP_VGA|key1_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(11),
	datad => VCC,
	cin => \COMP_VGA|key1_counter[10]~47\,
	combout => \COMP_VGA|key1_counter[11]~48_combout\,
	cout => \COMP_VGA|key1_counter[11]~49\);

-- Location: FF_X1_Y10_N31
\COMP_VGA|key1_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[11]~48_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(11));

-- Location: FF_X1_Y9_N1
\COMP_VGA|key1_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|key1_counter[12]~50_combout\,
	sclr => \COMP_VGA|key1_counter[4]~36_combout\,
	ena => \COMP_VGA|key1_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|key1_counter\(12));

-- Location: LCCOMB_X2_Y9_N16
\COMP_VGA|Equal11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal11~6_combout\ = (\COMP_VGA|key1_counter\(12)) # (((\COMP_VGA|key1_counter\(8)) # (\COMP_VGA|key1_counter\(23))) # (!\COMP_VGA|key1_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(12),
	datab => \COMP_VGA|key1_counter\(13),
	datac => \COMP_VGA|key1_counter\(8),
	datad => \COMP_VGA|key1_counter\(23),
	combout => \COMP_VGA|Equal11~6_combout\);

-- Location: LCCOMB_X1_Y10_N2
\COMP_VGA|Equal11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal11~5_combout\ = (((!\COMP_VGA|key1_counter\(2)) # (!\COMP_VGA|key1_counter\(3))) # (!\COMP_VGA|key1_counter\(4))) # (!\COMP_VGA|key1_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(7),
	datab => \COMP_VGA|key1_counter\(4),
	datac => \COMP_VGA|key1_counter\(3),
	datad => \COMP_VGA|key1_counter\(2),
	combout => \COMP_VGA|Equal11~5_combout\);

-- Location: LCCOMB_X1_Y9_N28
\COMP_VGA|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal11~1_combout\ = (((!\COMP_VGA|key1_counter\(17)) # (!\COMP_VGA|key1_counter\(16))) # (!\COMP_VGA|key1_counter\(22))) # (!\COMP_VGA|key1_counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(21),
	datab => \COMP_VGA|key1_counter\(22),
	datac => \COMP_VGA|key1_counter\(16),
	datad => \COMP_VGA|key1_counter\(17),
	combout => \COMP_VGA|Equal11~1_combout\);

-- Location: LCCOMB_X1_Y10_N4
\COMP_VGA|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal11~2_combout\ = (((!\COMP_VGA|key1_counter\(10)) # (!\COMP_VGA|key1_counter\(9))) # (!\COMP_VGA|key1_counter\(0))) # (!\COMP_VGA|key1_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(11),
	datab => \COMP_VGA|key1_counter\(0),
	datac => \COMP_VGA|key1_counter\(9),
	datad => \COMP_VGA|key1_counter\(10),
	combout => \COMP_VGA|Equal11~2_combout\);

-- Location: LCCOMB_X4_Y9_N30
\COMP_VGA|Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal11~3_combout\ = (\COMP_VGA|key1_counter\(19)) # ((\COMP_VGA|key1_counter\(18)) # ((\COMP_VGA|key1_counter\(20)) # (!\COMP_VGA|key1_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(19),
	datab => \COMP_VGA|key1_counter\(18),
	datac => \COMP_VGA|key1_counter\(20),
	datad => \COMP_VGA|key1_counter\(1),
	combout => \COMP_VGA|Equal11~3_combout\);

-- Location: LCCOMB_X4_Y9_N20
\COMP_VGA|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal11~0_combout\ = (\COMP_VGA|key1_counter\(6)) # ((\COMP_VGA|key1_counter\(15)) # ((\COMP_VGA|key1_counter\(14)) # (\COMP_VGA|key1_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|key1_counter\(6),
	datab => \COMP_VGA|key1_counter\(15),
	datac => \COMP_VGA|key1_counter\(14),
	datad => \COMP_VGA|key1_counter\(5),
	combout => \COMP_VGA|Equal11~0_combout\);

-- Location: LCCOMB_X4_Y9_N24
\COMP_VGA|Equal11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal11~4_combout\ = (\COMP_VGA|Equal11~1_combout\) # ((\COMP_VGA|Equal11~2_combout\) # ((\COMP_VGA|Equal11~3_combout\) # (\COMP_VGA|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Equal11~1_combout\,
	datab => \COMP_VGA|Equal11~2_combout\,
	datac => \COMP_VGA|Equal11~3_combout\,
	datad => \COMP_VGA|Equal11~0_combout\,
	combout => \COMP_VGA|Equal11~4_combout\);

-- Location: LCCOMB_X3_Y9_N20
\COMP_VGA|vga_dis_mode[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_dis_mode[3]~1_combout\ = ((!\COMP_VGA|Equal11~6_combout\ & (!\COMP_VGA|Equal11~5_combout\ & !\COMP_VGA|Equal11~4_combout\))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Equal11~6_combout\,
	datab => \COMP_VGA|Equal11~5_combout\,
	datac => \RESET~input_o\,
	datad => \COMP_VGA|Equal11~4_combout\,
	combout => \COMP_VGA|vga_dis_mode[3]~1_combout\);

-- Location: FF_X6_Y6_N1
\COMP_VGA|vga_dis_mode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_dis_mode~0_combout\,
	ena => \COMP_VGA|vga_dis_mode[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_dis_mode\(0));

-- Location: LCCOMB_X8_Y7_N8
\COMP_VGA|vga_b_reg[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg[4]~40_combout\ = (\COMP_VGA|vga_dis_mode\(0) & !\COMP_VGA|vga_dis_mode\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_dis_mode\(3),
	combout => \COMP_VGA|vga_b_reg[4]~40_combout\);

-- Location: LCCOMB_X5_Y6_N0
\COMP_VGA|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add4~1_combout\ = \COMP_VGA|vga_dis_mode\(2) $ (((!\COMP_VGA|vga_dis_mode\(1)) # (!\COMP_VGA|vga_dis_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|vga_dis_mode\(1),
	combout => \COMP_VGA|Add4~1_combout\);

-- Location: LCCOMB_X7_Y6_N28
\COMP_VGA|vga_dis_mode~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_dis_mode~4_combout\ = (\RESET~input_o\ & ((!\COMP_VGA|vga_dis_mode[3]~2_combout\) # (!\COMP_VGA|Add4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Add4~1_combout\,
	datab => \RESET~input_o\,
	datad => \COMP_VGA|vga_dis_mode[3]~2_combout\,
	combout => \COMP_VGA|vga_dis_mode~4_combout\);

-- Location: FF_X7_Y6_N29
\COMP_VGA|vga_dis_mode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_dis_mode~4_combout\,
	ena => \COMP_VGA|vga_dis_mode[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_dis_mode\(2));

-- Location: LCCOMB_X7_Y6_N24
\COMP_VGA|vga_dis_mode[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_dis_mode[3]~2_combout\ = (\RESET~input_o\ & (((\COMP_VGA|vga_dis_mode\(1)) # (\COMP_VGA|vga_dis_mode\(2))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datab => \RESET~input_o\,
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_dis_mode[3]~2_combout\);

-- Location: LCCOMB_X7_Y6_N30
\COMP_VGA|vga_dis_mode~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_dis_mode~5_combout\ = (\COMP_VGA|vga_dis_mode[3]~2_combout\ & (\COMP_VGA|vga_dis_mode\(0) $ (\COMP_VGA|vga_dis_mode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode[3]~2_combout\,
	combout => \COMP_VGA|vga_dis_mode~5_combout\);

-- Location: FF_X7_Y6_N31
\COMP_VGA|vga_dis_mode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_dis_mode~5_combout\,
	ena => \COMP_VGA|vga_dis_mode[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_dis_mode\(1));

-- Location: LCCOMB_X7_Y6_N22
\COMP_VGA|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add4~0_combout\ = \COMP_VGA|vga_dis_mode\(3) $ ((((\COMP_VGA|vga_dis_mode\(2)) # (!\COMP_VGA|vga_dis_mode\(0))) # (!\COMP_VGA|vga_dis_mode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_dis_mode\(3),
	combout => \COMP_VGA|Add4~0_combout\);

-- Location: LCCOMB_X7_Y6_N10
\COMP_VGA|vga_dis_mode~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_dis_mode~3_combout\ = (\RESET~input_o\ & ((!\COMP_VGA|vga_dis_mode[3]~2_combout\) # (!\COMP_VGA|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \COMP_VGA|Add4~0_combout\,
	datad => \COMP_VGA|vga_dis_mode[3]~2_combout\,
	combout => \COMP_VGA|vga_dis_mode~3_combout\);

-- Location: FF_X7_Y6_N11
\COMP_VGA|vga_dis_mode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_dis_mode~3_combout\,
	ena => \COMP_VGA|vga_dis_mode[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_dis_mode\(3));

-- Location: LCCOMB_X4_Y6_N6
\COMP_VGA|always5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always5~0_combout\ = \COMP_VGA|y_cnt\(5) $ (!\COMP_VGA|x_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(5),
	datad => \COMP_VGA|x_cnt\(5),
	combout => \COMP_VGA|always5~0_combout\);

-- Location: FF_X4_Y6_N7
\COMP_VGA|grid_data_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|grid_data_1\(0));

-- Location: LCCOMB_X7_Y6_N14
\COMP_VGA|vga_b_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~13_combout\ = (\COMP_VGA|vga_dis_mode\(2) & (((!\COMP_VGA|vga_dis_mode\(1))))) # (!\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|x_cnt\(2)))) # (!\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|grid_data_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|grid_data_1\(0),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|x_cnt\(2),
	combout => \COMP_VGA|vga_b_reg~13_combout\);

-- Location: LCCOMB_X8_Y7_N10
\COMP_VGA|vga_b_reg~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~56_combout\ = (\COMP_VGA|vga_dis_mode\(3) & (\COMP_VGA|vga_dis_mode\(0) & \COMP_VGA|vga_b_reg~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_b_reg~13_combout\,
	combout => \COMP_VGA|vga_b_reg~56_combout\);

-- Location: LCCOMB_X8_Y7_N2
\COMP_VGA|vga_b_reg[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg[4]~41_combout\ = (!\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|vga_dis_mode\(1)) # (!\COMP_VGA|vga_dis_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode\(3),
	combout => \COMP_VGA|vga_b_reg[4]~41_combout\);

-- Location: LCCOMB_X9_Y4_N26
\COMP_VGA|always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always0~2_combout\ = (!\COMP_VGA|y_cnt\(1) & (!\COMP_VGA|y_cnt\(3) & (!\COMP_VGA|y_cnt\(2) & !\COMP_VGA|y_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(1),
	datab => \COMP_VGA|y_cnt\(3),
	datac => \COMP_VGA|y_cnt\(2),
	datad => \COMP_VGA|y_cnt\(4),
	combout => \COMP_VGA|always0~2_combout\);

-- Location: LCCOMB_X9_Y4_N0
\COMP_VGA|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always0~1_combout\ = (!\COMP_VGA|y_cnt\(7) & (!\COMP_VGA|y_cnt\(9) & (!\COMP_VGA|y_cnt\(8) & !\COMP_VGA|y_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(7),
	datab => \COMP_VGA|y_cnt\(9),
	datac => \COMP_VGA|y_cnt\(8),
	datad => \COMP_VGA|y_cnt\(6),
	combout => \COMP_VGA|always0~1_combout\);

-- Location: LCCOMB_X9_Y4_N24
\COMP_VGA|always0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always0~3_combout\ = (!\COMP_VGA|y_cnt\(3) & (!\COMP_VGA|y_cnt\(2) & !\COMP_VGA|y_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(3),
	datac => \COMP_VGA|y_cnt\(2),
	datad => \COMP_VGA|y_cnt\(4),
	combout => \COMP_VGA|always0~3_combout\);

-- Location: LCCOMB_X9_Y4_N6
\COMP_VGA|always0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always0~4_combout\ = (\COMP_VGA|y_cnt\(5) & (((\COMP_VGA|y_cnt\(0) & \COMP_VGA|y_cnt\(1))) # (!\COMP_VGA|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|always0~3_combout\,
	datab => \COMP_VGA|y_cnt\(0),
	datac => \COMP_VGA|y_cnt\(1),
	datad => \COMP_VGA|y_cnt\(5),
	combout => \COMP_VGA|always0~4_combout\);

-- Location: LCCOMB_X9_Y4_N8
\COMP_VGA|always0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always0~5_combout\ = (\COMP_VGA|y_cnt\(8) & (\COMP_VGA|y_cnt\(9) & ((\COMP_VGA|always0~4_combout\) # (!\COMP_VGA|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|always0~4_combout\,
	datab => \COMP_VGA|y_cnt\(8),
	datac => \COMP_VGA|y_cnt\(9),
	datad => \COMP_VGA|always0~0_combout\,
	combout => \COMP_VGA|always0~5_combout\);

-- Location: LCCOMB_X9_Y4_N30
\COMP_VGA|always0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always0~6_combout\ = (!\COMP_VGA|always0~5_combout\ & (((!\COMP_VGA|always0~2_combout\ & \COMP_VGA|y_cnt\(5))) # (!\COMP_VGA|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|always0~2_combout\,
	datab => \COMP_VGA|always0~1_combout\,
	datac => \COMP_VGA|always0~5_combout\,
	datad => \COMP_VGA|y_cnt\(5),
	combout => \COMP_VGA|always0~6_combout\);

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

-- Location: LCCOMB_X33_Y14_N0
\COMP_CCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~0_combout\ = \COMP_CCD|count\(0) $ (VCC)
-- \COMP_CCD|Add1~1\ = CARRY(\COMP_CCD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(0),
	datad => VCC,
	combout => \COMP_CCD|Add1~0_combout\,
	cout => \COMP_CCD|Add1~1\);

-- Location: LCCOMB_X30_Y14_N2
\COMP_CCD|Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~67_combout\ = (!\COMP_CCD|Equal0~20_combout\ & \COMP_CCD|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Equal0~20_combout\,
	datad => \COMP_CCD|Add1~0_combout\,
	combout => \COMP_CCD|Add1~67_combout\);

-- Location: FF_X30_Y14_N3
\COMP_CCD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(0));

-- Location: LCCOMB_X33_Y14_N2
\COMP_CCD|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~2_combout\ = (\COMP_CCD|count\(1) & (!\COMP_CCD|Add1~1\)) # (!\COMP_CCD|count\(1) & ((\COMP_CCD|Add1~1\) # (GND)))
-- \COMP_CCD|Add1~3\ = CARRY((!\COMP_CCD|Add1~1\) # (!\COMP_CCD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datad => VCC,
	cin => \COMP_CCD|Add1~1\,
	combout => \COMP_CCD|Add1~2_combout\,
	cout => \COMP_CCD|Add1~3\);

-- Location: LCCOMB_X30_Y14_N24
\COMP_CCD|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~68_combout\ = (\COMP_CCD|Add1~2_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~2_combout\,
	datac => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~68_combout\);

-- Location: FF_X30_Y14_N25
\COMP_CCD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(1));

-- Location: LCCOMB_X33_Y14_N4
\COMP_CCD|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~4_combout\ = (\COMP_CCD|count\(2) & (\COMP_CCD|Add1~3\ $ (GND))) # (!\COMP_CCD|count\(2) & (!\COMP_CCD|Add1~3\ & VCC))
-- \COMP_CCD|Add1~5\ = CARRY((\COMP_CCD|count\(2) & !\COMP_CCD|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(2),
	datad => VCC,
	cin => \COMP_CCD|Add1~3\,
	combout => \COMP_CCD|Add1~4_combout\,
	cout => \COMP_CCD|Add1~5\);

-- Location: LCCOMB_X30_Y14_N10
\COMP_CCD|Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~69_combout\ = (\COMP_CCD|Add1~4_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~4_combout\,
	datac => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~69_combout\);

-- Location: FF_X30_Y14_N11
\COMP_CCD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(2));

-- Location: LCCOMB_X33_Y14_N6
\COMP_CCD|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~6_combout\ = (\COMP_CCD|count\(3) & (!\COMP_CCD|Add1~5\)) # (!\COMP_CCD|count\(3) & ((\COMP_CCD|Add1~5\) # (GND)))
-- \COMP_CCD|Add1~7\ = CARRY((!\COMP_CCD|Add1~5\) # (!\COMP_CCD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datad => VCC,
	cin => \COMP_CCD|Add1~5\,
	combout => \COMP_CCD|Add1~6_combout\,
	cout => \COMP_CCD|Add1~7\);

-- Location: LCCOMB_X32_Y14_N16
\COMP_CCD|Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~70_combout\ = (\COMP_CCD|Add1~6_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~6_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~70_combout\);

-- Location: FF_X32_Y14_N17
\COMP_CCD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(3));

-- Location: LCCOMB_X33_Y14_N8
\COMP_CCD|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~8_combout\ = (\COMP_CCD|count\(4) & (\COMP_CCD|Add1~7\ $ (GND))) # (!\COMP_CCD|count\(4) & (!\COMP_CCD|Add1~7\ & VCC))
-- \COMP_CCD|Add1~9\ = CARRY((\COMP_CCD|count\(4) & !\COMP_CCD|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(4),
	datad => VCC,
	cin => \COMP_CCD|Add1~7\,
	combout => \COMP_CCD|Add1~8_combout\,
	cout => \COMP_CCD|Add1~9\);

-- Location: LCCOMB_X30_Y14_N14
\COMP_CCD|Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~71_combout\ = (\COMP_CCD|Add1~8_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~8_combout\,
	datac => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~71_combout\);

-- Location: FF_X30_Y14_N15
\COMP_CCD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(4));

-- Location: LCCOMB_X33_Y14_N10
\COMP_CCD|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~10_combout\ = (\COMP_CCD|count\(5) & (!\COMP_CCD|Add1~9\)) # (!\COMP_CCD|count\(5) & ((\COMP_CCD|Add1~9\) # (GND)))
-- \COMP_CCD|Add1~11\ = CARRY((!\COMP_CCD|Add1~9\) # (!\COMP_CCD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(5),
	datad => VCC,
	cin => \COMP_CCD|Add1~9\,
	combout => \COMP_CCD|Add1~10_combout\,
	cout => \COMP_CCD|Add1~11\);

-- Location: LCCOMB_X33_Y14_N12
\COMP_CCD|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~12_combout\ = (\COMP_CCD|count\(6) & (\COMP_CCD|Add1~11\ $ (GND))) # (!\COMP_CCD|count\(6) & (!\COMP_CCD|Add1~11\ & VCC))
-- \COMP_CCD|Add1~13\ = CARRY((\COMP_CCD|count\(6) & !\COMP_CCD|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(6),
	datad => VCC,
	cin => \COMP_CCD|Add1~11\,
	combout => \COMP_CCD|Add1~12_combout\,
	cout => \COMP_CCD|Add1~13\);

-- Location: LCCOMB_X32_Y13_N10
\COMP_CCD|Add1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~73_combout\ = (\COMP_CCD|Add1~12_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~12_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~73_combout\);

-- Location: FF_X32_Y13_N11
\COMP_CCD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(6));

-- Location: LCCOMB_X33_Y14_N14
\COMP_CCD|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~14_combout\ = (\COMP_CCD|count\(7) & (!\COMP_CCD|Add1~13\)) # (!\COMP_CCD|count\(7) & ((\COMP_CCD|Add1~13\) # (GND)))
-- \COMP_CCD|Add1~15\ = CARRY((!\COMP_CCD|Add1~13\) # (!\COMP_CCD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(7),
	datad => VCC,
	cin => \COMP_CCD|Add1~13\,
	combout => \COMP_CCD|Add1~14_combout\,
	cout => \COMP_CCD|Add1~15\);

-- Location: LCCOMB_X31_Y13_N12
\COMP_CCD|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~74_combout\ = (\COMP_CCD|Add1~14_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~14_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~74_combout\);

-- Location: FF_X31_Y13_N13
\COMP_CCD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(7));

-- Location: LCCOMB_X33_Y14_N16
\COMP_CCD|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~16_combout\ = (\COMP_CCD|count\(8) & (\COMP_CCD|Add1~15\ $ (GND))) # (!\COMP_CCD|count\(8) & (!\COMP_CCD|Add1~15\ & VCC))
-- \COMP_CCD|Add1~17\ = CARRY((\COMP_CCD|count\(8) & !\COMP_CCD|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(8),
	datad => VCC,
	cin => \COMP_CCD|Add1~15\,
	combout => \COMP_CCD|Add1~16_combout\,
	cout => \COMP_CCD|Add1~17\);

-- Location: LCCOMB_X31_Y13_N16
\COMP_CCD|Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~75_combout\ = (\COMP_CCD|Add1~16_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~16_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~75_combout\);

-- Location: FF_X31_Y13_N17
\COMP_CCD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(8));

-- Location: LCCOMB_X33_Y14_N18
\COMP_CCD|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~18_combout\ = (\COMP_CCD|count\(9) & (!\COMP_CCD|Add1~17\)) # (!\COMP_CCD|count\(9) & ((\COMP_CCD|Add1~17\) # (GND)))
-- \COMP_CCD|Add1~19\ = CARRY((!\COMP_CCD|Add1~17\) # (!\COMP_CCD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(9),
	datad => VCC,
	cin => \COMP_CCD|Add1~17\,
	combout => \COMP_CCD|Add1~18_combout\,
	cout => \COMP_CCD|Add1~19\);

-- Location: LCCOMB_X32_Y13_N2
\COMP_CCD|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~20_combout\ = (\COMP_CCD|Add1~18_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~18_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~20_combout\);

-- Location: FF_X32_Y13_N3
\COMP_CCD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(9));

-- Location: LCCOMB_X33_Y14_N20
\COMP_CCD|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~21_combout\ = (\COMP_CCD|count\(10) & (\COMP_CCD|Add1~19\ $ (GND))) # (!\COMP_CCD|count\(10) & (!\COMP_CCD|Add1~19\ & VCC))
-- \COMP_CCD|Add1~22\ = CARRY((\COMP_CCD|count\(10) & !\COMP_CCD|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(10),
	datad => VCC,
	cin => \COMP_CCD|Add1~19\,
	combout => \COMP_CCD|Add1~21_combout\,
	cout => \COMP_CCD|Add1~22\);

-- Location: LCCOMB_X32_Y13_N4
\COMP_CCD|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~23_combout\ = (\COMP_CCD|Add1~21_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~21_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~23_combout\);

-- Location: FF_X32_Y13_N5
\COMP_CCD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(10));

-- Location: LCCOMB_X33_Y14_N22
\COMP_CCD|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~24_combout\ = (\COMP_CCD|count\(11) & (!\COMP_CCD|Add1~22\)) # (!\COMP_CCD|count\(11) & ((\COMP_CCD|Add1~22\) # (GND)))
-- \COMP_CCD|Add1~25\ = CARRY((!\COMP_CCD|Add1~22\) # (!\COMP_CCD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(11),
	datad => VCC,
	cin => \COMP_CCD|Add1~22\,
	combout => \COMP_CCD|Add1~24_combout\,
	cout => \COMP_CCD|Add1~25\);

-- Location: LCCOMB_X32_Y13_N20
\COMP_CCD|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~26_combout\ = (\COMP_CCD|Add1~24_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~24_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~26_combout\);

-- Location: FF_X32_Y13_N21
\COMP_CCD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(11));

-- Location: LCCOMB_X33_Y14_N24
\COMP_CCD|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~27_combout\ = (\COMP_CCD|count\(12) & (\COMP_CCD|Add1~25\ $ (GND))) # (!\COMP_CCD|count\(12) & (!\COMP_CCD|Add1~25\ & VCC))
-- \COMP_CCD|Add1~28\ = CARRY((\COMP_CCD|count\(12) & !\COMP_CCD|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(12),
	datad => VCC,
	cin => \COMP_CCD|Add1~25\,
	combout => \COMP_CCD|Add1~27_combout\,
	cout => \COMP_CCD|Add1~28\);

-- Location: LCCOMB_X30_Y13_N0
\COMP_CCD|Add1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~76_combout\ = (\COMP_CCD|Add1~27_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~27_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~76_combout\);

-- Location: FF_X30_Y13_N1
\COMP_CCD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(12));

-- Location: LCCOMB_X33_Y14_N26
\COMP_CCD|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~29_combout\ = (\COMP_CCD|count\(13) & (!\COMP_CCD|Add1~28\)) # (!\COMP_CCD|count\(13) & ((\COMP_CCD|Add1~28\) # (GND)))
-- \COMP_CCD|Add1~30\ = CARRY((!\COMP_CCD|Add1~28\) # (!\COMP_CCD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(13),
	datad => VCC,
	cin => \COMP_CCD|Add1~28\,
	combout => \COMP_CCD|Add1~29_combout\,
	cout => \COMP_CCD|Add1~30\);

-- Location: LCCOMB_X31_Y14_N16
\COMP_CCD|Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~77_combout\ = (\COMP_CCD|Add1~29_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~29_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~77_combout\);

-- Location: FF_X31_Y14_N17
\COMP_CCD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(13));

-- Location: LCCOMB_X33_Y14_N28
\COMP_CCD|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~31_combout\ = (\COMP_CCD|count\(14) & (\COMP_CCD|Add1~30\ $ (GND))) # (!\COMP_CCD|count\(14) & (!\COMP_CCD|Add1~30\ & VCC))
-- \COMP_CCD|Add1~32\ = CARRY((\COMP_CCD|count\(14) & !\COMP_CCD|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(14),
	datad => VCC,
	cin => \COMP_CCD|Add1~30\,
	combout => \COMP_CCD|Add1~31_combout\,
	cout => \COMP_CCD|Add1~32\);

-- Location: LCCOMB_X31_Y14_N14
\COMP_CCD|Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~78_combout\ = (\COMP_CCD|Add1~31_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~31_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~78_combout\);

-- Location: FF_X31_Y14_N15
\COMP_CCD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(14));

-- Location: LCCOMB_X33_Y14_N30
\COMP_CCD|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~33_combout\ = (\COMP_CCD|count\(15) & (!\COMP_CCD|Add1~32\)) # (!\COMP_CCD|count\(15) & ((\COMP_CCD|Add1~32\) # (GND)))
-- \COMP_CCD|Add1~34\ = CARRY((!\COMP_CCD|Add1~32\) # (!\COMP_CCD|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(15),
	datad => VCC,
	cin => \COMP_CCD|Add1~32\,
	combout => \COMP_CCD|Add1~33_combout\,
	cout => \COMP_CCD|Add1~34\);

-- Location: LCCOMB_X30_Y13_N28
\COMP_CCD|Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~79_combout\ = (\COMP_CCD|Add1~33_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~33_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~79_combout\);

-- Location: FF_X30_Y13_N29
\COMP_CCD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(15));

-- Location: LCCOMB_X33_Y13_N0
\COMP_CCD|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~35_combout\ = (\COMP_CCD|count\(16) & (\COMP_CCD|Add1~34\ $ (GND))) # (!\COMP_CCD|count\(16) & (!\COMP_CCD|Add1~34\ & VCC))
-- \COMP_CCD|Add1~36\ = CARRY((\COMP_CCD|count\(16) & !\COMP_CCD|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(16),
	datad => VCC,
	cin => \COMP_CCD|Add1~34\,
	combout => \COMP_CCD|Add1~35_combout\,
	cout => \COMP_CCD|Add1~36\);

-- Location: LCCOMB_X31_Y13_N20
\COMP_CCD|Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~80_combout\ = (\COMP_CCD|Add1~35_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~35_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~80_combout\);

-- Location: FF_X31_Y13_N21
\COMP_CCD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(16));

-- Location: LCCOMB_X33_Y13_N2
\COMP_CCD|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~37_combout\ = (\COMP_CCD|count\(17) & (!\COMP_CCD|Add1~36\)) # (!\COMP_CCD|count\(17) & ((\COMP_CCD|Add1~36\) # (GND)))
-- \COMP_CCD|Add1~38\ = CARRY((!\COMP_CCD|Add1~36\) # (!\COMP_CCD|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(17),
	datad => VCC,
	cin => \COMP_CCD|Add1~36\,
	combout => \COMP_CCD|Add1~37_combout\,
	cout => \COMP_CCD|Add1~38\);

-- Location: LCCOMB_X31_Y14_N24
\COMP_CCD|Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~81_combout\ = (\COMP_CCD|Add1~37_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~37_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~81_combout\);

-- Location: FF_X31_Y14_N25
\COMP_CCD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(17));

-- Location: LCCOMB_X33_Y13_N4
\COMP_CCD|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~39_combout\ = (\COMP_CCD|count\(18) & (\COMP_CCD|Add1~38\ $ (GND))) # (!\COMP_CCD|count\(18) & (!\COMP_CCD|Add1~38\ & VCC))
-- \COMP_CCD|Add1~40\ = CARRY((\COMP_CCD|count\(18) & !\COMP_CCD|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(18),
	datad => VCC,
	cin => \COMP_CCD|Add1~38\,
	combout => \COMP_CCD|Add1~39_combout\,
	cout => \COMP_CCD|Add1~40\);

-- Location: LCCOMB_X30_Y13_N24
\COMP_CCD|Add1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~82_combout\ = (\COMP_CCD|Add1~39_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~39_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~82_combout\);

-- Location: FF_X30_Y13_N25
\COMP_CCD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(18));

-- Location: LCCOMB_X33_Y13_N6
\COMP_CCD|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~41_combout\ = (\COMP_CCD|count\(19) & (!\COMP_CCD|Add1~40\)) # (!\COMP_CCD|count\(19) & ((\COMP_CCD|Add1~40\) # (GND)))
-- \COMP_CCD|Add1~42\ = CARRY((!\COMP_CCD|Add1~40\) # (!\COMP_CCD|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(19),
	datad => VCC,
	cin => \COMP_CCD|Add1~40\,
	combout => \COMP_CCD|Add1~41_combout\,
	cout => \COMP_CCD|Add1~42\);

-- Location: LCCOMB_X31_Y13_N10
\COMP_CCD|Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~83_combout\ = (\COMP_CCD|Add1~41_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~41_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~83_combout\);

-- Location: FF_X31_Y13_N11
\COMP_CCD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(19));

-- Location: LCCOMB_X33_Y13_N8
\COMP_CCD|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~43_combout\ = (\COMP_CCD|count\(20) & (\COMP_CCD|Add1~42\ $ (GND))) # (!\COMP_CCD|count\(20) & (!\COMP_CCD|Add1~42\ & VCC))
-- \COMP_CCD|Add1~44\ = CARRY((\COMP_CCD|count\(20) & !\COMP_CCD|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(20),
	datad => VCC,
	cin => \COMP_CCD|Add1~42\,
	combout => \COMP_CCD|Add1~43_combout\,
	cout => \COMP_CCD|Add1~44\);

-- Location: LCCOMB_X31_Y13_N0
\COMP_CCD|Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~84_combout\ = (\COMP_CCD|Add1~43_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~43_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~84_combout\);

-- Location: FF_X31_Y13_N1
\COMP_CCD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(20));

-- Location: LCCOMB_X33_Y13_N10
\COMP_CCD|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~45_combout\ = (\COMP_CCD|count\(21) & (!\COMP_CCD|Add1~44\)) # (!\COMP_CCD|count\(21) & ((\COMP_CCD|Add1~44\) # (GND)))
-- \COMP_CCD|Add1~46\ = CARRY((!\COMP_CCD|Add1~44\) # (!\COMP_CCD|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(21),
	datad => VCC,
	cin => \COMP_CCD|Add1~44\,
	combout => \COMP_CCD|Add1~45_combout\,
	cout => \COMP_CCD|Add1~46\);

-- Location: LCCOMB_X31_Y13_N6
\COMP_CCD|Add1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~85_combout\ = (\COMP_CCD|Add1~45_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add1~45_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~85_combout\);

-- Location: FF_X31_Y13_N7
\COMP_CCD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(21));

-- Location: LCCOMB_X33_Y13_N12
\COMP_CCD|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~47_combout\ = (\COMP_CCD|count\(22) & (\COMP_CCD|Add1~46\ $ (GND))) # (!\COMP_CCD|count\(22) & (!\COMP_CCD|Add1~46\ & VCC))
-- \COMP_CCD|Add1~48\ = CARRY((\COMP_CCD|count\(22) & !\COMP_CCD|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(22),
	datad => VCC,
	cin => \COMP_CCD|Add1~46\,
	combout => \COMP_CCD|Add1~47_combout\,
	cout => \COMP_CCD|Add1~48\);

-- Location: LCCOMB_X31_Y13_N26
\COMP_CCD|Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~86_combout\ = (\COMP_CCD|Add1~47_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~47_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~86_combout\);

-- Location: FF_X31_Y13_N27
\COMP_CCD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(22));

-- Location: LCCOMB_X33_Y13_N14
\COMP_CCD|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~49_combout\ = (\COMP_CCD|count\(23) & (!\COMP_CCD|Add1~48\)) # (!\COMP_CCD|count\(23) & ((\COMP_CCD|Add1~48\) # (GND)))
-- \COMP_CCD|Add1~50\ = CARRY((!\COMP_CCD|Add1~48\) # (!\COMP_CCD|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(23),
	datad => VCC,
	cin => \COMP_CCD|Add1~48\,
	combout => \COMP_CCD|Add1~49_combout\,
	cout => \COMP_CCD|Add1~50\);

-- Location: LCCOMB_X30_Y13_N20
\COMP_CCD|Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~87_combout\ = (\COMP_CCD|Add1~49_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~49_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~87_combout\);

-- Location: FF_X30_Y13_N21
\COMP_CCD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(23));

-- Location: LCCOMB_X33_Y13_N16
\COMP_CCD|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~51_combout\ = (\COMP_CCD|count\(24) & (\COMP_CCD|Add1~50\ $ (GND))) # (!\COMP_CCD|count\(24) & (!\COMP_CCD|Add1~50\ & VCC))
-- \COMP_CCD|Add1~52\ = CARRY((\COMP_CCD|count\(24) & !\COMP_CCD|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(24),
	datad => VCC,
	cin => \COMP_CCD|Add1~50\,
	combout => \COMP_CCD|Add1~51_combout\,
	cout => \COMP_CCD|Add1~52\);

-- Location: LCCOMB_X30_Y13_N12
\COMP_CCD|Add1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~88_combout\ = (\COMP_CCD|Add1~51_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~51_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~88_combout\);

-- Location: FF_X30_Y13_N13
\COMP_CCD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(24));

-- Location: LCCOMB_X33_Y13_N18
\COMP_CCD|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~53_combout\ = (\COMP_CCD|count\(25) & (!\COMP_CCD|Add1~52\)) # (!\COMP_CCD|count\(25) & ((\COMP_CCD|Add1~52\) # (GND)))
-- \COMP_CCD|Add1~54\ = CARRY((!\COMP_CCD|Add1~52\) # (!\COMP_CCD|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(25),
	datad => VCC,
	cin => \COMP_CCD|Add1~52\,
	combout => \COMP_CCD|Add1~53_combout\,
	cout => \COMP_CCD|Add1~54\);

-- Location: LCCOMB_X30_Y13_N18
\COMP_CCD|Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~89_combout\ = (\COMP_CCD|Add1~53_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~53_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~89_combout\);

-- Location: FF_X30_Y13_N19
\COMP_CCD|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(25));

-- Location: LCCOMB_X33_Y13_N20
\COMP_CCD|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~55_combout\ = (\COMP_CCD|count\(26) & (\COMP_CCD|Add1~54\ $ (GND))) # (!\COMP_CCD|count\(26) & (!\COMP_CCD|Add1~54\ & VCC))
-- \COMP_CCD|Add1~56\ = CARRY((\COMP_CCD|count\(26) & !\COMP_CCD|Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(26),
	datad => VCC,
	cin => \COMP_CCD|Add1~54\,
	combout => \COMP_CCD|Add1~55_combout\,
	cout => \COMP_CCD|Add1~56\);

-- Location: LCCOMB_X30_Y13_N30
\COMP_CCD|Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~90_combout\ = (\COMP_CCD|Add1~55_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~55_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~90_combout\);

-- Location: FF_X30_Y13_N31
\COMP_CCD|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(26));

-- Location: LCCOMB_X33_Y13_N22
\COMP_CCD|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~57_combout\ = (\COMP_CCD|count\(27) & (!\COMP_CCD|Add1~56\)) # (!\COMP_CCD|count\(27) & ((\COMP_CCD|Add1~56\) # (GND)))
-- \COMP_CCD|Add1~58\ = CARRY((!\COMP_CCD|Add1~56\) # (!\COMP_CCD|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(27),
	datad => VCC,
	cin => \COMP_CCD|Add1~56\,
	combout => \COMP_CCD|Add1~57_combout\,
	cout => \COMP_CCD|Add1~58\);

-- Location: LCCOMB_X32_Y13_N6
\COMP_CCD|Add1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~91_combout\ = (\COMP_CCD|Add1~57_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~57_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~91_combout\);

-- Location: FF_X32_Y13_N7
\COMP_CCD|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(27));

-- Location: CLKCTRL_G4
\key_add~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key_add~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_add~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y14_N4
\COMP_CCD|freq[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|freq[0]~0_combout\ = !\COMP_CCD|freq\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|freq\(0),
	combout => \COMP_CCD|freq[0]~0_combout\);

-- Location: FF_X30_Y14_N5
\COMP_CCD|freq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|freq[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(0));

-- Location: LCCOMB_X29_Y14_N0
\COMP_CCD|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~1_cout\ = CARRY(!\COMP_CCD|freq\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(0),
	datad => VCC,
	cout => \COMP_CCD|Add0~1_cout\);

-- Location: LCCOMB_X29_Y14_N2
\COMP_CCD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~2_combout\ = (\COMP_CCD|freq\(1) & (!\COMP_CCD|Add0~1_cout\)) # (!\COMP_CCD|freq\(1) & (\COMP_CCD|Add0~1_cout\ & VCC))
-- \COMP_CCD|Add0~3\ = CARRY((\COMP_CCD|freq\(1) & !\COMP_CCD|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(1),
	datad => VCC,
	cin => \COMP_CCD|Add0~1_cout\,
	combout => \COMP_CCD|Add0~2_combout\,
	cout => \COMP_CCD|Add0~3\);

-- Location: LCCOMB_X30_Y14_N6
\COMP_CCD|freq[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|freq[1]~1_combout\ = !\COMP_CCD|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add0~2_combout\,
	combout => \COMP_CCD|freq[1]~1_combout\);

-- Location: FF_X30_Y14_N7
\COMP_CCD|freq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|freq[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(1));

-- Location: LCCOMB_X29_Y14_N4
\COMP_CCD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~4_combout\ = (\COMP_CCD|freq\(2) & ((GND) # (!\COMP_CCD|Add0~3\))) # (!\COMP_CCD|freq\(2) & (\COMP_CCD|Add0~3\ $ (GND)))
-- \COMP_CCD|Add0~5\ = CARRY((\COMP_CCD|freq\(2)) # (!\COMP_CCD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(2),
	datad => VCC,
	cin => \COMP_CCD|Add0~3\,
	combout => \COMP_CCD|Add0~4_combout\,
	cout => \COMP_CCD|Add0~5\);

-- Location: FF_X29_Y14_N5
\COMP_CCD|freq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(2));

-- Location: LCCOMB_X29_Y14_N6
\COMP_CCD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~6_combout\ = (\COMP_CCD|freq\(3) & (\COMP_CCD|Add0~5\ & VCC)) # (!\COMP_CCD|freq\(3) & (!\COMP_CCD|Add0~5\))
-- \COMP_CCD|Add0~7\ = CARRY((!\COMP_CCD|freq\(3) & !\COMP_CCD|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(3),
	datad => VCC,
	cin => \COMP_CCD|Add0~5\,
	combout => \COMP_CCD|Add0~6_combout\,
	cout => \COMP_CCD|Add0~7\);

-- Location: FF_X29_Y14_N7
\COMP_CCD|freq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(3));

-- Location: LCCOMB_X29_Y14_N8
\COMP_CCD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~8_combout\ = (\COMP_CCD|freq\(4) & ((GND) # (!\COMP_CCD|Add0~7\))) # (!\COMP_CCD|freq\(4) & (\COMP_CCD|Add0~7\ $ (GND)))
-- \COMP_CCD|Add0~9\ = CARRY((\COMP_CCD|freq\(4)) # (!\COMP_CCD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(4),
	datad => VCC,
	cin => \COMP_CCD|Add0~7\,
	combout => \COMP_CCD|Add0~8_combout\,
	cout => \COMP_CCD|Add0~9\);

-- Location: FF_X29_Y14_N9
\COMP_CCD|freq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(4));

-- Location: LCCOMB_X29_Y14_N10
\COMP_CCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~10_combout\ = (\COMP_CCD|freq\(5) & (!\COMP_CCD|Add0~9\)) # (!\COMP_CCD|freq\(5) & (\COMP_CCD|Add0~9\ & VCC))
-- \COMP_CCD|Add0~11\ = CARRY((\COMP_CCD|freq\(5) & !\COMP_CCD|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(5),
	datad => VCC,
	cin => \COMP_CCD|Add0~9\,
	combout => \COMP_CCD|Add0~10_combout\,
	cout => \COMP_CCD|Add0~11\);

-- Location: LCCOMB_X30_Y14_N26
\COMP_CCD|freq[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|freq[5]~2_combout\ = !\COMP_CCD|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|Add0~10_combout\,
	combout => \COMP_CCD|freq[5]~2_combout\);

-- Location: FF_X30_Y14_N27
\COMP_CCD|freq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|freq[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(5));

-- Location: LCCOMB_X29_Y14_N12
\COMP_CCD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~12_combout\ = (\COMP_CCD|freq\(6) & ((GND) # (!\COMP_CCD|Add0~11\))) # (!\COMP_CCD|freq\(6) & (\COMP_CCD|Add0~11\ $ (GND)))
-- \COMP_CCD|Add0~13\ = CARRY((\COMP_CCD|freq\(6)) # (!\COMP_CCD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(6),
	datad => VCC,
	cin => \COMP_CCD|Add0~11\,
	combout => \COMP_CCD|Add0~12_combout\,
	cout => \COMP_CCD|Add0~13\);

-- Location: FF_X29_Y14_N13
\COMP_CCD|freq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(6));

-- Location: LCCOMB_X29_Y14_N14
\COMP_CCD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~14_combout\ = (\COMP_CCD|freq\(7) & (\COMP_CCD|Add0~13\ & VCC)) # (!\COMP_CCD|freq\(7) & (!\COMP_CCD|Add0~13\))
-- \COMP_CCD|Add0~15\ = CARRY((!\COMP_CCD|freq\(7) & !\COMP_CCD|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(7),
	datad => VCC,
	cin => \COMP_CCD|Add0~13\,
	combout => \COMP_CCD|Add0~14_combout\,
	cout => \COMP_CCD|Add0~15\);

-- Location: FF_X29_Y14_N15
\COMP_CCD|freq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(7));

-- Location: LCCOMB_X29_Y14_N16
\COMP_CCD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~16_combout\ = (\COMP_CCD|freq\(8) & ((GND) # (!\COMP_CCD|Add0~15\))) # (!\COMP_CCD|freq\(8) & (\COMP_CCD|Add0~15\ $ (GND)))
-- \COMP_CCD|Add0~17\ = CARRY((\COMP_CCD|freq\(8)) # (!\COMP_CCD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(8),
	datad => VCC,
	cin => \COMP_CCD|Add0~15\,
	combout => \COMP_CCD|Add0~16_combout\,
	cout => \COMP_CCD|Add0~17\);

-- Location: FF_X29_Y14_N17
\COMP_CCD|freq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(8));

-- Location: LCCOMB_X29_Y14_N18
\COMP_CCD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~18_combout\ = (\COMP_CCD|freq\(9) & (\COMP_CCD|Add0~17\ & VCC)) # (!\COMP_CCD|freq\(9) & (!\COMP_CCD|Add0~17\))
-- \COMP_CCD|Add0~19\ = CARRY((!\COMP_CCD|freq\(9) & !\COMP_CCD|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(9),
	datad => VCC,
	cin => \COMP_CCD|Add0~17\,
	combout => \COMP_CCD|Add0~18_combout\,
	cout => \COMP_CCD|Add0~19\);

-- Location: FF_X29_Y14_N19
\COMP_CCD|freq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(9));

-- Location: LCCOMB_X29_Y14_N20
\COMP_CCD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~20_combout\ = (\COMP_CCD|freq\(10) & ((GND) # (!\COMP_CCD|Add0~19\))) # (!\COMP_CCD|freq\(10) & (\COMP_CCD|Add0~19\ $ (GND)))
-- \COMP_CCD|Add0~21\ = CARRY((\COMP_CCD|freq\(10)) # (!\COMP_CCD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(10),
	datad => VCC,
	cin => \COMP_CCD|Add0~19\,
	combout => \COMP_CCD|Add0~20_combout\,
	cout => \COMP_CCD|Add0~21\);

-- Location: FF_X29_Y14_N21
\COMP_CCD|freq[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(10));

-- Location: LCCOMB_X29_Y14_N22
\COMP_CCD|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~22_combout\ = (\COMP_CCD|freq\(11) & (\COMP_CCD|Add0~21\ & VCC)) # (!\COMP_CCD|freq\(11) & (!\COMP_CCD|Add0~21\))
-- \COMP_CCD|Add0~23\ = CARRY((!\COMP_CCD|freq\(11) & !\COMP_CCD|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(11),
	datad => VCC,
	cin => \COMP_CCD|Add0~21\,
	combout => \COMP_CCD|Add0~22_combout\,
	cout => \COMP_CCD|Add0~23\);

-- Location: FF_X29_Y14_N23
\COMP_CCD|freq[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(11));

-- Location: LCCOMB_X29_Y14_N24
\COMP_CCD|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~24_combout\ = (\COMP_CCD|freq\(12) & ((GND) # (!\COMP_CCD|Add0~23\))) # (!\COMP_CCD|freq\(12) & (\COMP_CCD|Add0~23\ $ (GND)))
-- \COMP_CCD|Add0~25\ = CARRY((\COMP_CCD|freq\(12)) # (!\COMP_CCD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(12),
	datad => VCC,
	cin => \COMP_CCD|Add0~23\,
	combout => \COMP_CCD|Add0~24_combout\,
	cout => \COMP_CCD|Add0~25\);

-- Location: FF_X29_Y14_N25
\COMP_CCD|freq[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(12));

-- Location: LCCOMB_X29_Y14_N26
\COMP_CCD|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~26_combout\ = (\COMP_CCD|freq\(13) & (\COMP_CCD|Add0~25\ & VCC)) # (!\COMP_CCD|freq\(13) & (!\COMP_CCD|Add0~25\))
-- \COMP_CCD|Add0~27\ = CARRY((!\COMP_CCD|freq\(13) & !\COMP_CCD|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(13),
	datad => VCC,
	cin => \COMP_CCD|Add0~25\,
	combout => \COMP_CCD|Add0~26_combout\,
	cout => \COMP_CCD|Add0~27\);

-- Location: FF_X30_Y13_N15
\COMP_CCD|freq[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	asdata => \COMP_CCD|Add0~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(13));

-- Location: LCCOMB_X29_Y14_N28
\COMP_CCD|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~28_combout\ = (\COMP_CCD|freq\(14) & ((GND) # (!\COMP_CCD|Add0~27\))) # (!\COMP_CCD|freq\(14) & (\COMP_CCD|Add0~27\ $ (GND)))
-- \COMP_CCD|Add0~29\ = CARRY((\COMP_CCD|freq\(14)) # (!\COMP_CCD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(14),
	datad => VCC,
	cin => \COMP_CCD|Add0~27\,
	combout => \COMP_CCD|Add0~28_combout\,
	cout => \COMP_CCD|Add0~29\);

-- Location: FF_X29_Y14_N29
\COMP_CCD|freq[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(14));

-- Location: LCCOMB_X29_Y14_N30
\COMP_CCD|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~30_combout\ = (\COMP_CCD|freq\(15) & (\COMP_CCD|Add0~29\ & VCC)) # (!\COMP_CCD|freq\(15) & (!\COMP_CCD|Add0~29\))
-- \COMP_CCD|Add0~31\ = CARRY((!\COMP_CCD|freq\(15) & !\COMP_CCD|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(15),
	datad => VCC,
	cin => \COMP_CCD|Add0~29\,
	combout => \COMP_CCD|Add0~30_combout\,
	cout => \COMP_CCD|Add0~31\);

-- Location: FF_X29_Y14_N31
\COMP_CCD|freq[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(15));

-- Location: LCCOMB_X29_Y13_N0
\COMP_CCD|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~32_combout\ = (\COMP_CCD|freq\(16) & ((GND) # (!\COMP_CCD|Add0~31\))) # (!\COMP_CCD|freq\(16) & (\COMP_CCD|Add0~31\ $ (GND)))
-- \COMP_CCD|Add0~33\ = CARRY((\COMP_CCD|freq\(16)) # (!\COMP_CCD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(16),
	datad => VCC,
	cin => \COMP_CCD|Add0~31\,
	combout => \COMP_CCD|Add0~32_combout\,
	cout => \COMP_CCD|Add0~33\);

-- Location: FF_X29_Y13_N1
\COMP_CCD|freq[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(16));

-- Location: LCCOMB_X29_Y13_N2
\COMP_CCD|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~34_combout\ = (\COMP_CCD|freq\(17) & (\COMP_CCD|Add0~33\ & VCC)) # (!\COMP_CCD|freq\(17) & (!\COMP_CCD|Add0~33\))
-- \COMP_CCD|Add0~35\ = CARRY((!\COMP_CCD|freq\(17) & !\COMP_CCD|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(17),
	datad => VCC,
	cin => \COMP_CCD|Add0~33\,
	combout => \COMP_CCD|Add0~34_combout\,
	cout => \COMP_CCD|Add0~35\);

-- Location: FF_X29_Y13_N3
\COMP_CCD|freq[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(17));

-- Location: LCCOMB_X29_Y13_N4
\COMP_CCD|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~36_combout\ = (\COMP_CCD|freq\(18) & ((GND) # (!\COMP_CCD|Add0~35\))) # (!\COMP_CCD|freq\(18) & (\COMP_CCD|Add0~35\ $ (GND)))
-- \COMP_CCD|Add0~37\ = CARRY((\COMP_CCD|freq\(18)) # (!\COMP_CCD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(18),
	datad => VCC,
	cin => \COMP_CCD|Add0~35\,
	combout => \COMP_CCD|Add0~36_combout\,
	cout => \COMP_CCD|Add0~37\);

-- Location: FF_X29_Y13_N5
\COMP_CCD|freq[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(18));

-- Location: LCCOMB_X29_Y13_N6
\COMP_CCD|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~38_combout\ = (\COMP_CCD|freq\(19) & (\COMP_CCD|Add0~37\ & VCC)) # (!\COMP_CCD|freq\(19) & (!\COMP_CCD|Add0~37\))
-- \COMP_CCD|Add0~39\ = CARRY((!\COMP_CCD|freq\(19) & !\COMP_CCD|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(19),
	datad => VCC,
	cin => \COMP_CCD|Add0~37\,
	combout => \COMP_CCD|Add0~38_combout\,
	cout => \COMP_CCD|Add0~39\);

-- Location: FF_X29_Y13_N7
\COMP_CCD|freq[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(19));

-- Location: LCCOMB_X29_Y13_N8
\COMP_CCD|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~40_combout\ = (\COMP_CCD|freq\(20) & ((GND) # (!\COMP_CCD|Add0~39\))) # (!\COMP_CCD|freq\(20) & (\COMP_CCD|Add0~39\ $ (GND)))
-- \COMP_CCD|Add0~41\ = CARRY((\COMP_CCD|freq\(20)) # (!\COMP_CCD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(20),
	datad => VCC,
	cin => \COMP_CCD|Add0~39\,
	combout => \COMP_CCD|Add0~40_combout\,
	cout => \COMP_CCD|Add0~41\);

-- Location: FF_X29_Y13_N9
\COMP_CCD|freq[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(20));

-- Location: LCCOMB_X29_Y13_N10
\COMP_CCD|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~42_combout\ = (\COMP_CCD|freq\(21) & (\COMP_CCD|Add0~41\ & VCC)) # (!\COMP_CCD|freq\(21) & (!\COMP_CCD|Add0~41\))
-- \COMP_CCD|Add0~43\ = CARRY((!\COMP_CCD|freq\(21) & !\COMP_CCD|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(21),
	datad => VCC,
	cin => \COMP_CCD|Add0~41\,
	combout => \COMP_CCD|Add0~42_combout\,
	cout => \COMP_CCD|Add0~43\);

-- Location: FF_X29_Y13_N11
\COMP_CCD|freq[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(21));

-- Location: LCCOMB_X29_Y13_N12
\COMP_CCD|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~44_combout\ = (\COMP_CCD|freq\(22) & ((GND) # (!\COMP_CCD|Add0~43\))) # (!\COMP_CCD|freq\(22) & (\COMP_CCD|Add0~43\ $ (GND)))
-- \COMP_CCD|Add0~45\ = CARRY((\COMP_CCD|freq\(22)) # (!\COMP_CCD|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(22),
	datad => VCC,
	cin => \COMP_CCD|Add0~43\,
	combout => \COMP_CCD|Add0~44_combout\,
	cout => \COMP_CCD|Add0~45\);

-- Location: FF_X29_Y13_N13
\COMP_CCD|freq[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(22));

-- Location: LCCOMB_X29_Y13_N14
\COMP_CCD|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~46_combout\ = (\COMP_CCD|freq\(23) & (\COMP_CCD|Add0~45\ & VCC)) # (!\COMP_CCD|freq\(23) & (!\COMP_CCD|Add0~45\))
-- \COMP_CCD|Add0~47\ = CARRY((!\COMP_CCD|freq\(23) & !\COMP_CCD|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(23),
	datad => VCC,
	cin => \COMP_CCD|Add0~45\,
	combout => \COMP_CCD|Add0~46_combout\,
	cout => \COMP_CCD|Add0~47\);

-- Location: FF_X29_Y13_N15
\COMP_CCD|freq[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(23));

-- Location: LCCOMB_X29_Y13_N16
\COMP_CCD|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~48_combout\ = (\COMP_CCD|freq\(24) & ((GND) # (!\COMP_CCD|Add0~47\))) # (!\COMP_CCD|freq\(24) & (\COMP_CCD|Add0~47\ $ (GND)))
-- \COMP_CCD|Add0~49\ = CARRY((\COMP_CCD|freq\(24)) # (!\COMP_CCD|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(24),
	datad => VCC,
	cin => \COMP_CCD|Add0~47\,
	combout => \COMP_CCD|Add0~48_combout\,
	cout => \COMP_CCD|Add0~49\);

-- Location: FF_X29_Y13_N17
\COMP_CCD|freq[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(24));

-- Location: LCCOMB_X29_Y13_N18
\COMP_CCD|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~50_combout\ = (\COMP_CCD|freq\(25) & (\COMP_CCD|Add0~49\ & VCC)) # (!\COMP_CCD|freq\(25) & (!\COMP_CCD|Add0~49\))
-- \COMP_CCD|Add0~51\ = CARRY((!\COMP_CCD|freq\(25) & !\COMP_CCD|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(25),
	datad => VCC,
	cin => \COMP_CCD|Add0~49\,
	combout => \COMP_CCD|Add0~50_combout\,
	cout => \COMP_CCD|Add0~51\);

-- Location: FF_X29_Y13_N19
\COMP_CCD|freq[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(25));

-- Location: LCCOMB_X29_Y13_N20
\COMP_CCD|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~52_combout\ = (\COMP_CCD|freq\(26) & ((GND) # (!\COMP_CCD|Add0~51\))) # (!\COMP_CCD|freq\(26) & (\COMP_CCD|Add0~51\ $ (GND)))
-- \COMP_CCD|Add0~53\ = CARRY((\COMP_CCD|freq\(26)) # (!\COMP_CCD|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(26),
	datad => VCC,
	cin => \COMP_CCD|Add0~51\,
	combout => \COMP_CCD|Add0~52_combout\,
	cout => \COMP_CCD|Add0~53\);

-- Location: FF_X29_Y13_N21
\COMP_CCD|freq[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(26));

-- Location: LCCOMB_X29_Y13_N22
\COMP_CCD|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~54_combout\ = (\COMP_CCD|freq\(27) & (\COMP_CCD|Add0~53\ & VCC)) # (!\COMP_CCD|freq\(27) & (!\COMP_CCD|Add0~53\))
-- \COMP_CCD|Add0~55\ = CARRY((!\COMP_CCD|freq\(27) & !\COMP_CCD|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(27),
	datad => VCC,
	cin => \COMP_CCD|Add0~53\,
	combout => \COMP_CCD|Add0~54_combout\,
	cout => \COMP_CCD|Add0~55\);

-- Location: FF_X29_Y13_N23
\COMP_CCD|freq[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(27));

-- Location: LCCOMB_X30_Y13_N16
\COMP_CCD|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~16_combout\ = (\COMP_CCD|count\(27) & (\COMP_CCD|freq\(27) & (\COMP_CCD|freq\(26) $ (!\COMP_CCD|count\(26))))) # (!\COMP_CCD|count\(27) & (!\COMP_CCD|freq\(27) & (\COMP_CCD|freq\(26) $ (!\COMP_CCD|count\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(27),
	datab => \COMP_CCD|freq\(26),
	datac => \COMP_CCD|count\(26),
	datad => \COMP_CCD|freq\(27),
	combout => \COMP_CCD|Equal0~16_combout\);

-- Location: LCCOMB_X33_Y13_N24
\COMP_CCD|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~59_combout\ = (\COMP_CCD|count\(28) & (\COMP_CCD|Add1~58\ $ (GND))) # (!\COMP_CCD|count\(28) & (!\COMP_CCD|Add1~58\ & VCC))
-- \COMP_CCD|Add1~60\ = CARRY((\COMP_CCD|count\(28) & !\COMP_CCD|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|count\(28),
	datad => VCC,
	cin => \COMP_CCD|Add1~58\,
	combout => \COMP_CCD|Add1~59_combout\,
	cout => \COMP_CCD|Add1~60\);

-- Location: LCCOMB_X32_Y13_N18
\COMP_CCD|Add1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~92_combout\ = (\COMP_CCD|Add1~59_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~59_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~92_combout\);

-- Location: FF_X32_Y13_N19
\COMP_CCD|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(28));

-- Location: LCCOMB_X33_Y13_N26
\COMP_CCD|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~61_combout\ = (\COMP_CCD|count\(29) & (!\COMP_CCD|Add1~60\)) # (!\COMP_CCD|count\(29) & ((\COMP_CCD|Add1~60\) # (GND)))
-- \COMP_CCD|Add1~62\ = CARRY((!\COMP_CCD|Add1~60\) # (!\COMP_CCD|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(29),
	datad => VCC,
	cin => \COMP_CCD|Add1~60\,
	combout => \COMP_CCD|Add1~61_combout\,
	cout => \COMP_CCD|Add1~62\);

-- Location: LCCOMB_X30_Y13_N10
\COMP_CCD|Add1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~93_combout\ = (\COMP_CCD|Add1~61_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~61_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~93_combout\);

-- Location: FF_X30_Y13_N11
\COMP_CCD|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(29));

-- Location: LCCOMB_X33_Y13_N28
\COMP_CCD|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~63_combout\ = (\COMP_CCD|count\(30) & (\COMP_CCD|Add1~62\ $ (GND))) # (!\COMP_CCD|count\(30) & (!\COMP_CCD|Add1~62\ & VCC))
-- \COMP_CCD|Add1~64\ = CARRY((\COMP_CCD|count\(30) & !\COMP_CCD|Add1~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(30),
	datad => VCC,
	cin => \COMP_CCD|Add1~62\,
	combout => \COMP_CCD|Add1~63_combout\,
	cout => \COMP_CCD|Add1~64\);

-- Location: LCCOMB_X32_Y13_N0
\COMP_CCD|Add1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~94_combout\ = (\COMP_CCD|Add1~63_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~63_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~94_combout\);

-- Location: FF_X32_Y13_N1
\COMP_CCD|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(30));

-- Location: LCCOMB_X33_Y13_N30
\COMP_CCD|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~65_combout\ = \COMP_CCD|Add1~64\ $ (\COMP_CCD|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|count\(31),
	cin => \COMP_CCD|Add1~64\,
	combout => \COMP_CCD|Add1~65_combout\);

-- Location: LCCOMB_X31_Y13_N30
\COMP_CCD|Add1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~95_combout\ = (\COMP_CCD|Add1~65_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~65_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~95_combout\);

-- Location: FF_X31_Y13_N31
\COMP_CCD|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(31));

-- Location: LCCOMB_X29_Y13_N24
\COMP_CCD|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~56_combout\ = (\COMP_CCD|freq\(28) & ((GND) # (!\COMP_CCD|Add0~55\))) # (!\COMP_CCD|freq\(28) & (\COMP_CCD|Add0~55\ $ (GND)))
-- \COMP_CCD|Add0~57\ = CARRY((\COMP_CCD|freq\(28)) # (!\COMP_CCD|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(28),
	datad => VCC,
	cin => \COMP_CCD|Add0~55\,
	combout => \COMP_CCD|Add0~56_combout\,
	cout => \COMP_CCD|Add0~57\);

-- Location: FF_X29_Y13_N25
\COMP_CCD|freq[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(28));

-- Location: LCCOMB_X29_Y13_N26
\COMP_CCD|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~58_combout\ = (\COMP_CCD|freq\(29) & (\COMP_CCD|Add0~57\ & VCC)) # (!\COMP_CCD|freq\(29) & (!\COMP_CCD|Add0~57\))
-- \COMP_CCD|Add0~59\ = CARRY((!\COMP_CCD|freq\(29) & !\COMP_CCD|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(29),
	datad => VCC,
	cin => \COMP_CCD|Add0~57\,
	combout => \COMP_CCD|Add0~58_combout\,
	cout => \COMP_CCD|Add0~59\);

-- Location: FF_X29_Y13_N27
\COMP_CCD|freq[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(29));

-- Location: LCCOMB_X29_Y13_N28
\COMP_CCD|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~60_combout\ = (\COMP_CCD|freq\(30) & ((GND) # (!\COMP_CCD|Add0~59\))) # (!\COMP_CCD|freq\(30) & (\COMP_CCD|Add0~59\ $ (GND)))
-- \COMP_CCD|Add0~61\ = CARRY((\COMP_CCD|freq\(30)) # (!\COMP_CCD|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|freq\(30),
	datad => VCC,
	cin => \COMP_CCD|Add0~59\,
	combout => \COMP_CCD|Add0~60_combout\,
	cout => \COMP_CCD|Add0~61\);

-- Location: FF_X29_Y13_N29
\COMP_CCD|freq[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(30));

-- Location: LCCOMB_X29_Y13_N30
\COMP_CCD|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add0~62_combout\ = \COMP_CCD|freq\(31) $ (!\COMP_CCD|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(31),
	cin => \COMP_CCD|Add0~61\,
	combout => \COMP_CCD|Add0~62_combout\);

-- Location: FF_X29_Y13_N31
\COMP_CCD|freq[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key_add~inputclkctrl_outclk\,
	d => \COMP_CCD|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|freq\(31));

-- Location: LCCOMB_X31_Y13_N28
\COMP_CCD|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~18_combout\ = (\COMP_CCD|count\(31) & (\COMP_CCD|freq\(31) & (\COMP_CCD|count\(30) $ (!\COMP_CCD|freq\(30))))) # (!\COMP_CCD|count\(31) & (!\COMP_CCD|freq\(31) & (\COMP_CCD|count\(30) $ (!\COMP_CCD|freq\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(31),
	datab => \COMP_CCD|count\(30),
	datac => \COMP_CCD|freq\(30),
	datad => \COMP_CCD|freq\(31),
	combout => \COMP_CCD|Equal0~18_combout\);

-- Location: LCCOMB_X30_Y13_N4
\COMP_CCD|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~15_combout\ = (\COMP_CCD|count\(24) & (\COMP_CCD|freq\(24) & (\COMP_CCD|count\(25) $ (!\COMP_CCD|freq\(25))))) # (!\COMP_CCD|count\(24) & (!\COMP_CCD|freq\(24) & (\COMP_CCD|count\(25) $ (!\COMP_CCD|freq\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(24),
	datab => \COMP_CCD|count\(25),
	datac => \COMP_CCD|freq\(24),
	datad => \COMP_CCD|freq\(25),
	combout => \COMP_CCD|Equal0~15_combout\);

-- Location: LCCOMB_X30_Y13_N8
\COMP_CCD|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~17_combout\ = (\COMP_CCD|count\(29) & (\COMP_CCD|freq\(29) & (\COMP_CCD|count\(28) $ (!\COMP_CCD|freq\(28))))) # (!\COMP_CCD|count\(29) & (!\COMP_CCD|freq\(29) & (\COMP_CCD|count\(28) $ (!\COMP_CCD|freq\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(29),
	datab => \COMP_CCD|count\(28),
	datac => \COMP_CCD|freq\(29),
	datad => \COMP_CCD|freq\(28),
	combout => \COMP_CCD|Equal0~17_combout\);

-- Location: LCCOMB_X31_Y13_N22
\COMP_CCD|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~19_combout\ = (\COMP_CCD|Equal0~16_combout\ & (\COMP_CCD|Equal0~18_combout\ & (\COMP_CCD|Equal0~15_combout\ & \COMP_CCD|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~16_combout\,
	datab => \COMP_CCD|Equal0~18_combout\,
	datac => \COMP_CCD|Equal0~15_combout\,
	datad => \COMP_CCD|Equal0~17_combout\,
	combout => \COMP_CCD|Equal0~19_combout\);

-- Location: LCCOMB_X30_Y13_N2
\COMP_CCD|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~11_combout\ = (\COMP_CCD|count\(18) & (\COMP_CCD|freq\(18) & (\COMP_CCD|count\(19) $ (!\COMP_CCD|freq\(19))))) # (!\COMP_CCD|count\(18) & (!\COMP_CCD|freq\(18) & (\COMP_CCD|count\(19) $ (!\COMP_CCD|freq\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(18),
	datab => \COMP_CCD|count\(19),
	datac => \COMP_CCD|freq\(18),
	datad => \COMP_CCD|freq\(19),
	combout => \COMP_CCD|Equal0~11_combout\);

-- Location: LCCOMB_X30_Y13_N6
\COMP_CCD|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~13_combout\ = (\COMP_CCD|freq\(23) & (\COMP_CCD|count\(23) & (\COMP_CCD|count\(22) $ (!\COMP_CCD|freq\(22))))) # (!\COMP_CCD|freq\(23) & (!\COMP_CCD|count\(23) & (\COMP_CCD|count\(22) $ (!\COMP_CCD|freq\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(23),
	datab => \COMP_CCD|count\(23),
	datac => \COMP_CCD|count\(22),
	datad => \COMP_CCD|freq\(22),
	combout => \COMP_CCD|Equal0~13_combout\);

-- Location: LCCOMB_X31_Y13_N8
\COMP_CCD|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~12_combout\ = (\COMP_CCD|count\(21) & (\COMP_CCD|freq\(21) & (\COMP_CCD|count\(20) $ (!\COMP_CCD|freq\(20))))) # (!\COMP_CCD|count\(21) & (!\COMP_CCD|freq\(21) & (\COMP_CCD|count\(20) $ (!\COMP_CCD|freq\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(21),
	datab => \COMP_CCD|count\(20),
	datac => \COMP_CCD|freq\(21),
	datad => \COMP_CCD|freq\(20),
	combout => \COMP_CCD|Equal0~12_combout\);

-- Location: LCCOMB_X30_Y13_N22
\COMP_CCD|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~10_combout\ = (\COMP_CCD|count\(17) & (\COMP_CCD|freq\(17) & (\COMP_CCD|count\(16) $ (!\COMP_CCD|freq\(16))))) # (!\COMP_CCD|count\(17) & (!\COMP_CCD|freq\(17) & (\COMP_CCD|count\(16) $ (!\COMP_CCD|freq\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(17),
	datab => \COMP_CCD|count\(16),
	datac => \COMP_CCD|freq\(16),
	datad => \COMP_CCD|freq\(17),
	combout => \COMP_CCD|Equal0~10_combout\);

-- Location: LCCOMB_X31_Y13_N4
\COMP_CCD|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~14_combout\ = (\COMP_CCD|Equal0~11_combout\ & (\COMP_CCD|Equal0~13_combout\ & (\COMP_CCD|Equal0~12_combout\ & \COMP_CCD|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~11_combout\,
	datab => \COMP_CCD|Equal0~13_combout\,
	datac => \COMP_CCD|Equal0~12_combout\,
	datad => \COMP_CCD|Equal0~10_combout\,
	combout => \COMP_CCD|Equal0~14_combout\);

-- Location: LCCOMB_X30_Y14_N30
\COMP_CCD|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~3_combout\ = (\COMP_CCD|freq\(7) & (\COMP_CCD|count\(7) & (\COMP_CCD|count\(6) $ (!\COMP_CCD|freq\(6))))) # (!\COMP_CCD|freq\(7) & (!\COMP_CCD|count\(7) & (\COMP_CCD|count\(6) $ (!\COMP_CCD|freq\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|freq\(7),
	datab => \COMP_CCD|count\(6),
	datac => \COMP_CCD|count\(7),
	datad => \COMP_CCD|freq\(6),
	combout => \COMP_CCD|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y14_N0
\COMP_CCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~0_combout\ = (\COMP_CCD|count\(1) & (!\COMP_CCD|freq\(1) & (\COMP_CCD|count\(0) $ (\COMP_CCD|freq\(0))))) # (!\COMP_CCD|count\(1) & (\COMP_CCD|freq\(1) & (\COMP_CCD|count\(0) $ (\COMP_CCD|freq\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(1),
	datab => \COMP_CCD|count\(0),
	datac => \COMP_CCD|freq\(0),
	datad => \COMP_CCD|freq\(1),
	combout => \COMP_CCD|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y14_N28
\COMP_CCD|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~2_combout\ = (\COMP_CCD|count\(4) & (\COMP_CCD|freq\(4) & (\COMP_CCD|count\(5) $ (\COMP_CCD|freq\(5))))) # (!\COMP_CCD|count\(4) & (!\COMP_CCD|freq\(4) & (\COMP_CCD|count\(5) $ (\COMP_CCD|freq\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(4),
	datab => \COMP_CCD|count\(5),
	datac => \COMP_CCD|freq\(5),
	datad => \COMP_CCD|freq\(4),
	combout => \COMP_CCD|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y14_N20
\COMP_CCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~1_combout\ = (\COMP_CCD|count\(3) & (\COMP_CCD|freq\(3) & (\COMP_CCD|count\(2) $ (!\COMP_CCD|freq\(2))))) # (!\COMP_CCD|count\(3) & (!\COMP_CCD|freq\(3) & (\COMP_CCD|count\(2) $ (!\COMP_CCD|freq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(3),
	datab => \COMP_CCD|count\(2),
	datac => \COMP_CCD|freq\(3),
	datad => \COMP_CCD|freq\(2),
	combout => \COMP_CCD|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y13_N14
\COMP_CCD|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~4_combout\ = (\COMP_CCD|Equal0~3_combout\ & (\COMP_CCD|Equal0~0_combout\ & (\COMP_CCD|Equal0~2_combout\ & \COMP_CCD|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~3_combout\,
	datab => \COMP_CCD|Equal0~0_combout\,
	datac => \COMP_CCD|Equal0~2_combout\,
	datad => \COMP_CCD|Equal0~1_combout\,
	combout => \COMP_CCD|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y14_N12
\COMP_CCD|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~5_combout\ = (\COMP_CCD|count\(9) & (\COMP_CCD|freq\(9) & (\COMP_CCD|count\(8) $ (!\COMP_CCD|freq\(8))))) # (!\COMP_CCD|count\(9) & (!\COMP_CCD|freq\(9) & (\COMP_CCD|count\(8) $ (!\COMP_CCD|freq\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(9),
	datab => \COMP_CCD|count\(8),
	datac => \COMP_CCD|freq\(8),
	datad => \COMP_CCD|freq\(9),
	combout => \COMP_CCD|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y14_N22
\COMP_CCD|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~6_combout\ = (\COMP_CCD|count\(11) & (\COMP_CCD|freq\(11) & (\COMP_CCD|count\(10) $ (!\COMP_CCD|freq\(10))))) # (!\COMP_CCD|count\(11) & (!\COMP_CCD|freq\(11) & (\COMP_CCD|count\(10) $ (!\COMP_CCD|freq\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(11),
	datab => \COMP_CCD|freq\(11),
	datac => \COMP_CCD|count\(10),
	datad => \COMP_CCD|freq\(10),
	combout => \COMP_CCD|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y14_N8
\COMP_CCD|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~8_combout\ = (\COMP_CCD|count\(15) & (\COMP_CCD|freq\(15) & (\COMP_CCD|count\(14) $ (!\COMP_CCD|freq\(14))))) # (!\COMP_CCD|count\(15) & (!\COMP_CCD|freq\(15) & (\COMP_CCD|count\(14) $ (!\COMP_CCD|freq\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(15),
	datab => \COMP_CCD|freq\(15),
	datac => \COMP_CCD|count\(14),
	datad => \COMP_CCD|freq\(14),
	combout => \COMP_CCD|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y13_N14
\COMP_CCD|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~7_combout\ = (\COMP_CCD|count\(13) & (\COMP_CCD|freq\(13) & (\COMP_CCD|freq\(12) $ (!\COMP_CCD|count\(12))))) # (!\COMP_CCD|count\(13) & (!\COMP_CCD|freq\(13) & (\COMP_CCD|freq\(12) $ (!\COMP_CCD|count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|count\(13),
	datab => \COMP_CCD|freq\(12),
	datac => \COMP_CCD|freq\(13),
	datad => \COMP_CCD|count\(12),
	combout => \COMP_CCD|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y13_N18
\COMP_CCD|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~9_combout\ = (\COMP_CCD|Equal0~5_combout\ & (\COMP_CCD|Equal0~6_combout\ & (\COMP_CCD|Equal0~8_combout\ & \COMP_CCD|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~5_combout\,
	datab => \COMP_CCD|Equal0~6_combout\,
	datac => \COMP_CCD|Equal0~8_combout\,
	datad => \COMP_CCD|Equal0~7_combout\,
	combout => \COMP_CCD|Equal0~9_combout\);

-- Location: LCCOMB_X31_Y13_N24
\COMP_CCD|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal0~20_combout\ = (\COMP_CCD|Equal0~19_combout\ & (\COMP_CCD|Equal0~14_combout\ & (\COMP_CCD|Equal0~4_combout\ & \COMP_CCD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal0~19_combout\,
	datab => \COMP_CCD|Equal0~14_combout\,
	datac => \COMP_CCD|Equal0~4_combout\,
	datad => \COMP_CCD|Equal0~9_combout\,
	combout => \COMP_CCD|Equal0~20_combout\);

-- Location: LCCOMB_X30_Y14_N16
\COMP_CCD|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add1~72_combout\ = (\COMP_CCD|Add1~10_combout\ & !\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add1~10_combout\,
	datac => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Add1~72_combout\);

-- Location: FF_X30_Y14_N17
\COMP_CCD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COMP_CCD|Add1~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|count\(5));

-- Location: LCCOMB_X30_Y14_N18
\COMP_CCD|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~0_combout\ = (\COMP_CCD|Add1~10_combout\ & (!\COMP_CCD|Add1~8_combout\ & (\COMP_CCD|Add1~2_combout\ & !\COMP_CCD|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~10_combout\,
	datab => \COMP_CCD|Add1~8_combout\,
	datac => \COMP_CCD|Add1~2_combout\,
	datad => \COMP_CCD|Add1~4_combout\,
	combout => \COMP_CCD|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y13_N26
\COMP_CCD|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~1_combout\ = (\COMP_CCD|Equal1~0_combout\ & (!\COMP_CCD|Add1~6_combout\ & (\COMP_CCD|Add1~0_combout\ & !\COMP_CCD|Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~0_combout\,
	datab => \COMP_CCD|Add1~6_combout\,
	datac => \COMP_CCD|Add1~0_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Equal1~1_combout\);

-- Location: LCCOMB_X32_Y13_N22
\COMP_CCD|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~8_combout\ = (\COMP_CCD|Equal0~20_combout\) # ((!\COMP_CCD|Add1~55_combout\ & (!\COMP_CCD|Add1~53_combout\ & !\COMP_CCD|Add1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~55_combout\,
	datab => \COMP_CCD|Add1~53_combout\,
	datac => \COMP_CCD|Add1~51_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Equal1~8_combout\);

-- Location: LCCOMB_X31_Y13_N2
\COMP_CCD|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~6_combout\ = (!\COMP_CCD|Add1~47_combout\ & (!\COMP_CCD|Add1~45_combout\ & (!\COMP_CCD|Add1~43_combout\ & !\COMP_CCD|Add1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~47_combout\,
	datab => \COMP_CCD|Add1~45_combout\,
	datac => \COMP_CCD|Add1~43_combout\,
	datad => \COMP_CCD|Add1~49_combout\,
	combout => \COMP_CCD|Equal1~6_combout\);

-- Location: LCCOMB_X31_Y14_N30
\COMP_CCD|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~4_combout\ = (!\COMP_CCD|Add1~27_combout\ & (!\COMP_CCD|Add1~31_combout\ & (!\COMP_CCD|Add1~37_combout\ & !\COMP_CCD|Add1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~27_combout\,
	datab => \COMP_CCD|Add1~31_combout\,
	datac => \COMP_CCD|Add1~37_combout\,
	datad => \COMP_CCD|Add1~29_combout\,
	combout => \COMP_CCD|Equal1~4_combout\);

-- Location: LCCOMB_X30_Y13_N26
\COMP_CCD|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~5_combout\ = (!\COMP_CCD|Add1~41_combout\ & (!\COMP_CCD|Add1~33_combout\ & (!\COMP_CCD|Add1~35_combout\ & !\COMP_CCD|Add1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~41_combout\,
	datab => \COMP_CCD|Add1~33_combout\,
	datac => \COMP_CCD|Add1~35_combout\,
	datad => \COMP_CCD|Add1~39_combout\,
	combout => \COMP_CCD|Equal1~5_combout\);

-- Location: LCCOMB_X32_Y13_N24
\COMP_CCD|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~7_combout\ = (\COMP_CCD|Equal0~20_combout\) # ((\COMP_CCD|Equal1~6_combout\ & (\COMP_CCD|Equal1~4_combout\ & \COMP_CCD|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~6_combout\,
	datab => \COMP_CCD|Equal1~4_combout\,
	datac => \COMP_CCD|Equal1~5_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Equal1~7_combout\);

-- Location: LCCOMB_X32_Y13_N30
\COMP_CCD|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~10_combout\ = (\COMP_CCD|Equal0~20_combout\) # ((!\COMP_CCD|Add1~65_combout\ & !\COMP_CCD|Add1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~65_combout\,
	datab => \COMP_CCD|Add1~63_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Equal1~10_combout\);

-- Location: LCCOMB_X32_Y13_N28
\COMP_CCD|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~9_combout\ = (\COMP_CCD|Equal0~20_combout\) # ((!\COMP_CCD|Add1~59_combout\ & (!\COMP_CCD|Add1~57_combout\ & !\COMP_CCD|Add1~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~59_combout\,
	datab => \COMP_CCD|Add1~57_combout\,
	datac => \COMP_CCD|Add1~61_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Equal1~9_combout\);

-- Location: LCCOMB_X32_Y13_N8
\COMP_CCD|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~11_combout\ = (\COMP_CCD|Equal1~8_combout\ & (\COMP_CCD|Equal1~7_combout\ & (\COMP_CCD|Equal1~10_combout\ & \COMP_CCD|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~8_combout\,
	datab => \COMP_CCD|Equal1~7_combout\,
	datac => \COMP_CCD|Equal1~10_combout\,
	datad => \COMP_CCD|Equal1~9_combout\,
	combout => \COMP_CCD|Equal1~11_combout\);

-- Location: LCCOMB_X32_Y13_N14
\COMP_CCD|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~2_combout\ = (\COMP_CCD|Equal0~20_combout\) # ((!\COMP_CCD|Add1~14_combout\ & (!\COMP_CCD|Add1~16_combout\ & !\COMP_CCD|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~14_combout\,
	datab => \COMP_CCD|Add1~16_combout\,
	datac => \COMP_CCD|Add1~12_combout\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|Equal1~2_combout\);

-- Location: LCCOMB_X32_Y13_N12
\COMP_CCD|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal1~3_combout\ = (!\COMP_CCD|Add1~26_combout\ & (!\COMP_CCD|Add1~23_combout\ & (\COMP_CCD|Equal1~2_combout\ & !\COMP_CCD|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add1~26_combout\,
	datab => \COMP_CCD|Add1~23_combout\,
	datac => \COMP_CCD|Equal1~2_combout\,
	datad => \COMP_CCD|Add1~20_combout\,
	combout => \COMP_CCD|Equal1~3_combout\);

-- Location: LCCOMB_X32_Y13_N16
\COMP_CCD|clk_adc_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_adc_div~0_combout\ = \COMP_CCD|clk_adc_div~q\ $ (((\COMP_CCD|Equal1~1_combout\ & (\COMP_CCD|Equal1~11_combout\ & \COMP_CCD|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal1~1_combout\,
	datab => \COMP_CCD|clk_adc_div~q\,
	datac => \COMP_CCD|Equal1~11_combout\,
	datad => \COMP_CCD|Equal1~3_combout\,
	combout => \COMP_CCD|clk_adc_div~0_combout\);

-- Location: FF_X32_Y13_N31
\COMP_CCD|clk_adc_div\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \COMP_CCD|clk_adc_div~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_adc_div~q\);

-- Location: LCCOMB_X31_Y15_N30
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

-- Location: LCCOMB_X31_Y15_N20
\COMP_CCD|clk_adc_buf~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_adc_buf~feeder_combout\ = \COMP_CCD|clk_adc_buf~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|clk_adc_buf~0_combout\,
	combout => \COMP_CCD|clk_adc_buf~feeder_combout\);

-- Location: FF_X31_Y15_N21
\COMP_CCD|clk_adc_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|clk_adc_div~q\,
	d => \COMP_CCD|clk_adc_buf~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_adc_buf~q\);

-- Location: LCCOMB_X33_Y12_N18
\COMP_CCD|clk_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_div~0_combout\ = \COMP_CCD|clk_div~q\ $ (\COMP_CCD|Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|clk_div~q\,
	datad => \COMP_CCD|Equal0~20_combout\,
	combout => \COMP_CCD|clk_div~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\COMP_CCD|clk_div~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_div~feeder_combout\ = \COMP_CCD|clk_div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|clk_div~0_combout\,
	combout => \COMP_CCD|clk_div~feeder_combout\);

-- Location: FF_X33_Y12_N11
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X19_Y4_N0
\COMP_CCD|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~0_combout\ = \COMP_CCD|process_2:count[0]~q\ $ (VCC)
-- \COMP_CCD|Add2~1\ = CARRY(\COMP_CCD|process_2:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[0]~q\,
	datad => VCC,
	combout => \COMP_CCD|Add2~0_combout\,
	cout => \COMP_CCD|Add2~1\);

-- Location: FF_X19_Y4_N1
\COMP_CCD|process_2:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[0]~q\);

-- Location: LCCOMB_X19_Y4_N2
\COMP_CCD|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~2_combout\ = (\COMP_CCD|process_2:count[1]~q\ & (!\COMP_CCD|Add2~1\)) # (!\COMP_CCD|process_2:count[1]~q\ & ((\COMP_CCD|Add2~1\) # (GND)))
-- \COMP_CCD|Add2~3\ = CARRY((!\COMP_CCD|Add2~1\) # (!\COMP_CCD|process_2:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[1]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~1\,
	combout => \COMP_CCD|Add2~2_combout\,
	cout => \COMP_CCD|Add2~3\);

-- Location: FF_X19_Y4_N3
\COMP_CCD|process_2:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[1]~q\);

-- Location: LCCOMB_X19_Y4_N4
\COMP_CCD|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~4_combout\ = (\COMP_CCD|process_2:count[2]~q\ & (\COMP_CCD|Add2~3\ $ (GND))) # (!\COMP_CCD|process_2:count[2]~q\ & (!\COMP_CCD|Add2~3\ & VCC))
-- \COMP_CCD|Add2~5\ = CARRY((\COMP_CCD|process_2:count[2]~q\ & !\COMP_CCD|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[2]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~3\,
	combout => \COMP_CCD|Add2~4_combout\,
	cout => \COMP_CCD|Add2~5\);

-- Location: LCCOMB_X19_Y4_N10
\COMP_CCD|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~10_combout\ = (\COMP_CCD|process_2:count[5]~q\ & (!\COMP_CCD|Add2~9\)) # (!\COMP_CCD|process_2:count[5]~q\ & ((\COMP_CCD|Add2~9\) # (GND)))
-- \COMP_CCD|Add2~11\ = CARRY((!\COMP_CCD|Add2~9\) # (!\COMP_CCD|process_2:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[5]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~9\,
	combout => \COMP_CCD|Add2~10_combout\,
	cout => \COMP_CCD|Add2~11\);

-- Location: LCCOMB_X19_Y4_N12
\COMP_CCD|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~12_combout\ = (\COMP_CCD|process_2:count[6]~q\ & (\COMP_CCD|Add2~11\ $ (GND))) # (!\COMP_CCD|process_2:count[6]~q\ & (!\COMP_CCD|Add2~11\ & VCC))
-- \COMP_CCD|Add2~13\ = CARRY((\COMP_CCD|process_2:count[6]~q\ & !\COMP_CCD|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[6]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~11\,
	combout => \COMP_CCD|Add2~12_combout\,
	cout => \COMP_CCD|Add2~13\);

-- Location: LCCOMB_X18_Y4_N10
\COMP_CCD|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~3_combout\ = (\COMP_CCD|Add2~12_combout\ & !\COMP_CCD|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add2~12_combout\,
	datad => \COMP_CCD|Equal5~2_combout\,
	combout => \COMP_CCD|count~3_combout\);

-- Location: FF_X18_Y4_N11
\COMP_CCD|process_2:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[6]~q\);

-- Location: LCCOMB_X19_Y4_N14
\COMP_CCD|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~14_combout\ = (\COMP_CCD|process_2:count[7]~q\ & (!\COMP_CCD|Add2~13\)) # (!\COMP_CCD|process_2:count[7]~q\ & ((\COMP_CCD|Add2~13\) # (GND)))
-- \COMP_CCD|Add2~15\ = CARRY((!\COMP_CCD|Add2~13\) # (!\COMP_CCD|process_2:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[7]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~13\,
	combout => \COMP_CCD|Add2~14_combout\,
	cout => \COMP_CCD|Add2~15\);

-- Location: FF_X19_Y4_N15
\COMP_CCD|process_2:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[7]~q\);

-- Location: LCCOMB_X19_Y4_N16
\COMP_CCD|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~16_combout\ = (\COMP_CCD|process_2:count[8]~q\ & (\COMP_CCD|Add2~15\ $ (GND))) # (!\COMP_CCD|process_2:count[8]~q\ & (!\COMP_CCD|Add2~15\ & VCC))
-- \COMP_CCD|Add2~17\ = CARRY((\COMP_CCD|process_2:count[8]~q\ & !\COMP_CCD|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[8]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~15\,
	combout => \COMP_CCD|Add2~16_combout\,
	cout => \COMP_CCD|Add2~17\);

-- Location: FF_X19_Y4_N17
\COMP_CCD|process_2:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[8]~q\);

-- Location: LCCOMB_X19_Y4_N18
\COMP_CCD|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~18_combout\ = (\COMP_CCD|process_2:count[9]~q\ & (!\COMP_CCD|Add2~17\)) # (!\COMP_CCD|process_2:count[9]~q\ & ((\COMP_CCD|Add2~17\) # (GND)))
-- \COMP_CCD|Add2~19\ = CARRY((!\COMP_CCD|Add2~17\) # (!\COMP_CCD|process_2:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[9]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~17\,
	combout => \COMP_CCD|Add2~18_combout\,
	cout => \COMP_CCD|Add2~19\);

-- Location: FF_X19_Y4_N19
\COMP_CCD|process_2:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[9]~q\);

-- Location: LCCOMB_X19_Y4_N20
\COMP_CCD|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~20_combout\ = (\COMP_CCD|process_2:count[10]~q\ & (\COMP_CCD|Add2~19\ $ (GND))) # (!\COMP_CCD|process_2:count[10]~q\ & (!\COMP_CCD|Add2~19\ & VCC))
-- \COMP_CCD|Add2~21\ = CARRY((\COMP_CCD|process_2:count[10]~q\ & !\COMP_CCD|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[10]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~19\,
	combout => \COMP_CCD|Add2~20_combout\,
	cout => \COMP_CCD|Add2~21\);

-- Location: FF_X19_Y4_N21
\COMP_CCD|process_2:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[10]~q\);

-- Location: LCCOMB_X19_Y4_N22
\COMP_CCD|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~22_combout\ = (\COMP_CCD|process_2:count[11]~q\ & (!\COMP_CCD|Add2~21\)) # (!\COMP_CCD|process_2:count[11]~q\ & ((\COMP_CCD|Add2~21\) # (GND)))
-- \COMP_CCD|Add2~23\ = CARRY((!\COMP_CCD|Add2~21\) # (!\COMP_CCD|process_2:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[11]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~21\,
	combout => \COMP_CCD|Add2~22_combout\,
	cout => \COMP_CCD|Add2~23\);

-- Location: FF_X19_Y4_N23
\COMP_CCD|process_2:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[11]~q\);

-- Location: LCCOMB_X19_Y4_N24
\COMP_CCD|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~24_combout\ = (\COMP_CCD|process_2:count[12]~q\ & (\COMP_CCD|Add2~23\ $ (GND))) # (!\COMP_CCD|process_2:count[12]~q\ & (!\COMP_CCD|Add2~23\ & VCC))
-- \COMP_CCD|Add2~25\ = CARRY((\COMP_CCD|process_2:count[12]~q\ & !\COMP_CCD|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[12]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~23\,
	combout => \COMP_CCD|Add2~24_combout\,
	cout => \COMP_CCD|Add2~25\);

-- Location: LCCOMB_X18_Y4_N18
\COMP_CCD|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~4_combout\ = (\COMP_CCD|Add2~24_combout\ & !\COMP_CCD|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|Add2~24_combout\,
	datad => \COMP_CCD|Equal5~2_combout\,
	combout => \COMP_CCD|count~4_combout\);

-- Location: FF_X18_Y4_N19
\COMP_CCD|process_2:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[12]~q\);

-- Location: LCCOMB_X19_Y4_N26
\COMP_CCD|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~26_combout\ = (\COMP_CCD|process_2:count[13]~q\ & (!\COMP_CCD|Add2~25\)) # (!\COMP_CCD|process_2:count[13]~q\ & ((\COMP_CCD|Add2~25\) # (GND)))
-- \COMP_CCD|Add2~27\ = CARRY((!\COMP_CCD|Add2~25\) # (!\COMP_CCD|process_2:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[13]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~25\,
	combout => \COMP_CCD|Add2~26_combout\,
	cout => \COMP_CCD|Add2~27\);

-- Location: LCCOMB_X18_Y3_N24
\COMP_CCD|process_2:count[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[13]~feeder_combout\ = \COMP_CCD|Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|Add2~26_combout\,
	combout => \COMP_CCD|process_2:count[13]~feeder_combout\);

-- Location: FF_X18_Y3_N25
\COMP_CCD|process_2:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[13]~q\);

-- Location: LCCOMB_X19_Y4_N28
\COMP_CCD|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~28_combout\ = (\COMP_CCD|process_2:count[14]~q\ & (\COMP_CCD|Add2~27\ $ (GND))) # (!\COMP_CCD|process_2:count[14]~q\ & (!\COMP_CCD|Add2~27\ & VCC))
-- \COMP_CCD|Add2~29\ = CARRY((\COMP_CCD|process_2:count[14]~q\ & !\COMP_CCD|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[14]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~27\,
	combout => \COMP_CCD|Add2~28_combout\,
	cout => \COMP_CCD|Add2~29\);

-- Location: LCCOMB_X18_Y3_N6
\COMP_CCD|process_2:count[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|process_2:count[14]~feeder_combout\ = \COMP_CCD|Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMP_CCD|Add2~28_combout\,
	combout => \COMP_CCD|process_2:count[14]~feeder_combout\);

-- Location: FF_X18_Y3_N7
\COMP_CCD|process_2:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|process_2:count[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[14]~q\);

-- Location: LCCOMB_X19_Y4_N30
\COMP_CCD|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~30_combout\ = (\COMP_CCD|process_2:count[15]~q\ & (!\COMP_CCD|Add2~29\)) # (!\COMP_CCD|process_2:count[15]~q\ & ((\COMP_CCD|Add2~29\) # (GND)))
-- \COMP_CCD|Add2~31\ = CARRY((!\COMP_CCD|Add2~29\) # (!\COMP_CCD|process_2:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[15]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~29\,
	combout => \COMP_CCD|Add2~30_combout\,
	cout => \COMP_CCD|Add2~31\);

-- Location: FF_X19_Y4_N31
\COMP_CCD|process_2:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[15]~q\);

-- Location: LCCOMB_X19_Y3_N0
\COMP_CCD|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~32_combout\ = (\COMP_CCD|process_2:count[16]~q\ & (\COMP_CCD|Add2~31\ $ (GND))) # (!\COMP_CCD|process_2:count[16]~q\ & (!\COMP_CCD|Add2~31\ & VCC))
-- \COMP_CCD|Add2~33\ = CARRY((\COMP_CCD|process_2:count[16]~q\ & !\COMP_CCD|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[16]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~31\,
	combout => \COMP_CCD|Add2~32_combout\,
	cout => \COMP_CCD|Add2~33\);

-- Location: FF_X19_Y3_N1
\COMP_CCD|process_2:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[16]~q\);

-- Location: LCCOMB_X19_Y3_N2
\COMP_CCD|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~34_combout\ = (\COMP_CCD|process_2:count[17]~q\ & (!\COMP_CCD|Add2~33\)) # (!\COMP_CCD|process_2:count[17]~q\ & ((\COMP_CCD|Add2~33\) # (GND)))
-- \COMP_CCD|Add2~35\ = CARRY((!\COMP_CCD|Add2~33\) # (!\COMP_CCD|process_2:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[17]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~33\,
	combout => \COMP_CCD|Add2~34_combout\,
	cout => \COMP_CCD|Add2~35\);

-- Location: FF_X19_Y3_N3
\COMP_CCD|process_2:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[17]~q\);

-- Location: LCCOMB_X19_Y3_N4
\COMP_CCD|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~36_combout\ = (\COMP_CCD|process_2:count[18]~q\ & (\COMP_CCD|Add2~35\ $ (GND))) # (!\COMP_CCD|process_2:count[18]~q\ & (!\COMP_CCD|Add2~35\ & VCC))
-- \COMP_CCD|Add2~37\ = CARRY((\COMP_CCD|process_2:count[18]~q\ & !\COMP_CCD|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[18]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~35\,
	combout => \COMP_CCD|Add2~36_combout\,
	cout => \COMP_CCD|Add2~37\);

-- Location: FF_X19_Y3_N5
\COMP_CCD|process_2:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[18]~q\);

-- Location: LCCOMB_X19_Y3_N6
\COMP_CCD|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~38_combout\ = (\COMP_CCD|process_2:count[19]~q\ & (!\COMP_CCD|Add2~37\)) # (!\COMP_CCD|process_2:count[19]~q\ & ((\COMP_CCD|Add2~37\) # (GND)))
-- \COMP_CCD|Add2~39\ = CARRY((!\COMP_CCD|Add2~37\) # (!\COMP_CCD|process_2:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[19]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~37\,
	combout => \COMP_CCD|Add2~38_combout\,
	cout => \COMP_CCD|Add2~39\);

-- Location: FF_X19_Y3_N7
\COMP_CCD|process_2:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[19]~q\);

-- Location: LCCOMB_X19_Y3_N8
\COMP_CCD|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~40_combout\ = (\COMP_CCD|process_2:count[20]~q\ & (\COMP_CCD|Add2~39\ $ (GND))) # (!\COMP_CCD|process_2:count[20]~q\ & (!\COMP_CCD|Add2~39\ & VCC))
-- \COMP_CCD|Add2~41\ = CARRY((\COMP_CCD|process_2:count[20]~q\ & !\COMP_CCD|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[20]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~39\,
	combout => \COMP_CCD|Add2~40_combout\,
	cout => \COMP_CCD|Add2~41\);

-- Location: FF_X19_Y3_N9
\COMP_CCD|process_2:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[20]~q\);

-- Location: LCCOMB_X19_Y3_N10
\COMP_CCD|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~42_combout\ = (\COMP_CCD|process_2:count[21]~q\ & (!\COMP_CCD|Add2~41\)) # (!\COMP_CCD|process_2:count[21]~q\ & ((\COMP_CCD|Add2~41\) # (GND)))
-- \COMP_CCD|Add2~43\ = CARRY((!\COMP_CCD|Add2~41\) # (!\COMP_CCD|process_2:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[21]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~41\,
	combout => \COMP_CCD|Add2~42_combout\,
	cout => \COMP_CCD|Add2~43\);

-- Location: FF_X19_Y3_N11
\COMP_CCD|process_2:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[21]~q\);

-- Location: LCCOMB_X19_Y3_N12
\COMP_CCD|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~44_combout\ = (\COMP_CCD|process_2:count[22]~q\ & (\COMP_CCD|Add2~43\ $ (GND))) # (!\COMP_CCD|process_2:count[22]~q\ & (!\COMP_CCD|Add2~43\ & VCC))
-- \COMP_CCD|Add2~45\ = CARRY((\COMP_CCD|process_2:count[22]~q\ & !\COMP_CCD|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[22]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~43\,
	combout => \COMP_CCD|Add2~44_combout\,
	cout => \COMP_CCD|Add2~45\);

-- Location: FF_X19_Y3_N13
\COMP_CCD|process_2:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[22]~q\);

-- Location: LCCOMB_X19_Y3_N14
\COMP_CCD|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~46_combout\ = (\COMP_CCD|process_2:count[23]~q\ & (!\COMP_CCD|Add2~45\)) # (!\COMP_CCD|process_2:count[23]~q\ & ((\COMP_CCD|Add2~45\) # (GND)))
-- \COMP_CCD|Add2~47\ = CARRY((!\COMP_CCD|Add2~45\) # (!\COMP_CCD|process_2:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[23]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~45\,
	combout => \COMP_CCD|Add2~46_combout\,
	cout => \COMP_CCD|Add2~47\);

-- Location: FF_X19_Y3_N15
\COMP_CCD|process_2:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[23]~q\);

-- Location: LCCOMB_X19_Y3_N16
\COMP_CCD|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~48_combout\ = (\COMP_CCD|process_2:count[24]~q\ & (\COMP_CCD|Add2~47\ $ (GND))) # (!\COMP_CCD|process_2:count[24]~q\ & (!\COMP_CCD|Add2~47\ & VCC))
-- \COMP_CCD|Add2~49\ = CARRY((\COMP_CCD|process_2:count[24]~q\ & !\COMP_CCD|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[24]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~47\,
	combout => \COMP_CCD|Add2~48_combout\,
	cout => \COMP_CCD|Add2~49\);

-- Location: FF_X19_Y3_N17
\COMP_CCD|process_2:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[24]~q\);

-- Location: LCCOMB_X19_Y3_N18
\COMP_CCD|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~50_combout\ = (\COMP_CCD|process_2:count[25]~q\ & (!\COMP_CCD|Add2~49\)) # (!\COMP_CCD|process_2:count[25]~q\ & ((\COMP_CCD|Add2~49\) # (GND)))
-- \COMP_CCD|Add2~51\ = CARRY((!\COMP_CCD|Add2~49\) # (!\COMP_CCD|process_2:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[25]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~49\,
	combout => \COMP_CCD|Add2~50_combout\,
	cout => \COMP_CCD|Add2~51\);

-- Location: FF_X19_Y3_N19
\COMP_CCD|process_2:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[25]~q\);

-- Location: LCCOMB_X19_Y3_N20
\COMP_CCD|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~52_combout\ = (\COMP_CCD|process_2:count[26]~q\ & (\COMP_CCD|Add2~51\ $ (GND))) # (!\COMP_CCD|process_2:count[26]~q\ & (!\COMP_CCD|Add2~51\ & VCC))
-- \COMP_CCD|Add2~53\ = CARRY((\COMP_CCD|process_2:count[26]~q\ & !\COMP_CCD|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[26]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~51\,
	combout => \COMP_CCD|Add2~52_combout\,
	cout => \COMP_CCD|Add2~53\);

-- Location: FF_X19_Y3_N21
\COMP_CCD|process_2:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[26]~q\);

-- Location: LCCOMB_X19_Y3_N22
\COMP_CCD|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~54_combout\ = (\COMP_CCD|process_2:count[27]~q\ & (!\COMP_CCD|Add2~53\)) # (!\COMP_CCD|process_2:count[27]~q\ & ((\COMP_CCD|Add2~53\) # (GND)))
-- \COMP_CCD|Add2~55\ = CARRY((!\COMP_CCD|Add2~53\) # (!\COMP_CCD|process_2:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[27]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~53\,
	combout => \COMP_CCD|Add2~54_combout\,
	cout => \COMP_CCD|Add2~55\);

-- Location: FF_X19_Y3_N23
\COMP_CCD|process_2:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[27]~q\);

-- Location: LCCOMB_X19_Y3_N24
\COMP_CCD|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~56_combout\ = (\COMP_CCD|process_2:count[28]~q\ & (\COMP_CCD|Add2~55\ $ (GND))) # (!\COMP_CCD|process_2:count[28]~q\ & (!\COMP_CCD|Add2~55\ & VCC))
-- \COMP_CCD|Add2~57\ = CARRY((\COMP_CCD|process_2:count[28]~q\ & !\COMP_CCD|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[28]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~55\,
	combout => \COMP_CCD|Add2~56_combout\,
	cout => \COMP_CCD|Add2~57\);

-- Location: FF_X19_Y3_N25
\COMP_CCD|process_2:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[28]~q\);

-- Location: LCCOMB_X19_Y3_N26
\COMP_CCD|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~58_combout\ = (\COMP_CCD|process_2:count[29]~q\ & (!\COMP_CCD|Add2~57\)) # (!\COMP_CCD|process_2:count[29]~q\ & ((\COMP_CCD|Add2~57\) # (GND)))
-- \COMP_CCD|Add2~59\ = CARRY((!\COMP_CCD|Add2~57\) # (!\COMP_CCD|process_2:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[29]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~57\,
	combout => \COMP_CCD|Add2~58_combout\,
	cout => \COMP_CCD|Add2~59\);

-- Location: FF_X19_Y3_N27
\COMP_CCD|process_2:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[29]~q\);

-- Location: LCCOMB_X19_Y3_N28
\COMP_CCD|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~60_combout\ = (\COMP_CCD|process_2:count[30]~q\ & (\COMP_CCD|Add2~59\ $ (GND))) # (!\COMP_CCD|process_2:count[30]~q\ & (!\COMP_CCD|Add2~59\ & VCC))
-- \COMP_CCD|Add2~61\ = CARRY((\COMP_CCD|process_2:count[30]~q\ & !\COMP_CCD|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[30]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~59\,
	combout => \COMP_CCD|Add2~60_combout\,
	cout => \COMP_CCD|Add2~61\);

-- Location: FF_X19_Y3_N29
\COMP_CCD|process_2:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[30]~q\);

-- Location: LCCOMB_X19_Y3_N30
\COMP_CCD|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~62_combout\ = \COMP_CCD|process_2:count[31]~q\ $ (\COMP_CCD|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[31]~q\,
	cin => \COMP_CCD|Add2~61\,
	combout => \COMP_CCD|Add2~62_combout\);

-- Location: FF_X19_Y3_N31
\COMP_CCD|process_2:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[31]~q\);

-- Location: LCCOMB_X18_Y4_N2
\COMP_CCD|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~1_combout\ = (\COMP_CCD|process_2:count[6]~q\ & (\COMP_CCD|process_2:count[12]~q\ & (!\COMP_CCD|process_2:count[31]~q\ & !\COMP_CCD|process_2:count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[6]~q\,
	datab => \COMP_CCD|process_2:count[12]~q\,
	datac => \COMP_CCD|process_2:count[31]~q\,
	datad => \COMP_CCD|process_2:count[2]~q\,
	combout => \COMP_CCD|Equal5~1_combout\);

-- Location: LCCOMB_X18_Y3_N26
\COMP_CCD|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~1_combout\ = (!\COMP_CCD|process_2:count[23]~q\ & (!\COMP_CCD|process_2:count[22]~q\ & (!\COMP_CCD|process_2:count[21]~q\ & !\COMP_CCD|process_2:count[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[23]~q\,
	datab => \COMP_CCD|process_2:count[22]~q\,
	datac => \COMP_CCD|process_2:count[21]~q\,
	datad => \COMP_CCD|process_2:count[24]~q\,
	combout => \COMP_CCD|LessThan1~1_combout\);

-- Location: LCCOMB_X18_Y3_N20
\COMP_CCD|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~2_combout\ = (!\COMP_CCD|process_2:count[19]~q\ & (!\COMP_CCD|process_2:count[20]~q\ & (!\COMP_CCD|process_2:count[18]~q\ & !\COMP_CCD|process_2:count[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[19]~q\,
	datab => \COMP_CCD|process_2:count[20]~q\,
	datac => \COMP_CCD|process_2:count[18]~q\,
	datad => \COMP_CCD|process_2:count[17]~q\,
	combout => \COMP_CCD|LessThan1~2_combout\);

-- Location: LCCOMB_X18_Y3_N4
\COMP_CCD|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~0_combout\ = (!\COMP_CCD|process_2:count[26]~q\ & (!\COMP_CCD|process_2:count[25]~q\ & (!\COMP_CCD|process_2:count[27]~q\ & !\COMP_CCD|process_2:count[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[26]~q\,
	datab => \COMP_CCD|process_2:count[25]~q\,
	datac => \COMP_CCD|process_2:count[27]~q\,
	datad => \COMP_CCD|process_2:count[28]~q\,
	combout => \COMP_CCD|LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y3_N18
\COMP_CCD|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~3_combout\ = (!\COMP_CCD|process_2:count[14]~q\ & (!\COMP_CCD|process_2:count[16]~q\ & (!\COMP_CCD|process_2:count[15]~q\ & !\COMP_CCD|process_2:count[13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[14]~q\,
	datab => \COMP_CCD|process_2:count[16]~q\,
	datac => \COMP_CCD|process_2:count[15]~q\,
	datad => \COMP_CCD|process_2:count[13]~q\,
	combout => \COMP_CCD|LessThan1~3_combout\);

-- Location: LCCOMB_X18_Y3_N28
\COMP_CCD|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~4_combout\ = (\COMP_CCD|LessThan1~1_combout\ & (\COMP_CCD|LessThan1~2_combout\ & (\COMP_CCD|LessThan1~0_combout\ & \COMP_CCD|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan1~1_combout\,
	datab => \COMP_CCD|LessThan1~2_combout\,
	datac => \COMP_CCD|LessThan1~0_combout\,
	datad => \COMP_CCD|LessThan1~3_combout\,
	combout => \COMP_CCD|LessThan1~4_combout\);

-- Location: LCCOMB_X18_Y3_N2
\COMP_CCD|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~5_combout\ = (!\COMP_CCD|process_2:count[29]~q\ & (!\COMP_CCD|process_2:count[30]~q\ & \COMP_CCD|LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[29]~q\,
	datac => \COMP_CCD|process_2:count[30]~q\,
	datad => \COMP_CCD|LessThan1~4_combout\,
	combout => \COMP_CCD|LessThan1~5_combout\);

-- Location: LCCOMB_X18_Y4_N0
\COMP_CCD|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~0_combout\ = (\COMP_CCD|process_2:count[1]~q\ & (\COMP_CCD|process_2:count[4]~q\ & (\COMP_CCD|process_2:count[3]~q\ & \COMP_CCD|process_2:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[1]~q\,
	datab => \COMP_CCD|process_2:count[4]~q\,
	datac => \COMP_CCD|process_2:count[3]~q\,
	datad => \COMP_CCD|process_2:count[0]~q\,
	combout => \COMP_CCD|Equal5~0_combout\);

-- Location: LCCOMB_X18_Y4_N28
\COMP_CCD|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal5~2_combout\ = (\COMP_CCD|Equal2~0_combout\ & (\COMP_CCD|Equal5~1_combout\ & (\COMP_CCD|LessThan1~5_combout\ & \COMP_CCD|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~0_combout\,
	datab => \COMP_CCD|Equal5~1_combout\,
	datac => \COMP_CCD|LessThan1~5_combout\,
	datad => \COMP_CCD|Equal5~0_combout\,
	combout => \COMP_CCD|Equal5~2_combout\);

-- Location: LCCOMB_X18_Y4_N6
\COMP_CCD|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~0_combout\ = (\COMP_CCD|Add2~4_combout\ & !\COMP_CCD|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~4_combout\,
	datad => \COMP_CCD|Equal5~2_combout\,
	combout => \COMP_CCD|count~0_combout\);

-- Location: FF_X18_Y4_N7
\COMP_CCD|process_2:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[2]~q\);

-- Location: LCCOMB_X19_Y4_N6
\COMP_CCD|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~6_combout\ = (\COMP_CCD|process_2:count[3]~q\ & (!\COMP_CCD|Add2~5\)) # (!\COMP_CCD|process_2:count[3]~q\ & ((\COMP_CCD|Add2~5\) # (GND)))
-- \COMP_CCD|Add2~7\ = CARRY((!\COMP_CCD|Add2~5\) # (!\COMP_CCD|process_2:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[3]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~5\,
	combout => \COMP_CCD|Add2~6_combout\,
	cout => \COMP_CCD|Add2~7\);

-- Location: LCCOMB_X18_Y4_N14
\COMP_CCD|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~2_combout\ = (\COMP_CCD|Add2~6_combout\ & !\COMP_CCD|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Add2~6_combout\,
	datad => \COMP_CCD|Equal5~2_combout\,
	combout => \COMP_CCD|count~2_combout\);

-- Location: FF_X18_Y4_N15
\COMP_CCD|process_2:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[3]~q\);

-- Location: LCCOMB_X19_Y4_N8
\COMP_CCD|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Add2~8_combout\ = (\COMP_CCD|process_2:count[4]~q\ & (\COMP_CCD|Add2~7\ $ (GND))) # (!\COMP_CCD|process_2:count[4]~q\ & (!\COMP_CCD|Add2~7\ & VCC))
-- \COMP_CCD|Add2~9\ = CARRY((\COMP_CCD|process_2:count[4]~q\ & !\COMP_CCD|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[4]~q\,
	datad => VCC,
	cin => \COMP_CCD|Add2~7\,
	combout => \COMP_CCD|Add2~8_combout\,
	cout => \COMP_CCD|Add2~9\);

-- Location: LCCOMB_X18_Y4_N4
\COMP_CCD|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|count~1_combout\ = (\COMP_CCD|Add2~8_combout\ & !\COMP_CCD|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|Add2~8_combout\,
	datad => \COMP_CCD|Equal5~2_combout\,
	combout => \COMP_CCD|count~1_combout\);

-- Location: FF_X18_Y4_N5
\COMP_CCD|process_2:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[4]~q\);

-- Location: FF_X19_Y4_N11
\COMP_CCD|process_2:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|process_2:count[5]~q\);

-- Location: LCCOMB_X18_Y4_N8
\COMP_CCD|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~6_combout\ = (!\COMP_CCD|process_2:count[10]~q\ & (!\COMP_CCD|process_2:count[9]~q\ & (!\COMP_CCD|process_2:count[8]~q\ & !\COMP_CCD|process_2:count[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[10]~q\,
	datab => \COMP_CCD|process_2:count[9]~q\,
	datac => \COMP_CCD|process_2:count[8]~q\,
	datad => \COMP_CCD|process_2:count[11]~q\,
	combout => \COMP_CCD|LessThan1~6_combout\);

-- Location: LCCOMB_X18_Y4_N30
\COMP_CCD|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~0_combout\ = (!\COMP_CCD|process_2:count[5]~q\ & (\COMP_CCD|LessThan1~6_combout\ & !\COMP_CCD|process_2:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|process_2:count[5]~q\,
	datac => \COMP_CCD|LessThan1~6_combout\,
	datad => \COMP_CCD|process_2:count[7]~q\,
	combout => \COMP_CCD|Equal2~0_combout\);

-- Location: LCCOMB_X18_Y4_N20
\COMP_CCD|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~1_combout\ = (!\COMP_CCD|process_2:count[6]~q\ & (!\COMP_CCD|process_2:count[4]~q\ & (!\COMP_CCD|process_2:count[3]~q\ & !\COMP_CCD|process_2:count[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[6]~q\,
	datab => \COMP_CCD|process_2:count[4]~q\,
	datac => \COMP_CCD|process_2:count[3]~q\,
	datad => \COMP_CCD|process_2:count[12]~q\,
	combout => \COMP_CCD|Equal2~1_combout\);

-- Location: LCCOMB_X18_Y4_N26
\COMP_CCD|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~0_combout\ = (!\COMP_CCD|process_2:count[2]~q\ & (\COMP_CCD|Equal2~1_combout\ & ((!\COMP_CCD|process_2:count[0]~q\) # (!\COMP_CCD|process_2:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[1]~q\,
	datab => \COMP_CCD|process_2:count[0]~q\,
	datac => \COMP_CCD|process_2:count[2]~q\,
	datad => \COMP_CCD|Equal2~1_combout\,
	combout => \COMP_CCD|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y3_N30
\COMP_CCD|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan0~1_combout\ = (\COMP_CCD|process_2:count[31]~q\) # ((\COMP_CCD|Equal2~0_combout\ & (\COMP_CCD|LessThan0~0_combout\ & \COMP_CCD|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|Equal2~0_combout\,
	datab => \COMP_CCD|process_2:count[31]~q\,
	datac => \COMP_CCD|LessThan0~0_combout\,
	datad => \COMP_CCD|LessThan1~5_combout\,
	combout => \COMP_CCD|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y3_N16
\COMP_CCD|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal4~0_combout\ = (\COMP_CCD|process_2:count[2]~q\ & (\COMP_CCD|Equal2~1_combout\ & (\COMP_CCD|Equal2~0_combout\ & \COMP_CCD|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[2]~q\,
	datab => \COMP_CCD|Equal2~1_combout\,
	datac => \COMP_CCD|Equal2~0_combout\,
	datad => \COMP_CCD|LessThan1~5_combout\,
	combout => \COMP_CCD|Equal4~0_combout\);

-- Location: LCCOMB_X17_Y3_N18
\COMP_CCD|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|Equal2~2_combout\ = (!\COMP_CCD|process_2:count[1]~q\ & (!\COMP_CCD|process_2:count[31]~q\ & \COMP_CCD|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[1]~q\,
	datab => \COMP_CCD|process_2:count[31]~q\,
	datad => \COMP_CCD|Equal4~0_combout\,
	combout => \COMP_CCD|Equal2~2_combout\);

-- Location: LCCOMB_X17_Y3_N8
\COMP_CCD|rog_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_buf~0_combout\ = (!\COMP_CCD|LessThan0~1_combout\ & ((\COMP_CCD|Equal2~2_combout\ & (!\COMP_CCD|process_2:count[0]~q\)) # (!\COMP_CCD|Equal2~2_combout\ & ((\COMP_CCD|rog_buf~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[0]~q\,
	datab => \COMP_CCD|rog_buf~q\,
	datac => \COMP_CCD|LessThan0~1_combout\,
	datad => \COMP_CCD|Equal2~2_combout\,
	combout => \COMP_CCD|rog_buf~0_combout\);

-- Location: LCCOMB_X17_Y3_N26
\COMP_CCD|rog_buf~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|rog_buf~feeder_combout\ = \COMP_CCD|rog_buf~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_CCD|rog_buf~0_combout\,
	combout => \COMP_CCD|rog_buf~feeder_combout\);

-- Location: FF_X17_Y3_N27
\COMP_CCD|rog_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|rog_buf~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|rog_buf~q\);

-- Location: LCCOMB_X26_Y21_N22
\mem_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_reg~0_combout\ = !\mem_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_reg~q\,
	combout => \mem_reg~0_combout\);

-- Location: FF_X26_Y21_N23
mem_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|rog_buf~q\,
	d => \mem_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_reg~q\);

-- Location: IOIBUF_X34_Y12_N15
\KEY_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_1,
	o => \KEY_1~input_o\);

-- Location: CLKCTRL_G7
\COMP_CCD|clk_adc_buf~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \COMP_CCD|clk_adc_buf~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \COMP_CCD|clk_adc_buf~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y20_N0
\tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = (\KEY_1~input_o\ & (\tmp~q\)) # (!\KEY_1~input_o\ & ((\mem_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_1~input_o\,
	datac => \tmp~q\,
	datad => \mem_reg~q\,
	combout => \tmp~0_combout\);

-- Location: FF_X26_Y20_N1
tmp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp~q\);

-- Location: LCCOMB_X25_Y21_N0
\cnt[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~34_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~35\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~34_combout\,
	cout => \cnt[0]~35\);

-- Location: LCCOMB_X26_Y21_N18
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\KEY_1~input_o\ & (\tmp~q\ $ (\mem_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_1~input_o\,
	datab => \tmp~q\,
	datac => \mem_reg~q\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X26_Y21_N14
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (cnt(26)) # ((cnt(29)) # ((cnt(28)) # (cnt(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(26),
	datab => cnt(29),
	datac => cnt(28),
	datad => cnt(27),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X26_Y21_N4
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cnt(13)) # ((cnt(10)) # ((cnt(12)) # (cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(10),
	datac => cnt(12),
	datad => cnt(11),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y21_N8
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (cnt(14)) # ((cnt(15)) # ((cnt(16)) # (cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datab => cnt(15),
	datac => cnt(16),
	datad => cnt(17),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y21_N26
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (cnt(18)) # ((cnt(19)) # ((cnt(21)) # (cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datab => cnt(19),
	datac => cnt(21),
	datad => cnt(20),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y21_N20
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (cnt(23)) # ((cnt(25)) # ((cnt(24)) # (cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datab => cnt(25),
	datac => cnt(24),
	datad => cnt(22),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y21_N0
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y21_N2
\cnt[17]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[17]~99_combout\ = (!cnt(31) & ((cnt(30)) # ((\LessThan0~5_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(30),
	datab => cnt(31),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \cnt[17]~99_combout\);

-- Location: LCCOMB_X26_Y21_N30
\cnt[17]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[17]~98_combout\ = ((!\KEY_1~input_o\ & (\tmp~q\ $ (\mem_reg~q\)))) # (!\cnt[17]~99_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_1~input_o\,
	datab => \tmp~q\,
	datac => \mem_reg~q\,
	datad => \cnt[17]~99_combout\,
	combout => \cnt[17]~98_combout\);

-- Location: FF_X25_Y21_N1
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[0]~34_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X25_Y21_N2
\cnt[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~36_combout\ = (cnt(1) & (!\cnt[0]~35\)) # (!cnt(1) & ((\cnt[0]~35\) # (GND)))
-- \cnt[1]~37\ = CARRY((!\cnt[0]~35\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \cnt[0]~35\,
	combout => \cnt[1]~36_combout\,
	cout => \cnt[1]~37\);

-- Location: FF_X25_Y21_N3
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[1]~36_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X25_Y21_N4
\cnt[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~38_combout\ = (cnt(2) & (\cnt[1]~37\ $ (GND))) # (!cnt(2) & (!\cnt[1]~37\ & VCC))
-- \cnt[2]~39\ = CARRY((cnt(2) & !\cnt[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~37\,
	combout => \cnt[2]~38_combout\,
	cout => \cnt[2]~39\);

-- Location: FF_X25_Y21_N5
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[2]~38_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X25_Y21_N6
\cnt[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~40_combout\ = (cnt(3) & (!\cnt[2]~39\)) # (!cnt(3) & ((\cnt[2]~39\) # (GND)))
-- \cnt[3]~41\ = CARRY((!\cnt[2]~39\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~39\,
	combout => \cnt[3]~40_combout\,
	cout => \cnt[3]~41\);

-- Location: FF_X25_Y21_N7
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[3]~40_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X25_Y21_N8
\cnt[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~42_combout\ = (cnt(4) & (\cnt[3]~41\ $ (GND))) # (!cnt(4) & (!\cnt[3]~41\ & VCC))
-- \cnt[4]~43\ = CARRY((cnt(4) & !\cnt[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~41\,
	combout => \cnt[4]~42_combout\,
	cout => \cnt[4]~43\);

-- Location: FF_X25_Y21_N9
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[4]~42_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X25_Y21_N10
\cnt[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~44_combout\ = (cnt(5) & (!\cnt[4]~43\)) # (!cnt(5) & ((\cnt[4]~43\) # (GND)))
-- \cnt[5]~45\ = CARRY((!\cnt[4]~43\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~43\,
	combout => \cnt[5]~44_combout\,
	cout => \cnt[5]~45\);

-- Location: FF_X25_Y21_N11
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[5]~44_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X25_Y21_N12
\cnt[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~46_combout\ = (cnt(6) & (\cnt[5]~45\ $ (GND))) # (!cnt(6) & (!\cnt[5]~45\ & VCC))
-- \cnt[6]~47\ = CARRY((cnt(6) & !\cnt[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \cnt[5]~45\,
	combout => \cnt[6]~46_combout\,
	cout => \cnt[6]~47\);

-- Location: FF_X25_Y21_N13
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[6]~46_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X25_Y21_N14
\cnt[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~48_combout\ = (cnt(7) & (!\cnt[6]~47\)) # (!cnt(7) & ((\cnt[6]~47\) # (GND)))
-- \cnt[7]~49\ = CARRY((!\cnt[6]~47\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~47\,
	combout => \cnt[7]~48_combout\,
	cout => \cnt[7]~49\);

-- Location: FF_X25_Y21_N15
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[7]~48_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X25_Y21_N16
\cnt[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~50_combout\ = (cnt(8) & (\cnt[7]~49\ $ (GND))) # (!cnt(8) & (!\cnt[7]~49\ & VCC))
-- \cnt[8]~51\ = CARRY((cnt(8) & !\cnt[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~49\,
	combout => \cnt[8]~50_combout\,
	cout => \cnt[8]~51\);

-- Location: FF_X25_Y21_N17
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[8]~50_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X25_Y21_N18
\cnt[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~52_combout\ = (cnt(9) & (!\cnt[8]~51\)) # (!cnt(9) & ((\cnt[8]~51\) # (GND)))
-- \cnt[9]~53\ = CARRY((!\cnt[8]~51\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \cnt[8]~51\,
	combout => \cnt[9]~52_combout\,
	cout => \cnt[9]~53\);

-- Location: FF_X25_Y21_N19
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[9]~52_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X25_Y21_N20
\cnt[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[10]~54_combout\ = (cnt(10) & (\cnt[9]~53\ $ (GND))) # (!cnt(10) & (!\cnt[9]~53\ & VCC))
-- \cnt[10]~55\ = CARRY((cnt(10) & !\cnt[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~53\,
	combout => \cnt[10]~54_combout\,
	cout => \cnt[10]~55\);

-- Location: FF_X25_Y21_N21
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[10]~54_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X25_Y21_N22
\cnt[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[11]~56_combout\ = (cnt(11) & (!\cnt[10]~55\)) # (!cnt(11) & ((\cnt[10]~55\) # (GND)))
-- \cnt[11]~57\ = CARRY((!\cnt[10]~55\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \cnt[10]~55\,
	combout => \cnt[11]~56_combout\,
	cout => \cnt[11]~57\);

-- Location: FF_X25_Y21_N23
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[11]~56_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X25_Y21_N24
\cnt[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[12]~58_combout\ = (cnt(12) & (\cnt[11]~57\ $ (GND))) # (!cnt(12) & (!\cnt[11]~57\ & VCC))
-- \cnt[12]~59\ = CARRY((cnt(12) & !\cnt[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~57\,
	combout => \cnt[12]~58_combout\,
	cout => \cnt[12]~59\);

-- Location: FF_X25_Y21_N25
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[12]~58_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X25_Y21_N26
\cnt[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[13]~60_combout\ = (cnt(13) & (!\cnt[12]~59\)) # (!cnt(13) & ((\cnt[12]~59\) # (GND)))
-- \cnt[13]~61\ = CARRY((!\cnt[12]~59\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datad => VCC,
	cin => \cnt[12]~59\,
	combout => \cnt[13]~60_combout\,
	cout => \cnt[13]~61\);

-- Location: FF_X25_Y21_N27
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[13]~60_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X25_Y21_N28
\cnt[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[14]~62_combout\ = (cnt(14) & (\cnt[13]~61\ $ (GND))) # (!cnt(14) & (!\cnt[13]~61\ & VCC))
-- \cnt[14]~63\ = CARRY((cnt(14) & !\cnt[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \cnt[13]~61\,
	combout => \cnt[14]~62_combout\,
	cout => \cnt[14]~63\);

-- Location: FF_X25_Y21_N29
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[14]~62_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X25_Y21_N30
\cnt[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[15]~64_combout\ = (cnt(15) & (!\cnt[14]~63\)) # (!cnt(15) & ((\cnt[14]~63\) # (GND)))
-- \cnt[15]~65\ = CARRY((!\cnt[14]~63\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \cnt[14]~63\,
	combout => \cnt[15]~64_combout\,
	cout => \cnt[15]~65\);

-- Location: FF_X25_Y21_N31
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[15]~64_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X25_Y20_N0
\cnt[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[16]~66_combout\ = (cnt(16) & (\cnt[15]~65\ $ (GND))) # (!cnt(16) & (!\cnt[15]~65\ & VCC))
-- \cnt[16]~67\ = CARRY((cnt(16) & !\cnt[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \cnt[15]~65\,
	combout => \cnt[16]~66_combout\,
	cout => \cnt[16]~67\);

-- Location: FF_X25_Y20_N1
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[16]~66_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X25_Y20_N2
\cnt[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[17]~68_combout\ = (cnt(17) & (!\cnt[16]~67\)) # (!cnt(17) & ((\cnt[16]~67\) # (GND)))
-- \cnt[17]~69\ = CARRY((!\cnt[16]~67\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \cnt[16]~67\,
	combout => \cnt[17]~68_combout\,
	cout => \cnt[17]~69\);

-- Location: FF_X25_Y20_N3
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[17]~68_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X25_Y20_N4
\cnt[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[18]~70_combout\ = (cnt(18) & (\cnt[17]~69\ $ (GND))) # (!cnt(18) & (!\cnt[17]~69\ & VCC))
-- \cnt[18]~71\ = CARRY((cnt(18) & !\cnt[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \cnt[17]~69\,
	combout => \cnt[18]~70_combout\,
	cout => \cnt[18]~71\);

-- Location: FF_X25_Y20_N5
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[18]~70_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X25_Y20_N6
\cnt[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[19]~72_combout\ = (cnt(19) & (!\cnt[18]~71\)) # (!cnt(19) & ((\cnt[18]~71\) # (GND)))
-- \cnt[19]~73\ = CARRY((!\cnt[18]~71\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(19),
	datad => VCC,
	cin => \cnt[18]~71\,
	combout => \cnt[19]~72_combout\,
	cout => \cnt[19]~73\);

-- Location: FF_X25_Y20_N7
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[19]~72_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X25_Y20_N8
\cnt[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[20]~74_combout\ = (cnt(20) & (\cnt[19]~73\ $ (GND))) # (!cnt(20) & (!\cnt[19]~73\ & VCC))
-- \cnt[20]~75\ = CARRY((cnt(20) & !\cnt[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \cnt[19]~73\,
	combout => \cnt[20]~74_combout\,
	cout => \cnt[20]~75\);

-- Location: FF_X25_Y20_N9
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[20]~74_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X25_Y20_N10
\cnt[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[21]~76_combout\ = (cnt(21) & (!\cnt[20]~75\)) # (!cnt(21) & ((\cnt[20]~75\) # (GND)))
-- \cnt[21]~77\ = CARRY((!\cnt[20]~75\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(21),
	datad => VCC,
	cin => \cnt[20]~75\,
	combout => \cnt[21]~76_combout\,
	cout => \cnt[21]~77\);

-- Location: FF_X25_Y20_N11
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[21]~76_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: LCCOMB_X25_Y20_N12
\cnt[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[22]~78_combout\ = (cnt(22) & (\cnt[21]~77\ $ (GND))) # (!cnt(22) & (!\cnt[21]~77\ & VCC))
-- \cnt[22]~79\ = CARRY((cnt(22) & !\cnt[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datad => VCC,
	cin => \cnt[21]~77\,
	combout => \cnt[22]~78_combout\,
	cout => \cnt[22]~79\);

-- Location: FF_X25_Y20_N13
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[22]~78_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: LCCOMB_X25_Y20_N14
\cnt[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[23]~80_combout\ = (cnt(23) & (!\cnt[22]~79\)) # (!cnt(23) & ((\cnt[22]~79\) # (GND)))
-- \cnt[23]~81\ = CARRY((!\cnt[22]~79\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(23),
	datad => VCC,
	cin => \cnt[22]~79\,
	combout => \cnt[23]~80_combout\,
	cout => \cnt[23]~81\);

-- Location: FF_X25_Y20_N15
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[23]~80_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LCCOMB_X25_Y20_N16
\cnt[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[24]~82_combout\ = (cnt(24) & (\cnt[23]~81\ $ (GND))) # (!cnt(24) & (!\cnt[23]~81\ & VCC))
-- \cnt[24]~83\ = CARRY((cnt(24) & !\cnt[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(24),
	datad => VCC,
	cin => \cnt[23]~81\,
	combout => \cnt[24]~82_combout\,
	cout => \cnt[24]~83\);

-- Location: FF_X25_Y20_N17
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[24]~82_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: LCCOMB_X25_Y20_N18
\cnt[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[25]~84_combout\ = (cnt(25) & (!\cnt[24]~83\)) # (!cnt(25) & ((\cnt[24]~83\) # (GND)))
-- \cnt[25]~85\ = CARRY((!\cnt[24]~83\) # (!cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(25),
	datad => VCC,
	cin => \cnt[24]~83\,
	combout => \cnt[25]~84_combout\,
	cout => \cnt[25]~85\);

-- Location: FF_X25_Y20_N19
\cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[25]~84_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(25));

-- Location: LCCOMB_X25_Y20_N20
\cnt[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[26]~86_combout\ = (cnt(26) & (\cnt[25]~85\ $ (GND))) # (!cnt(26) & (!\cnt[25]~85\ & VCC))
-- \cnt[26]~87\ = CARRY((cnt(26) & !\cnt[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(26),
	datad => VCC,
	cin => \cnt[25]~85\,
	combout => \cnt[26]~86_combout\,
	cout => \cnt[26]~87\);

-- Location: FF_X25_Y20_N21
\cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[26]~86_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(26));

-- Location: LCCOMB_X25_Y20_N22
\cnt[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[27]~88_combout\ = (cnt(27) & (!\cnt[26]~87\)) # (!cnt(27) & ((\cnt[26]~87\) # (GND)))
-- \cnt[27]~89\ = CARRY((!\cnt[26]~87\) # (!cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(27),
	datad => VCC,
	cin => \cnt[26]~87\,
	combout => \cnt[27]~88_combout\,
	cout => \cnt[27]~89\);

-- Location: FF_X25_Y20_N23
\cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[27]~88_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(27));

-- Location: LCCOMB_X25_Y20_N24
\cnt[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[28]~90_combout\ = (cnt(28) & (\cnt[27]~89\ $ (GND))) # (!cnt(28) & (!\cnt[27]~89\ & VCC))
-- \cnt[28]~91\ = CARRY((cnt(28) & !\cnt[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(28),
	datad => VCC,
	cin => \cnt[27]~89\,
	combout => \cnt[28]~90_combout\,
	cout => \cnt[28]~91\);

-- Location: FF_X25_Y20_N25
\cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[28]~90_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(28));

-- Location: LCCOMB_X25_Y20_N26
\cnt[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[29]~92_combout\ = (cnt(29) & (!\cnt[28]~91\)) # (!cnt(29) & ((\cnt[28]~91\) # (GND)))
-- \cnt[29]~93\ = CARRY((!\cnt[28]~91\) # (!cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(29),
	datad => VCC,
	cin => \cnt[28]~91\,
	combout => \cnt[29]~92_combout\,
	cout => \cnt[29]~93\);

-- Location: FF_X25_Y20_N27
\cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[29]~92_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(29));

-- Location: LCCOMB_X25_Y20_N28
\cnt[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[30]~94_combout\ = (cnt(30) & (\cnt[29]~93\ $ (GND))) # (!cnt(30) & (!\cnt[29]~93\ & VCC))
-- \cnt[30]~95\ = CARRY((cnt(30) & !\cnt[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(30),
	datad => VCC,
	cin => \cnt[29]~93\,
	combout => \cnt[30]~94_combout\,
	cout => \cnt[30]~95\);

-- Location: FF_X25_Y20_N29
\cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[30]~94_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(30));

-- Location: LCCOMB_X25_Y20_N30
\cnt[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[31]~96_combout\ = cnt(31) $ (\cnt[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(31),
	cin => \cnt[30]~95\,
	combout => \cnt[31]~96_combout\);

-- Location: FF_X25_Y20_N31
\cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~clkctrl_outclk\,
	d => \cnt[31]~96_combout\,
	sclr => \process_0~0_combout\,
	ena => \cnt[17]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(31));

-- Location: LCCOMB_X26_Y21_N16
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\) # (cnt(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~5_combout\,
	datad => cnt(30),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X26_Y21_N6
\wr_ena~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr_ena~2_combout\ = (!\wr_ena~q\ & ((cnt(31)) # ((!\LessThan0~6_combout\ & !\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(31),
	datab => \wr_ena~q\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~4_combout\,
	combout => \wr_ena~2_combout\);

-- Location: LCCOMB_X26_Y21_N28
\wr_ena~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr_ena~3_combout\ = (!\wr_ena~2_combout\ & ((\KEY_1~input_o\) # (\mem_reg~q\ $ (!\tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_reg~q\,
	datab => \KEY_1~input_o\,
	datac => \tmp~q\,
	datad => \wr_ena~2_combout\,
	combout => \wr_ena~3_combout\);

-- Location: FF_X26_Y21_N29
wr_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_adc_buf~q\,
	d => \wr_ena~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wr_ena~q\);

-- Location: LCCOMB_X31_Y15_N28
\COMP_MEM|clk\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|clk~combout\ = LCELL((\wr_ena~q\ & (GLOBAL(\COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\))) # (!\wr_ena~q\ & ((\COMP_CCD|clk_adc_buf~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datac => \wr_ena~q\,
	datad => \COMP_CCD|clk_adc_buf~q\,
	combout => \COMP_MEM|clk~combout\);

-- Location: CLKCTRL_G8
\COMP_MEM|clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \COMP_MEM|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \COMP_MEM|clk~clkctrl_outclk\);

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

-- Location: LCCOMB_X26_Y3_N0
\COMP_MEM|addr[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[0]~10_combout\ = \COMP_MEM|addr\(0) $ (VCC)
-- \COMP_MEM|addr[0]~11\ = CARRY(\COMP_MEM|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_MEM|addr\(0),
	datad => VCC,
	combout => \COMP_MEM|addr[0]~10_combout\,
	cout => \COMP_MEM|addr[0]~11\);

-- Location: FF_X25_Y3_N21
\COMP_VGA|memory_ack_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \COMP_VGA|always0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory_ack_reg~q\);

-- Location: LCCOMB_X25_Y3_N20
\COMP_MEM|cntrl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|cntrl~0_combout\ = (\wr_ena~q\ & ((!\COMP_VGA|memory_ack_reg~q\))) # (!\wr_ena~q\ & (!\COMP_CCD|rog_buf~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CCD|rog_buf~q\,
	datac => \COMP_VGA|memory_ack_reg~q\,
	datad => \wr_ena~q\,
	combout => \COMP_MEM|cntrl~0_combout\);

-- Location: FF_X26_Y3_N1
\COMP_MEM|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[0]~10_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(0));

-- Location: LCCOMB_X26_Y3_N2
\COMP_MEM|addr[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[1]~12_combout\ = (\COMP_MEM|addr\(1) & (!\COMP_MEM|addr[0]~11\)) # (!\COMP_MEM|addr\(1) & ((\COMP_MEM|addr[0]~11\) # (GND)))
-- \COMP_MEM|addr[1]~13\ = CARRY((!\COMP_MEM|addr[0]~11\) # (!\COMP_MEM|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_MEM|addr\(1),
	datad => VCC,
	cin => \COMP_MEM|addr[0]~11\,
	combout => \COMP_MEM|addr[1]~12_combout\,
	cout => \COMP_MEM|addr[1]~13\);

-- Location: FF_X26_Y3_N3
\COMP_MEM|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[1]~12_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(1));

-- Location: LCCOMB_X26_Y3_N4
\COMP_MEM|addr[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[2]~14_combout\ = (\COMP_MEM|addr\(2) & (\COMP_MEM|addr[1]~13\ $ (GND))) # (!\COMP_MEM|addr\(2) & (!\COMP_MEM|addr[1]~13\ & VCC))
-- \COMP_MEM|addr[2]~15\ = CARRY((\COMP_MEM|addr\(2) & !\COMP_MEM|addr[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_MEM|addr\(2),
	datad => VCC,
	cin => \COMP_MEM|addr[1]~13\,
	combout => \COMP_MEM|addr[2]~14_combout\,
	cout => \COMP_MEM|addr[2]~15\);

-- Location: FF_X26_Y3_N5
\COMP_MEM|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[2]~14_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(2));

-- Location: LCCOMB_X26_Y3_N6
\COMP_MEM|addr[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[3]~16_combout\ = (\COMP_MEM|addr\(3) & (!\COMP_MEM|addr[2]~15\)) # (!\COMP_MEM|addr\(3) & ((\COMP_MEM|addr[2]~15\) # (GND)))
-- \COMP_MEM|addr[3]~17\ = CARRY((!\COMP_MEM|addr[2]~15\) # (!\COMP_MEM|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_MEM|addr\(3),
	datad => VCC,
	cin => \COMP_MEM|addr[2]~15\,
	combout => \COMP_MEM|addr[3]~16_combout\,
	cout => \COMP_MEM|addr[3]~17\);

-- Location: FF_X26_Y3_N7
\COMP_MEM|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[3]~16_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(3));

-- Location: LCCOMB_X26_Y3_N8
\COMP_MEM|addr[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[4]~18_combout\ = (\COMP_MEM|addr\(4) & (\COMP_MEM|addr[3]~17\ $ (GND))) # (!\COMP_MEM|addr\(4) & (!\COMP_MEM|addr[3]~17\ & VCC))
-- \COMP_MEM|addr[4]~19\ = CARRY((\COMP_MEM|addr\(4) & !\COMP_MEM|addr[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_MEM|addr\(4),
	datad => VCC,
	cin => \COMP_MEM|addr[3]~17\,
	combout => \COMP_MEM|addr[4]~18_combout\,
	cout => \COMP_MEM|addr[4]~19\);

-- Location: FF_X26_Y3_N9
\COMP_MEM|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[4]~18_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(4));

-- Location: LCCOMB_X26_Y3_N10
\COMP_MEM|addr[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[5]~20_combout\ = (\COMP_MEM|addr\(5) & (!\COMP_MEM|addr[4]~19\)) # (!\COMP_MEM|addr\(5) & ((\COMP_MEM|addr[4]~19\) # (GND)))
-- \COMP_MEM|addr[5]~21\ = CARRY((!\COMP_MEM|addr[4]~19\) # (!\COMP_MEM|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_MEM|addr\(5),
	datad => VCC,
	cin => \COMP_MEM|addr[4]~19\,
	combout => \COMP_MEM|addr[5]~20_combout\,
	cout => \COMP_MEM|addr[5]~21\);

-- Location: FF_X26_Y3_N11
\COMP_MEM|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[5]~20_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(5));

-- Location: LCCOMB_X26_Y3_N12
\COMP_MEM|addr[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[6]~22_combout\ = (\COMP_MEM|addr\(6) & (\COMP_MEM|addr[5]~21\ $ (GND))) # (!\COMP_MEM|addr\(6) & (!\COMP_MEM|addr[5]~21\ & VCC))
-- \COMP_MEM|addr[6]~23\ = CARRY((\COMP_MEM|addr\(6) & !\COMP_MEM|addr[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_MEM|addr\(6),
	datad => VCC,
	cin => \COMP_MEM|addr[5]~21\,
	combout => \COMP_MEM|addr[6]~22_combout\,
	cout => \COMP_MEM|addr[6]~23\);

-- Location: FF_X26_Y3_N13
\COMP_MEM|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[6]~22_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(6));

-- Location: LCCOMB_X26_Y3_N14
\COMP_MEM|addr[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[7]~24_combout\ = (\COMP_MEM|addr\(7) & (!\COMP_MEM|addr[6]~23\)) # (!\COMP_MEM|addr\(7) & ((\COMP_MEM|addr[6]~23\) # (GND)))
-- \COMP_MEM|addr[7]~25\ = CARRY((!\COMP_MEM|addr[6]~23\) # (!\COMP_MEM|addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_MEM|addr\(7),
	datad => VCC,
	cin => \COMP_MEM|addr[6]~23\,
	combout => \COMP_MEM|addr[7]~24_combout\,
	cout => \COMP_MEM|addr[7]~25\);

-- Location: FF_X26_Y3_N15
\COMP_MEM|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[7]~24_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(7));

-- Location: LCCOMB_X26_Y3_N16
\COMP_MEM|addr[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[8]~26_combout\ = (\COMP_MEM|addr\(8) & (\COMP_MEM|addr[7]~25\ $ (GND))) # (!\COMP_MEM|addr\(8) & (!\COMP_MEM|addr[7]~25\ & VCC))
-- \COMP_MEM|addr[8]~27\ = CARRY((\COMP_MEM|addr\(8) & !\COMP_MEM|addr[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_MEM|addr\(8),
	datad => VCC,
	cin => \COMP_MEM|addr[7]~25\,
	combout => \COMP_MEM|addr[8]~26_combout\,
	cout => \COMP_MEM|addr[8]~27\);

-- Location: FF_X26_Y3_N17
\COMP_MEM|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[8]~26_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(8));

-- Location: LCCOMB_X26_Y3_N18
\COMP_MEM|addr[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_MEM|addr[9]~28_combout\ = \COMP_MEM|addr[8]~27\ $ (\COMP_MEM|addr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COMP_MEM|addr\(9),
	cin => \COMP_MEM|addr[8]~27\,
	combout => \COMP_MEM|addr[9]~28_combout\);

-- Location: FF_X26_Y3_N19
\COMP_MEM|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_MEM|ALT_INV_clk~clkctrl_outclk\,
	d => \COMP_MEM|addr[9]~28_combout\,
	sclr => \COMP_MEM|cntrl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_MEM|addr\(9));

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

-- Location: M9K_X27_Y3_N0
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:COMP_MEM|ram:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_rh41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_wr_ena~q\,
	portare => VCC,
	clk0 => \COMP_MEM|clk~clkctrl_outclk\,
	portadatain => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y3_N4
\COMP_VGA|memory~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~8_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \COMP_VGA|memory~8_combout\);

-- Location: FF_X28_Y3_N5
\COMP_VGA|memory[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(9));

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

-- Location: M9K_X27_Y2_N0
\COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:COMP_MEM|ram:COMP_RAM|altsyncram:ram_rtl_0|altsyncram_rh41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_wr_ena~q\,
	portare => VCC,
	clk0 => \COMP_MEM|clk~clkctrl_outclk\,
	portadatain => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y2_N0
\COMP_VGA|memory~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~9_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\,
	combout => \COMP_VGA|memory~9_combout\);

-- Location: FF_X26_Y2_N1
\COMP_VGA|memory[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(8));

-- Location: LCCOMB_X28_Y3_N28
\COMP_VGA|memory~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~6_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|always0~6_combout\,
	datac => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \COMP_VGA|memory~6_combout\);

-- Location: FF_X28_Y3_N29
\COMP_VGA|memory[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(7));

-- Location: LCCOMB_X28_Y3_N26
\COMP_VGA|memory~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~7_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \COMP_VGA|memory~7_combout\);

-- Location: FF_X28_Y3_N27
\COMP_VGA|memory[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(6));

-- Location: LCCOMB_X26_Y3_N28
\COMP_VGA|memory~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~4_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \COMP_VGA|memory~4_combout\);

-- Location: FF_X26_Y3_N29
\COMP_VGA|memory[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(5));

-- Location: LCCOMB_X26_Y3_N30
\COMP_VGA|memory~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~5_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \COMP_VGA|memory~5_combout\);

-- Location: FF_X26_Y3_N31
\COMP_VGA|memory[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(4));

-- Location: LCCOMB_X26_Y3_N20
\COMP_VGA|memory~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~2_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \COMP_VGA|memory~2_combout\);

-- Location: FF_X26_Y3_N21
\COMP_VGA|memory[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(3));

-- Location: LCCOMB_X26_Y3_N26
\COMP_VGA|memory~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~3_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|always0~6_combout\,
	datac => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \COMP_VGA|memory~3_combout\);

-- Location: FF_X26_Y3_N27
\COMP_VGA|memory[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(2));

-- Location: LCCOMB_X26_Y3_N24
\COMP_VGA|memory~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~0_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \COMP_VGA|memory~0_combout\);

-- Location: FF_X26_Y3_N25
\COMP_VGA|memory[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(1));

-- Location: LCCOMB_X26_Y3_N22
\COMP_VGA|memory~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|memory~1_combout\ = (\COMP_VGA|always0~6_combout\ & \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|always0~6_combout\,
	datad => \COMP_MEM|COMP_RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \COMP_VGA|memory~1_combout\);

-- Location: FF_X26_Y3_N23
\COMP_VGA|memory[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|memory\(0));

-- Location: LCCOMB_X22_Y3_N2
\COMP_VGA|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~0_combout\ = \COMP_VGA|memory\(0) $ (VCC)
-- \COMP_VGA|Add2~1\ = CARRY(\COMP_VGA|memory\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|memory\(0),
	datad => VCC,
	combout => \COMP_VGA|Add2~0_combout\,
	cout => \COMP_VGA|Add2~1\);

-- Location: LCCOMB_X22_Y3_N4
\COMP_VGA|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~2_combout\ = (\COMP_VGA|memory\(1) & (\COMP_VGA|Add2~1\ & VCC)) # (!\COMP_VGA|memory\(1) & (!\COMP_VGA|Add2~1\))
-- \COMP_VGA|Add2~3\ = CARRY((!\COMP_VGA|memory\(1) & !\COMP_VGA|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|memory\(1),
	datad => VCC,
	cin => \COMP_VGA|Add2~1\,
	combout => \COMP_VGA|Add2~2_combout\,
	cout => \COMP_VGA|Add2~3\);

-- Location: LCCOMB_X22_Y3_N6
\COMP_VGA|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~4_combout\ = (\COMP_VGA|memory\(2) & ((GND) # (!\COMP_VGA|Add2~3\))) # (!\COMP_VGA|memory\(2) & (\COMP_VGA|Add2~3\ $ (GND)))
-- \COMP_VGA|Add2~5\ = CARRY((\COMP_VGA|memory\(2)) # (!\COMP_VGA|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|memory\(2),
	datad => VCC,
	cin => \COMP_VGA|Add2~3\,
	combout => \COMP_VGA|Add2~4_combout\,
	cout => \COMP_VGA|Add2~5\);

-- Location: LCCOMB_X22_Y3_N8
\COMP_VGA|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~6_combout\ = (\COMP_VGA|memory\(3) & (!\COMP_VGA|Add2~5\)) # (!\COMP_VGA|memory\(3) & ((\COMP_VGA|Add2~5\) # (GND)))
-- \COMP_VGA|Add2~7\ = CARRY((!\COMP_VGA|Add2~5\) # (!\COMP_VGA|memory\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|memory\(3),
	datad => VCC,
	cin => \COMP_VGA|Add2~5\,
	combout => \COMP_VGA|Add2~6_combout\,
	cout => \COMP_VGA|Add2~7\);

-- Location: LCCOMB_X22_Y3_N10
\COMP_VGA|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~8_combout\ = (\COMP_VGA|memory\(4) & ((GND) # (!\COMP_VGA|Add2~7\))) # (!\COMP_VGA|memory\(4) & (\COMP_VGA|Add2~7\ $ (GND)))
-- \COMP_VGA|Add2~9\ = CARRY((\COMP_VGA|memory\(4)) # (!\COMP_VGA|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|memory\(4),
	datad => VCC,
	cin => \COMP_VGA|Add2~7\,
	combout => \COMP_VGA|Add2~8_combout\,
	cout => \COMP_VGA|Add2~9\);

-- Location: LCCOMB_X22_Y3_N12
\COMP_VGA|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~10_combout\ = (\COMP_VGA|memory\(5) & (\COMP_VGA|Add2~9\ & VCC)) # (!\COMP_VGA|memory\(5) & (!\COMP_VGA|Add2~9\))
-- \COMP_VGA|Add2~11\ = CARRY((!\COMP_VGA|memory\(5) & !\COMP_VGA|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|memory\(5),
	datad => VCC,
	cin => \COMP_VGA|Add2~9\,
	combout => \COMP_VGA|Add2~10_combout\,
	cout => \COMP_VGA|Add2~11\);

-- Location: LCCOMB_X22_Y3_N14
\COMP_VGA|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~12_combout\ = (\COMP_VGA|memory\(6) & (\COMP_VGA|Add2~11\ $ (GND))) # (!\COMP_VGA|memory\(6) & (!\COMP_VGA|Add2~11\ & VCC))
-- \COMP_VGA|Add2~13\ = CARRY((\COMP_VGA|memory\(6) & !\COMP_VGA|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|memory\(6),
	datad => VCC,
	cin => \COMP_VGA|Add2~11\,
	combout => \COMP_VGA|Add2~12_combout\,
	cout => \COMP_VGA|Add2~13\);

-- Location: LCCOMB_X22_Y3_N16
\COMP_VGA|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~14_combout\ = (\COMP_VGA|memory\(7) & (!\COMP_VGA|Add2~13\)) # (!\COMP_VGA|memory\(7) & ((\COMP_VGA|Add2~13\) # (GND)))
-- \COMP_VGA|Add2~15\ = CARRY((!\COMP_VGA|Add2~13\) # (!\COMP_VGA|memory\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|memory\(7),
	datad => VCC,
	cin => \COMP_VGA|Add2~13\,
	combout => \COMP_VGA|Add2~14_combout\,
	cout => \COMP_VGA|Add2~15\);

-- Location: LCCOMB_X22_Y3_N18
\COMP_VGA|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~16_combout\ = (\COMP_VGA|memory\(8) & (\COMP_VGA|Add2~15\ $ (GND))) # (!\COMP_VGA|memory\(8) & (!\COMP_VGA|Add2~15\ & VCC))
-- \COMP_VGA|Add2~17\ = CARRY((\COMP_VGA|memory\(8) & !\COMP_VGA|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|memory\(8),
	datad => VCC,
	cin => \COMP_VGA|Add2~15\,
	combout => \COMP_VGA|Add2~16_combout\,
	cout => \COMP_VGA|Add2~17\);

-- Location: LCCOMB_X22_Y3_N20
\COMP_VGA|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~18_combout\ = (\COMP_VGA|memory\(9) & (!\COMP_VGA|Add2~17\)) # (!\COMP_VGA|memory\(9) & ((\COMP_VGA|Add2~17\) # (GND)))
-- \COMP_VGA|Add2~19\ = CARRY((!\COMP_VGA|Add2~17\) # (!\COMP_VGA|memory\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|memory\(9),
	datad => VCC,
	cin => \COMP_VGA|Add2~17\,
	combout => \COMP_VGA|Add2~18_combout\,
	cout => \COMP_VGA|Add2~19\);

-- Location: LCCOMB_X22_Y3_N22
\COMP_VGA|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Add2~20_combout\ = !\COMP_VGA|Add2~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \COMP_VGA|Add2~19\,
	combout => \COMP_VGA|Add2~20_combout\);

-- Location: LCCOMB_X22_Y3_N26
\COMP_VGA|Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal10~5_combout\ = (\COMP_VGA|y_cnt\(9) & (\COMP_VGA|Add2~18_combout\ & (\COMP_VGA|y_cnt\(8) $ (!\COMP_VGA|Add2~16_combout\)))) # (!\COMP_VGA|y_cnt\(9) & (!\COMP_VGA|Add2~18_combout\ & (\COMP_VGA|y_cnt\(8) $ (!\COMP_VGA|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(9),
	datab => \COMP_VGA|Add2~18_combout\,
	datac => \COMP_VGA|y_cnt\(8),
	datad => \COMP_VGA|Add2~16_combout\,
	combout => \COMP_VGA|Equal10~5_combout\);

-- Location: LCCOMB_X21_Y3_N24
\COMP_VGA|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal10~0_combout\ = (\COMP_VGA|Add2~2_combout\ & (\COMP_VGA|y_cnt\(1) & (\COMP_VGA|y_cnt\(0) $ (!\COMP_VGA|Add2~0_combout\)))) # (!\COMP_VGA|Add2~2_combout\ & (!\COMP_VGA|y_cnt\(1) & (\COMP_VGA|y_cnt\(0) $ (!\COMP_VGA|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Add2~2_combout\,
	datab => \COMP_VGA|y_cnt\(0),
	datac => \COMP_VGA|y_cnt\(1),
	datad => \COMP_VGA|Add2~0_combout\,
	combout => \COMP_VGA|Equal10~0_combout\);

-- Location: LCCOMB_X22_Y3_N28
\COMP_VGA|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal10~3_combout\ = (\COMP_VGA|y_cnt\(7) & (\COMP_VGA|Add2~14_combout\ & (\COMP_VGA|y_cnt\(6) $ (!\COMP_VGA|Add2~12_combout\)))) # (!\COMP_VGA|y_cnt\(7) & (!\COMP_VGA|Add2~14_combout\ & (\COMP_VGA|y_cnt\(6) $ (!\COMP_VGA|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(7),
	datab => \COMP_VGA|y_cnt\(6),
	datac => \COMP_VGA|Add2~12_combout\,
	datad => \COMP_VGA|Add2~14_combout\,
	combout => \COMP_VGA|Equal10~3_combout\);

-- Location: LCCOMB_X22_Y3_N0
\COMP_VGA|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal10~2_combout\ = (\COMP_VGA|Add2~8_combout\ & (\COMP_VGA|y_cnt\(4) & (\COMP_VGA|y_cnt\(5) $ (!\COMP_VGA|Add2~10_combout\)))) # (!\COMP_VGA|Add2~8_combout\ & (!\COMP_VGA|y_cnt\(4) & (\COMP_VGA|y_cnt\(5) $ (!\COMP_VGA|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Add2~8_combout\,
	datab => \COMP_VGA|y_cnt\(5),
	datac => \COMP_VGA|y_cnt\(4),
	datad => \COMP_VGA|Add2~10_combout\,
	combout => \COMP_VGA|Equal10~2_combout\);

-- Location: LCCOMB_X23_Y3_N18
\COMP_VGA|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal10~1_combout\ = (\COMP_VGA|y_cnt\(3) & (\COMP_VGA|Add2~6_combout\ & (\COMP_VGA|y_cnt\(2) $ (!\COMP_VGA|Add2~4_combout\)))) # (!\COMP_VGA|y_cnt\(3) & (!\COMP_VGA|Add2~6_combout\ & (\COMP_VGA|y_cnt\(2) $ (!\COMP_VGA|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(3),
	datab => \COMP_VGA|y_cnt\(2),
	datac => \COMP_VGA|Add2~4_combout\,
	datad => \COMP_VGA|Add2~6_combout\,
	combout => \COMP_VGA|Equal10~1_combout\);

-- Location: LCCOMB_X23_Y3_N28
\COMP_VGA|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal10~4_combout\ = (\COMP_VGA|Equal10~0_combout\ & (\COMP_VGA|Equal10~3_combout\ & (\COMP_VGA|Equal10~2_combout\ & \COMP_VGA|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Equal10~0_combout\,
	datab => \COMP_VGA|Equal10~3_combout\,
	datac => \COMP_VGA|Equal10~2_combout\,
	datad => \COMP_VGA|Equal10~1_combout\,
	combout => \COMP_VGA|Equal10~4_combout\);

-- Location: LCCOMB_X23_Y3_N16
\COMP_VGA|Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal10~6_combout\ = (!\COMP_VGA|Add2~20_combout\ & (\COMP_VGA|Equal10~5_combout\ & \COMP_VGA|Equal10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|Add2~20_combout\,
	datac => \COMP_VGA|Equal10~5_combout\,
	datad => \COMP_VGA|Equal10~4_combout\,
	combout => \COMP_VGA|Equal10~6_combout\);

-- Location: FF_X23_Y3_N17
\COMP_VGA|bar_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Equal10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|bar_data\(0));

-- Location: LCCOMB_X8_Y7_N28
\COMP_VGA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~1_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((!\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|y_cnt\(2)))) # (!\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|bar_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|y_cnt\(2),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~1_combout\);

-- Location: LCCOMB_X4_Y9_N4
\COMP_VGA|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|always5~1_combout\ = \COMP_VGA|y_cnt\(6) $ (!\COMP_VGA|x_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(6),
	datad => \COMP_VGA|x_cnt\(9),
	combout => \COMP_VGA|always5~1_combout\);

-- Location: FF_X4_Y9_N5
\COMP_VGA|grid_data_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|always5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|grid_data_2\(0));

-- Location: LCCOMB_X8_Y8_N12
\COMP_VGA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~0_combout\ = (\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|grid_data_2\(0)) # (\COMP_VGA|vga_dis_mode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|grid_data_2\(0),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~0_combout\);

-- Location: LCCOMB_X8_Y7_N6
\COMP_VGA|vga_r_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~10_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~1_combout\) # ((\COMP_VGA|vga_b_reg[4]~40_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (((!\COMP_VGA|vga_b_reg[4]~40_combout\ & \COMP_VGA|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datab => \COMP_VGA|Mux4~1_combout\,
	datac => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datad => \COMP_VGA|Mux4~0_combout\,
	combout => \COMP_VGA|vga_r_reg~10_combout\);

-- Location: LCCOMB_X8_Y7_N16
\COMP_VGA|vga_r_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~11_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(2) & !\COMP_VGA|vga_r_reg~10_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_r_reg~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(2),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datad => \COMP_VGA|vga_r_reg~10_combout\,
	combout => \COMP_VGA|vga_r_reg~11_combout\);

-- Location: LCCOMB_X8_Y7_N24
\COMP_VGA|vga_r_reg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~20_combout\ = (\COMP_VGA|vga_b_reg~56_combout\) # ((\COMP_VGA|vga_r_reg~11_combout\ & ((!\COMP_VGA|vga_dis_mode\(3)) # (!\COMP_VGA|vga_dis_mode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg~56_combout\,
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_dis_mode\(3),
	datad => \COMP_VGA|vga_r_reg~11_combout\,
	combout => \COMP_VGA|vga_r_reg~20_combout\);

-- Location: FF_X8_Y7_N25
\COMP_VGA|vga_r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_r_reg~20_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_r_reg\(0));

-- Location: LCCOMB_X7_Y7_N8
\COMP_VGA|vga_r[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r[0]~0_combout\ = (\COMP_VGA|vsync_de~q\ & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vga_r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vsync_de~q\,
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vga_r_reg\(0),
	combout => \COMP_VGA|vga_r[0]~0_combout\);

-- Location: LCCOMB_X4_Y9_N26
\COMP_VGA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~2_combout\ = (\COMP_VGA|vga_dis_mode\(2) & (((\COMP_VGA|y_cnt\(3) & !\COMP_VGA|vga_dis_mode\(1))))) # (!\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|bar_data\(0)) # ((\COMP_VGA|vga_dis_mode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(2),
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|y_cnt\(3),
	datad => \COMP_VGA|vga_dis_mode\(1),
	combout => \COMP_VGA|Mux4~2_combout\);

-- Location: LCCOMB_X7_Y6_N4
\COMP_VGA|vga_r_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~12_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~2_combout\) # ((\COMP_VGA|vga_b_reg[4]~40_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (((\COMP_VGA|Mux4~0_combout\ & !\COMP_VGA|vga_b_reg[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~2_combout\,
	datab => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datac => \COMP_VGA|Mux4~0_combout\,
	datad => \COMP_VGA|vga_b_reg[4]~40_combout\,
	combout => \COMP_VGA|vga_r_reg~12_combout\);

-- Location: LCCOMB_X6_Y7_N4
\COMP_VGA|vga_r_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~13_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(3) & !\COMP_VGA|vga_r_reg~12_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_r_reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|x_cnt\(3),
	datad => \COMP_VGA|vga_r_reg~12_combout\,
	combout => \COMP_VGA|vga_r_reg~13_combout\);

-- Location: LCCOMB_X6_Y7_N28
\COMP_VGA|vga_b_reg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~19_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((\COMP_VGA|x_cnt\(3) & !\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|grid_data_1\(0)) # ((\COMP_VGA|vga_dis_mode\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|grid_data_1\(0),
	datac => \COMP_VGA|x_cnt\(3),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_b_reg~19_combout\);

-- Location: LCCOMB_X6_Y7_N6
\COMP_VGA|vga_b_reg~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~57_combout\ = (\COMP_VGA|vga_dis_mode\(3) & (\COMP_VGA|vga_dis_mode\(0) & \COMP_VGA|vga_b_reg~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_b_reg~19_combout\,
	combout => \COMP_VGA|vga_b_reg~57_combout\);

-- Location: LCCOMB_X6_Y7_N24
\COMP_VGA|vga_r_reg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~21_combout\ = (\COMP_VGA|vga_b_reg~57_combout\) # ((\COMP_VGA|vga_r_reg~13_combout\ & ((!\COMP_VGA|vga_dis_mode\(0)) # (!\COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_r_reg~13_combout\,
	datad => \COMP_VGA|vga_b_reg~57_combout\,
	combout => \COMP_VGA|vga_r_reg~21_combout\);

-- Location: FF_X6_Y7_N25
\COMP_VGA|vga_r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_r_reg~21_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_r_reg\(1));

-- Location: LCCOMB_X7_Y7_N30
\COMP_VGA|vga_r[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r[1]~1_combout\ = (\COMP_VGA|vga_r_reg\(1) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_r_reg\(1),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_r[1]~1_combout\);

-- Location: LCCOMB_X8_Y7_N14
\COMP_VGA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~3_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((!\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|y_cnt\(4)))) # (!\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|bar_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|y_cnt\(4),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~3_combout\);

-- Location: LCCOMB_X8_Y7_N20
\COMP_VGA|vga_r_reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~14_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~3_combout\) # ((\COMP_VGA|vga_b_reg[4]~40_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (((!\COMP_VGA|vga_b_reg[4]~40_combout\ & \COMP_VGA|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datab => \COMP_VGA|Mux4~3_combout\,
	datac => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datad => \COMP_VGA|Mux4~0_combout\,
	combout => \COMP_VGA|vga_r_reg~14_combout\);

-- Location: LCCOMB_X6_Y7_N26
\COMP_VGA|vga_r_reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~15_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(4) & !\COMP_VGA|vga_r_reg~14_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_r_reg~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|x_cnt\(4),
	datad => \COMP_VGA|vga_r_reg~14_combout\,
	combout => \COMP_VGA|vga_r_reg~15_combout\);

-- Location: LCCOMB_X6_Y7_N16
\COMP_VGA|vga_b_reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~25_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((\COMP_VGA|x_cnt\(4) & !\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|grid_data_1\(0)) # ((\COMP_VGA|vga_dis_mode\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|grid_data_1\(0),
	datac => \COMP_VGA|x_cnt\(4),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_b_reg~25_combout\);

-- Location: LCCOMB_X6_Y7_N10
\COMP_VGA|vga_b_reg~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~58_combout\ = (\COMP_VGA|vga_dis_mode\(3) & (\COMP_VGA|vga_dis_mode\(0) & \COMP_VGA|vga_b_reg~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_b_reg~25_combout\,
	combout => \COMP_VGA|vga_b_reg~58_combout\);

-- Location: LCCOMB_X6_Y7_N14
\COMP_VGA|vga_r_reg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~22_combout\ = (\COMP_VGA|vga_b_reg~58_combout\) # ((\COMP_VGA|vga_r_reg~15_combout\ & ((!\COMP_VGA|vga_dis_mode\(0)) # (!\COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_r_reg~15_combout\,
	datad => \COMP_VGA|vga_b_reg~58_combout\,
	combout => \COMP_VGA|vga_r_reg~22_combout\);

-- Location: FF_X6_Y7_N15
\COMP_VGA|vga_r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_r_reg~22_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_r_reg\(2));

-- Location: LCCOMB_X7_Y7_N28
\COMP_VGA|vga_r[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r[2]~2_combout\ = (\COMP_VGA|vga_r_reg\(2) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_r_reg\(2),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_r[2]~2_combout\);

-- Location: LCCOMB_X6_Y7_N20
\COMP_VGA|vga_b_reg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~31_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((\COMP_VGA|x_cnt\(5) & !\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|grid_data_1\(0)) # ((\COMP_VGA|vga_dis_mode\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|grid_data_1\(0),
	datac => \COMP_VGA|x_cnt\(5),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_b_reg~31_combout\);

-- Location: LCCOMB_X6_Y7_N30
\COMP_VGA|vga_b_reg~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~59_combout\ = (\COMP_VGA|vga_dis_mode\(3) & (\COMP_VGA|vga_dis_mode\(0) & \COMP_VGA|vga_b_reg~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_b_reg~31_combout\,
	combout => \COMP_VGA|vga_b_reg~59_combout\);

-- Location: LCCOMB_X7_Y5_N18
\COMP_VGA|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~4_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((!\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|y_cnt\(5))) # (!\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|bar_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|y_cnt\(5),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|bar_data\(0),
	combout => \COMP_VGA|Mux4~4_combout\);

-- Location: LCCOMB_X7_Y5_N24
\COMP_VGA|vga_r_reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~16_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~4_combout\) # ((\COMP_VGA|vga_b_reg[4]~40_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (((\COMP_VGA|Mux4~0_combout\ & !\COMP_VGA|vga_b_reg[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datab => \COMP_VGA|Mux4~4_combout\,
	datac => \COMP_VGA|Mux4~0_combout\,
	datad => \COMP_VGA|vga_b_reg[4]~40_combout\,
	combout => \COMP_VGA|vga_r_reg~16_combout\);

-- Location: LCCOMB_X6_Y7_N8
\COMP_VGA|vga_r_reg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~17_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(5) & !\COMP_VGA|vga_r_reg~16_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_r_reg~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|x_cnt\(5),
	datad => \COMP_VGA|vga_r_reg~16_combout\,
	combout => \COMP_VGA|vga_r_reg~17_combout\);

-- Location: LCCOMB_X6_Y7_N12
\COMP_VGA|vga_r_reg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~23_combout\ = (\COMP_VGA|vga_b_reg~59_combout\) # ((\COMP_VGA|vga_r_reg~17_combout\ & ((!\COMP_VGA|vga_dis_mode\(3)) # (!\COMP_VGA|vga_dis_mode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg~59_combout\,
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_r_reg~17_combout\,
	datad => \COMP_VGA|vga_dis_mode\(3),
	combout => \COMP_VGA|vga_r_reg~23_combout\);

-- Location: FF_X6_Y7_N13
\COMP_VGA|vga_r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_r_reg~23_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_r_reg\(3));

-- Location: LCCOMB_X7_Y7_N6
\COMP_VGA|vga_r[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r[3]~3_combout\ = (\COMP_VGA|vga_r_reg\(3) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_r_reg\(3),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_r[3]~3_combout\);

-- Location: LCCOMB_X7_Y6_N16
\COMP_VGA|vga_b_reg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~37_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((\COMP_VGA|x_cnt\(6) & !\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|grid_data_1\(0)) # ((\COMP_VGA|vga_dis_mode\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|grid_data_1\(0),
	datab => \COMP_VGA|x_cnt\(6),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_b_reg~37_combout\);

-- Location: LCCOMB_X7_Y6_N2
\COMP_VGA|vga_b_reg~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~60_combout\ = (\COMP_VGA|vga_dis_mode\(3) & (\COMP_VGA|vga_dis_mode\(0) & \COMP_VGA|vga_b_reg~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datac => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_b_reg~37_combout\,
	combout => \COMP_VGA|vga_b_reg~60_combout\);

-- Location: LCCOMB_X4_Y9_N0
\COMP_VGA|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~5_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((!\COMP_VGA|vga_dis_mode\(2))))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|y_cnt\(6)))) # (!\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|bar_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|y_cnt\(6),
	combout => \COMP_VGA|Mux4~5_combout\);

-- Location: LCCOMB_X8_Y7_N30
\COMP_VGA|vga_r_reg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~18_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~5_combout\) # ((\COMP_VGA|vga_b_reg[4]~40_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (((!\COMP_VGA|vga_b_reg[4]~40_combout\ & \COMP_VGA|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~5_combout\,
	datab => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datac => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datad => \COMP_VGA|Mux4~0_combout\,
	combout => \COMP_VGA|vga_r_reg~18_combout\);

-- Location: LCCOMB_X7_Y6_N18
\COMP_VGA|vga_r_reg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~19_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(6) & !\COMP_VGA|vga_r_reg~18_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_r_reg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datab => \COMP_VGA|x_cnt\(6),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|vga_r_reg~18_combout\,
	combout => \COMP_VGA|vga_r_reg~19_combout\);

-- Location: LCCOMB_X7_Y6_N0
\COMP_VGA|vga_r_reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r_reg~24_combout\ = (\COMP_VGA|vga_b_reg~60_combout\) # ((\COMP_VGA|vga_r_reg~19_combout\ & ((!\COMP_VGA|vga_dis_mode\(0)) # (!\COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_b_reg~60_combout\,
	datac => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_r_reg~19_combout\,
	combout => \COMP_VGA|vga_r_reg~24_combout\);

-- Location: FF_X7_Y6_N1
\COMP_VGA|vga_r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_r_reg~24_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_r_reg\(4));

-- Location: LCCOMB_X7_Y7_N20
\COMP_VGA|vga_r[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_r[4]~4_combout\ = (\COMP_VGA|vga_r_reg\(4) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_r_reg\(4),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_r[4]~4_combout\);

-- Location: LCCOMB_X6_Y6_N26
\COMP_VGA|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~6_combout\ = (\COMP_VGA|vga_dis_mode\(1) & (((\COMP_VGA|x_cnt\(1))) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_dis_mode\(1) & (!\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|bar_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|x_cnt\(1),
	datad => \COMP_VGA|bar_data\(0),
	combout => \COMP_VGA|Mux4~6_combout\);

-- Location: LCCOMB_X6_Y6_N8
\COMP_VGA|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~7_combout\ = (\COMP_VGA|Mux4~6_combout\) # ((!\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|vga_dis_mode\(2) & \COMP_VGA|y_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|Mux4~6_combout\,
	datad => \COMP_VGA|y_cnt\(1),
	combout => \COMP_VGA|Mux4~7_combout\);

-- Location: LCCOMB_X6_Y6_N30
\COMP_VGA|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~8_combout\ = (\COMP_VGA|vga_dis_mode\(2)) # ((\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|x_cnt\(1))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|grid_data_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|x_cnt\(1),
	datac => \COMP_VGA|grid_data_1\(0),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~8_combout\);

-- Location: LCCOMB_X4_Y9_N6
\COMP_VGA|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~9_combout\ = (\COMP_VGA|grid_data_2\(0) & (!\COMP_VGA|vga_dis_mode\(2) & \COMP_VGA|vga_dis_mode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|grid_data_2\(0),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|vga_dis_mode\(1),
	combout => \COMP_VGA|Mux4~9_combout\);

-- Location: LCCOMB_X6_Y6_N16
\COMP_VGA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux10~0_combout\ = (\COMP_VGA|vga_dis_mode\(0) & ((\COMP_VGA|Mux4~8_combout\) # ((!\COMP_VGA|vga_dis_mode\(3))))) # (!\COMP_VGA|vga_dis_mode\(0) & (((\COMP_VGA|Mux4~9_combout\ & \COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~8_combout\,
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|Mux4~9_combout\,
	datad => \COMP_VGA|vga_dis_mode\(3),
	combout => \COMP_VGA|Mux10~0_combout\);

-- Location: LCCOMB_X6_Y6_N24
\COMP_VGA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux10~1_combout\ = (\COMP_VGA|vga_dis_mode\(3) & (((\COMP_VGA|Mux10~0_combout\)))) # (!\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|Mux10~0_combout\ & (!\COMP_VGA|vga_dis_mode\(2))) # (!\COMP_VGA|Mux10~0_combout\ & ((\COMP_VGA|Mux4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|Mux4~7_combout\,
	datad => \COMP_VGA|Mux10~0_combout\,
	combout => \COMP_VGA|Mux10~1_combout\);

-- Location: FF_X6_Y6_N25
\COMP_VGA|vga_g_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|Mux10~1_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_g_reg\(0));

-- Location: LCCOMB_X7_Y7_N2
\COMP_VGA|vga_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g[0]~0_combout\ = (\COMP_VGA|hsync_de~q\ & (\COMP_VGA|vga_g_reg\(0) & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|hsync_de~q\,
	datac => \COMP_VGA|vga_g_reg\(0),
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_g[0]~0_combout\);

-- Location: LCCOMB_X6_Y6_N6
\COMP_VGA|vga_g_reg[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg[3]~11_combout\ = (!\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|vga_dis_mode\(1)) # (\COMP_VGA|vga_dis_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(1),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_dis_mode\(3),
	combout => \COMP_VGA|vga_g_reg[3]~11_combout\);

-- Location: LCCOMB_X6_Y6_N10
\COMP_VGA|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~10_combout\ = (\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|y_cnt\(2)))) # (!\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|bar_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|y_cnt\(2),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~10_combout\);

-- Location: LCCOMB_X6_Y6_N28
\COMP_VGA|vga_g_reg[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg[3]~12_combout\ = (\COMP_VGA|vga_dis_mode\(3)) # (\COMP_VGA|vga_dis_mode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|vga_dis_mode\(3),
	datad => \COMP_VGA|vga_dis_mode\(0),
	combout => \COMP_VGA|vga_g_reg[3]~12_combout\);

-- Location: LCCOMB_X6_Y6_N20
\COMP_VGA|vga_g_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~13_combout\ = (\COMP_VGA|vga_g_reg[3]~12_combout\ & (((\COMP_VGA|Mux4~9_combout\) # (\COMP_VGA|vga_g_reg[3]~11_combout\)))) # (!\COMP_VGA|vga_g_reg[3]~12_combout\ & (\COMP_VGA|Mux4~10_combout\ & 
-- ((!\COMP_VGA|vga_g_reg[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~10_combout\,
	datab => \COMP_VGA|vga_g_reg[3]~12_combout\,
	datac => \COMP_VGA|Mux4~9_combout\,
	datad => \COMP_VGA|vga_g_reg[3]~11_combout\,
	combout => \COMP_VGA|vga_g_reg~13_combout\);

-- Location: LCCOMB_X6_Y6_N22
\COMP_VGA|vga_g_reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~14_combout\ = (\COMP_VGA|vga_g_reg[3]~11_combout\ & (((\COMP_VGA|x_cnt\(2) & !\COMP_VGA|vga_g_reg~13_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_g_reg[3]~11_combout\ & (((\COMP_VGA|vga_g_reg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_g_reg[3]~11_combout\,
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|x_cnt\(2),
	datad => \COMP_VGA|vga_g_reg~13_combout\,
	combout => \COMP_VGA|vga_g_reg~14_combout\);

-- Location: LCCOMB_X5_Y6_N24
\COMP_VGA|vga_g_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~10_combout\ = (\COMP_VGA|vga_dis_mode\(2)) # ((\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|x_cnt\(2))) # (!\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|grid_data_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(2),
	datab => \COMP_VGA|grid_data_1\(0),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|vga_dis_mode\(1),
	combout => \COMP_VGA|vga_g_reg~10_combout\);

-- Location: LCCOMB_X6_Y6_N18
\COMP_VGA|vga_g_reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~27_combout\ = (\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|vga_dis_mode\(0) & ((\COMP_VGA|vga_g_reg~10_combout\))) # (!\COMP_VGA|vga_dis_mode\(0) & (\COMP_VGA|vga_g_reg~14_combout\)))) # (!\COMP_VGA|vga_dis_mode\(3) & 
-- (\COMP_VGA|vga_g_reg~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_g_reg~14_combout\,
	datab => \COMP_VGA|vga_g_reg~10_combout\,
	datac => \COMP_VGA|vga_dis_mode\(3),
	datad => \COMP_VGA|vga_dis_mode\(0),
	combout => \COMP_VGA|vga_g_reg~27_combout\);

-- Location: FF_X6_Y6_N19
\COMP_VGA|vga_g_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_g_reg~27_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_g_reg\(1));

-- Location: LCCOMB_X7_Y7_N0
\COMP_VGA|vga_g[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g[1]~1_combout\ = (\COMP_VGA|vga_g_reg\(1) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_g_reg\(1),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_g[1]~1_combout\);

-- Location: LCCOMB_X4_Y6_N8
\COMP_VGA|vga_g_reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~15_combout\ = (\COMP_VGA|vga_dis_mode\(2)) # ((\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|x_cnt\(3)))) # (!\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|grid_data_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|grid_data_1\(0),
	datab => \COMP_VGA|x_cnt\(3),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_g_reg~15_combout\);

-- Location: LCCOMB_X4_Y6_N30
\COMP_VGA|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~11_combout\ = (\COMP_VGA|x_cnt\(3)) # (!\COMP_VGA|vga_dis_mode\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|x_cnt\(3),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~11_combout\);

-- Location: LCCOMB_X4_Y6_N16
\COMP_VGA|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~12_combout\ = (\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|y_cnt\(3))) # (!\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|bar_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|y_cnt\(3),
	datab => \COMP_VGA|bar_data\(0),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~12_combout\);

-- Location: LCCOMB_X4_Y6_N18
\COMP_VGA|vga_g_reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~16_combout\ = (\COMP_VGA|vga_g_reg[3]~12_combout\ & (((\COMP_VGA|vga_g_reg[3]~11_combout\)))) # (!\COMP_VGA|vga_g_reg[3]~12_combout\ & ((\COMP_VGA|vga_g_reg[3]~11_combout\ & (\COMP_VGA|Mux4~11_combout\)) # 
-- (!\COMP_VGA|vga_g_reg[3]~11_combout\ & ((\COMP_VGA|Mux4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~11_combout\,
	datab => \COMP_VGA|Mux4~12_combout\,
	datac => \COMP_VGA|vga_g_reg[3]~12_combout\,
	datad => \COMP_VGA|vga_g_reg[3]~11_combout\,
	combout => \COMP_VGA|vga_g_reg~16_combout\);

-- Location: LCCOMB_X4_Y6_N28
\COMP_VGA|vga_g_reg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~17_combout\ = (\COMP_VGA|vga_g_reg~16_combout\ & (((!\COMP_VGA|vga_dis_mode\(2)) # (!\COMP_VGA|vga_g_reg[3]~12_combout\)))) # (!\COMP_VGA|vga_g_reg~16_combout\ & (\COMP_VGA|Mux4~9_combout\ & (\COMP_VGA|vga_g_reg[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~9_combout\,
	datab => \COMP_VGA|vga_g_reg~16_combout\,
	datac => \COMP_VGA|vga_g_reg[3]~12_combout\,
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_g_reg~17_combout\);

-- Location: LCCOMB_X4_Y6_N0
\COMP_VGA|vga_g_reg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~28_combout\ = (\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|vga_dis_mode\(0) & (\COMP_VGA|vga_g_reg~15_combout\)) # (!\COMP_VGA|vga_dis_mode\(0) & ((\COMP_VGA|vga_g_reg~17_combout\))))) # (!\COMP_VGA|vga_dis_mode\(3) & 
-- (((\COMP_VGA|vga_g_reg~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_g_reg~15_combout\,
	datad => \COMP_VGA|vga_g_reg~17_combout\,
	combout => \COMP_VGA|vga_g_reg~28_combout\);

-- Location: FF_X4_Y6_N1
\COMP_VGA|vga_g_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_g_reg~28_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_g_reg\(2));

-- Location: LCCOMB_X7_Y7_N10
\COMP_VGA|vga_g[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g[2]~2_combout\ = (\COMP_VGA|hsync_de~q\ & (\COMP_VGA|vga_g_reg\(2) & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|hsync_de~q\,
	datac => \COMP_VGA|vga_g_reg\(2),
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_g[2]~2_combout\);

-- Location: LCCOMB_X4_Y6_N26
\COMP_VGA|vga_g_reg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~18_combout\ = (\COMP_VGA|vga_dis_mode\(2)) # ((\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|x_cnt\(4)))) # (!\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|grid_data_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|grid_data_1\(0),
	datab => \COMP_VGA|x_cnt\(4),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_g_reg~18_combout\);

-- Location: LCCOMB_X6_Y6_N4
\COMP_VGA|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~13_combout\ = (\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|y_cnt\(4)))) # (!\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|bar_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|y_cnt\(4),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~13_combout\);

-- Location: LCCOMB_X5_Y6_N10
\COMP_VGA|vga_g_reg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~19_combout\ = (\COMP_VGA|vga_g_reg[3]~12_combout\ & (((\COMP_VGA|Mux4~9_combout\) # (\COMP_VGA|vga_g_reg[3]~11_combout\)))) # (!\COMP_VGA|vga_g_reg[3]~12_combout\ & (\COMP_VGA|Mux4~13_combout\ & 
-- ((!\COMP_VGA|vga_g_reg[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~13_combout\,
	datab => \COMP_VGA|vga_g_reg[3]~12_combout\,
	datac => \COMP_VGA|Mux4~9_combout\,
	datad => \COMP_VGA|vga_g_reg[3]~11_combout\,
	combout => \COMP_VGA|vga_g_reg~19_combout\);

-- Location: LCCOMB_X4_Y6_N20
\COMP_VGA|vga_g_reg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~20_combout\ = (\COMP_VGA|vga_g_reg[3]~11_combout\ & (((\COMP_VGA|x_cnt\(4) & !\COMP_VGA|vga_g_reg~19_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_g_reg[3]~11_combout\ & (((\COMP_VGA|vga_g_reg~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_g_reg[3]~11_combout\,
	datab => \COMP_VGA|x_cnt\(4),
	datac => \COMP_VGA|vga_g_reg~19_combout\,
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_g_reg~20_combout\);

-- Location: LCCOMB_X4_Y6_N22
\COMP_VGA|vga_g_reg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~29_combout\ = (\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|vga_dis_mode\(0) & (\COMP_VGA|vga_g_reg~18_combout\)) # (!\COMP_VGA|vga_dis_mode\(0) & ((\COMP_VGA|vga_g_reg~20_combout\))))) # (!\COMP_VGA|vga_dis_mode\(3) & 
-- (((\COMP_VGA|vga_g_reg~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_g_reg~18_combout\,
	datad => \COMP_VGA|vga_g_reg~20_combout\,
	combout => \COMP_VGA|vga_g_reg~29_combout\);

-- Location: FF_X4_Y6_N23
\COMP_VGA|vga_g_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_g_reg~29_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_g_reg\(3));

-- Location: LCCOMB_X7_Y7_N12
\COMP_VGA|vga_g[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g[3]~3_combout\ = (\COMP_VGA|hsync_de~q\ & (\COMP_VGA|vga_g_reg\(3) & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|hsync_de~q\,
	datac => \COMP_VGA|vga_g_reg\(3),
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_g[3]~3_combout\);

-- Location: LCCOMB_X4_Y6_N14
\COMP_VGA|vga_g_reg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~21_combout\ = (\COMP_VGA|vga_dis_mode\(2)) # ((\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|x_cnt\(5)))) # (!\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|grid_data_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|grid_data_1\(0),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|x_cnt\(5),
	combout => \COMP_VGA|vga_g_reg~21_combout\);

-- Location: LCCOMB_X4_Y6_N4
\COMP_VGA|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~15_combout\ = (\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|y_cnt\(5)))) # (!\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|bar_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|y_cnt\(5),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~15_combout\);

-- Location: LCCOMB_X7_Y5_N26
\COMP_VGA|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~14_combout\ = (\COMP_VGA|x_cnt\(5)) # (!\COMP_VGA|vga_dis_mode\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|x_cnt\(5),
	combout => \COMP_VGA|Mux4~14_combout\);

-- Location: LCCOMB_X4_Y6_N10
\COMP_VGA|vga_g_reg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~22_combout\ = (\COMP_VGA|vga_g_reg[3]~11_combout\ & (((\COMP_VGA|vga_g_reg[3]~12_combout\) # (\COMP_VGA|Mux4~14_combout\)))) # (!\COMP_VGA|vga_g_reg[3]~11_combout\ & (\COMP_VGA|Mux4~15_combout\ & (!\COMP_VGA|vga_g_reg[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_g_reg[3]~11_combout\,
	datab => \COMP_VGA|Mux4~15_combout\,
	datac => \COMP_VGA|vga_g_reg[3]~12_combout\,
	datad => \COMP_VGA|Mux4~14_combout\,
	combout => \COMP_VGA|vga_g_reg~22_combout\);

-- Location: LCCOMB_X4_Y6_N24
\COMP_VGA|vga_g_reg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~23_combout\ = (\COMP_VGA|vga_g_reg[3]~12_combout\ & ((\COMP_VGA|vga_g_reg~22_combout\ & ((!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_g_reg~22_combout\ & (\COMP_VGA|Mux4~9_combout\)))) # (!\COMP_VGA|vga_g_reg[3]~12_combout\ & 
-- (((\COMP_VGA|vga_g_reg~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~9_combout\,
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|vga_g_reg[3]~12_combout\,
	datad => \COMP_VGA|vga_g_reg~22_combout\,
	combout => \COMP_VGA|vga_g_reg~23_combout\);

-- Location: LCCOMB_X4_Y6_N12
\COMP_VGA|vga_g_reg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~30_combout\ = (\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|vga_dis_mode\(0) & (\COMP_VGA|vga_g_reg~21_combout\)) # (!\COMP_VGA|vga_dis_mode\(0) & ((\COMP_VGA|vga_g_reg~23_combout\))))) # (!\COMP_VGA|vga_dis_mode\(3) & 
-- (((\COMP_VGA|vga_g_reg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_g_reg~21_combout\,
	datad => \COMP_VGA|vga_g_reg~23_combout\,
	combout => \COMP_VGA|vga_g_reg~30_combout\);

-- Location: FF_X4_Y6_N13
\COMP_VGA|vga_g_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_g_reg~30_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_g_reg\(4));

-- Location: LCCOMB_X7_Y7_N14
\COMP_VGA|vga_g[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g[4]~4_combout\ = (\COMP_VGA|hsync_de~q\ & (\COMP_VGA|vga_g_reg\(4) & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|hsync_de~q\,
	datac => \COMP_VGA|vga_g_reg\(4),
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_g[4]~4_combout\);

-- Location: LCCOMB_X7_Y6_N8
\COMP_VGA|vga_g_reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~24_combout\ = (\COMP_VGA|vga_dis_mode\(2)) # ((\COMP_VGA|vga_dis_mode\(1) & ((\COMP_VGA|x_cnt\(6)))) # (!\COMP_VGA|vga_dis_mode\(1) & (\COMP_VGA|grid_data_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|grid_data_1\(0),
	datab => \COMP_VGA|x_cnt\(6),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|vga_g_reg~24_combout\);

-- Location: LCCOMB_X4_Y9_N28
\COMP_VGA|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~16_combout\ = (\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|y_cnt\(6)))) # (!\COMP_VGA|vga_dis_mode\(2) & (\COMP_VGA|bar_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|bar_data\(0),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|y_cnt\(6),
	combout => \COMP_VGA|Mux4~16_combout\);

-- Location: LCCOMB_X6_Y6_N14
\COMP_VGA|vga_g_reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~25_combout\ = (\COMP_VGA|vga_g_reg[3]~12_combout\ & (((\COMP_VGA|Mux4~9_combout\) # (\COMP_VGA|vga_g_reg[3]~11_combout\)))) # (!\COMP_VGA|vga_g_reg[3]~12_combout\ & (\COMP_VGA|Mux4~16_combout\ & 
-- ((!\COMP_VGA|vga_g_reg[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~16_combout\,
	datab => \COMP_VGA|vga_g_reg[3]~12_combout\,
	datac => \COMP_VGA|Mux4~9_combout\,
	datad => \COMP_VGA|vga_g_reg[3]~11_combout\,
	combout => \COMP_VGA|vga_g_reg~25_combout\);

-- Location: LCCOMB_X7_Y6_N6
\COMP_VGA|vga_g_reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~26_combout\ = (\COMP_VGA|vga_g_reg[3]~11_combout\ & (((\COMP_VGA|x_cnt\(6) & !\COMP_VGA|vga_g_reg~25_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_g_reg[3]~11_combout\ & (((\COMP_VGA|vga_g_reg~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(2),
	datab => \COMP_VGA|x_cnt\(6),
	datac => \COMP_VGA|vga_g_reg[3]~11_combout\,
	datad => \COMP_VGA|vga_g_reg~25_combout\,
	combout => \COMP_VGA|vga_g_reg~26_combout\);

-- Location: LCCOMB_X7_Y6_N26
\COMP_VGA|vga_g_reg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g_reg~31_combout\ = (\COMP_VGA|vga_dis_mode\(3) & ((\COMP_VGA|vga_dis_mode\(0) & (\COMP_VGA|vga_g_reg~24_combout\)) # (!\COMP_VGA|vga_dis_mode\(0) & ((\COMP_VGA|vga_g_reg~26_combout\))))) # (!\COMP_VGA|vga_dis_mode\(3) & 
-- (((\COMP_VGA|vga_g_reg~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_g_reg~24_combout\,
	datac => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_g_reg~26_combout\,
	combout => \COMP_VGA|vga_g_reg~31_combout\);

-- Location: FF_X7_Y6_N27
\COMP_VGA|vga_g_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_g_reg~31_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_g_reg\(5));

-- Location: LCCOMB_X7_Y7_N4
\COMP_VGA|vga_g[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_g[5]~5_combout\ = (\COMP_VGA|vga_g_reg\(5) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_g_reg\(5),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_g[5]~5_combout\);

-- Location: LCCOMB_X8_Y7_N12
\COMP_VGA|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~17_combout\ = (!\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|grid_data_2\(0)) # (!\COMP_VGA|vga_dis_mode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|grid_data_2\(0),
	datac => \COMP_VGA|vga_dis_mode\(1),
	datad => \COMP_VGA|vga_dis_mode\(2),
	combout => \COMP_VGA|Mux4~17_combout\);

-- Location: LCCOMB_X8_Y7_N18
\COMP_VGA|vga_b_reg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~42_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_b_reg[4]~41_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & ((\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~1_combout\))) # 
-- (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (\COMP_VGA|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~17_combout\,
	datab => \COMP_VGA|Mux4~1_combout\,
	datac => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datad => \COMP_VGA|vga_b_reg[4]~41_combout\,
	combout => \COMP_VGA|vga_b_reg~42_combout\);

-- Location: LCCOMB_X8_Y7_N4
\COMP_VGA|vga_b_reg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~43_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(2) & \COMP_VGA|vga_b_reg~42_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_b_reg~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(2),
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datad => \COMP_VGA|vga_b_reg~42_combout\,
	combout => \COMP_VGA|vga_b_reg~43_combout\);

-- Location: LCCOMB_X8_Y7_N22
\COMP_VGA|vga_b_reg~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~51_combout\ = (\COMP_VGA|vga_b_reg~56_combout\) # ((\COMP_VGA|vga_b_reg~43_combout\ & ((!\COMP_VGA|vga_dis_mode\(0)) # (!\COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_b_reg~43_combout\,
	datad => \COMP_VGA|vga_b_reg~56_combout\,
	combout => \COMP_VGA|vga_b_reg~51_combout\);

-- Location: FF_X8_Y7_N23
\COMP_VGA|vga_b_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_b_reg~51_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_b_reg\(0));

-- Location: LCCOMB_X7_Y7_N26
\COMP_VGA|vga_b[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b[0]~0_combout\ = (\COMP_VGA|vsync_de~q\ & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vga_b_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vsync_de~q\,
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vga_b_reg\(0),
	combout => \COMP_VGA|vga_b[0]~0_combout\);

-- Location: LCCOMB_X4_Y9_N10
\COMP_VGA|Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Mux4~18_combout\ = (\COMP_VGA|grid_data_2\(0)) # (!\COMP_VGA|vga_dis_mode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|grid_data_2\(0),
	datad => \COMP_VGA|vga_dis_mode\(1),
	combout => \COMP_VGA|Mux4~18_combout\);

-- Location: LCCOMB_X7_Y5_N28
\COMP_VGA|vga_b_reg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~44_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & (((\COMP_VGA|vga_b_reg[4]~40_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (!\COMP_VGA|vga_dis_mode\(2) & ((\COMP_VGA|Mux4~18_combout\) # 
-- (\COMP_VGA|vga_b_reg[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|Mux4~18_combout\,
	datad => \COMP_VGA|vga_b_reg[4]~40_combout\,
	combout => \COMP_VGA|vga_b_reg~44_combout\);

-- Location: LCCOMB_X7_Y5_N22
\COMP_VGA|vga_b_reg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~45_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|vga_b_reg~44_combout\ & (\COMP_VGA|Mux4~11_combout\)) # (!\COMP_VGA|vga_b_reg~44_combout\ & ((\COMP_VGA|Mux4~2_combout\))))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & 
-- (((\COMP_VGA|vga_b_reg~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datab => \COMP_VGA|Mux4~11_combout\,
	datac => \COMP_VGA|Mux4~2_combout\,
	datad => \COMP_VGA|vga_b_reg~44_combout\,
	combout => \COMP_VGA|vga_b_reg~45_combout\);

-- Location: LCCOMB_X6_Y7_N18
\COMP_VGA|vga_b_reg~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~52_combout\ = (\COMP_VGA|vga_b_reg~57_combout\) # ((\COMP_VGA|vga_b_reg~45_combout\ & ((!\COMP_VGA|vga_dis_mode\(3)) # (!\COMP_VGA|vga_dis_mode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg~57_combout\,
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_b_reg~45_combout\,
	datad => \COMP_VGA|vga_dis_mode\(3),
	combout => \COMP_VGA|vga_b_reg~52_combout\);

-- Location: FF_X6_Y7_N19
\COMP_VGA|vga_b_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_b_reg~52_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_b_reg\(1));

-- Location: LCCOMB_X7_Y7_N24
\COMP_VGA|vga_b[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b[1]~1_combout\ = (\COMP_VGA|vga_b_reg\(1) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_b_reg\(1),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_b[1]~1_combout\);

-- Location: LCCOMB_X8_Y7_N26
\COMP_VGA|vga_b_reg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~46_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_b_reg[4]~41_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & ((\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~3_combout\))) # 
-- (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (\COMP_VGA|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~17_combout\,
	datab => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datac => \COMP_VGA|Mux4~3_combout\,
	datad => \COMP_VGA|vga_b_reg[4]~41_combout\,
	combout => \COMP_VGA|vga_b_reg~46_combout\);

-- Location: LCCOMB_X6_Y7_N22
\COMP_VGA|vga_b_reg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~47_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(4) & \COMP_VGA|vga_b_reg~46_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_b_reg~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datab => \COMP_VGA|vga_dis_mode\(2),
	datac => \COMP_VGA|x_cnt\(4),
	datad => \COMP_VGA|vga_b_reg~46_combout\,
	combout => \COMP_VGA|vga_b_reg~47_combout\);

-- Location: LCCOMB_X6_Y7_N0
\COMP_VGA|vga_b_reg~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~53_combout\ = (\COMP_VGA|vga_b_reg~58_combout\) # ((\COMP_VGA|vga_b_reg~47_combout\ & ((!\COMP_VGA|vga_dis_mode\(0)) # (!\COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_b_reg~47_combout\,
	datad => \COMP_VGA|vga_b_reg~58_combout\,
	combout => \COMP_VGA|vga_b_reg~53_combout\);

-- Location: FF_X6_Y7_N1
\COMP_VGA|vga_b_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_b_reg~53_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_b_reg\(2));

-- Location: LCCOMB_X7_Y7_N22
\COMP_VGA|vga_b[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b[2]~2_combout\ = (\COMP_VGA|hsync_de~q\ & (\COMP_VGA|vga_b_reg\(2) & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|hsync_de~q\,
	datac => \COMP_VGA|vga_b_reg\(2),
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_b[2]~2_combout\);

-- Location: LCCOMB_X7_Y5_N4
\COMP_VGA|vga_b_reg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~48_combout\ = (\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|vga_b_reg~44_combout\ & ((\COMP_VGA|Mux4~14_combout\))) # (!\COMP_VGA|vga_b_reg~44_combout\ & (\COMP_VGA|Mux4~4_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~41_combout\ & 
-- (((\COMP_VGA|vga_b_reg~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~41_combout\,
	datab => \COMP_VGA|Mux4~4_combout\,
	datac => \COMP_VGA|Mux4~14_combout\,
	datad => \COMP_VGA|vga_b_reg~44_combout\,
	combout => \COMP_VGA|vga_b_reg~48_combout\);

-- Location: LCCOMB_X6_Y7_N2
\COMP_VGA|vga_b_reg~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~54_combout\ = (\COMP_VGA|vga_b_reg~59_combout\) # ((\COMP_VGA|vga_b_reg~48_combout\ & ((!\COMP_VGA|vga_dis_mode\(0)) # (!\COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_dis_mode\(0),
	datac => \COMP_VGA|vga_b_reg~59_combout\,
	datad => \COMP_VGA|vga_b_reg~48_combout\,
	combout => \COMP_VGA|vga_b_reg~54_combout\);

-- Location: FF_X6_Y7_N3
\COMP_VGA|vga_b_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_b_reg~54_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_b_reg\(3));

-- Location: LCCOMB_X7_Y7_N16
\COMP_VGA|vga_b[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b[3]~3_combout\ = (\COMP_VGA|vga_b_reg\(3) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg\(3),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_b[3]~3_combout\);

-- Location: LCCOMB_X8_Y7_N0
\COMP_VGA|vga_b_reg~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~49_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_b_reg[4]~41_combout\)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & ((\COMP_VGA|vga_b_reg[4]~41_combout\ & ((\COMP_VGA|Mux4~5_combout\))) # 
-- (!\COMP_VGA|vga_b_reg[4]~41_combout\ & (\COMP_VGA|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Mux4~17_combout\,
	datab => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datac => \COMP_VGA|Mux4~5_combout\,
	datad => \COMP_VGA|vga_b_reg[4]~41_combout\,
	combout => \COMP_VGA|vga_b_reg~49_combout\);

-- Location: LCCOMB_X7_Y6_N12
\COMP_VGA|vga_b_reg~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~50_combout\ = (\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|x_cnt\(6) & \COMP_VGA|vga_b_reg~49_combout\)) # (!\COMP_VGA|vga_dis_mode\(2)))) # (!\COMP_VGA|vga_b_reg[4]~40_combout\ & (((\COMP_VGA|vga_b_reg~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_b_reg[4]~40_combout\,
	datab => \COMP_VGA|x_cnt\(6),
	datac => \COMP_VGA|vga_dis_mode\(2),
	datad => \COMP_VGA|vga_b_reg~49_combout\,
	combout => \COMP_VGA|vga_b_reg~50_combout\);

-- Location: LCCOMB_X7_Y6_N20
\COMP_VGA|vga_b_reg~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b_reg~55_combout\ = (\COMP_VGA|vga_b_reg~60_combout\) # ((\COMP_VGA|vga_b_reg~50_combout\ & ((!\COMP_VGA|vga_dis_mode\(0)) # (!\COMP_VGA|vga_dis_mode\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|vga_dis_mode\(3),
	datab => \COMP_VGA|vga_b_reg~60_combout\,
	datac => \COMP_VGA|vga_dis_mode\(0),
	datad => \COMP_VGA|vga_b_reg~50_combout\,
	combout => \COMP_VGA|vga_b_reg~55_combout\);

-- Location: FF_X7_Y6_N21
\COMP_VGA|vga_b_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vga_b_reg~55_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vga_b_reg\(4));

-- Location: LCCOMB_X7_Y7_N18
\COMP_VGA|vga_b[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vga_b[4]~4_combout\ = (\COMP_VGA|vga_b_reg\(4) & (\COMP_VGA|hsync_de~q\ & \COMP_VGA|vsync_de~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|vga_b_reg\(4),
	datac => \COMP_VGA|hsync_de~q\,
	datad => \COMP_VGA|vsync_de~q\,
	combout => \COMP_VGA|vga_b[4]~4_combout\);

-- Location: LCCOMB_X7_Y5_N30
\COMP_VGA|hsync_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|hsync_r~2_combout\ = (!\COMP_VGA|x_cnt\(5) & (!\COMP_VGA|x_cnt\(8) & (!\COMP_VGA|x_cnt\(10) & \COMP_VGA|x_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(5),
	datab => \COMP_VGA|x_cnt\(8),
	datac => \COMP_VGA|x_cnt\(10),
	datad => \COMP_VGA|x_cnt\(7),
	combout => \COMP_VGA|hsync_r~2_combout\);

-- Location: LCCOMB_X6_Y5_N28
\COMP_VGA|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal1~1_combout\ = (\COMP_VGA|x_cnt\(0) & !\COMP_VGA|x_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMP_VGA|x_cnt\(0),
	datad => \COMP_VGA|x_cnt\(6),
	combout => \COMP_VGA|Equal1~1_combout\);

-- Location: LCCOMB_X6_Y4_N24
\COMP_VGA|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal1~2_combout\ = (!\COMP_VGA|x_cnt\(8) & (!\COMP_VGA|x_cnt\(10) & (\COMP_VGA|Equal1~1_combout\ & \COMP_VGA|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|x_cnt\(8),
	datab => \COMP_VGA|x_cnt\(10),
	datac => \COMP_VGA|Equal1~1_combout\,
	datad => \COMP_VGA|Equal1~0_combout\,
	combout => \COMP_VGA|Equal1~2_combout\);

-- Location: LCCOMB_X5_Y4_N0
\COMP_VGA|hsync_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|hsync_r~3_combout\ = (!\COMP_VGA|Equal1~2_combout\ & ((\COMP_VGA|hsync_r~q\) # ((\COMP_VGA|hsync_r~1_combout\ & \COMP_VGA|hsync_r~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|hsync_r~1_combout\,
	datab => \COMP_VGA|hsync_r~2_combout\,
	datac => \COMP_VGA|hsync_r~q\,
	datad => \COMP_VGA|Equal1~2_combout\,
	combout => \COMP_VGA|hsync_r~3_combout\);

-- Location: FF_X5_Y4_N1
\COMP_VGA|hsync_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|hsync_r~3_combout\,
	asdata => VCC,
	sload => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|hsync_r~q\);

-- Location: LCCOMB_X9_Y4_N12
\COMP_VGA|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|Equal6~0_combout\ = (\COMP_VGA|always0~2_combout\ & (!\COMP_VGA|y_cnt\(5) & (\COMP_VGA|y_cnt\(0) & \COMP_VGA|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|always0~2_combout\,
	datab => \COMP_VGA|y_cnt\(5),
	datac => \COMP_VGA|y_cnt\(0),
	datad => \COMP_VGA|always0~1_combout\,
	combout => \COMP_VGA|Equal6~0_combout\);

-- Location: LCCOMB_X9_Y4_N2
\COMP_VGA|vsync_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vsync_r~0_combout\ = (!\COMP_VGA|y_cnt\(5) & (\COMP_VGA|y_cnt\(2) & !\COMP_VGA|y_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_VGA|y_cnt\(5),
	datac => \COMP_VGA|y_cnt\(2),
	datad => \COMP_VGA|y_cnt\(0),
	combout => \COMP_VGA|vsync_r~0_combout\);

-- Location: LCCOMB_X9_Y4_N16
\COMP_VGA|vsync_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_VGA|vsync_r~1_combout\ = (!\COMP_VGA|Equal6~0_combout\ & ((\COMP_VGA|vsync_r~q\) # ((\COMP_VGA|vsync_r~0_combout\ & \COMP_VGA|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_VGA|Equal6~0_combout\,
	datab => \COMP_VGA|vsync_r~0_combout\,
	datac => \COMP_VGA|vsync_r~q\,
	datad => \COMP_VGA|Equal8~0_combout\,
	combout => \COMP_VGA|vsync_r~1_combout\);

-- Location: FF_X9_Y4_N17
\COMP_VGA|vsync_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_VGA|pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \COMP_VGA|vsync_r~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_VGA|vsync_r~q\);

-- Location: LCCOMB_X18_Y4_N16
\COMP_CCD|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~7_combout\ = (((!\COMP_CCD|process_2:count[2]~q\ & !\COMP_CCD|process_2:count[1]~q\)) # (!\COMP_CCD|process_2:count[3]~q\)) # (!\COMP_CCD|process_2:count[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[2]~q\,
	datab => \COMP_CCD|process_2:count[4]~q\,
	datac => \COMP_CCD|process_2:count[3]~q\,
	datad => \COMP_CCD|process_2:count[1]~q\,
	combout => \COMP_CCD|LessThan1~7_combout\);

-- Location: LCCOMB_X18_Y4_N24
\COMP_CCD|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~8_combout\ = ((!\COMP_CCD|process_2:count[5]~q\ & \COMP_CCD|LessThan1~7_combout\)) # (!\COMP_CCD|process_2:count[6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[6]~q\,
	datac => \COMP_CCD|process_2:count[5]~q\,
	datad => \COMP_CCD|LessThan1~7_combout\,
	combout => \COMP_CCD|LessThan1~8_combout\);

-- Location: LCCOMB_X18_Y4_N12
\COMP_CCD|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|LessThan1~9_combout\ = ((!\COMP_CCD|process_2:count[7]~q\ & (\COMP_CCD|LessThan1~6_combout\ & \COMP_CCD|LessThan1~8_combout\))) # (!\COMP_CCD|process_2:count[12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[12]~q\,
	datab => \COMP_CCD|process_2:count[7]~q\,
	datac => \COMP_CCD|LessThan1~6_combout\,
	datad => \COMP_CCD|LessThan1~8_combout\,
	combout => \COMP_CCD|LessThan1~9_combout\);

-- Location: LCCOMB_X17_Y3_N12
\COMP_CCD|clk_buf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_buf~0_combout\ = \COMP_CCD|clk_buf~q\ $ (((!\COMP_CCD|LessThan1~5_combout\) # (!\COMP_CCD|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|clk_buf~q\,
	datac => \COMP_CCD|LessThan1~9_combout\,
	datad => \COMP_CCD|LessThan1~5_combout\,
	combout => \COMP_CCD|clk_buf~0_combout\);

-- Location: LCCOMB_X17_Y3_N24
\COMP_CCD|clk_buf~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_buf~1_combout\ = (\COMP_CCD|clk_buf~0_combout\ & (((\COMP_CCD|process_2:count[0]~q\) # (!\COMP_CCD|Equal4~0_combout\)) # (!\COMP_CCD|process_2:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|process_2:count[1]~q\,
	datab => \COMP_CCD|Equal4~0_combout\,
	datac => \COMP_CCD|process_2:count[0]~q\,
	datad => \COMP_CCD|clk_buf~0_combout\,
	combout => \COMP_CCD|clk_buf~1_combout\);

-- Location: LCCOMB_X17_Y3_N20
\COMP_CCD|clk_buf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_CCD|clk_buf~2_combout\ = (!\COMP_CCD|LessThan0~1_combout\ & ((\COMP_CCD|Equal2~2_combout\ & (\COMP_CCD|clk_buf~q\)) # (!\COMP_CCD|Equal2~2_combout\ & ((!\COMP_CCD|clk_buf~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_CCD|LessThan0~1_combout\,
	datab => \COMP_CCD|Equal2~2_combout\,
	datac => \COMP_CCD|clk_buf~q\,
	datad => \COMP_CCD|clk_buf~1_combout\,
	combout => \COMP_CCD|clk_buf~2_combout\);

-- Location: FF_X17_Y3_N21
\COMP_CCD|clk_buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COMP_CCD|ALT_INV_clk_div~clkctrl_outclk\,
	d => \COMP_CCD|clk_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CCD|clk_buf~q\);

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

-- Location: FF_X2_Y4_N21
\COMP_USB|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	asdata => \ccd_data[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(0));

-- Location: FF_X2_Y4_N19
\COMP_USB|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	asdata => \ccd_data[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(1));

-- Location: LCCOMB_X2_Y4_N12
\COMP_USB|DATA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|DATA[2]~feeder_combout\ = \ccd_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ccd_data[5]~input_o\,
	combout => \COMP_USB|DATA[2]~feeder_combout\);

-- Location: FF_X2_Y4_N13
\COMP_USB|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	d => \COMP_USB|DATA[2]~feeder_combout\,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(2));

-- Location: FF_X2_Y4_N11
\COMP_USB|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	asdata => \ccd_data[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(3));

-- Location: LCCOMB_X2_Y4_N4
\COMP_USB|DATA[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|DATA[4]~feeder_combout\ = \ccd_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ccd_data[7]~input_o\,
	combout => \COMP_USB|DATA[4]~feeder_combout\);

-- Location: FF_X2_Y4_N5
\COMP_USB|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	d => \COMP_USB|DATA[4]~feeder_combout\,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(4));

-- Location: LCCOMB_X2_Y4_N14
\COMP_USB|DATA[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|DATA[5]~feeder_combout\ = \ccd_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ccd_data[8]~input_o\,
	combout => \COMP_USB|DATA[5]~feeder_combout\);

-- Location: FF_X2_Y4_N15
\COMP_USB|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	d => \COMP_USB|DATA[5]~feeder_combout\,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(5));

-- Location: FF_X2_Y4_N29
\COMP_USB|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	asdata => \ccd_data[9]~input_o\,
	sload => VCC,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(6));

-- Location: LCCOMB_X2_Y4_N30
\COMP_USB|DATA[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|DATA[7]~feeder_combout\ = \ccd_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ccd_data[10]~input_o\,
	combout => \COMP_USB|DATA[7]~feeder_combout\);

-- Location: FF_X2_Y4_N31
\COMP_USB|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	d => \COMP_USB|DATA[7]~feeder_combout\,
	ena => \ALT_INV_TXE_USB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|DATA\(7));

-- Location: LCCOMB_X2_Y4_N24
\COMP_USB|wr_cond~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COMP_USB|wr_cond~0_combout\ = !\TXE_USB~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TXE_USB~input_o\,
	combout => \COMP_USB|wr_cond~0_combout\);

-- Location: FF_X2_Y4_N25
\COMP_USB|wr_cond\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_USB~input_o\,
	d => \COMP_USB|wr_cond~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_USB|wr_cond~q\);

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

-- Location: IOIBUF_X25_Y24_N15
\key_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_sub,
	o => \key_sub~input_o\);
END structure;


