library IEEE;
use IEEE.std_logic_1164.all;

entity monochr is
generic (
		MEMORY_SIZE : integer := 1024
);

port (
------------------------
--------VGA-PORT--------
------------------------

--	RESET : in std_logic := '1';
--	KEY_1 : in std_logic := '1';
--	VGA_RED : out std_logic_vector (4 downto 0):= "00000"; 
--	VGA_GRN : out std_logic_vector (5 downto 0):= "000000"; 
--	VGA_BLU : out std_logic_vector (4 downto 0) := "00000"; 
--	VGA_HS : out std_logic :='1';
--	VGA_VS: out std_logic :='1';
------------------------
------MEMORY-PORT-------
------------------------
	ccd_data : in std_logic_vector (10 downto 0);
------------------------
------CCD-PORT----------
------------------------
	CLK : in std_logic := '1';  -- 50 Mhz
	clk_ccd : out std_logic; -- 2.5 Mhz /clk
	rog_ccd : out std_logic; -- /rog signal
	SHUT : out std_logic; -- /shut signal;
	
	---ADC---
	clk_adc : out std_logic;
		
	---KEYS FOR CONTROL CLOCK---
	KEY_START : in std_logic;
------------------------
--------USB-PORT--------
------------------------
	CLK_USB : in std_logic;
	TXE_USB : in std_logic := '1';
	DATA_USB : out std_logic_vector(7 DOWNTO 0);
	OE_USB : out std_logic := '1';
	WR_USB : out std_logic := '1'
);

end entity;

architecture monochr of monochr is
-------------------------
---MEMORY-COMPONENT------
-------------------------
component memory 
	generic (
			MEMORY_SIZE : integer := MEMORY_SIZE
	);
	port (

	ccd_data : in std_logic_vector (10 downto 0);
	clk_adc : in std_logic;
	rog_ccd : in std_logic := '1'; -- /rog signal
	wr_ena : in std_logic := '0';

	memory_data : out std_logic_vector (10 downto 0);
	ack_memory : in std_logic := '1';
	clk_memory : in std_logic
	);
end component;

signal memory_data_reg : std_logic_vector (10 downto 0);
signal wr_ena : std_logic := '1';
---------------------------
---VGA-COMPONENT-----------
---------------------------
--component vga_test
--	port (
--	clk : in std_logic := '1'; -- 50 MHz
--	rstn : in std_logic := '1';
--	vga_hs : out std_logic;
--	vga_vs: out std_logic;
--	vga_r : out std_logic_vector (4 downto 0); 
--	vga_g : out std_logic_vector (5 downto 0); 
--	vga_b : out std_logic_vector (4 downto 0); 
--	key1 : in std_logic := '1';
--	memory_ack : out std_logic;
--	vga_clk_out : out std_logic;
--	memory_data : in std_logic_vector (10 downto 0)
--	);
--end component;
--
--signal vga_ack_reg : std_logic;
--signal vga_clk_reg : std_logic;
--------------------------
---USB-COMPONENT----------
--------------------------
component usb
port (
	clk_in : in std_logic;
	
--	clk_out : out std_logic;
	TXE : in std_logic := '1';
	CCD_READY : in std_logic;
	DATA : out std_logic_vector(7 DOWNTO 0);
	DATA_IN : in std_logic_vector(7 DOWNTO 0) := "00000000";
	OE : out std_logic := '1';
	WR : out std_logic := '1'
);

end component;
--------------------------
---CCD-COMPONENT----------
--------------------------
component pzs_test
	port (
		---EXTERNAL CLOCK---
	clk_in : in std_logic;  -- 50 Mhz
	
	---CCD---
	clk : out std_logic; -- 2.5 Mhz /clk
	rog : out std_logic; -- /rog signal
	SHUT : out std_logic; -- /shut signal;
	
	---ADC---
	clk_adc : out std_logic;
	CCD_READY : out std_logic;	
	
	---KEYS FOR CONTROL CLOCK---
	KEY_START : in std_logic -- /increase output frequency
	);
end component;

signal clk_adc_reg : std_logic;
signal clk_ccd_reg : std_logic;
signal rog_reg : std_logic;
signal mem_reg : std_logic := '0';
signal ack_reg : std_logic := '0';
signal vga_reg : std_logic := '0';
signal clk_ready_buf : std_logic;
signal data_buf_usb :  std_logic_vector(7 DOWNTO 0) := "00000000";

begin
-------------------------
-----VGA-PORTMAP---------
-------------------------
-- COMP_VGA: vga_test port map (CLK,
--										RESET,
--										VGA_HS,
--										VGA_VS,
--										VGA_RED,
--										VGA_GRN,
--										VGA_BLU,
--										vga_ack_reg, 
--										vga_clk_reg,
--										memory_data_reg
--										);
-----------------------
---CCD-PORTMAP---------
-----------------------
COMP_CCD : pzs_test port map (CLK,                             
                              clk_ccd_reg,
                              rog_reg,
										SHUT,
                              clk_adc_reg,
										clk_ready_buf,
                              KEY_START
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
								 WR_USB
								);
-----------------------
---MEMORY-PORTMAP------
-----------------------
--COMP_MEM : memory port map (ccd_data,
--									 clk_adc_reg,
--									 rog_reg,
--									 wr_ena,          
--									 memory_data_reg,
--									 vga_ack_reg,
--									 vga_clk_reg
--								 );
-----------------------
----MEMORY->VGA--------
-----------------------
--process (clk_adc_reg) 
--	variable cnt : integer := 0;
--	variable tmp : std_logic := '0';
--begin
--	if (rising_edge(clk_adc_reg)) then
--		if (KEY_1 = '0' AND mem_reg = NOT tmp) then
--			cnt := 0;
--			wr_ena <= '1';
--			tmp := mem_reg;
--		else
--			if (cnt <  MEMORY_SIZE) then
--				cnt := cnt + 1;
--			else
--				wr_ena <= '0';
--			end if;
--		end if;
--	end if;
--end process;
--
--
--process (rog_reg) 
--begin
--	if (rising_edge(rog_reg)) then
--		mem_reg <= NOT mem_reg;
--	end if;
--end process;
----
--process (vga_clk_reg) 
--	variable cnt : integer := 0;
--	variable tmp : std_logic := '0';
--begin
--	if (rising_edge(vga_clk_reg)) then
--		if (vga_ack_reg = NOT tmp) then
--			cnt := 0;
--			tmp := vga_ack_reg;
--		else
--			if (cnt <  2) then
--				vga_reg <= '0';
--			else
--				vga_reg <= '1';
--			end if;
--		end if;
--	end if;
--end process;
--
--process (vga_ack_reg) 
--begin
--	if (rising_edge(vga_ack_reg)) then
--		ack_reg <= NOT ack_reg;
--	end if;
--end process;
	
--process (vga_clk_reg) 
--	variable cnt_read : integer := 0;
--begin	
--	if (rising_edge(vga_clk_reg)) then
--		if (cnt_read < MEMORY_SIZE) then
--						if (cnt_read < 9) then
--							
--							mem_reg <= '0';
--						else
--							mem_reg <= '1';
--						end if;
--						cnt_read := cnt_read + 1;
--					end if;
--	end if;
--end process;						 
-----------------------
---------OUT-----------
-----------------------
	clk_ccd <= clk_ccd_reg;
	rog_ccd <= rog_reg;
	clk_adc <= clk_adc_reg;
end architecture;