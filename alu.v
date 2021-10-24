module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	wire [31:0] add_result,subtract_result,and_result,or_result,sll_result,sra_result;
	wire cout1,cout2,add_overflow,subtract_overflow;
	
	//add subtract
	adder_subtractor adder_subtractor_1(.a(data_operandA),.b(data_operandB),.cin(1'b0),.sum(add_result),.cout(cout1),.overflow(add_overflow));
	adder_subtractor adder_subtractor_2(.a(data_operandA),.b(data_operandB),.cin(1'b1),.sum(subtract_result),.cout(cout2),.overflow(subtract_overflow));
	
	//and or
	and_gate32 and1(.a(and_result), .x(data_operandA), .y(data_operandB));
	or_gate32 or1(.a(or_result), .x(data_operandA), .y(data_operandB));
	
	//sll sra
	sll_1 sll1(.a(data_operandA), .amt(ctrl_shiftamt), .out(sll_result));
	sra_1 sra1(.a(data_operandA), .amt(ctrl_shiftamt), .out(sra_result));
	
	
	
	//corresponding result
	mux8_32 mux1(.s0(ctrl_ALUopcode[0]), .s1(ctrl_ALUopcode[1]), .s2(ctrl_ALUopcode[2]), .in0(add_result), .in1(subtract_result), .in2(and_result), .in3(or_result),.in4(sll_result),.in5(sra_result),.in6(32'h00000000),.in7(32'h00000001), .out(data_result));
	
	//isNotEqual
	//assign isNotEqual = (subtract_result==32'h00000000)? 0 : 1;
	isNotEqual_gate32 g1(.out(isNotEqual), .x(subtract_result), .y(32'h00000000));
	
	//isLessThan
	//assign isLessThan = (subtract_overflow==1'b0)? subtract_result[31] : data_operandA[31];
	mux_1 mux3(.select(subtract_overflow), .in0(subtract_result[31]), .in1(data_operandA[31]), .out(isLessThan));
	
	//overflow
	mux1bit_8 mux2(.s0(ctrl_ALUopcode[0]), .s1(ctrl_ALUopcode[1]), .s2(ctrl_ALUopcode[2]), .in0(add_overflow), .in1(subtract_overflow), .in2(1'b0), .in3(1'b0),.in4(1'b0),.in5(1'b0),.in6(1'b0),.in7(1'b0), .out(overflow));
	//mux_1 mux2(.select(ctrl_ALUopcode[0]), .in0(add_overflow), .in1(subtract_overflow), .out(overflow));
	
endmodule
