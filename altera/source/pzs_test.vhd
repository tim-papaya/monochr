library IEEE;
use IEEE.std_logic_1164.all;

entity pzs_test is
generic (
	CCD_CLK_DIVIDER : integer; 
										-- 50Mhz => 4.16Mhz :=2	
	ADC_CLK_DIVIDER  : integer;
										-- 50Mhz => 4.16Mhz :=1
	CCD_COUNT_EXPOSURE : integer := 10;
	CCD_COUNT_ROG_START : integer := 15;
	CCD_COUNT_ROG_END : integer := 20;
	CCD_COUNT_DUM1 : integer := 33 + 20;
	CCD_COUNT_DATA : integer := 2048 + 53;
	CCD_COUNT_DUM2 : integer := 6 + 2101;
	CCD_COUNT_END : integer := 6 + 2101 + 5;
	
	TRIGGER_ACTIVE : std_logic := '0';
	
	CCD_LINES_NUMBER : integer; -- Number of lines that ccd should read
	
	START_SEQUENCE1 : std_logic_vector(11 DOWNTO 0) := "0000"&"0101"&"0011"; --S
	START_SEQUENCE2 : std_logic_vector(11 DOWNTO 0) := "0000"&"0111"&"1111"; --?
	START_SEQUENCE3 : std_logic_vector(11 DOWNTO 0) := "0000"&"0100"&"0001" --A
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
end entity;

architecture pzs_test of pzs_test is
-----------------
----SIGNALS------
-----------------
-------CCD-------
	signal ccd_clk_div : std_logic := '1';
	signal clk_reg : std_logic := '1'; 
	signal rog_reg : std_logic := '1'; 
	signal shut_reg : std_logic := '0';
	signal data_reg : std_logic_vector (11 DOWNTO 0);  
-------ADC--------
	signal adc_clk_div : std_logic := '1'; -- reads Vout of ccd on rising_edge
														-- gives data on negative_edge 
-----------------
-----------------
-----------------	
begin
-------CCD-------------
-- NOT because of inverted Schmitt trigger 
	ccd_clk <=  NOT clk_reg; 
	rog <=  NOT rog_reg;	
	shut <= NOT shut_reg;
-------ADC--------------
	adc_clk <= NOT adc_clk_div;
------------------------
---CLOCK FOR CCD, ADC---
------------------------
process (clk_in)
	variable count : integer := 0; -- divider for clock
	variable ccd_freq : integer := CCD_CLK_DIVIDER;
	variable adc_freq : integer := ADC_CLK_DIVIDER;
 begin
	if rising_edge(clk_in) then
		---CCD---
		if (count = ccd_freq) then
			ccd_clk_div <= NOT ccd_clk_div;
			count := 0;
		else
			count := count + 1;
		end if;		
		---ADC---
		if (count = adc_freq) then
			adc_clk_div <= NOT adc_clk_div;
		end if;
	end if;	
end process;
------------------------
------------------------
------------------------
process (ccd_clk_div)
	variable ccd_ready_reg : std_logic := '0';
	variable count : integer := CCD_COUNT_END;
	variable count_line : integer := CCD_LINES_NUMBER;
	variable count_start_seq : integer := 0;
	variable trigger_start_reg : std_logic := '0';
 begin
	if rising_edge(ccd_clk_div) then
		ccd_ready <= ccd_ready_reg;
		----------------
		-- ROG TIMING --
		----------------
		if (count < CCD_COUNT_EXPOSURE) then
			shut_reg <= '1';
			clk_reg <= '1';
			ccd_ready_reg := '0';
		ccd_ready <= ccd_ready_reg;
		----------------
		-- ROG TIMING --
		----------------
		elsif (count >= CCD_COUNT_EXPOSURE AND count < CCD_COUNT_ROG_START) then
			rog_reg <= '0';
		elsif (count >= 2 * CCD_COUNT_ROG_START AND count < CCD_COUNT_ROG_END) then
			rog_reg <= '1';
			count_start_seq := 0;
		-------------------------
		-- DUMMIES BEFORE DATA --
		-------------------------
		elsif (count >=  CCD_COUNT_ROG_END AND count < CCD_COUNT_DUM1) then
			clk_reg <= NOT clk_reg;
			if (count_start_seq < 3) then
				if (clk_reg = '0') then
					ccd_ready_reg := '1';
					count_start_seq := count_start_seq + 1;
					if (count_start_seq = 0) then
						data_out <= START_SEQUENCE1;
					elsif (count_start_seq = 1) then 
						data_out <= START_SEQUENCE2;
					elsif (count_start_seq = 2) then
						data_out <= START_SEQUENCE3;
					end if;
				else
					ccd_ready_reg := '0';
				end if;
			end if;
		-----------------
		-- DATA TIMING --
		-----------------
		elsif (count >=  CCD_COUNT_DUM1 AND count < CCD_COUNT_DATA) then
			clk_reg <= NOT clk_reg;
			data_out <= adc_data_in;
			if (clk_reg = '0') then
				ccd_ready_reg := '1';
			else
				ccd_ready_reg := '0';
			end if;
		--------------------------
		-- DUMMIES AFTER TIMING --
		--------------------------
		elsif (count >=  CCD_COUNT_DATA AND count < CCD_COUNT_DUM2) then
			clk_reg <= NOT clk_reg;
		--------------------------
		------ END LINE ----------
		--------------------------
		elsif (count >=  CCD_COUNT_DUM2 AND count < CCD_COUNT_END) then
			clk_reg <= NOT clk_reg;
			rog_reg <= '1';
			shut_reg <= '0';
		elsif (count >= CCD_COUNT_END) then
			clk_reg <= NOT clk_reg;
			rog_reg <= '1';
			shut_reg <= '0';
		end if; 
		-------------------------
		---LINE NUMBER CONTROL---
		-------------------------
		if (trigger_start = TRIGGER_ACTIVE AND trigger_start_reg = '0') then
			count_line := 0;
			count := 0;
			trigger_start_reg := '1';
		elsif ( NOT (trigger_start = TRIGGER_ACTIVE) AND (count_line >= CCD_LINES_NUMBER)) then
			trigger_start_reg := '0';
			count := CCD_COUNT_END;
		elsif (count_line < CCD_LINES_NUMBER) then
			if (count >= CCD_COUNT_END) then
				count_line := count_line + 1;
				count := 0;
			end if;
			count := count + 1;
		end if;
	 end if; 
 end process;
end architecture;
