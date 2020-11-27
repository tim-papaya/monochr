library IEEE;
use IEEE.std_logic_1164.all;

entity monochr is
generic (
			LINE_SIZE : integer := 2054
		  );
port (
------------------------
---------ADC------------
------------------------
	adc_clk : out std_logic;
	adc_data_in : in std_logic_vector(11 DOWNTO 0);
	adc_otr : in std_logic;
------------------------
----START TRIGGER-------
------------------------
	trigger_start : in std_logic;
	button : in std_logic;
------------------------
------CCD-PORT----------
------------------------
	clk50Mhz : in std_logic := '1';  -- 50 Mhz
	ccd_clk : out std_logic; -- 2.5 Mhz /clk
	ccd_rog : out std_logic; -- /rog signal
	ccd_shut : out std_logic; -- /shut signal;
	ccd_shsw : out std_logic := '0';
------------------------
--------USB-PORT--------
------------------------
	usb_clk : in std_logic;
	usb_txe : in std_logic := '1';
	usb_data : inout std_logic_vector(7 DOWNTO 0);
	usb_oe : out std_logic := '1';
	usb_wr : out std_logic := '1';
	usb_rd : out std_logic := '1';
	usb_rxf : in std_logic := '1';
	usb_siwua : out std_logic := '1';
------------------------
-----R-DIGITAL-PORT-----
------------------------
	r_scl : out std_logic := '1';
	r_sda : inout std_logic := 'Z'
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
generic (
	LINE_SIZE  : integer := 2054
);
port (
	clk_in      : in std_logic;
	txe         : in std_logic;
	rxf         : in std_logic;
	ccd_ready   : in std_logic;
	oe          : out std_logic := '1';
	wr          : out std_logic := '1';
	rd          : out std_logic := '1';
	
	ram_addr    : out integer; 
	
	data_in     : in std_logic_vector(15 DOWNTO 0);
	command_out : out  std_logic_vector(7 DOWNTO 0);
	data        : inout std_logic_vector(7 DOWNTO 0)
);
end component;
--------------------------
---CCD-COMPONENT----------
--------------------------
component pzs_test
generic (
	LINE_SIZE       : integer := 2054;		
	CCD_CLK_DIVIDER : integer -- 50Mhz => 4.16Mhz := 5	
										-- 50Mhz => 5Mhz := 4
	);

port (
	---DATA---
	data_out      : out std_logic_vector(15 DOWNTO 0);
	---EXTERNAL-CLOCK---
	clk_in        : in std_logic;  -- 50 Mhz
	----RAM------------
	ram_addr      : out integer;
	---CCD---   
	ccd_clk       : out std_logic; -- 2.5 Mhz /clk
	rog           : out std_logic; -- /rog signal
	shut          : out std_logic; -- /shut signal;
	line_ready    : out std_logic; 
	---ADC---------------
	adc_clk       : out std_logic;
	ccd_ready     : out std_logic;
	adc_data_in   : in std_logic_vector(11 DOWNTO 0);
	---START-TRIGGER----
	trigger_start : in std_logic
);
end component;
-------------------------
----------RAM------------
-------------------------
component true_dpram_sclk is
	generic (
				D_WORD : integer := 16;
				SIZE   : integer := 2054
	);
	port 
	(	
		data_a	: in std_logic_vector(D_WORD - 1 downto 0);
		data_b	: in std_logic_vector(D_WORD - 1 downto 0);
		addr_a	: in integer range 0 to SIZE - 1;
		addr_b	: in integer range 0 to SIZE - 1;
		we_a	: in std_logic := '1';
		we_b	: in std_logic := '1';
		clk		: in std_logic;
		q_a		: out std_logic_vector(D_WORD - 1 downto 0);
		q_b		: out std_logic_vector(D_WORD - 1 downto 0)
	);
	
end component;
-------------------------
--------SIGNALS----------
-------------------------
signal ccd_ready_reg     :  std_logic;
signal ccd_line_ready_reg:  std_logic;
signal usb_data_in_reg   :  std_logic_vector(15 DOWNTO 0);
signal command_reg       :  std_logic_vector(7 DOWNTO 0);
signal start_trig_reg    :  std_logic := '1';
signal pc_trig_reg 		 :  std_logic := '1';

signal ccd_data_out_reg  :  std_logic_vector(15 DOWNTO 0);

signal ccd_ram_addr_reg  :  integer;

signal usb_ram_addr_reg  :  integer;

-------------------------
-------------------------
-------------------------
begin

process (clk50Mhz) 
	variable count : integer := 0;
begin
	if rising_edge(clk50Mhz) then
		if (count = 10) then
			if (command_reg = ("0101" & "0011")) then
				pc_trig_reg <= '0';
			else
				pc_trig_reg <= '1';
			end if;
			count := 0;
		else
			count := count + 1;
		end if;
	end if;
end process;

start_trig_reg <= '0';

-----------------------
---CCD-PORTMAP---------
-----------------------
COMP_CCD : pzs_test  generic map (LINE_SIZE       => LINE_SIZE,
								  CCD_CLK_DIVIDER => 4)
							port map (   data_out      => ccd_data_out_reg,
										 clk_in        => clk50Mhz,                             
                                         ccd_clk       => ccd_clk,
                                         rog           => ccd_rog,
										 shut          => ccd_shut,
                                         adc_clk       => adc_clk,
										 ccd_ready	   => ccd_ready_reg,
										 adc_data_in   => adc_data_in,
                                         trigger_start => start_trig_reg,
										 ram_addr  	   => ccd_ram_addr_reg,
										 line_ready    => ccd_line_ready_reg
										 );
-----------------------
---USB-PORTMAP---------
-----------------------
COMP_USB : usb generic map (LINE_SIZE   => LINE_SIZE
									 )
						port map (   clk_in      => usb_clk,
									 txe         => usb_txe,
									 ccd_ready   => ccd_line_ready_reg,
									 data_in     => usb_data_in_reg,
									 data        => usb_data,
									 command_out => command_reg,
									 oe          => usb_oe,
									 wr          => usb_wr,
									 rxf         => usb_rxf,
									 rd          => usb_rd,
									 ram_addr	 => usb_ram_addr_reg
									 );
-----------------------
---RAM-PORTMAP---------
-----------------------
COMP_RAM : true_dpram_sclk generic map (
										D_WORD => 16,
                                        SIZE   => 2054
										)
                           port map (
									 data_a  =>	 ccd_data_out_reg,
									 data_b	 =>  "0000"&"0000"&"0000"&"0000",
									 addr_a	 =>	 ccd_ram_addr_reg,
									 addr_b	 =>  usb_ram_addr_reg,
									 we_a	 =>	 '1',
									 we_b	 =>  '0',
									 clk	 =>	 usb_clk,
									 q_b	 =>	 usb_data_in_reg
									 );
																	
end architecture;