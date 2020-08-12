library IEEE;
use IEEE.std_logic_1164.all;

entity monochr is
generic (
);

port (
------------------------
---------ADC------------
------------------------
	adc_clk : out std_logic;
	adc_data_in : in std_logic_vector(11 DOWNTO 0);
------------------------
----START TRIGGER-------
------------------------
	trigger_start : in std_logic;
------------------------
------CCD-PORT----------
------------------------
	clk50Mhz : in std_logic := '1';  -- 50 Mhz
	ccd_clk : out std_logic; -- 2.5 Mhz /clk
	ccd_rog : out std_logic; -- /rog signal
	ccd_shut : out std_logic; -- /shut signal;
------------------------
--------USB-PORT--------
------------------------
	usb_clk : in std_logic;
	usb_txe : in std_logic := '1';
	usb_data : out std_logic_vector(7 DOWNTO 0);
	usb_oe : out std_logic := '1';
	usb_wr : out std_logic := '1'
);
end entity;
-------------------------
-------------------------
-------------------------
architecture monochr of monochr is
--------------------------
---USB-COMPONENT----------
--------------------------
component usb
port (
	clk_in : in std_logic;
	txe : in std_logic := '1';
	ccd_ready : in std_logic;
	data_out : out std_logic_vector(7 DOWNTO 0);
	data_in : in std_logic_vector(7 DOWNTO 0) := "00000000";
	oe : out std_logic := '1';
	wr : out std_logic := '1';
	ccd_line : in std_logic
);

end component;
--------------------------
---CCD-COMPONENT----------
--------------------------
component pzs_test
generic (
	CCD_CLK_DIVIDER : integer, -- 50Mhz => 5Mhz :=5
										-- 50Mhz => 4.16Mhz :=6	
										-- 50Mhz => 2.5Mhz :=10
	ADC_CLK_DIVIDER  : integer,-- 50Mhz => 5Mhz :=2(3)
										-- 50Mhz => 4.16Mhz :=3
										-- 50Mhz => 2.5Mhz := 5
	CCD_COUNT_ROG : integer := 5,
	CCD_COUNT_DUM1 : integer := 33 + 3 * CCD_COUNT_ROG,
	CCD_COUNT_DATA : integer := 2048 + CCD_COUNT_DUM1,
	CCD_COUNT_DUM2 : integer := 6 + CCD_COUNT_DATA,
	
	CCD_LINES_NUMBER : integer, -- Number of lines that ccd should read
	
	START_SEQUENCE1 : std_logic_vector(11 DOWNTO 0) := "01010011", --S
	START_SEQUENCE2 : std_logic_vector(11 DOWNTO 0) := "01111111", --?
	START_SEQUENCE3 : std_logic_vector(11 DOWNTO 0) := "01000001" --A
	);
port (
	---DATA---
	data_out : out std_logic_vector(11 DOWNTO 0);
	---EXTERNAL CLOCK---
	clk_in : in std_logic;  -- 50 Mhz
	---CCD---
	ccd_clk : out std_logic; -- 2.5 Mhz /clk
	rog : out std_logic; -- /rog signal
	shut : out std_logic; -- /shut signal;
	---ADC---
	adc_clk : out std_logic;
	ccd_ready : out std_logic;
	adc_data_in : in std_logic_vector(11 DOWNTO 0);
	---START TRIGGER----
	trigger_start : in std_logic
);
end component;
-------------------------
--------SIGNALS----------
-------------------------
signal adc_clk_reg : std_logic;
signal ccd_clk_reg : std_logic;
signal ccd_rog_reg : std_logic;
signal ccd_ready_reg : std_logic;
signal ccd_line_reg : std_logic := '0';
signal usb_data_reg :  std_logic_vector(7 DOWNTO 0) := "00000000";
-------------------------
-------------------------
-------------------------
begin
-----------------------
---CCD-PORTMAP---------
-----------------------

COMP_CCD : pzs_test  generic map (CCD_CLK_DIVIDER => 6,
											ADC_CLK_DIVIDER => 3,
											CCD_LINES_NUMBER => 10)
							port map (data_out => --usb_in
										clk_in => clk,                             
                              ccd_clk => ccd_clk_reg,
                              rog => rog_reg,
										shut => ccd_shut,
                              adc_clk => adc_clk_reg,
										ccd_ready => ccd_ready_reg,
										adc_data_in => adc_data_in,
                              trigger_start => trigger_start
										);
-----------------------
---USB-PORTMAP---------
-----------------------
	data_buf_usb(0) <= ccd_data(3);
	data_buf_usb(1) <= ccd_data(4);
	data_buf_usb(2) <= ccd_data(5);
	data_buf_usb(3) <= ccd_data(6);
	data_buf_usb(4) <= ccd_data(7);
	data_buf_usb(5) <= ccd_data(8);
	data_buf_usb(6) <= ccd_data(9);
	data_buf_usb(7) <= ccd_data(10);
	
COMP_USB : usb port map (CLK_USB,
								 TXE_USB,
								 clk_ready_buf,
								 DATA_USB,
								 data_buf_usb,
								 OE_USB,
								 WR_USB,
								 ccd_line_reg
								);
-----------------------
---------OUT-----------
-----------------------
	clk_ccd <= clk_ccd_reg;
	rog_ccd <= rog_reg;
	clk_adc <= clk_adc_reg;
end architecture;