module decoder2to4(a0,a1,y);
	input a0,a1;
	output [3:0]y;
	wire [1:0]anti;
	
	not nnot0(anti[0],a0);
	not nnot1(anti[1],a1);
	
	and aand0(y[0],anti[0],anti[1]);
	and aand1(y[1],a0,anti[1]);
	and aand2(y[2],anti[0],a1);
	and aand3(y[3],a0,a1);
	
endmodule
