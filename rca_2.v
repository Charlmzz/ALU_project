module rca_2(a,b,cin,sum,cout,c0);
	input [1:0] a, b;
	input cin;
	output [1:0]sum;
	output cout;
	output c0;
	fa fa1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c0));
	fa fa2(.a(a[1]),.b(b[1]),.cin(c0),.sum(sum[1]),.cout(cout));
endmodule
