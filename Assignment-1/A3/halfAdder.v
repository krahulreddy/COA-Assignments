/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/


module halfAdder (output reg sum, output reg carry, input op1, input op2);
	always @ (op1 or op2) begin		//if inputs are 0 and 0, thread is not executed
		sum = op1 ^ op2;		// sum bit of two operands
		carry = op1 & op2;		// carry bit of two operands
	end
endmodule
