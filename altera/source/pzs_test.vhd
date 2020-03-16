library IEEE;
use IEEE.std_logic_1164.all;

entity pzs_test is

port (
	---EXTERNAL CLOCK---
	clk_in : in std_logic;  -- 50 Mhz
	
	---CCD---
	clk : out std_logic; -- 2.5 Mhz /clk
	rog : out std_logic; -- /rog signal
	
	---ADC---
	clk_adc : out std_logic;
		
	---KEYS FOR CONTROL CLOCK---
	key_add : in std_logic; -- /increase output frequency
	key_sub : in std_logic -- /decrease output frequency
);

end entity;

architecture pzs_test of pzs_test is

	---CCD---
	signal clk_div : std_logic := '1'; -- is divided clk_in
	signal clk_buf : std_logic := '1'; -- buffer for clk
	signal rog_buf : std_logic := '1'; -- buffer for rog
	
	---ADC---
	signal clk_adc_div : std_logic := '0'; -- is divided clk_in
	signal clk_adc_buf : std_logic := '0'; -- buffer for clk at ADC
	
	
begin

---Clock 2.5 Mhz---
 process (clk_in, key_add)
	variable count : integer := 0; -- divider for clock
	variable freq : integer := 35;
	variable freq_adc : integer := 35;
 begin
	if falling_edge(key_add) then
		freq := freq - 1;
	end if;
 
	if rising_edge(clk_in) then
		---CCD---
		if (count = freq) then
			clk_div <= NOT clk_div;
			count := 0;
		else
			count := count + 1;
		end if;
		
		---ADC---
		if (count = freq_adc) then
			clk_adc_div <= NOT clk_adc_div;
		end if;
	end if;
	
	
end process;

	---CCD---
	clk <= NOT clk_buf;
	rog <= NOT rog_buf;	
	
	---ADC---
	clk_adc <= NOT clk_adc_buf;
	
---CRIPLE! ONLY FOR 2xdivide--- 	
process (clk_adc_div)
	begin
		if rising_edge(clk_adc_div) then
			clk_adc_buf <= NOT clk_adc_buf;
		end if;
	end process;
-- END CRIPLE!---	
	
-- CCD timing inputs:
-- rog signal - for reset
-- clk - clock 
 process (clk_div)
	variable count : integer := 0; -- counter for status
 begin
	if rising_edge(clk_div) then
		
--	timing logic 
		if (count < 3) then
			rog_buf <= '1';
			clk_buf <= '1';
		elsif (count = 4) then
			rog_buf <= '0';
		elsif (count = 5) then
			rog_buf <= '1';
		elsif (count = 6) then
			clk_buf <= '0';
		elsif (count < 4186) then --4178
			clk_buf <= NOT clk_buf;
		end if;
		
-- counter logic
		if (count = 4187) then
			count := 0;
		else	
			count := count + 1;
		end if;		
	end if; 
 end process; 
	
end architecture;
