library IEEE;
use IEEE.std_logic_1164.all;

entity usb is
generic (
	TIMING_MSB : integer := 0;
	TIMING_LSB : integer := 1;
	TIMING_END : integer := 2
);

port (
	clk_in : in std_logic;
	txe : in std_logic;
	rxf : in std_logic;
	ccd_ready : in std_logic;
	data_in : in std_logic_vector(11 DOWNTO 0);
	data : inout std_logic_vector(7 DOWNTO 0);
	command_out : out  std_logic_vector(7 DOWNTO 0);
	oe : out std_logic := '1';
	wr : out std_logic := '1';
	rd : out std_logic := '1'
);
end entity;

architecture usb of usb is
	signal command_reg : std_logic_vector(7 DOWNTO 0);
begin

command_out <= command_reg;

process (clk_in)
		variable switch_write : integer := 0;
		variable ccd_ready_reg : std_logic := '0';
		variable read_delay_reg : std_logic := '0';
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
					if (ccd_ready = '1' AND ccd_ready_reg = '0') then
						switch_write := 0;
						ccd_ready_reg := '1';
					elsif (ccd_ready = '0' AND switch_write = TIMING_END) then
						ccd_ready_reg := '0';
					elsif (switch_write < TIMING_END) then
						if (switch_write = TIMING_MSB) then
							wr <= '0';
							data <= "0000" & data_in(11 DOWNTO 8);
							--data <= "1100" & "0011";
						elsif (switch_write = TIMING_LSB) then
							wr <= '0';
							--data <= "0011" & "1100";
							data <= data_in(7 DOWNTO 0);
						end if;
						switch_write := switch_write + 1;
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