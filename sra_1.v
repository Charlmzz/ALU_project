module sra_1(a, amt, out);
	input [31:0] a;
	input [4:0] amt;
	output [31:0] out;
	
	wire [31:0] layer1, layer2, layer3, layer4;
	
	//layer1, amt[0]
	mux_1 mm0(.select(amt[0]), .in0(a[0]), .in1(a[1]), .out(layer1[0]));
	mux_1 mm1(.select(amt[0]), .in0(a[1]), .in1(a[2]), .out(layer1[1]));
	mux_1 mm2(.select(amt[0]), .in0(a[2]), .in1(a[3]), .out(layer1[2]));
	mux_1 mm3(.select(amt[0]), .in0(a[3]), .in1(a[4]), .out(layer1[3]));
	mux_1 mm4(.select(amt[0]), .in0(a[4]), .in1(a[5]), .out(layer1[4]));
	
	mux_1 mm5(.select(amt[0]), .in0(a[5]), .in1(a[6]), .out(layer1[5]));
	mux_1 mm6(.select(amt[0]), .in0(a[6]), .in1(a[7]), .out(layer1[6]));
	mux_1 mm7(.select(amt[0]), .in0(a[7]), .in1(a[8]), .out(layer1[7]));
	mux_1 mm8(.select(amt[0]), .in0(a[8]), .in1(a[9]), .out(layer1[8]));
	mux_1 mm9(.select(amt[0]), .in0(a[9]), .in1(a[10]), .out(layer1[9]));
	
	mux_1 mm10(.select(amt[0]), .in0(a[10]), .in1(a[11]), .out(layer1[10]));
	mux_1 mm11(.select(amt[0]), .in0(a[11]), .in1(a[12]), .out(layer1[11]));
	mux_1 mm12(.select(amt[0]), .in0(a[12]), .in1(a[13]), .out(layer1[12]));
	mux_1 mm13(.select(amt[0]), .in0(a[13]), .in1(a[14]), .out(layer1[13]));
	mux_1 mm14(.select(amt[0]), .in0(a[14]), .in1(a[15]), .out(layer1[14]));
	
	mux_1 mm15(.select(amt[0]), .in0(a[15]), .in1(a[16]), .out(layer1[15]));
	mux_1 mm16(.select(amt[0]), .in0(a[16]), .in1(a[17]), .out(layer1[16]));
	mux_1 mm17(.select(amt[0]), .in0(a[17]), .in1(a[18]), .out(layer1[17]));
	mux_1 mm18(.select(amt[0]), .in0(a[18]), .in1(a[19]), .out(layer1[18]));
	mux_1 mm19(.select(amt[0]), .in0(a[19]), .in1(a[20]), .out(layer1[19]));
	
	mux_1 mm20(.select(amt[0]), .in0(a[20]), .in1(a[21]), .out(layer1[20]));
	mux_1 mm21(.select(amt[0]), .in0(a[21]), .in1(a[22]), .out(layer1[21]));
	mux_1 mm22(.select(amt[0]), .in0(a[22]), .in1(a[23]), .out(layer1[22]));
	mux_1 mm23(.select(amt[0]), .in0(a[23]), .in1(a[24]), .out(layer1[23]));
	mux_1 mm24(.select(amt[0]), .in0(a[24]), .in1(a[25]), .out(layer1[24]));
	
	mux_1 mm25(.select(amt[0]), .in0(a[25]), .in1(a[26]), .out(layer1[25]));
	mux_1 mm26(.select(amt[0]), .in0(a[26]), .in1(a[27]), .out(layer1[26]));
	mux_1 mm27(.select(amt[0]), .in0(a[27]), .in1(a[28]), .out(layer1[27]));
	mux_1 mm28(.select(amt[0]), .in0(a[28]), .in1(a[29]), .out(layer1[28]));
	mux_1 mm29(.select(amt[0]), .in0(a[29]), .in1(a[30]), .out(layer1[29]));

	mux_1 mm30(.select(amt[0]), .in0(a[30]), .in1(a[31]), .out(layer1[30]));
	mux_1 mm31(.select(amt[0]), .in0(a[31]), .in1(a[31]), .out(layer1[31]));
	
	
	
	//layer2, amt[1]
	mux_1 mm00(.select(amt[1]), .in0(layer1[0]), .in1(layer1[2]), .out(layer2[0]));
	mux_1 mm01(.select(amt[1]), .in0(layer1[1]), .in1(layer1[3]), .out(layer2[1]));
	mux_1 mm02(.select(amt[1]), .in0(layer1[2]), .in1(layer1[4]), .out(layer2[2]));
	mux_1 mm03(.select(amt[1]), .in0(layer1[3]), .in1(layer1[5]), .out(layer2[3]));
	mux_1 mm04(.select(amt[1]), .in0(layer1[4]), .in1(layer1[6]), .out(layer2[4]));
	
	mux_1 mm05(.select(amt[1]), .in0(layer1[5]), .in1(layer1[7]), .out(layer2[5]));
	mux_1 mm06(.select(amt[1]), .in0(layer1[6]), .in1(layer1[8]), .out(layer2[6]));
	mux_1 mm07(.select(amt[1]), .in0(layer1[7]), .in1(layer1[9]), .out(layer2[7]));
	mux_1 mm08(.select(amt[1]), .in0(layer1[8]), .in1(layer1[10]), .out(layer2[8]));
	mux_1 mm09(.select(amt[1]), .in0(layer1[9]), .in1(layer1[11]), .out(layer2[9]));
	
	mux_1 mm010(.select(amt[1]), .in0(layer1[10]), .in1(layer1[12]), .out(layer2[10]));
	mux_1 mm011(.select(amt[1]), .in0(layer1[11]), .in1(layer1[13]), .out(layer2[11]));
	mux_1 mm012(.select(amt[1]), .in0(layer1[12]), .in1(layer1[14]), .out(layer2[12]));
	mux_1 mm013(.select(amt[1]), .in0(layer1[13]), .in1(layer1[15]), .out(layer2[13]));
	mux_1 mm014(.select(amt[1]), .in0(layer1[14]), .in1(layer1[16]), .out(layer2[14]));
	
	mux_1 mm015(.select(amt[1]), .in0(layer1[15]), .in1(layer1[17]), .out(layer2[15]));
	mux_1 mm016(.select(amt[1]), .in0(layer1[16]), .in1(layer1[18]), .out(layer2[16]));
	mux_1 mm017(.select(amt[1]), .in0(layer1[17]), .in1(layer1[19]), .out(layer2[17]));
	mux_1 mm018(.select(amt[1]), .in0(layer1[18]), .in1(layer1[20]), .out(layer2[18]));
	mux_1 mm019(.select(amt[1]), .in0(layer1[19]), .in1(layer1[21]), .out(layer2[19]));
	
	mux_1 mm020(.select(amt[1]), .in0(layer1[20]), .in1(layer1[22]), .out(layer2[20]));
	mux_1 mm021(.select(amt[1]), .in0(layer1[21]), .in1(layer1[23]), .out(layer2[21]));
	mux_1 mm022(.select(amt[1]), .in0(layer1[22]), .in1(layer1[24]), .out(layer2[22]));
	mux_1 mm023(.select(amt[1]), .in0(layer1[23]), .in1(layer1[25]), .out(layer2[23]));
	mux_1 mm024(.select(amt[1]), .in0(layer1[24]), .in1(layer1[26]), .out(layer2[24]));
	
	mux_1 mm025(.select(amt[1]), .in0(layer1[25]), .in1(layer1[27]), .out(layer2[25]));
	mux_1 mm026(.select(amt[1]), .in0(layer1[26]), .in1(layer1[28]), .out(layer2[26]));
	mux_1 mm027(.select(amt[1]), .in0(layer1[27]), .in1(layer1[29]), .out(layer2[27]));
	mux_1 mm028(.select(amt[1]), .in0(layer1[28]), .in1(layer1[30]), .out(layer2[28]));
	mux_1 mm029(.select(amt[1]), .in0(layer1[29]), .in1(layer1[31]), .out(layer2[29]));

	mux_1 mm030(.select(amt[1]), .in0(layer1[30]), .in1(a[31]), .out(layer2[30]));
	mux_1 mm031(.select(amt[1]), .in0(layer1[31]), .in1(a[31]), .out(layer2[31]));
	
	
	//layer3, amt[2]
	mux_1 mm000(.select(amt[2]), .in0(layer2[0]), .in1(layer2[4]), .out(layer3[0]));
	mux_1 mm001(.select(amt[2]), .in0(layer2[1]), .in1(layer2[5]), .out(layer3[1]));
	mux_1 mm002(.select(amt[2]), .in0(layer2[2]), .in1(layer2[6]), .out(layer3[2]));
	mux_1 mm003(.select(amt[2]), .in0(layer2[3]), .in1(layer2[7]), .out(layer3[3]));
	mux_1 mm004(.select(amt[2]), .in0(layer2[4]), .in1(layer2[8]), .out(layer3[4]));
	
	mux_1 mm005(.select(amt[2]), .in0(layer2[5]), .in1(layer2[9]), .out(layer3[5]));
	mux_1 mm006(.select(amt[2]), .in0(layer2[6]), .in1(layer2[10]), .out(layer3[6]));
	mux_1 mm007(.select(amt[2]), .in0(layer2[7]), .in1(layer2[11]), .out(layer3[7]));
	mux_1 mm008(.select(amt[2]), .in0(layer2[8]), .in1(layer2[12]), .out(layer3[8]));
	mux_1 mm009(.select(amt[2]), .in0(layer2[9]), .in1(layer2[13]), .out(layer3[9]));
	
	mux_1 mm0010(.select(amt[2]), .in0(layer2[10]), .in1(layer2[14]), .out(layer3[10]));
	mux_1 mm0011(.select(amt[2]), .in0(layer2[11]), .in1(layer2[15]), .out(layer3[11]));
	mux_1 mm0012(.select(amt[2]), .in0(layer2[12]), .in1(layer2[16]), .out(layer3[12]));
	mux_1 mm0013(.select(amt[2]), .in0(layer2[13]), .in1(layer2[17]), .out(layer3[13]));
	mux_1 mm0014(.select(amt[2]), .in0(layer2[14]), .in1(layer2[18]), .out(layer3[14]));
	
	mux_1 mm0015(.select(amt[2]), .in0(layer2[15]), .in1(layer2[19]), .out(layer3[15]));
	mux_1 mm0016(.select(amt[2]), .in0(layer2[16]), .in1(layer2[20]), .out(layer3[16]));
	mux_1 mm0017(.select(amt[2]), .in0(layer2[17]), .in1(layer2[21]), .out(layer3[17]));
	mux_1 mm0018(.select(amt[2]), .in0(layer2[18]), .in1(layer2[22]), .out(layer3[18]));
	mux_1 mm0019(.select(amt[2]), .in0(layer2[19]), .in1(layer2[23]), .out(layer3[19]));
	
	mux_1 mm0020(.select(amt[2]), .in0(layer2[20]), .in1(layer2[24]), .out(layer3[20]));
	mux_1 mm0021(.select(amt[2]), .in0(layer2[21]), .in1(layer2[25]), .out(layer3[21]));
	mux_1 mm0022(.select(amt[2]), .in0(layer2[22]), .in1(layer2[26]), .out(layer3[22]));
	mux_1 mm0023(.select(amt[2]), .in0(layer2[23]), .in1(layer2[27]), .out(layer3[23]));
	mux_1 mm0024(.select(amt[2]), .in0(layer2[24]), .in1(layer2[28]), .out(layer3[24]));
	
	mux_1 mm0025(.select(amt[2]), .in0(layer2[25]), .in1(layer2[29]), .out(layer3[25]));
	mux_1 mm0026(.select(amt[2]), .in0(layer2[26]), .in1(layer2[30]), .out(layer3[26]));
	mux_1 mm0027(.select(amt[2]), .in0(layer2[27]), .in1(layer2[31]), .out(layer3[27]));
	mux_1 mm0028(.select(amt[2]), .in0(layer2[28]), .in1(a[31]), .out(layer3[28]));
	mux_1 mm0029(.select(amt[2]), .in0(layer2[29]), .in1(a[31]), .out(layer3[29]));

	mux_1 mm0030(.select(amt[2]), .in0(layer2[30]), .in1(a[31]), .out(layer3[30]));
	mux_1 mm0031(.select(amt[2]), .in0(layer2[31]), .in1(a[31]), .out(layer3[31]));	
	
	
	
	
	//layer4, amt[3]
	mux_1 mm0000(.select(amt[3]), .in0(layer3[0]), .in1(layer3[8]), .out(layer4[0]));
	mux_1 mm0001(.select(amt[3]), .in0(layer3[1]), .in1(layer3[9]), .out(layer4[1]));
	mux_1 mm0002(.select(amt[3]), .in0(layer3[2]), .in1(layer3[10]), .out(layer4[2]));
	mux_1 mm0003(.select(amt[3]), .in0(layer3[3]), .in1(layer3[11]), .out(layer4[3]));
	mux_1 mm0004(.select(amt[3]), .in0(layer3[4]), .in1(layer3[12]), .out(layer4[4]));
	
	mux_1 mm0005(.select(amt[3]), .in0(layer3[5]), .in1(layer3[13]), .out(layer4[5]));
	mux_1 mm0006(.select(amt[3]), .in0(layer3[6]), .in1(layer3[14]), .out(layer4[6]));
	mux_1 mm0007(.select(amt[3]), .in0(layer3[7]), .in1(layer3[15]), .out(layer4[7]));
	mux_1 mm0008(.select(amt[3]), .in0(layer3[8]), .in1(layer3[16]), .out(layer4[8]));
	mux_1 mm0009(.select(amt[3]), .in0(layer3[9]), .in1(layer3[17]), .out(layer4[9]));
	
	mux_1 mm00010(.select(amt[3]), .in0(layer3[10]), .in1(layer3[18]), .out(layer4[10]));
	mux_1 mm00011(.select(amt[3]), .in0(layer3[11]), .in1(layer3[19]), .out(layer4[11]));
	mux_1 mm00012(.select(amt[3]), .in0(layer3[12]), .in1(layer3[20]), .out(layer4[12]));
	mux_1 mm00013(.select(amt[3]), .in0(layer3[13]), .in1(layer3[21]), .out(layer4[13]));
	mux_1 mm00014(.select(amt[3]), .in0(layer3[14]), .in1(layer3[22]), .out(layer4[14]));
	
	mux_1 mm00015(.select(amt[3]), .in0(layer3[15]), .in1(layer3[23]), .out(layer4[15]));
	mux_1 mm00016(.select(amt[3]), .in0(layer3[16]), .in1(layer3[24]), .out(layer4[16]));
	mux_1 mm00017(.select(amt[3]), .in0(layer3[17]), .in1(layer3[25]), .out(layer4[17]));
	mux_1 mm00018(.select(amt[3]), .in0(layer3[18]), .in1(layer3[26]), .out(layer4[18]));
	mux_1 mm00019(.select(amt[3]), .in0(layer3[19]), .in1(layer3[27]), .out(layer4[19]));
	
	mux_1 mm00020(.select(amt[3]), .in0(layer3[20]), .in1(layer3[28]), .out(layer4[20]));
	mux_1 mm00021(.select(amt[3]), .in0(layer3[21]), .in1(layer3[29]), .out(layer4[21]));
	mux_1 mm00022(.select(amt[3]), .in0(layer3[22]), .in1(layer3[30]), .out(layer4[22]));
	mux_1 mm00023(.select(amt[3]), .in0(layer3[23]), .in1(layer3[31]), .out(layer4[23]));
	mux_1 mm00024(.select(amt[3]), .in0(layer3[24]), .in1(a[31]), .out(layer4[24]));
	
	mux_1 mm00025(.select(amt[3]), .in0(layer3[25]), .in1(a[31]), .out(layer4[25]));
	mux_1 mm00026(.select(amt[3]), .in0(layer3[26]), .in1(a[31]), .out(layer4[26]));
	mux_1 mm00027(.select(amt[3]), .in0(layer3[27]), .in1(a[31]), .out(layer4[27]));
	mux_1 mm00028(.select(amt[3]), .in0(layer3[28]), .in1(a[31]), .out(layer4[28]));
	mux_1 mm00029(.select(amt[3]), .in0(layer3[29]), .in1(a[31]), .out(layer4[29]));

	mux_1 mm00030(.select(amt[3]), .in0(layer3[30]), .in1(a[31]), .out(layer4[30]));
	mux_1 mm00031(.select(amt[3]), .in0(layer3[31]), .in1(a[31]), .out(layer4[31]));	
	
	
	//layer5, amt[4]
	mux_1 mm00000(.select(amt[4]), .in0(layer4[0]), .in1(layer4[16]), .out(out[0]));
	mux_1 mm00001(.select(amt[4]), .in0(layer4[1]), .in1(layer4[17]), .out(out[1]));
	mux_1 mm00002(.select(amt[4]), .in0(layer4[2]), .in1(layer4[18]), .out(out[2]));
	mux_1 mm00003(.select(amt[4]), .in0(layer4[3]), .in1(layer4[19]), .out(out[3]));
	mux_1 mm00004(.select(amt[4]), .in0(layer4[4]), .in1(layer4[20]), .out(out[4]));
	
	mux_1 mm00005(.select(amt[4]), .in0(layer4[5]), .in1(layer4[21]), .out(out[5]));
	mux_1 mm00006(.select(amt[4]), .in0(layer4[6]), .in1(layer4[22]), .out(out[6]));
	mux_1 mm00007(.select(amt[4]), .in0(layer4[7]), .in1(layer4[23]), .out(out[7]));
	mux_1 mm00008(.select(amt[4]), .in0(layer4[8]), .in1(layer4[24]), .out(out[8]));
	mux_1 mm00009(.select(amt[4]), .in0(layer4[9]), .in1(layer4[25]), .out(out[9]));
	
	mux_1 mm000010(.select(amt[4]), .in0(layer4[10]), .in1(layer4[26]), .out(out[10]));
	mux_1 mm000011(.select(amt[4]), .in0(layer4[11]), .in1(layer4[27]), .out(out[11]));
	mux_1 mm000012(.select(amt[4]), .in0(layer4[12]), .in1(layer4[28]), .out(out[12]));
	mux_1 mm000013(.select(amt[4]), .in0(layer4[13]), .in1(layer4[29]), .out(out[13]));
	mux_1 mm000014(.select(amt[4]), .in0(layer4[14]), .in1(layer4[30]), .out(out[14]));
	
	mux_1 mm000015(.select(amt[4]), .in0(layer4[15]), .in1(layer4[31]), .out(out[15]));
	mux_1 mm000016(.select(amt[4]), .in0(layer4[16]), .in1(a[31]), .out(out[16]));
	mux_1 mm000017(.select(amt[4]), .in0(layer4[17]), .in1(a[31]), .out(out[17]));
	mux_1 mm000018(.select(amt[4]), .in0(layer4[18]), .in1(a[31]), .out(out[18]));
	mux_1 mm000019(.select(amt[4]), .in0(layer4[19]), .in1(a[31]), .out(out[19]));
	
	mux_1 mm000020(.select(amt[4]), .in0(layer4[20]), .in1(a[31]), .out(out[20]));
	mux_1 mm000021(.select(amt[4]), .in0(layer4[21]), .in1(a[31]), .out(out[21]));
	mux_1 mm000022(.select(amt[4]), .in0(layer4[22]), .in1(a[31]), .out(out[22]));
	mux_1 mm000023(.select(amt[4]), .in0(layer4[23]), .in1(a[31]), .out(out[23]));
	mux_1 mm000024(.select(amt[4]), .in0(layer4[24]), .in1(a[31]), .out(out[24]));
	
	mux_1 mm000025(.select(amt[4]), .in0(layer4[25]), .in1(a[31]), .out(out[25]));
	mux_1 mm000026(.select(amt[4]), .in0(layer4[26]), .in1(a[31]), .out(out[26]));
	mux_1 mm000027(.select(amt[4]), .in0(layer4[27]), .in1(a[31]), .out(out[27]));
	mux_1 mm000028(.select(amt[4]), .in0(layer4[28]), .in1(a[31]), .out(out[28]));
	mux_1 mm000029(.select(amt[4]), .in0(layer4[29]), .in1(a[31]), .out(out[29]));

	mux_1 mm000030(.select(amt[4]), .in0(layer4[30]), .in1(a[31]), .out(out[30]));
	mux_1 mm000031(.select(amt[4]), .in0(layer4[31]), .in1(a[31]), .out(out[31]));	
	
endmodule

	
	
	
	