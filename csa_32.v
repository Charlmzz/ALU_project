module csa_32(a,b,cin,sum,cout,prevout);
	input [31:0] a, b;
	input cin;
	output [31:0]sum;
	output cout;
	output [15:0]prevout;//
	wire c0, c1, c2;
	wire [15:0] s0,s1;
	wire [7:0]temp1,temp2;//
	csa_16 csa_16_1(.a(a[15:0]),.b(b[15:0]),.cin(cin),.sum(sum[15:0]),.cout(c0),.prevout(prevout[7:0]));
	csa_16 csa_16_2(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(s0),.cout(c1),.prevout(temp1));
	csa_16 csa_16_3(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(s1),.cout(c2),.prevout(temp2));
	mux_1 mux_1_3232(.select(c0),.in0(c1),.in1(c2),.out(cout));//0.0//
	mux_16 mux_16_1(.select(c0), .in0(s0), .in1(s1), .out(sum[31:16]));
	mux_8 mux_8_i(.select(c0),.in0(temp1),.in1(temp2),.out(prevout[15:8]));
endmodule
