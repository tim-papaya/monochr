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
	ccd_ready : in std_logic;
	data_in : in std_logic_vector(11 DOWNTO 0);
	data_out : out std_logic_vector(7 DOWNTO 0);
	oe : out std_logic := '1';
	wr : out std_logic := '1';
	rd : out std_logic := '1'
);
end entity;

architecture usb of usb is

begin
-- OE set '1' to write
-- OE set '0' to read
oe <= '1';
rd <= '1';
process (clk_in)
		variable switch_write : integer := 0;
		variable ccd_ready_reg : std_logic := '0';
begin 
		if (falling_edge(clk_in)) then
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
						data_out <= "0000" & data_in(11 DOWNTO 8);
						--data_out <= "1100" & "0011";
					elsif (switch_write = TIMING_LSB) then
						--data_out <= "0011" & "1100";
						data_out <= data_in(7 DOWNTO 0);
					end if;
					switch_write := switch_write + 1;
				else
					wr <= '1';
				end if;
			else
				wr <= '1';
			end if;
		end if;
end process;
end architecture;