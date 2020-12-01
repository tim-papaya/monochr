library ieee;
use ieee.std_logic_1164.all;

entity true_dpram_sclk is
	generic (
				D_WORD : integer := 16;
				SIZE   : integer := 2054
	);
	port 
	(	
		data_a	: in std_logic_vector(D_WORD - 1 downto 0);
		data_b	: in std_logic_vector(D_WORD - 1 downto 0);
		addr_a	: in integer range 0 to SIZE - 1;
		addr_b	: in integer range 0 to SIZE - 1;
		we_a	: in std_logic := '1';
		we_b	: in std_logic := '1';
		clk		: in std_logic;
		q_a		: out std_logic_vector(D_WORD - 1 downto 0);
		q_b		: out std_logic_vector(D_WORD - 1 downto 0)
	);
	
end true_dpram_sclk;

architecture rtl of true_dpram_sclk is
	
	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector(D_WORD - 1 downto 0);
	type memory_t is array(SIZE - 1 downto 0) of word_t;
	
	-- Declare the RAM
	shared variable ram : memory_t;

begin

	-- Port A 
	process(clk)
	begin
		if(rising_edge(clk)) then 
			if(we_a = '1') then
				ram(addr_a) := data_a;
			end if;
			q_a <= ram(addr_a);
		end if;
	end process;
	
	-- Port B
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(we_b = '1') then
				ram(addr_b) := data_b;
			end if;
			q_b <= ram(addr_b);
		end if;
	end process;
end rtl;
