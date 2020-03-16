library IEEE;
use IEEE.std_logic_1164.all;

entity memory is

generic (
		MEMORY_SIZE : integer := 1024
);
port (

------------------------
------MEMORY-IN---------
------------------------
	ccd_data : in std_logic_vector (10 downto 0);
	clk_adc : in std_logic := '0';
	rog_ccd : in std_logic := '0'; -- /rog signal
	wr_ena : in std_logic := '0'; 
------------------------
------MEMORY-OUT--------
------------------------	
	memory_data : out std_logic_vector (10 downto 0);
	ack_memory : in std_logic := '0';
	clk_memory : in std_logic := '0';
	addr_out		:	out		INTEGER RANGE 0 TO MEMORY_SIZE-1
);

end entity;

architecture memory of memory is
	
	component ram
	GENERIC(
		d_width	:	INTEGER := 11;    --width of each data word
		size		:	INTEGER := 1024);  --number of data words the memory can store
	PORT(
		clk		:	IN		STD_LOGIC;                             --system clock
		wr_ena	:	IN		STD_LOGIC;                             --write enable
		addr		:	IN		INTEGER RANGE 0 TO size-1;             --address to write/read
		data_in	:	IN		STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --input data to write
		data_out	:	OUT	STD_LOGIC_VECTOR(d_width-1 DOWNTO 0)); --output data read
	END component;
	
	signal clk : std_logic;
	signal cntrl : std_logic;
	signal addr : integer range 0 to MEMORY_SIZE-1 := 0;
	
begin
------------------------
------MEMORY-IN---------
------------------------
	process (clk) 
	begin
			if (falling_edge(clk)) then
				if (cntrl = '0') then
					addr <= 0;
				else 
					if (addr < MEMORY_SIZE) then
						addr <= addr + 1;
					end if;
				end if;
				addr_out <= addr;
			end if;
	end process;
	
	process (rog_ccd, wr_ena, ack_memory)
	begin
		cntrl <= (rog_ccd AND wr_ena) OR ( ack_memory AND NOT wr_ena);
	end process;
	
	process (clk_adc, clk_memory, wr_ena)
	begin
		clk <= (NOT clk_adc AND wr_ena) OR (clk_memory AND NOT wr_ena);
	end process;

COMP_RAM : ram port map(		clk,
								wr_ena,
								addr,
								ccd_data,
								memory_data
								);

end architecture;