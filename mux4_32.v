module mux4_32(s0, s1, in0, in1, in2, in3, out);
	input s0,s1;
	input [31:0] in0, in1,in2,in3;
	output [31:0] out;
	wire [31:0] mux1, mux2;
	mux_32 m1(.select(s0), .in0(in0), .in1(in1)， .out(mux1));
	mux_32 m2(.select(s0), .in0(in2), .in1(in3), .out(mux2));
	mux_32 m3(.select(s1), .in0(mux1), .in1(mux2), .out(out));
endmodule
