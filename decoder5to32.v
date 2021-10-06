module decoder5to32(a,y);
	input [4:0]a;
	output [31:0]y;
	wire [3:0]w;//storing the output of 2:4 decoder
	decoder2to4 d00(.a0(a[3]),.a1(a[4]),.y(w));
	
	decoder3to8 d0(.a0(a[0]),.a1(a[1]),.a2(a[2]),.y(y[7:0]),.en(w[0]));
	decoder3to8 d1(.a0(a[0]),.a1(a[1]),.a2(a[2]),.y(y[15:8]),.en(w[1]));	
	decoder3to8 d2(.a0(a[0]),.a1(a[1]),.a2(a[2]),.y(y[23:16]),.en(w[2]));
	decoder3to8 d3(.a0(a[0]),.a1(a[1]),.a2(a[2]),.y(y[31:24]),.en(w[3]));
	
endmodule 