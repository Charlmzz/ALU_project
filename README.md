# Project 1
**Project of designing an ALU for 550**

Charlene Han yh317  
Kaiyuan Li kl406  

## Checkpoint 1 branch description  
In checkpoint 1 we used two 1-bit full adders to construct a 2-bit RCA.  
We then used three 2-bit RCAs and a 2:1 mux to implement a 4-bit CSA.  
We used three 4-bit CSAs to construct a 8-bit CSA, followed by constructing a 16-bit CSA  
using three 8-bit CSAs, so that we were able to use three 16-bit CSAs to construct  
a 32-bit CSA.    
We then built an adder/subtractor using this 32-bit CSA, in which a mux was used to determine   
if the second input, b, should be inverted to perform a "plus negtive (which is a subtraction)"   
based on the last bit of the ALUopcode passed in from alu.v -- if the last bit is a 1 indicating 
a subtraction, the inverted b will be selected. This last bit of ALUopcode is also passed in to 
the adder as the cin since we need to take 2's complement of b and a "1" needs to be added.
  
To manage overflows, we added an output for each RCA and CSA to track the carry out of the first 
full adder in each RCA. Thus, when we implement the 32-bit CSA, we output a 16-bit result named prevout 
of every other full adder's cout concatenated together. In this case, the Cin for the last 32nd bit 
addition simply equals to the 16th bit of prevout. In the adder/subtractor, after the final cout is 
calculated, we put this cout and 16th bit of prevout into an XOR gate, and the result is the overflow.
  
After we implemented this above architecture, we only need to call the adder/subtractor 
module in alu.v to perform 32-bit addition and subtraction.
  
We also added a few more test cases to our testbench and all our test cases were passed.

## Checkpoint2 branch description

Based on checkpoint1, we added bitwise AND & OR, plus a 32-bit barrel shifter with SLL (Logical Left Shift) 
and SRA (Arithmetic Right Shift). The two 1 bit flags, isLessThan and isNotEqual are aslwo added. 
  
To implement AND & OR, we called both AND and OR gates for each bit of two inputs, and the result 
for each bitwise operation is stored at corresponding result bit.  
  
To implement SLL and SRA, we used 5 layers to build the shifter. Each layer consists of 32 muxes. 
For layer 1, select is ctrl_shiftamt[0], and it will perform a 1 bit shift if select is 1.
For layer 2, select is ctrl_shiftamt[1], and it will perform another 2 bit shift if select is 1.
For layer 3, select is ctrl_shiftamt[2], and it will perform another 4 bit shift if select is 1.
For layer 4, select is ctrl_shiftamt[3], and it will perform another 8 bit shift if select is 1.
For layer 5, select is ctrl_shiftamt[4], and it will perform another 16 bit shift if select is 1.
Thus, with the five layers, the shifter can perform a shift up to 31 bits.

To implement isNotEqual, we used 32 1-bit and gate to and subtract result with 32-bit 0s. We then 
used 16 or gates to or the 32-bit and result 2 by 2. We kept doing this until only 1 output was 
reached, and this 1-bit output is our desired value for isNotEqual. To implement isLessThan, we 
used a 1-bit 2:1 mux. The select is the overflow from subtract operation. The in0 is the highest 
bit of subtract_result (subtract_result[31]) if subtract_overflow equals to 0; and in1 is the highest 
bit of data_operandA (data_operandA[31]), based on the truth table we drew.

To select the correct operation output, we wrote an 32-bit 8:1 mux (which was built from 2:1 muxes) 
to select the corresponding operation result based on last 3 bits of ctrl_ALUopcode.

*We have not yet merged our checkpoint2 to main branch. We will do that after grading result releases.*
