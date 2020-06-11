library IEEE;
use IEEE.std_logic_1164.all;

entity usb is

port (
	clk_in : in std_logic;
	
--	clk_out : out std_logic;
	TXE : in std_logic;
	CCD_READY : in std_logic;
	DATA_IN : in std_logic_vector(7 DOWNTO 0);
	DATA : out std_logic_vector(7 DOWNTO 0);
	OE : out std_logic := '1';
	WR : out std_logic := '1';
	ccd_line : in std_logic
);

end entity;

architecture usb of usb is

component pll_usb is
	port (
		clk_clk     : in std_logic := '0'; --   clk.clk
		clk_out_clk : out std_logic;        -- clk_out.clk
		reset_reset : in std_logic := '0'  -- reset.reset
	);
end component pll_usb;

signal clk_out_buf : std_logic := '0'; 
signal clk_div_buf : std_logic := '0';

type char_memory is array (0 to 5) of std_logic_vector(7 downto 0);
signal mem : char_memory := ("01000100", 
									  "01010011",
									  "01010101",
									  "01010100",
									  "01001001",
									  "01001101");

begin
----------
-- PLL ---
----------
--	plll : pll_usb 
--	port map ( clk_clk => clk_in,
--				  clk_out_clk => clk_out_buf,
--				  reset_reset => '0'
--	);

process (CCD_READY)
	variable count : integer := 0;	
	begin
		if (rising_edge(CCD_READY)) then ----------------- ПРОДОЛЖИТЬ!!!!!!!
			if (ccd_line = '1') then
				DATA <= mem(count);
				count := count + 1;
				if (count > 5) then
					count := 0;
				end if;
			elsif (ccd_line = '0') then
				DATA <= DATA_IN;
			end if;
		end if;
end process;

process (clk_in, CCD_READY)   
	variable compl_buf : std_logic := '0';
	begin 
		if (rising_edge(clk_in)) then  
			if (CCD_READY = '1' AND compl_buf = '0') then
				compl_buf := '1';
				WR <= '0';

			elsif (CCD_READY = '1' AND compl_buf = '1') then
				WR <= '1';
			elsif (CCD_READY = '0') then
				compl_buf := '0';
				WR <= '1';
			end if;
		end if;
end process;


end architecture;