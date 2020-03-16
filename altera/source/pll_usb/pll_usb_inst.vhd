	component pll_usb is
		port (
			reset_reset : in std_logic := 'X'; -- reset
			clk_clk     : in std_logic := 'X'  -- clk
		);
	end component pll_usb;

	u0 : component pll_usb
		port map (
			reset_reset => CONNECTED_TO_reset_reset, -- reset.reset
			clk_clk     => CONNECTED_TO_clk_clk      --   clk.clk
		);

