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
  
*We have not yet merged our checkpoint1 to main branch. We will do that after grading result releases.*
