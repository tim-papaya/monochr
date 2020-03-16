library IEEE;
use IEEE.std_logic_1164.all;

entity usb is

port (
	clk_in : in std_logic;
	
--	clk_out : out std_logic;
	TXE : in std_logic := '1';
	DATA : out std_logic_vector(7 DOWNTO 0);
	DATA_IN : in std_logic_vector(7 DOWNTO 0);
	OE : out std_logic := '1';
	WR : out std_logic := '1'
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

--signal data_const : std_logic_vector(7 DOWNTO 0) := "10110110"; --0xB6
type data_const is array (0 to 4) of  std_logic_vector 
(7 downto 0);

constant Content: data_const := (
    0 => "01000100",	
    1 => "01000101",	
    2 => "01001110",	
    3 => "01001001", 
    4 => "01010011"
); 


signal wr_cond : std_logic := '1';

begin
----------
-- PLL ---
----------
--	plll : pll_usb 
--	port map ( clk_clk => clk_in,
--				  clk_out_clk => clk_out_buf,
--				  reset_reset => '0'
--	);
----------
--WIRES---
----------	
--	 clk_out <= clk_out_buf; --  clk_div_buf
	OE <= '1';
	WR <= wr_cond;
----------
-- WRITE--
----------

---divider---
--process (clk_out_buf) 
--	variable count : integer := 0;
--begin
--	if (rising_edge(clk_out_buf)) then 
--		if (count = 10) then
--			clk_div_buf <=  NOT clk_div_buf;
--			count := 0;
--		end if;
--		count := count + 1;
--	end if;
--end process;

process (clk_in)   --clk_div_buf
	variable addr : integer := 0;
	begin 
		if (rising_edge(clk_in)) then  --  clk_div_buf
			if (TXE = '0') then         -- CONTINUE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
				wr_cond <= '0';
				DATA <= DATA_IN;
				
				if (addr = 4) then
					addr := 0;
				else
					addr := addr + 1;
				end if;				
			else
				wr_cond <= '1';
			end if;
			
		end if;
		
	end process;
end architecture;