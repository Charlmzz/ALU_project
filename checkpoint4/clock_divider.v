module clock_divider(clk,out_clk);
	output reg out_clk;
	input clk;
	always @(posedge clk)
	begin
		out_clk<=~out_clk;
	end

endmodule
