module or_gate32(a, x, y);
	output [31:0] a;
	input [31:0] x,y;
	
	or n0(a[0], x[0], y[0]);
	or n1(a[1], x[1],y[1]);
	or n2(a[2], x[2],y[2]);
	or n3(a[3], x[3],y[3]);
	or n4(a[4], x[4],y[4]);
	or n5(a[5], x[5],y[5]);
	or n6(a[6], x[6],y[6]);
	or n7(a[7], x[7],y[7]);
	or n8(a[8], x[8],y[8]);
	or n9(a[9], x[9],y[9]);
	or n10(a[10], x[10],y[10]);
	or n11(a[11], x[11],y[11]);
	or n12(a[12], x[12],y[12]);
	or n13(a[13], x[13],y[13]);
	or n14(a[14], x[14],y[14]);
	or n15(a[15], x[15],y[15]);
	
	or n16(a[16], x[16],y[16]);
	or n17(a[17], x[17],y[17]);
	or n18(a[18], x[18],y[18]);
	or n19(a[19], x[19],y[19]);
	or n20(a[20], x[20],y[20]);
	or n21(a[21], x[21],y[21]);
	or n22(a[22], x[22],y[22]);
	or n23(a[23], x[23],y[23]);
	or n24(a[24], x[24],y[24]);
	or n25(a[25], x[25],y[25]);
	or n26(a[26], x[26],y[26]);
	or n27(a[27], x[27],y[27]);
	or n28(a[28], x[28],y[28]);
	or n29(a[29], x[29],y[29]);
	or n30(a[30], x[30],y[30]);
	or n31(a[31], x[31],y[31]);
	
endmodule
