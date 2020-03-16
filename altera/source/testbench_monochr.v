`timescale 100 ps/1 ps

module testbench_monochr();

// VGA //
wire CLK, RESET, KEY_1, VGA_HS, VGA_VS;
wire [4:0] VGA_RED, VGA_BLU; 
wire [5:0] VGA_GRN;
// MEMORY //
wire [10 : 0] ccd_data;
// CCD //
wire clk_ccd, rog_ccd; 
// ADC //
wire clk_adc;
// CLOCK CONTROL //
wire key_add, key_sub;

reg clk_buf;
reg [10 : 0] data_buf;

monochr uut 
(
	.CLK(CLK),
	.RESET(RESET),  
	.KEY_1(KEY_1),
	.VGA_RED(VGA_RED),
	.VGA_GRN(VGA_GRN),
	.VGA_BLU(VGA_BLU),
	.VGA_HS(VGA_HS),
	.VGA_VS(VGA_VS),
	.ccd_data(ccd_data),
	.clk_ccd(clk_ccd),
	.rog_ccd(rog_ccd),
	.clk_adc(clk_adc),
	.key_add(key_add),
	.key_sub(key_sub)

);

assign CLK = clk_buf;
assign ccd_data = data_buf;

always
	begin
		clk_buf = 1'b1;
		#5;
		clk_buf = 1'b0;
		#5;
	end
	
always @(posedge clk_ccd)
	begin
		data_buf = 11'hff;
	end
	
endmodule