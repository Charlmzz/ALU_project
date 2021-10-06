module decoder3to8(a0,a1,a2,y,en);
	input a0,a1,a2;
	input en;
	output [7:0]y;

	wire[2:0]anti;
	wire[7:0]temp;
	
	not not0(anti[0],a0);
	not not1(anti[1],a1);
	not not2(anti[2],a2);
	
	three_and_gate tag0(.a0(anti[2]),.a1(anti[1]),.a2(anti[0]),.out(temp[0]));
	three_and_gate tag1(.a0(anti[2]),.a1(anti[1]),.a2(a0),.out(temp[1]));
	three_and_gate tag2(.a0(anti[2]),.a1(a1),.a2(anti[0]),.out(temp[2]));
	three_and_gate tag3(.a0(anti[2]),.a1(a1),.a2(a0),.out(temp[3]));
	three_and_gate tag4(.a0(a2),.a1(anti[1]),.a2(anti[0]),.out(temp[4]));
	three_and_gate tag5(.a0(a2),.a1(anti[1]),.a2(a0),.out(temp[5]));
	three_and_gate tag6(.a0(a2),.a1(a1),.a2(anti[0]),.out(temp[6]));
	three_and_gate tag7(.a0(a2),.a1(a1),.a2(a0),.out(temp[7]));
	
	and aand0(y[0],temp[0],en);
	and aand1(y[1],temp[1],en);
	and aand2(y[2],temp[2],en);
	and aand3(y[3],temp[3],en);
	and aand4(y[4],temp[4],en);
	and aand5(y[5],temp[5],en);
	and aand6(y[6],temp[6],en);
	and aand7(y[7],temp[7],en);
	


endmodule
