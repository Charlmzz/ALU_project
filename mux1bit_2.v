module mux1bit_2(select,in0,in1,out);
	input in0,in1;
	input select;
	output out;
	assign out = select ? in1:in0;
endmodule
