module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;//
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

   /* YOUR CODE HERE */
	
	//Write port
	wire [31:0]temp_write;
	wire [31:0]temp_give2reg;
	wire [31:0]R0Q,R1Q,R2Q,R3Q,R4Q,R5Q,R6Q,R7Q,R8Q,R9Q,R10Q,R11Q,R12Q,R13Q,R14Q,R15Q,R16Q,R17Q,R18Q,R19Q,R20Q,R21Q,R22Q,R23Q,R24Q,R25Q,R26Q,R27Q,R28Q,R29Q,R30Q,R31Q;
	decoder5to32 decoder5to32_0(.a(ctrl_writeReg),.y(temp_write));//INPUT a ,OUTPUT y
	and and00(temp_give2reg[0],temp_write[0],ctrl_writeEnable);
	and and01(temp_give2reg[1],temp_write[1],ctrl_writeEnable);
	and and02(temp_give2reg[2],temp_write[2],ctrl_writeEnable);
	and and03(temp_give2reg[3],temp_write[3],ctrl_writeEnable);
	and and04(temp_give2reg[4],temp_write[4],ctrl_writeEnable);
	and and05(temp_give2reg[5],temp_write[5],ctrl_writeEnable);
	and and06(temp_give2reg[6],temp_write[6],ctrl_writeEnable);
	and and07(temp_give2reg[7],temp_write[7],ctrl_writeEnable);
	and and08(temp_give2reg[8],temp_write[8],ctrl_writeEnable);
	and and09(temp_give2reg[9],temp_write[9],ctrl_writeEnable);
	and and10(temp_give2reg[10],temp_write[10],ctrl_writeEnable);
	and and11(temp_give2reg[11],temp_write[11],ctrl_writeEnable);
	and and12(temp_give2reg[12],temp_write[12],ctrl_writeEnable);
	and and13(temp_give2reg[13],temp_write[13],ctrl_writeEnable);
	and and14(temp_give2reg[14],temp_write[14],ctrl_writeEnable);
	and and15(temp_give2reg[15],temp_write[15],ctrl_writeEnable);
	and and16(temp_give2reg[16],temp_write[16],ctrl_writeEnable);
	and and17(temp_give2reg[17],temp_write[17],ctrl_writeEnable);
	and and18(temp_give2reg[18],temp_write[18],ctrl_writeEnable);
	and and19(temp_give2reg[19],temp_write[19],ctrl_writeEnable);
	and and20(temp_give2reg[20],temp_write[20],ctrl_writeEnable);
	and and21(temp_give2reg[21],temp_write[21],ctrl_writeEnable);
	and and22(temp_give2reg[22],temp_write[22],ctrl_writeEnable);
	and and23(temp_give2reg[23],temp_write[23],ctrl_writeEnable);
	and and24(temp_give2reg[24],temp_write[24],ctrl_writeEnable);
	and and25(temp_give2reg[25],temp_write[25],ctrl_writeEnable);
	and and26(temp_give2reg[26],temp_write[26],ctrl_writeEnable);
	and and27(temp_give2reg[27],temp_write[27],ctrl_writeEnable);
	and and28(temp_give2reg[28],temp_write[28],ctrl_writeEnable);
	and and29(temp_give2reg[29],temp_write[29],ctrl_writeEnable);
	and and30(temp_give2reg[30],temp_write[30],ctrl_writeEnable);
	and and31(temp_give2reg[31],temp_write[31],ctrl_writeEnable);
	
	//Register 0-31
	
	dffe_32 dffe0(.q(R0Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[0]),.clr(ctrl_reset));
	dffe_32 dffe1(.q(R1Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[1]),.clr(ctrl_reset));
	dffe_32 dffe2(.q(R2Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[2]),.clr(ctrl_reset));
	dffe_32 dffe3(.q(R3Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[3]),.clr(ctrl_reset));
	dffe_32 dffe4(.q(R4Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[4]),.clr(ctrl_reset));
	dffe_32 dffe5(.q(R5Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[5]),.clr(ctrl_reset));
	dffe_32 dffe6(.q(R6Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[6]),.clr(ctrl_reset));
	dffe_32 dffe7(.q(R7Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[7]),.clr(ctrl_reset));
	dffe_32 dffe8(.q(R8Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[8]),.clr(ctrl_reset));
	dffe_32 dffe9(.q(R9Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[9]),.clr(ctrl_reset));
	dffe_32 dffe10(.q(R10Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[10]),.clr(ctrl_reset));
	dffe_32 dffe11(.q(R11Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[11]),.clr(ctrl_reset));
	dffe_32 dffe12(.q(R12Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[12]),.clr(ctrl_reset));
	dffe_32 dffe13(.q(R13Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[13]),.clr(ctrl_reset));
	dffe_32 dffe14(.q(R14Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[14]),.clr(ctrl_reset));
	dffe_32 dffe15(.q(R15Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[15]),.clr(ctrl_reset));
	dffe_32 dffe16(.q(R16Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[16]),.clr(ctrl_reset));
	dffe_32 dffe17(.q(R17Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[17]),.clr(ctrl_reset));
	dffe_32 dffe18(.q(R18Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[18]),.clr(ctrl_reset));
	dffe_32 dffe19(.q(R19Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[19]),.clr(ctrl_reset));
	dffe_32 dffe20(.q(R20Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[20]),.clr(ctrl_reset));
	dffe_32 dffe21(.q(R21Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[21]),.clr(ctrl_reset));
	dffe_32 dffe22(.q(R22Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[22]),.clr(ctrl_reset));
	dffe_32 dffe23(.q(R23Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[23]),.clr(ctrl_reset));
	dffe_32 dffe24(.q(R24Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[24]),.clr(ctrl_reset));
	dffe_32 dffe25(.q(R25Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[25]),.clr(ctrl_reset));
	dffe_32 dffe26(.q(R26Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[26]),.clr(ctrl_reset));
	dffe_32 dffe27(.q(R27Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[27]),.clr(ctrl_reset));
	dffe_32 dffe28(.q(R28Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[28]),.clr(ctrl_reset));
	dffe_32 dffe29(.q(R29Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[29]),.clr(ctrl_reset));
	dffe_32 dffe30(.q(R30Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[30]),.clr(ctrl_reset));
	dffe_32 dffe31(.q(R31Q), .d(data_writeReg), .clk(clock), .en(temp_give2reg[31]),.clr(ctrl_reset));


	
	
	
	//Read port
	wire[31:0]temp_readA,temp_readB;
	decoder5to32 decoder5to32_A(.a(ctrl_readRegA),.y(temp_readA));
	decoder5to32 decoder5to32_B(.a(ctrl_readRegB),.y(temp_readB));
	
	/*
	//bufferA
	wire [31:0]buffer_output0A,buffer_output1A,buffer_output2A,buffer_output3A,
	buffer_output4A,buffer_output5A,buffer_output6A,buffer_output7A,
	buffer_output8A,buffer_output9A,buffer_output10A,buffer_output11A,
	buffer_output12A,buffer_output13A,buffer_output14A,buffer_output15A,
	buffer_output16A,buffer_output17A,buffer_output18A,buffer_output19A,
	buffer_output20A,buffer_output21A,buffer_output22A,buffer_output23A,
	buffer_output24A,buffer_output25A,buffer_output26A,buffer_output27A,
	buffer_output28A,buffer_output29A,buffer_output30A,buffer_output31A;
	*/
	
	assign data_readRegA=(temp_readA[0])?32'h00000000:32'bz;
	assign data_readRegA=(temp_readA[1])?R1Q:32'bz;
	assign data_readRegA=(temp_readA[2])?R2Q:32'bz;
	assign data_readRegA=(temp_readA[3])?R3Q:32'bz;
	assign data_readRegA=(temp_readA[4])?R4Q:32'bz;
	assign data_readRegA=(temp_readA[5])?R5Q:32'bz;
	assign data_readRegA=(temp_readA[6])?R6Q:32'bz;
	assign data_readRegA=(temp_readA[7])?R7Q:32'bz;
	assign data_readRegA=(temp_readA[8])?R8Q:32'bz;
	assign data_readRegA=(temp_readA[9])?R9Q:32'bz;
	assign data_readRegA=(temp_readA[10])?R10Q:32'bz;
	assign data_readRegA=(temp_readA[11])?R11Q:32'bz;
	assign data_readRegA=(temp_readA[12])?R12Q:32'bz;
	assign data_readRegA=(temp_readA[13])?R13Q:32'bz;
	assign data_readRegA=(temp_readA[14])?R14Q:32'bz;
	assign data_readRegA=(temp_readA[15])?R15Q:32'bz;
	assign data_readRegA=(temp_readA[16])?R16Q:32'bz;
	assign data_readRegA=(temp_readA[17])?R17Q:32'bz;
	assign data_readRegA=(temp_readA[18])?R18Q:32'bz;
	assign data_readRegA=(temp_readA[19])?R19Q:32'bz;
	assign data_readRegA=(temp_readA[20])?R20Q:32'bz;
	assign data_readRegA=(temp_readA[21])?R21Q:32'bz;
	assign data_readRegA=(temp_readA[22])?R22Q:32'bz;
	assign data_readRegA=(temp_readA[23])?R23Q:32'bz;
	assign data_readRegA=(temp_readA[24])?R24Q:32'bz;
	assign data_readRegA=(temp_readA[25])?R25Q:32'bz;
	assign data_readRegA=(temp_readA[26])?R26Q:32'bz;
	assign data_readRegA=(temp_readA[27])?R27Q:32'bz;
	assign data_readRegA=(temp_readA[28])?R28Q:32'bz;
	assign data_readRegA=(temp_readA[29])?R29Q:32'bz;
	assign data_readRegA=(temp_readA[30])?R30Q:32'bz;
	assign data_readRegA=(temp_readA[31])?R31Q:32'bz;

	
	/*
	//bufferB
	wire [31:0]buffer_output0B,buffer_output1B,buffer_output2B,buffer_output3B,	buffer_output4B,buffer_output5B,buffer_output6B,buffer_output7B,buffer_output8B,buffer_output9B,buffer_output10B,buffer_output11B,	buffer_output12B,buffer_output13B,buffer_output14B,buffer_output15B,buffer_output16B,buffer_output17B,buffer_output18B,buffer_output19B,	buffer_output20B,buffer_output21B,buffer_output22B,buffer_output23B,buffer_output24B,buffer_output25B,buffer_output26B,buffer_output27B,	buffer_output28B,buffer_output29B,buffer_output30B,buffer_output31B;
	*/
	
	assign data_readRegB=(temp_readB[0])?32'h00000000:32'bz;
	assign data_readRegB=(temp_readB[1])?R1Q:32'bz;
	assign data_readRegB=(temp_readB[2])?R2Q:32'bz;
	assign data_readRegB=(temp_readB[3])?R3Q:32'bz;
	assign data_readRegB=(temp_readB[4])?R4Q:32'bz;
	assign data_readRegB=(temp_readB[5])?R5Q:32'bz;
	assign data_readRegB=(temp_readB[6])?R6Q:32'bz;
	assign data_readRegB=(temp_readB[7])?R7Q:32'bz;
	assign data_readRegB=(temp_readB[8])?R8Q:32'bz;
	assign data_readRegB=(temp_readB[9])?R9Q:32'bz;
	assign data_readRegB=(temp_readB[10])?R10Q:32'bz;
	assign data_readRegB=(temp_readB[11])?R11Q:32'bz;
	assign data_readRegB=(temp_readB[12])?R12Q:32'bz;
	assign data_readRegB=(temp_readB[13])?R13Q:32'bz;
	assign data_readRegB=(temp_readB[14])?R14Q:32'bz;
	assign data_readRegB=(temp_readB[15])?R15Q:32'bz;
	assign data_readRegB=(temp_readB[16])?R16Q:32'bz;
	assign data_readRegB=(temp_readB[17])?R17Q:32'bz;
	assign data_readRegB=(temp_readB[18])?R18Q:32'bz;
	assign data_readRegB=(temp_readB[19])?R19Q:32'bz;
	assign data_readRegB=(temp_readB[20])?R20Q:32'bz;
	assign data_readRegB=(temp_readB[21])?R21Q:32'bz;
	assign data_readRegB=(temp_readB[22])?R22Q:32'bz;
	assign data_readRegB=(temp_readB[23])?R23Q:32'bz;
	assign data_readRegB=(temp_readB[24])?R24Q:32'bz;
	assign data_readRegB=(temp_readB[25])?R25Q:32'bz;
	assign data_readRegB=(temp_readB[26])?R26Q:32'bz;
	assign data_readRegB=(temp_readB[27])?R27Q:32'bz;
	assign data_readRegB=(temp_readB[28])?R28Q:32'bz;
	assign data_readRegB=(temp_readB[29])?R29Q:32'bz;
	assign data_readRegB=(temp_readB[30])?R30Q:32'bz;
	assign data_readRegB=(temp_readB[31])?R31Q:32'bz;

	
	
	/*
	//or gate for A
	wire [31:0]or_result0A,or_result1A,or_result2A,or_result3A,or_result4A,or_result5A,or_result6A,or_result7A,or_result8A,or_result9A,or_result10A,or_result11A,or_result12A,or_result13A,or_result14A,or_result15A,or_result16A,or_result17A,or_result18A,or_result19A,	or_result20A,or_result21A,or_result22A,or_result23A,	or_result24A,or_result25A,or_result26A,or_result27A,or_result28A,or_result29A;
	
	or_gate32 or0 (.a(or_result0A), .x(buffer_output0A), .y(buffer_output1A));
	or_gate32 or1 (.a(or_result1A), .x(or_result0A), .y(buffer_output2A));
	or_gate32 or2 (.a(or_result2A), .x(or_result1A), .y(buffer_output3A));
	or_gate32 or3 (.a(or_result3A), .x(or_result2A), .y(buffer_output4A));
	or_gate32 or4 (.a(or_result4A), .x(or_result3A), .y(buffer_output5A));
	or_gate32 or5 (.a(or_result5A), .x(or_result4A), .y(buffer_output6A));
	or_gate32 or6 (.a(or_result6A), .x(or_result5A), .y(buffer_output7A));
	or_gate32 or7 (.a(or_result7A), .x(or_result6A), .y(buffer_output8A));
	or_gate32 or8 (.a(or_result8A), .x(or_result7A), .y(buffer_output9A));
	or_gate32 or9 (.a(or_result9A), .x(or_result8A), .y(buffer_output10A));
	or_gate32 or10 (.a(or_result10A), .x(or_result9A), .y(buffer_output11A));
	or_gate32 or11 (.a(or_result11A), .x(or_result10A), .y(buffer_output12A));
	or_gate32 or12 (.a(or_result12A), .x(or_result11A), .y(buffer_output13A));
	or_gate32 or13 (.a(or_result13A), .x(or_result12A), .y(buffer_output14A));
	or_gate32 or14 (.a(or_result14A), .x(or_result13A), .y(buffer_output15A));
	or_gate32 or15 (.a(or_result15A), .x(or_result14A), .y(buffer_output16A));
	or_gate32 or16 (.a(or_result16A), .x(or_result15A), .y(buffer_output17A));
	or_gate32 or17 (.a(or_result17A), .x(or_result16A), .y(buffer_output18A));
	or_gate32 or18 (.a(or_result18A), .x(or_result17A), .y(buffer_output19A));
	or_gate32 or19 (.a(or_result19A), .x(or_result18A), .y(buffer_output20A));
	or_gate32 or20 (.a(or_result20A), .x(or_result19A), .y(buffer_output21A));
	or_gate32 or21 (.a(or_result21A), .x(or_result20A), .y(buffer_output22A));
	or_gate32 or22 (.a(or_result22A), .x(or_result21A), .y(buffer_output23A));
	or_gate32 or23 (.a(or_result23A), .x(or_result22A), .y(buffer_output24A));
	or_gate32 or24 (.a(or_result24A), .x(or_result23A), .y(buffer_output25A));
	or_gate32 or25 (.a(or_result25A), .x(or_result24A), .y(buffer_output26A));
	or_gate32 or26 (.a(or_result26A), .x(or_result25A), .y(buffer_output27A));
	or_gate32 or27 (.a(or_result27A), .x(or_result26A), .y(buffer_output28A));
	or_gate32 or28 (.a(or_result28A), .x(or_result27A), .y(buffer_output29A));
	or_gate32 or29 (.a(or_result29A), .x(or_result28A), .y(buffer_output30A));
	or_gate32 or30 (.a(data_readRegA), .x(or_result29A), .y(buffer_output31A));
	
	//or gate for B
	wire [31:0]or_result0B,or_result1B,or_result2B,or_result3B,or_result4B,or_result5B,or_result6B,or_result7B,or_result8B,or_result9B,or_result10B,or_result11B,or_result12B,or_result13B,or_result14B,or_result15B,or_result16B,or_result17B,or_result18B,or_result19B,or_result20B,or_result21B,or_result22B,or_result23B,or_result24B,or_result25B,or_result26B,or_result27B,	or_result28B,or_result29B;
	
	or_gate32 oor0 (.a(or_result0B), .x(buffer_output0B), .y(buffer_output1B));
	or_gate32 oor1 (.a(or_result1B), .x(or_result0B), .y(buffer_output2B));
	or_gate32 oor2 (.a(or_result2B), .x(or_result1B), .y(buffer_output3B));
	or_gate32 oor3 (.a(or_result3B), .x(or_result2B), .y(buffer_output4B));
	or_gate32 oor4 (.a(or_result4B), .x(or_result3B), .y(buffer_output5B));
	or_gate32 oor5 (.a(or_result5B), .x(or_result4B), .y(buffer_output6B));
	or_gate32 oor6 (.a(or_result6B), .x(or_result5B), .y(buffer_output7B));
	or_gate32 oor7 (.a(or_result7B), .x(or_result6B), .y(buffer_output8B));
	or_gate32 oor8 (.a(or_result8B), .x(or_result7B), .y(buffer_output9B));
	or_gate32 oor9 (.a(or_result9B), .x(or_result8B), .y(buffer_output10B));
	or_gate32 oor10 (.a(or_result10B), .x(or_result9B), .y(buffer_output11B));
	or_gate32 oor11 (.a(or_result11B), .x(or_result10B), .y(buffer_output12B));
	or_gate32 oor12 (.a(or_result12B), .x(or_result11B), .y(buffer_output13B));
	or_gate32 oor13 (.a(or_result13B), .x(or_result12B), .y(buffer_output14B));
	or_gate32 oor14 (.a(or_result14B), .x(or_result13B), .y(buffer_output15B));
	or_gate32 oor15 (.a(or_result15B), .x(or_result14B), .y(buffer_output16B));
	or_gate32 oor16 (.a(or_result16B), .x(or_result15B), .y(buffer_output17B));
	or_gate32 oor17 (.a(or_result17B), .x(or_result16B), .y(buffer_output18B));
	or_gate32 oor18 (.a(or_result18B), .x(or_result17B), .y(buffer_output19B));
	or_gate32 oor19 (.a(or_result19B), .x(or_result18B), .y(buffer_output20B));
	or_gate32 oor20 (.a(or_result20B), .x(or_result19B), .y(buffer_output21B));
	or_gate32 oor21 (.a(or_result21B), .x(or_result20B), .y(buffer_output22B));
	or_gate32 oor22 (.a(or_result22B), .x(or_result21B), .y(buffer_output23B));
	or_gate32 oor23 (.a(or_result23B), .x(or_result22B), .y(buffer_output24B));
	or_gate32 oor24 (.a(or_result24B), .x(or_result23B), .y(buffer_output25B));
	or_gate32 oor25 (.a(or_result25B), .x(or_result24B), .y(buffer_output26B));
	or_gate32 oor26 (.a(or_result26B), .x(or_result25B), .y(buffer_output27B));
	or_gate32 oor27 (.a(or_result27B), .x(or_result26B), .y(buffer_output28B));
	or_gate32 oor28 (.a(or_result28B), .x(or_result27B), .y(buffer_output29B));
	or_gate32 oor29 (.a(or_result29B), .x(or_result28B), .y(buffer_output30B));
	or_gate32 oor30 (.a(data_readRegB), .x(or_result29B), .y(buffer_output31B));
	*/
	
endmodule
