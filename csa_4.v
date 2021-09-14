module csa_4(a,b,cin,sum,cout,prevout);//////////
	input [3:0] a, b;
	input cin;
	output [3:0]sum;
	output cout;
	output [1:0]prevout;//
	//output [1:0]s0temp;
	wire c0,c1, c2;
	wire [1:0] s0,s1;
	wire temp1,temp2;//
	rca_2 rca_2_1(.a(a[1:0]),.b(b[1:0]),.cin(cin),.sum(sum[1:0]),.cout(c0),.c0(prevout[0]));
	rca_2 rca_2_2(.a(a[3:2]),.b(b[3:2]),.cin(1'b0),.sum(s0),.cout(c1),.c0(temp1));
	rca_2 rca_2_3(.a(a[3:2]),.b(b[3:2]),.cin(1'b1),.sum(s1),.cout(c2),.c0(temp2));
	mux_1 mux_1_11(.select(c0),.in0(c1),.in1(c2),.out(cout));//0.0//
	//assign s0temp=s0;///////////
	mux_2 mux_2_1(.select(c0), .in0(s0), .in1(s1), .out(sum[3:2]));
	mux_1 mux_1_1(.select(c0), .in0(temp1), .in1(temp2), .out(prevout[1]));
endmodule
