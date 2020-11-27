library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity pzs_test is
generic (
	CCD_CLK_DIVIDER : integer; -- 50Mhz => 5Mhz := 5	
	LINE_SIZE       : integer := 2054;										
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

	LINE_END : integer := 4; 
	
	TRIGGER_ACTIVE : std_logic := '0';
	
	START_SEQUENCE1 : std_logic_vector(15 DOWNTO 0) := "0000"&"0000"&"0000"&"0011"; --0x003
	START_SEQUENCE2 : std_logic_vector(15 DOWNTO 0) := "0000"&"0000"&"0111"&"1111"; --0x07F
	START_SEQUENCE3 : std_logic_vector(15 DOWNTO 0) := "0000"&"0000"&"1100"&"0001";--0x0C1
	
	END_SEQUENCE1 : std_logic_vector(15 DOWNTO 0) := "0000"&"0000"&"0101"&"1100"; --0x05C
	END_SEQUENCE2 : std_logic_vector(15 DOWNTO 0) := "0000"&"0000"&"1000"&"0000"; --0x080
	END_SEQUENCE3 : std_logic_vector(15 DOWNTO 0) := "0000"&"1111"&"0011"&"1110" --0xF3E
	
	);

port (
	---DATA---
	data_out      : out std_logic_vector(15 DOWNTO 0);
	----RAM------------
	ram_addr      : out integer;
	---EXTERNAL CLOCK---
	clk_in        : in std_logic;  -- 50 Mhz
	---CCD--
	ccd_clk       : out std_logic; -- 2.5 Mhz /clk
	rog           : out std_logic; -- /rog signal
	shut          : out std_logic; -- /shut signal;
	line_ready    : out std_logic; 
	---ADC--
	adc_clk       : out std_logic;
	ccd_ready     : out std_logic;
	adc_data_in   : in std_logic_vector(11 DOWNTO 0);
	---START TRIGGER----
	trigger_start : in std_logic
);
end entity;

architecture pzs_test of pzs_test is
-----------------
----SIGNALS------
-----------------
-------CCD-------
	signal auto_mod : std_logic := '1';
	signal clk_reg : std_logic := '1'; 
	signal rog_reg : std_logic := '1'; 
	signal shut_reg : std_logic := '1';
	signal adc_clk_reg : std_logic := '1';
	
	signal data_reg : std_logic_vector (11 DOWNTO 0);  
	signal ccd_ready_reg : std_logic := '0';
-------CONSTANTS-------------
	signal CCD_LINES_NUMBER : integer := 4 ;
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
	ccd_ready <= ccd_ready_reg;
-------ADC--------------
-- Here NOT because of inverted Schmitt trigger 
-- + NOT to read at the Negative_edge
-- actualy adc_clk <= NOT NOT clk_reg;
	adc_clk <=  clk_reg;
-------COMMAND----------
	
--process (clk_in)
--begin
--	if (command_reg = ("0011" & "0001")) then
--		CCD_LINES_NUMBER <= 1; 
--	elsif (command_reg = ("0011" & "0010")) then
--		CCD_LINES_NUMBER <= 4;
--	elsif (command_reg = ("0011" & "0011")) then
--		CCD_LINES_NUMBER <= 100;
--	else 
--	end if;
--end process;	

process (clk_in)	
	variable count_div : integer := 0; -- divider for clock
	
	variable count : integer range 0 to SHUTTER + EXPOSURE + ROG_START 
	                          + ROG_END + DUM1 + DATA + DUM2 + LINE_END;
	variable count_line : integer := CCD_LINES_NUMBER;
	variable count_start_seq : integer := 0;
	variable trigger_start_reg : std_logic := '0';
	
	variable count_data : integer;
	
 begin
	if rising_edge(clk_in) then
		---CCD-DIVIDER---
		
		if (count_div = CCD_CLK_DIVIDER) then
			count_div := 0;
		-----------------
			if (count = SHUTTER + EXPOSURE + ROG_START 
							+ ROG_END + DUM1 + DATA + DUM2 
							+ LINE_END) then
				count := 0;
			else			
				--------------------
				-- SHUTTER TIMING --
				--------------------
				if (count < SHUTTER) then
					line_ready <= '0';
					clk_reg    <= '1';
					shut_reg   <= '1';
				---------------------
				-- EXPOSURE TIMING --
				---------------------
				elsif (count < SHUTTER + EXPOSURE) then
					shut_reg      <= '1';
					clk_reg       <= '1';
					ccd_ready_reg <= '0';
				----------------
				-- ROG START TIMING --
				----------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START) then
					rog_reg         <= '0';
					count_start_seq := 0;
				----------------
				-- ROG END TIMING --
				----------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END) then
					rog_reg         <= '1';
					count_start_seq := 0;
					count_data      := 0;
				-------------------------
				-- DUMMIES BEFORE DATA --
				-------------------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1) then
					-- SENDING START SEQUENCE --
					if (clk_reg = '0') then
					
						case count_start_seq is
						when 0 =>
							data_out <= START_SEQUENCE1;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							count_data := count_data + 1;
						when 1 =>  
							data_out <= START_SEQUENCE2;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							count_data := count_data + 1;
						when 2 =>
							data_out <= START_SEQUENCE3;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							count_data := count_data + 1;
						when others =>
							ccd_ready_reg <= '0';
						end case;
						count_start_seq := count_start_seq + 1;
					else
						ccd_ready_reg <= '0';
					end if;
					-----------------------------
					clk_reg <= NOT clk_reg;
				-----------------
				-- DATA TIMING --
				-----------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA) then
	--				data_out <= adc_data_in;
					data_out <= std_logic_vector(to_unsigned(count, 16));
					ram_addr <= count_data;
					ccd_ready_reg <= NOT clk_reg;
					
					clk_reg <= NOT clk_reg;
					
					count_data := count_data + 1;
					count_start_seq := 0;
				--------------------------
				-- DUMMIES AFTER TIMING --
				--------------------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA + DUM2) then
					-- SENDING END SEQUENCE --
					if (clk_reg = '0') then
						case count_start_seq is
						when 0 =>
							data_out <= END_SEQUENCE1;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							count_data := count_data + 1;
						when 1 =>  
							data_out <= END_SEQUENCE2;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							count_data := count_data + 1;
						when 2 =>
							data_out <= END_SEQUENCE3;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							count_data := count_data + 1;
						when others =>
							ccd_ready_reg <= '0';
						end case;
						count_start_seq := count_start_seq + 1;
					else
						ccd_ready_reg <= '0';
					end if;
					-----------------------------
					clk_reg <= NOT clk_reg;	
				--------------------------
				------ END LINE ----------
				--------------------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA + DUM2 + LINE_END) then
					line_ready <= '1';
					rog_reg <= '1';
					shut_reg <= '1';
					clk_reg <= NOT clk_reg;
				end if; 
				count := count + 1;
				-------------------------
				---LINE NUMBER CONTROL---
				-------------------------
	--			if (trigger_start = TRIGGER_ACTIVE AND trigger_start_reg = '0') then
	--				count_line := 0;
	--				count := 0;
	--				trigger_start_reg := '1';
	--			elsif (NOT (trigger_start = TRIGGER_ACTIVE) AND (count_line >= CCD_LINES_NUMBER)) then
	--				trigger_start_reg := '0';
	--			elsif (count_line < CCD_LINES_NUMBER) then
	--				if (count >= SHUTTER + EXPOSURE + ROG_START 
	--								+ ROG_END + DUM1 + DATA + DUM2 
	--								+ LINE_END) then
	--					count_line := count_line + 1;
	--					if (count_line < CCD_LINES_NUMBER) then
	--						count := 0;
	--					end if;
	--				else
	--					count := count + 1;
	--				end if;
	--			elsif (auto_mod = '1') then
				
	--			end if;
			end if;
		else
			count_div := count_div + 1;
		end if;
	 end if; 
 end process;
end architecture;
