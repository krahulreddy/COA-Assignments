/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/

`include "halfAdder.v"

module fullAdder (output sum, output carry, input op1, input op2,input op3);
	wire tempSum,t1carry,t2carry;
	halfAdder inst1 (tempSum,t1carry,op1,op2);	// sum of first two bits
	halfAdder inst2 (sum,t2carry,tempSum,op3);	// calculating the sum
	assign carry = t1carry|t2carry;			// calculating the carry
endmodule
