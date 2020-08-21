library IEEE;
use IEEE.std_logic_1164.all;

entity pzs_test is
generic (
	CCD_CLK_DIVIDER : integer; 
										-- 50Mhz => 4.16Mhz :=2	
	ADC_CLK_DIVIDER  : integer;
										-- 50Mhz => 4.16Mhz :=1
	
	---=NUMBERx2----
	SHUTTER : integer := 40;
	EXPOSURE : integer := 20;
	ROG_START : integer := 10;
	ROG_END : integer := 10;
	DUM1 : integer := 66;
	DATA : integer := 4096;
	DUM2 : integer := 12;
   -----------------
	SEQUENCE_0 : integer := 1;
	SEQUENCE_1 : integer := 2;
	SEQUENCE_2 : integer := 3;

	LINE_END : integer := 1; 
	
	TRIGGER_ACTIVE : std_logic := '0';
	
	CCD_LINES_NUMBER : integer; -- Number of lines that ccd should read
	
	START_SEQUENCE1 : std_logic_vector(11 DOWNTO 0) := "0000"&"0000"&"0011"; --0x3
	START_SEQUENCE2 : std_logic_vector(11 DOWNTO 0) := "0000"&"0111"&"1111"; --0x7F
	START_SEQUENCE3 : std_logic_vector(11 DOWNTO 0) := "0000"&"0100"&"0001";--0x41
	
	END_SEQUENCE1 : std_logic_vector(11 DOWNTO 0) := "0000"&"0101"&"0011"; --0x
	END_SEQUENCE2 : std_logic_vector(11 DOWNTO 0) := "0000"&"1111"&"1111"; --0x
	END_SEQUENCE3 : std_logic_vector(11 DOWNTO 0) := "1111"&"0100"&"0001" --0x
	
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
	signal shut_reg : std_logic := '1';
	signal adc_clk_reg : std_logic := '1';
	
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
	adc_clk <= NOT adc_clk_reg;
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
process (adc_clk_div)
	variable count : integer := 0;
begin 
		if rising_edge(adc_clk_div) then
			adc_clk_reg <= clk_reg;
		end if;
end process;
------------------------
------------------------
------------------------
process (ccd_clk_div)
	variable ccd_ready_reg : std_logic := '0';
	variable count : integer := SHUTTER + EXPOSURE + ROG_START 
	                          + ROG_END + DUM1 + DATA + DUM2 
									  + LINE_END;
	variable count_line : integer := CCD_LINES_NUMBER;
	variable count_start_seq : integer := 0;
	variable trigger_start_reg : std_logic := '0';
 begin
	if rising_edge(ccd_clk_div) then
		ccd_ready <= ccd_ready_reg;
		--------------------
		-- SHUTTER TIMING --
		--------------------
		if (count < SHUTTER) then
			clk_reg <= NOT clk_reg;
			shut_reg <= '0';
		---------------------
		-- EXPOSURE TIMING --
		---------------------
		elsif (count >= SHUTTER 
		   AND count < SHUTTER + EXPOSURE) then
			shut_reg <= '1';
			clk_reg <= '1';
			ccd_ready_reg := '0';
		----------------
		-- ROG TIMING --
		----------------
		elsif (count >= SHUTTER + EXPOSURE 
			AND count < SHUTTER + EXPOSURE + ROG_START) then
			rog_reg <= '0';
			count_start_seq := 0;
		elsif (count >= 2 * SHUTTER + EXPOSURE + ROG_START 
		   AND count < SHUTTER + EXPOSURE + ROG_START + ROG_END) then
			rog_reg <= '1';
			count_start_seq := 0;
		-------------------------
		-- DUMMIES BEFORE DATA --
		-------------------------
		elsif (count >=  SHUTTER + EXPOSURE + ROG_START + ROG_END 
		   AND count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1) then
			-- SENDING START SEQUENCE --
			if (count_start_seq < 3) then
				if (clk_reg = '0') then
					if (count_start_seq = 0) then
						data_out <= START_SEQUENCE1;
					elsif (count_start_seq = 1) then 
						data_out <= START_SEQUENCE2;
					elsif (count_start_seq = 2) then
						data_out <= START_SEQUENCE3;
					end if;
					count_start_seq := count_start_seq + 1;
					ccd_ready_reg := '1';
				else
					ccd_ready_reg := '0';
				end if;
			end if;
			-----------------------------
			clk_reg <= NOT clk_reg;
		-----------------
		-- DATA TIMING --
		-----------------
		elsif (count >=  SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 
		   AND count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA) then
			clk_reg <= NOT clk_reg;
			data_out <= adc_data_in;
			if (clk_reg = '0') then
				ccd_ready_reg := '1';
			else
				ccd_ready_reg := '0';
			end if;
			count_start_seq := 0;
		--------------------------
		-- DUMMIES AFTER TIMING --
		--------------------------
		elsif (count >=  SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA 
		   AND count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA + DUM2) then
			-- SENDING START SEQUENCE --
			if (count_start_seq < 3) then
				if (clk_reg = '0') then
					if (count_start_seq = 0) then
						data_out <= START_SEQUENCE1;
					elsif (count_start_seq = 1) then 
						data_out <= START_SEQUENCE2;
					elsif (count_start_seq = 2) then
						data_out <= START_SEQUENCE3;
					end if;
					count_start_seq := count_start_seq + 1;
					ccd_ready_reg := '1';
				else
					ccd_ready_reg := '0';
				end if;
			end if;
			-----------------------------
			clk_reg <= NOT clk_reg;	
		--------------------------
		------ END LINE ----------
		--------------------------
		elsif (count >=  SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA + DUM2
	     	AND count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA + DUM2 + LINE_END) then
			rog_reg <= '1';
			shut_reg <= '0';
			clk_reg <= NOT clk_reg;
		else
			rog_reg <= '1';
			shut_reg <= '0';
			clk_reg <= NOT clk_reg;	
		end if; 
		-------------------------
		---LINE NUMBER CONTROL---
		-------------------------
		if (trigger_start = TRIGGER_ACTIVE AND trigger_start_reg = '0') then
			count_line := 0;
			count := 0;
			trigger_start_reg := '1';
		elsif (NOT (trigger_start = TRIGGER_ACTIVE) AND (count_line >= CCD_LINES_NUMBER)) then
			trigger_start_reg := '0';
		elsif (count_line < CCD_LINES_NUMBER) then
			if (count >= SHUTTER + EXPOSURE + ROG_START 
	                  + ROG_END + DUM1 + DATA + DUM2 
							+ LINE_END) then
				count_line := count_line + 1;
				if (count_line < CCD_LINES_NUMBER) then
					count := 0;
				end if;
			else
				count := count + 1;
			end if;			
		end if;
	 end if; 
 end process;
end architecture;
