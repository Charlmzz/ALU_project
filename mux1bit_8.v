module mux1bit_8(s0,s1,s2,in0,in1,in2,in3,in4,in5,in6,in7,out);
	input in0,in1,in2,in3,in4,in5,in6,in7;
	input s0,s1,s2;
	wire ans0,ans1;
	output out;
	
	
	
	mux1bit_4 hope1(.select0(s0),.select1(s1),.in0(in0),.in1(in1),.in2(in2),.in3(in3),.out(ans0));
	mux1bit_4 hope2(.select0(s0),.select1(s1),.in0(in4),.in1(in5),.in2(in6),.in3(in7),.out(ans1));
	
	mux1bit_2 hope3(.select(s2),.in0(ans0),.in1(ans1),.out(out));
	
endmodule
