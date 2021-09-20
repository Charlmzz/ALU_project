module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	wire [31:0] add_result,subtract_result,and_result,or_result,sll_result,sra_result;
	wire cout,add_overflow,subtract_overflow;
	adder_subtractor adder_subtractor_1(.a(data_operandA),.b(data_operandB),.cin(1'b0),.sum(add_result),.cout(cout),.overflow(add_overflow));
	adder_subtractor adder_subtractor_2(.a(data_operandA),.b(data_operandB),.cin(1'b1),.sum(subtract_result),.cout(cout),.overflow(subtract_overflow));
	and_gate32 and1(.a(and_result), .x(data_operandA), .y(data_operandB));
	or_gate32 or1(.a(or_result), .x(data_operandA), .y(data_operandB));
	
	//corresponding result
	
	mux8_32 mux1(.s0(ctrl_ALUopcode[0]), .s1(ctrl_ALUopcode[1]), .s2(ctrl_ALUopcode[2]), .in0(add_result), .in1(subtract_result), .in2(and_result), .in3(or_result),.in4(sll_result),.in5(sra_result),.in6(32'h00000000),.in7(32'h00000001), .out(data_result));
	//mux1_8 mux2(.s0(ctrl_ALUopcode[0]), .s1(ctrl_ALUopcode[1]), .s2(ctrl_ALUopcode[2]), .in0(add_overflow), .in1(subtract_overflow), .in2(1'b0), .in3(1'b0),.in4(1'b0),.in5(1'b0),.in6(1'b0),.in7(1'b0), .out(overflow));
	mux1bit_8 mux2(.s0(ctrl_ALUopcode[0]), .s1(ctrl_ALUopcode[1]), .s2(ctrl_ALUopcode[2]), .in0(add_overflow), .in1(subtract_overflow), .in2(1'b0), .in3(1'b0),.in4(1'b0),.in5(1'b0),.in6(1'b0),.in7(1'b0), .out(overflow));
	
endmodule
