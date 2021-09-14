module csa_16(a,b,cin,sum,cout,prevout);
	input [15:0] a, b;
	input cin;
	output [15:0]sum;
	output cout;
	output [7:0]prevout;//
	wire c0, c1, c2;
	wire [7:0] s0,s1;
	wire [3:0]temp1,temp2;//
	csa_8 csa_8_1(.a(a[7:0]),.b(b[7:0]),.cin(cin),.sum(sum[7:0]),.cout(c0),.prevout(prevout[3:0]));
	csa_8 csa_8_2(.a(a[15:8]),.b(b[15:8]),.cin(1'b0),.sum(s0),.cout(c1),.prevout(temp1));
	csa_8 csa_8_3(.a(a[15:8]),.b(b[15:8]),.cin(1'b1),.sum(s1),.cout(c2),.prevout(temp2));
	mux_1 mux_1_1616(.select(c0),.in0(c1),.in1(c2),.out(cout));//0.0//
	mux_8 mux_8_1(.select(c0), .in0(s0), .in1(s1), .out(sum[15:8]));
	mux_4 mux_4_i(.select(c0),.in0(temp1),.in1(temp2),.out(prevout[7:4]));
endmodule
