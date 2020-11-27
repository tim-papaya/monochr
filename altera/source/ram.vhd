--------------------------------------------------------------------------------
--
--   FileName:         ram.vhd
--   Dependencies:     none
--   Design Software:  Quartus Prime Version 17.0.0 Build 595 SJ Lite Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 9/14/2018 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ram is
	generic(
		D_WIDTH	:	integer := 10;    --width of each data word
		SIZE		:	integer := 1024);  --number of data words the memory can store
	port(
		clk		:	in		std_logic;                             --system clock
		wr_ena	:	in		std_logic;                             --write enable
		addr		:	in		integer range 0 to size-1;             --address to write/read
		data_in	:	in		std_logic_vector(d_width-1 downto 0);  --input data to write
		data_out	:	out	std_logic_vector(d_width-1 downto 0)); --output data read
end ram;

architecture logic of ram is
	type memory is array(size-1 downto 0) of std_logic_vector(d_width-1 downto 0);  --data type for memory
	signal ram			:	memory;                                                    --memory array
	signal addr_int	:	integer range 0 to size-1;                                 --internal address register
begin

	process(clk)
	begin
		if(clk'event and clk = '1') then

			if(wr_ena = '1') then     --write enable is asserted
				ram(addr) <= data_in;  --write input data into memory
			end if;
			
			addr_int <= addr;         --store the address in the internal address register

		end if;	
	end process;
	
	data_out <= ram(addr_int);      --output data at the stored address
	
end logic;