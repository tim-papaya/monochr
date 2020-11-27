library IEEE;
use IEEE.std_logic_1164.all;

entity usb is
generic (
	TIMING_START : integer := 0;
	TIMING_MSB   : integer := 1;
	TIMING_LSB   : integer := 2;

	LINE_SIZE    : integer := 2054
);

port (
	clk_in      : in std_logic;
	txe         : in std_logic;
	rxf         : in std_logic;
	ccd_ready   : in std_logic;
	oe          : out std_logic := '1';
	wr          : out std_logic := '1';
	rd          : out std_logic := '1';
	
	ram_addr    : out integer; 
	
	data_in     : in std_logic_vector(15 DOWNTO 0);
	command_out : out  std_logic_vector(7 DOWNTO 0);
	data        : inout std_logic_vector(7 DOWNTO 0)
);
end entity;

architecture usb of usb is
	signal command_reg : std_logic_vector(7 DOWNTO 0);
begin

command_out <= command_reg;

process (clk_in)
		variable switch_write 	: integer range 0 to TIMING_LSB := TIMING_START;
		variable ccd_ready_reg  : std_logic := '0';
		variable read_delay_reg : std_logic := '0';
		variable count 			: integer   := 0;
		
begin 
		if (falling_edge(clk_in)) then
			if (rxf = '0') then
				-- reading from PC
				wr <= '1';
				data <= "ZZZZZZZZ";
				if (read_delay_reg = '0') then
					oe <= '0'; -- OE set '0' to read
					read_delay_reg := '1';
				else
					rd <= '0';
					command_reg <= data;
				end if;
			else
				-- writing to PC
				read_delay_reg := '0';
				rd <= '1';
				oe <= '1'; -- OE set '1' to write
				-- txe = '0' then Write buffer is ready
				if (txe = '0') then
					-- ccd_ready - pix from ccd
--					if (ccd_ready = '1' AND ccd_ready_reg = '0') then
--						count := 0;
--						ccd_ready_reg := '1';
--					elsif (ccd_ready = '0' AND count >= LINE_SIZE) then
--						ccd_ready_reg := '0';
					if (count = LINE_SIZE) then
						count := 0;
					elsif (count < LINE_SIZE) then
						case switch_write is
						when TIMING_START =>
							wr <= '1'; 
							ram_addr <= count;
							switch_write := TIMING_MSB;
						when TIMING_MSB =>
							wr <= '0';
							data <= data_in(15 DOWNTO 8);
							switch_write := TIMING_LSB;
						when TIMING_LSB =>
							wr <= '0';
							data <= data_in(7 DOWNTO 0);
							switch_write := TIMING_START;
							count := count + 1;
						end case;
					else
						wr <= '1';
					end if;
				else
					wr <= '1';
				end if;
			end if;
		end if;
end process;
end architecture;