module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	wire cout;
	adder_subtractor adder_subtractor_1(.a(data_operandA),.b(data_operandB),.cin(ctrl_ALUopcode[0]),.sum(data_result),.cout(cout),.overflow(overflow));
	
endmodule
