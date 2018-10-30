/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	24 October 2018

	Op-Code : 4-bits
	bit 1 : neg_A
	bit 2 : neg_B
	bit 3,4 : indicate component
				00 => and
				01 => or
				10 => add

*/

module one_bit_ALU(output reg Result, output reg Zero, output reg CarryOut, input A, input B, input CarryIn, input[3:0] Op);
	reg a;
	reg b;
	always@(A, B, CarryIn, Op) begin
		a = (~A & Op[3]) | (A & ~Op[3]);
		b = (~B & Op[2]) | (B & ~Op[2]);
		if (Op[1:0] == 2'b00) begin
			Result = a & b;
		end
		if (Op[1:0] == 2'b01) begin
			Result = a | b;
		end
		if (Op[1:0] == 2'b10) begin
			{CarryOut, Result} = Op[2] + a + b;
		end
		Zero = ~Result;
	end
endmodule