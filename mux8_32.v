module mux8_32(s0, s1, s2, in0, in1, in2, in3,in4,in5,in6,in7, out);
	input s0,s1,s2;
	input [31:0] in0, in1,in2,in3,in4,in5,in6,in7;
	output [31:0] out;
	wire [31:0] mux1, mux2;
	mux4_32 mux4_1(.s0(s0), .s1(s1), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .out(mux1));
	mux4_32 mux4_2(.s0(s0), .s1(s1), .in0(in4), .in1(in5), .in2(in6), .in3(in7), .out(mux2));

	mux_32 m3(.select(s2), .in0(mux1), .in1(mux2), .out(out));
endmodule
