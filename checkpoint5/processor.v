/**
 * READ THIS DESCRIPTION!
 *
 * The processor takes in several inputs from a skeleton file.
 *
 * Inputs
 * clock: this is the clock for your processor at 50 MHz
 * reset: we should be able to assert a reset to start your pc from 0 (sync or
 * async is fine)
 *
 * Imem: input data from imem
 * Dmem: input data from dmem
 * Regfile: input data from regfile
 *
 * Outputs
 * Imem: output control signals to interface with imem
 * Dmem: output control signals and data to interface with dmem
 * Regfile: output control signals and data to interface with regfile
 *
 * Notes
 *
 * Ultimately, your processor will be tested by subsituting a master skeleton, imem, dmem, so the
 * testbench can see which controls signal you active when. Therefore, there needs to be a way to
 * "inject" imem, dmem, and regfile interfaces from some external controller module. The skeleton
 * file acts as a small wrapper around your processor for this purpose.
 *
 * You will need to figure out how to instantiate two memory elements, called
 * "syncram," in Quartus: one for imem and one for dmem. Each should take in a
 * 12-bit address and allow for storing a 32-bit value at each address. Each
 * should have a single clock.
 *
 * Each memory element should have a corresponding .mif file that initializes
 * the memory element to certain value on start up. These should be named
 * imem.mif and dmem.mif respectively.
 *
 * Importantly, these .mif files should be placed at the top level, i.e. there
 * should be an imem.mif and a dmem.mif at the same level as process.v. You
 * should figure out how to point your generated imem.v and dmem.v files at
 * these MIF files.
 *
 * imem
 * Inputs:  12-bit address, 1-bit clock enable, and a clock
 * Outputs: 32-bit instruction
 *
 * dmem
 * Inputs:  12-bit address, 1-bit clock, 32-bit data, 1-bit write enable
 * Outputs: 32-bit data at the given address
 *
 */
module processor(
    // Control signals
    clock,                          // I: The master clock
    reset,                          // I: A reset signal

    // Imem
    address_imem,                   // O: The address of the data to get from imem
    q_imem,                         // I: The data from imem

    // Dmem
    address_dmem,                   // O: The address of the data to get or put from/to dmem
    data,                           // O: The data to write to dmem
    wren,                           // O: Write enable for dmem
    q_dmem,                         // I: The data from dmem

    // Regfile
    ctrl_writeEnable,               // O: Write enable for regfile
    ctrl_writeReg,                  // O: Register to write to in regfile
    ctrl_readRegA,                  // O: Register to read from port A of regfile
    ctrl_readRegB,                  // O: Register to read from port B of regfile
    data_writeReg,                  // O: Data to write to for regfile
    data_readRegA,                  // I: Data from port A of regfile
    data_readRegB,                   // I: Data from port B of regfile
	 aluresult_overdatamem,
	 Rwd,
	 opCode,
	 aluOp,
	 printq_imem,
	 //test
	 j,
	 bne,
	 PC,
	 PC_next,//
	 PC_plus_1,
	 temp1,temp2,temp3,
	 PC_extended_N_1,//
	 isNotEqual,isLessThan,overflow
);
output [31:0]aluresult_overdatamem;
output Rwd;
output opCode,aluOp;
output [31:0]printq_imem=q_imem;

    // Control signals
    input clock, reset;

    // Imem
    output [11:0] address_imem;
    input [31:0] q_imem;

    // Dmem
    output [11:0] address_dmem;
    output [31:0] data;
    output wren;
    input [31:0] q_dmem;

    // Regfile
    output ctrl_writeEnable;//√
    output [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;//√
    output [31:0] data_writeReg;//√
    input [31:0] data_readRegA, data_readRegB;
//==================================================
    /* YOUR CODE STARTS HERE */
	// =================================================
	
	 reg[11:0] control;
  wire[4:0] opCode = q_imem[31:27];
  wire[4:0] aluOp = q_imem[6:2];//aluopcode
  reg enable_30;
  always@(opCode)
  begin
   case({opCode})
    5'b00000:     //R Type
     begin
      case({aluOp})
       5'b00000:begin
			control = 12'b000000000110;//BR JR ALUinB ALUop DMwe Rwe Rdst Rwd
			enable_30=1;end
       5'b00001:begin
			control = 12'b000000010110;// 11 10   9    XXXXX  3   2   1   0
		  	enable_30=1;end
       5'b00010:begin
			control = 12'b000000100110;
			enable_30=0;end
       5'b00011:begin
			control = 12'b000000110110;
			enable_30=0;end
       5'b00100:begin
			control = 12'b000001000110;
			enable_30=0;end
       5'b00101:begin
			control = 12'b000001010110;
			enable_30=0;end
       default: 
		 begin
			control = 12'b000001010110;
			enable_30=0;end
	endcase
	end
    5'b00101:begin 
				control= 12'b001000000100;   //addi
					enable_30=1;end
    5'b00111: begin
					control= 12'b0010000010xx;   //sw
					enable_30=0;end
    5'b01000: begin
					control= 12'b001000000101;   //lw
					enable_30=0;end
    default: begin 
					control=12'b000000000000;
					enable_30=0;
					end

	endcase
  end
  
  
  
  
  
  //********************************************************
  //********************************************************
  //********************************************************
  wire jal,jr,blt,bex,setx;
  output wire j,bne;
  output wire[31:0]PC_next,PC,PC_plus_1,PC_extended_N_1;
  assign j=(opCode==5'b00001)?1'b1:1'b0;
  assign bne=(opCode==5'b00010)?1'b1:1'b0;
  assign jal=(opCode==5'b00011)?1'b1:1'b0;
  assign jr=(opCode==5'b00100)?1'b1:1'b0;
  assign blt=(opCode==5'b00110)?1'b1:1'b0;
  assign bex=(opCode==5'b10110)?1'b1:1'b0;
  assign setx=(opCode==5'b10101)?1'b1:1'b0;
  
  
  wire[26:0] T;
  assign T=q_imem[26:0];
  
  wire[31:0]extended_T;
  assign extended_T={{5{1'b0}},T[26:0]};
  
  output wire[31:0]temp1,temp2,temp3;
  assign temp1=(j||jal||(bex&&isNotEqual))? extended_T : PC_plus_1;
  assign temp2=(bne&&isNotEqual)? PC_extended_N_1:temp1;
  assign temp3=(blt&&isLessThan)?PC_extended_N_1:temp2;
  assign PC_next=(jr)?data_readRegA:temp3;
  
  
  wire [31:0]extended_N;
  dffe_32 mydffe(PC, PC_next, clock, 1'b1,reset);
  
  assign extended_N={{15{1'b0}},immediate[16:0]};
  
  assign PC_extended_N_1=PC+extended_N+1'b1;
  assign PC_plus_1=PC+1'b1; 
  //********************************************************
  //********************************************************
  //********************************************************
  
  
  

  //********************************************************
  //********************************************************
  //********************************************************
  
	assign address_imem = PC[11:0];
	//BR JR ALUinB ALUop DMwe Rwe Rdst Rwd
	// 11 10   9    XXXXX  3   2   1   0
	wire DMwe,Rwe,Rwd;
	assign Rwd=control[0];//这个后面需要  Rwd
	assign Rwe=control[2];
	wire ALUinB_mux;
	assign ALUinB_mux=control[9];//这个后面需要

	wire [4:0]shamt;
	

 
	//wire [4:0]Rd,Rs,Rt;
	assign DMwe=control[3];//这个后面需要  DMwe
	
   assign ctrl_writeEnable = Rwe || jal || setx; //Rwe//overflow & enable_30
   assign ctrl_writeReg = (setx)?5'b11110:((jal)?5'b11111:((overflow & enable_30) ? 5'b11110 : q_imem[26:22])); //Rd         // O: Register to write to in regfile
   
	
	//assign ctrl_writeReg=q_imem[26:22];
	assign ctrl_readRegA = (jr)?q_imem[26:22]:((bex)?5'b11110:((bne||blt)?q_imem[26:22]:q_imem[21:17]));    //Rs  *******     // O: Register to read from port A of regfile
	assign ctrl_readRegB = (bex)?5'b00000:((bne||blt)?q_imem[21:17]:( DMwe ? q_imem[26:22]:q_imem[16:12]));//Rt *******			// O: Register to read from port B of regfile
	assign shamt[4:0]=q_imem[11:7];
  

  //=========================I-type
  //========================signal_extended
  wire [16:0]immediate;
  wire [31:0]extended_data;
  assign immediate[16:0]=q_imem[16:0];
  
  assign extended_data={{15{immediate[16]}},immediate[16:0]};
  
  //**regfile**
  //================decide if R type(opcode00000) or I type===============
	wire [4:0]alu_opcode;
	assign alu_opcode=(opCode==5'b00000)?  aluOp:5'b00000;
  
  wire[31:0]data_readRegB_aftermux;
	mux2to1_32 m1(.select(ALUinB_mux),.in0(data_readRegB),.in1(extended_data),.out(data_readRegB_aftermux));
	//================================================================
	output wire isNotEqual,isLessThan,overflow;
	alu a1(.data_operandA(data_readRegA), .data_operandB(data_readRegB_aftermux), .ctrl_ALUopcode(alu_opcode),
   .ctrl_shiftamt(shamt), .data_result(aluresult_overdatamem), .isNotEqual(isNotEqual), .isLessThan(isLessThan), .overflow(overflow));
	//===============================================================
	//module mux2to1_32(.select(Rwd),.in0(aluresult_over_datamem),.in1(q_dmem),.out(data_writeReg));
  
  
  assign data_writeReg = (setx)?extended_T:((jal)?PC_plus_1:(Rwd ? q_dmem:((~(overflow & enable_30))?aluresult_overdatamem:((opCode==5'd0 & aluOp==5'd0)?32'd1:((opCode==5'd0 & aluOp==5'd1)?32'd3:32'd2)))));
	
	
	//if(Rwd)
		//data_writeReg<=q_dmem;
	//else //begin
		//if(overflow & enable_30)begin
			//if(opCode==5'd0 & aluOp==5'd0)
				//data_writeReg<=32'd1;
			//else if(opCode==5'b00101)
				//data_writeReg<=32'd2;
			//else if(opCode==5'd0 & aluOp==5'd1)
				//data_writeReg<=32'd3;
		//end 
		//else 
		//data_writeReg<=aluresult_overdatamem;
	//end
	
	
	//select 0选左边 1选右边
  
  
  
	//**Dmem**
	assign address_dmem=aluresult_overdatamem[11:0];
	assign data=data_readRegB;
	assign wren=DMwe;//Wren=DMwe


endmodule
