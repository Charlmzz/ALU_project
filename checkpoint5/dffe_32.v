module dffe_32(q, d, clk, en,clr);//D flip-flop enable
   
   //Inputs
   input [31:0]d;
	input clk, en, clr;//clk,en: 1bit
   
   //Output
   output [31:0]q;
   
	
	
   //Register
   reg [31:0]q;
	
   //Intialize q to 0
   initial
   begin
       q = 32'h00000000;
   end
	
	
   //Set value of q on positive edge of the clock or clear
   always @(posedge clk or posedge clr) begin
		if(clr) begin
			  q <= 32'h00000000;
       //If enable is high, set q to the value of d
		 end else if (en) begin
           q <= d;
       end
   end
endmodule
