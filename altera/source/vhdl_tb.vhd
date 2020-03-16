
library ieee;
use ieee.std_logic_1164.all;

entity vhdl_tb is
end vhdl_tb;

architecture vhdl_tb of vhdl_tb is
	signal ccd_data :  std_logic_vector (10 downto 0);
	signal clk_adc :  std_logic;
	signal rog_ccd :  std_logic := '1'; -- /rog signal
	signal wr_ena :  std_logic := '0'; 

	signal memory_data :  std_logic_vector (10 downto 0);
	signal ack_memory :  std_logic := '1';
	signal clk_memory :  std_logic := '0';
	signal addr_out : integer range 0 to 1023 := 1023;
  
	component memory
		port (
				ccd_data : in std_logic_vector (10 downto 0);
				clk_adc : in std_logic;
				rog_ccd : in std_logic := '0'; -- /rog signal
				wr_ena : in std_logic := '0'; 
			------------------------
			------MEMORY-OUT--------
			------------------------	
				memory_data : out std_logic_vector (10 downto 0);
				ack_memory : in std_logic := '1';
				clk_memory : in std_logic;
				addr_out		:	out		INTEGER RANGE 0 TO 1023
				);
	end component;
begin

    MEM : memory port map (ccd_data,
									clk_adc,
									rog_ccd,
									wr_ena,
									memory_data,
									ack_memory,
									clk_memory,
									addr_out
									);

	process
		constant period: time := 20 ns;
		begin
			ccd_data <= "00000000000";
			rog_ccd <= '0';
			wr_ena <= '1';
			clk_adc  <= '0';
			wait for period;
		
			clk_adc  <= '1';
			rog_ccd <= '1';
			wait for period;
			
			clk_adc  <= '0';
			wait for period;
		
			clk_adc  <= '1';
			ccd_data <= "11111111111";
			wait for period;
			
			clk_adc  <= '0';
			wait for period;
			
			clk_adc  <= '1';
			ccd_data <= "01000011010";
			wait for period;
			
			clk_adc  <= '0';
			wait for period;
			
			clk_memory <= '1';
			wr_ena <= '0';
			wait for 2*period;
			
			clk_memory <= '0';
			ack_memory <= '0';
			wait for 2*period;
			
			clk_memory <= '1';
			wait for 2*period;
			
			wr_ena <= '0';
			clk_memory <= '0';
			wait for 2*period;
			
			clk_memory <= '1';
			wait for 2*period;
			
			clk_memory <= '0';
			wait for 2*period;
			
			clk_memory <= '1';
			wait for 2*period;
			
			clk_memory <= '0';
			wait for 2*period;
			
			clk_memory <= '1';
			wait for 2*period;
			
			clk_memory <= '0';
			wait for 2*period;
			
			clk_memory <= '1';
			wait for 2*period;
			
			wait;
		end process;
end architecture ;