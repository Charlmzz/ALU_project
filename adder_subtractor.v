module adder_subtractor(a,b,cin,sum,cout,overflow);
	input [31:0] a, b;
	input cin;
	output [31:0]sum;
	output cout;
	output overflow;
	wire [31:0] notb, bout;
	//wire woverflow,help,help2,help3;
	wire [15:0]hope;
	
	//calculation
	not_gate32 note_gate32_1(.a(notb),.y(b));
	mux_32 mux_32_1(.select(cin), .in0(b), .in1(notb), .out(bout));
	csa_32 csa_32_1(.a(a),.b(bout),.cin(cin),.sum(sum[31:0]),.cout(cout),.prevout(hope));
	
	xor xor_gate_1(overflow,cout,hope[15]);
//	//overflow
//	xnor a1(woverflow, a[31], b[31]);//00 11 =1
//	and a2(help,a[31],b[31]);// 00 =0 , 11=1
//	xor a3(help2,help,sum[31]);//help 0 sum 1, help 1 sum 0 ,=1
//	and a4(help3,help2,woverflow);
//	assign overflow=help3 ? 1:0;
endmodule
