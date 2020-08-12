library IEEE;
use IEEE.std_logic_1164.all;

entity usb is

port (
	clk_in : in std_logic;
	txe : in std_logic;
	ccd_ready : in std_logic;
	data_in : in std_logic_vector(12 DOWNTO 0);
	data_out : out std_logic_vector(7 DOWNTO 0);
	oe : out std_logic := '1';
	wr : out std_logic := '1'
);
end entity;

architecture usb of usb is

begin
process (clk_in)
		variable switch_write : integer :=0; -- 0 - waiting
														 -- 1 - send MSByte(High)
														 -- 2 - send LSByte(Low)
		variable ccd_ready_reg : std_logic := '0';
	begin 
		if (rising_edge(clk_in)) then

			
			if (ccd_ready = '1' AND ccd_ready_reg = '0') then
				switch_write := 1;
			elsif (ccd_ready = '0' AND switch_write = --max ) then
				switch_write := 0;
			end if;
		end if;
end process;


end architecture;