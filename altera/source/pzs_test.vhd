library IEEE;
use IEEE.std_logic_1164.all;

entity pzs_test is

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
	KEY_START : in std_logic
);

end entity;

architecture pzs_test of pzs_test is

	---CCD---
	signal clk_div : std_logic := '1'; -- is divided clk_in
	signal clk_buf : std_logic := '1'; -- buffer for clk
	signal rog_buf : std_logic := '1'; -- buffer for rog
	signal shut_buf : std_logic := '1'; -- buffer for rog
	
	---ADC---
	signal clk_adc_div : std_logic := '0'; -- is divided clk_in
	signal clk_adc_buf : std_logic := '0'; -- buffer for clk at ADC
	
	
begin

---Clock 2.5 Mhz---
 process (clk_in)
	variable count : integer := 0; -- divider for clock
	variable freq : integer := 40;
	variable freq_adc : integer := 10;
 begin
	 
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
	clk <=  NOT clk_buf;
	rog <=  NOT rog_buf;	
	SHUT <= NOT shut_buf;
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
	variable count : integer := 4187; -- counter for status
	variable start_buf : std_logic := '0';
 begin
	if rising_edge(clk_div) then
		
--	timing logic 
		if (count < 3) then
			rog_buf <= '0';
			clk_buf <= '1';
		elsif (count >=  3 AND count < 3495) then
			shut_buf <= '1';
			rog_buf <= '1';
			clk_buf <= NOT clk_buf;
			
			if (clk_buf = '0') then
				CCD_READY <= '1';
			else
				CCD_READY <= '0';
			end if;
		elsif (count >=  3495 AND count < 3500) then
			shut_buf <= '0';
		elsif (count >= 3500 AND count < 4186) then --4178
			shut_buf <= '1';
			rog_buf <= '1';
			clk_buf <= NOT clk_buf;
			
			if (clk_buf = '0') then
				CCD_READY <= '1';
			else
				CCD_READY <= '0';
			end if;			
		else
			rog_buf <= '1';
			clk_buf <= '1';
		end if;
		
-- counter logic
		if (count = 4187 AND start_buf = '0') then -- AND KEY_START = '0'
			count := 0;
			start_buf := '1';
		elsif (count = 4187 ) then -- AND KEY_START = '1'
			start_buf := '0'; 
		elsif (count < 4187)	then
			count := count + 1;
		end if;		
	end if; 
 end process; 
	
end architecture;
