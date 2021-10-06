module three_and_gate(a0,a1,a2,out);
	input a0,a1,a2;
	output out;
	wire temp;

	and and1(temp,a0,a1);
	and and2(out,temp,a2);
endmodule
