module mux1bit_4(select0,select1,in0,in1,in2,in3,out);
	input in0,in1,in2,in3;
	input select0,select1;
	output out;
	wire res0,res1;
	mux1bit_2 mmux_1(.select(select0),.in0(in0),.in1(in1),.out(res0));
	mux1bit_2 mmux_2(.select(select0),.in0(in2),.in1(in3),.out(res1));
	
	mux1bit_2 mmux_3(.select(select1),.in0(res0),.in1(res1),.out(out));
endmodule
