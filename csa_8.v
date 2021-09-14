module csa_8(a,b,cin,sum,cout,prevout);//
	input [7:0] a, b;
	input cin;
	output [7:0]sum;
	output cout;
	output [3:0]prevout;//
	wire c0, c1, c2;
	wire [3:0] s0,s1;
	wire [1:0]temp1,temp2;//
	csa_4 csa_4_1(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c0),.prevout(prevout[1:0]));
	csa_4 csa_4_2(.a(a[7:4]),.b(b[7:4]),.cin(1'b0),.sum(s0),.cout(c1),.prevout(temp1));
	csa_4 csa_4_3(.a(a[7:4]),.b(b[7:4]),.cin(1'b1),.sum(s1),.cout(c2),.prevout(temp2));
	mux_1 mux_1_88(.select(c0),.in0(c1),.in1(c2),.out(cout));//0.0//
	mux_4 mux_4_1(.select(c0), .in0(s0), .in1(s1), .out(sum[7:4]));
	mux_2 mux_2_i(.select(c0),.in0(temp1),.in1(temp2),.out(prevout[3:2]));
endmodule
