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
	
	LINE_END : integer := 4; 
	
   -----------------
	SEQUENCE_0 : integer := 1;
	SEQUENCE_1 : integer := 2;
	SEQUENCE_2 : integer := 3;

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
	clk_in        : in  std_logic;  -- 50 Mhz
	---CCD--
	ccd_clk       : out std_logic; -- 2.5 Mhz /clk
	rog           : out std_logic; -- /rog signal
	shut          : out std_logic; -- /shut signal;	
	---ADC--
	adc_clk       : out std_logic;
	ccd_ready     : out std_logic;
	adc_data_in   : in  std_logic_vector(11 DOWNTO 0);
	---START TRIGGER----
	trigger_start : in  std_logic;
	-----USB-----
	line_ready    : out std_logic;
	line_pos_start: out integer;
	line_pos_end  : out integer;
	dram_we_a	  : out std_logic
);
end entity;

architecture pzs_test of pzs_test is
-----------------
----SIGNALS------
-----------------
-------CCD-------
	signal auto_mod           : std_logic := '1';
	signal clk_reg            : std_logic := '1'; 
	signal rog_reg            : std_logic := '1'; 
	signal shut_reg           : std_logic := '1';
	signal adc_clk_reg        : std_logic := '1';
							  
	signal data_reg           : std_logic_vector (11 DOWNTO 0);  
	signal ccd_ready_reg      : std_logic := '0';
	--CONSTANTS---
	signal ccd_lines_number   : integer := 4 ;
	----ADC-------
	signal adc_clk_div     	  : std_logic := '1'; -- reads Vout of ccd on rising_edge
												  -- gives data on negative_edge 
	----USB------
	signal line_pos_start_reg : integer   := 0;
	signal line_pos_end_reg   : integer   := LINE_SIZE; 

	signal line_ready_reg 	  : std_logic := '0';
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
	
	line_ready <= line_ready_reg;
-------COMMAND----------
	
--process (clk_in)
--begin
--	if (command_reg = ("0011" & "0001")) then
--		ccd_lines_number <= 1; 
--	elsif (command_reg = ("0011" & "0010")) then
--		ccd_lines_number <= 4;
--	elsif (command_reg = ("0011" & "0011")) then
--		ccd_lines_number <= 100;
--	else 
--	end if;
--end process;	

process (clk_in)	
	variable count_div : integer := 0; -- divider for clock
	
	variable count : integer := 0;
	variable count_line : integer := ccd_lines_number;
	variable count_start_seq : integer := 0;
	variable trigger_start_reg : std_logic := '0';
	
	variable count_data : integer;
	
	
 begin
	if (trigger_start = '0') then
		if (line_ready_reg = '0') then
			line_ready_reg <= '1';
		else
			line_ready_reg <= '0';
		end if;
	elsif rising_edge(clk_in) then
		---CCD-DIVIDER---	
		if (count_div = CCD_CLK_DIVIDER) then
			count_div := 0;
		else
			count_div := count_div + 1;
		end if;
		-----------------
		if (count_div = CCD_CLK_DIVIDER) then
			if (count = SHUTTER + EXPOSURE + ROG_START 
							+ ROG_END + DUM1 + DATA + DUM2 
							+ LINE_END) then
				count := 0;
				
				if (line_pos_start_reg = 0) then
					line_pos_start_reg <= LINE_SIZE;
					line_pos_end_reg   <= 2 * LINE_SIZE;
				elsif (line_pos_start_reg = LINE_SIZE) then
					line_pos_start_reg <= 0;
					line_pos_end_reg   <= LINE_SIZE;
				end if;
			else	
				--------------------
				-- SHUTTER TIMING --
				--------------------
				if (count < SHUTTER) then
					line_ready_reg 		<= '0';
					clk_reg    		<= '1';
					shut_reg   		<= '1';
				---------------------
				-- EXPOSURE TIMING --
				---------------------
				elsif (count < SHUTTER + EXPOSURE) then
					line_ready_reg    <= '0';
					shut_reg      <= '1';
					clk_reg       <= '1';
					ccd_ready_reg <= '0';
				----------------
				-- ROG START TIMING --
				----------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START) then
					line_ready_reg <= '0';
					rog_reg         <= '0';
					count_start_seq := 0;
				----------------
				-- ROG END TIMING --
				----------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END) then
					line_ready_reg <= '0';
					rog_reg         <= '1';
					count_start_seq := 0;
					count_data      := line_pos_start_reg;
					dram_we_a   <= '0';
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
							dram_we_a <= '1';
							
							count_data := count_data + 1;
						when 1 =>  
							
							data_out <= START_SEQUENCE2;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							dram_we_a <= '1';
							
							count_data := count_data + 1;
						when 2 =>
							
							data_out <= START_SEQUENCE3;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							dram_we_a <= '1';
							
							count_data := count_data + 1;
						when others =>
							dram_we_a <= '0';
							ccd_ready_reg <= '0';
						end case;
						count_start_seq := count_start_seq + 1;
					else
						 dram_we_a <= '0';
						ccd_ready_reg <= '0';
					end if;
					-----------------------------
					clk_reg <= NOT clk_reg;
				-----------------
				-- DATA TIMING --
				-----------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA) then
					line_ready_reg <= '0';
					if (clk_reg = '0') then
						data_out <= "0000" & adc_data_in;
						-- data_out    <= std_logic_vector(to_unsigned(count_data, 16));
						ram_addr    <= count_data;
						
						count_data  := count_data + 1;
						
						dram_we_a     <= '1';
						ccd_ready_reg <= '1';
					else
						dram_we_a     <= '0';
						ccd_ready_reg <= '0';
					end if;
					
					clk_reg <= NOT clk_reg;
					
					count_start_seq := 0;
				--------------------------
				-- DUMMIES AFTER TIMING --
				--------------------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA + DUM2) then
					line_ready_reg <= '0';
					-- SENDING END SEQUENCE --
					if (clk_reg = '0') then
						case count_start_seq is
						when 0 =>
							
							data_out <= END_SEQUENCE1;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';

							dram_we_a   <= '1';
							
							count_data := count_data + 1;
						when 1 =>  
							data_out <= END_SEQUENCE2;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							
							dram_we_a   <= '1';
							
							count_data := count_data + 1;
						when 2 =>

							data_out <= END_SEQUENCE3;
							ram_addr <= count_data;
							ccd_ready_reg <= '1';
							
							dram_we_a   <= '1';
							
							count_data := count_data + 1;
						when others =>
							dram_we_a <= '0';
							
							ccd_ready_reg <= '0';
						end case;
						count_start_seq := count_start_seq + 1;
					else
						dram_we_a <= '0';
						ccd_ready_reg <= '0';
					end if;
					-----------------------------
					clk_reg <= NOT clk_reg;	
				--------------------------
				------ END LINE ----------
				--------------------------
				elsif (count < SHUTTER + EXPOSURE + ROG_START + ROG_END + DUM1 + DATA + DUM2 + LINE_END) then
					
					line_pos_start <= line_pos_start_reg;
					line_pos_end   <= line_pos_end_reg;    
					
					rog_reg <= '1';
					shut_reg <= '1';
					clk_reg <= NOT clk_reg;
					
					line_ready_reg <= '1';
				end if; 
				-------------------------
				---LINE NUMBER CONTROL---
				-------------------------
	--			if (trigger_start = TRIGGER_ACTIVE AND trigger_start_reg = '0') then
	--				count_line := 0;
	--				count := 0;
	--				trigger_start_reg := '1';
	--			elsif (NOT (trigger_start = TRIGGER_ACTIVE) AND (count_line >= ccd_lines_number)) then
	--				trigger_start_reg := '0';
	--			elsif (count_line < ccd_lines_number) then
	--				if (count >= SHUTTER + EXPOSURE + ROG_START 
	--								+ ROG_END + DUM1 + DATA + DUM2 
	--								+ LINE_END) then
	--					count_line := count_line + 1;
	--					if (count_line < ccd_lines_number) then
	--						count := 0;
	--					end if;
	--				else
	--					count := count + 1;
	--				end if;
	--			elsif (auto_mod = '1') then
				
	--			end if;
				count := count + 1;
			end if;
		end if;
	 end if; 
 end process;
end architecture;
