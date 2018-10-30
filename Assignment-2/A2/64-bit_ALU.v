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

module ALU(output reg[63:0] Result, output reg Zero, output reg CarryOut, input[63:0] A, input[63:0] B, input CarryIn, input[3:0] Op);
    reg[63:0] a;
	reg[63:0] b;
    integer i;
	always@(A, B, CarryIn, Op) begin
		for(i = 0; i < 64; i++) begin
            a[i] = (~A[i] & Op[3]) | (A[i] & ~Op[3]);
		    b[i] = (~B[i] & Op[2]) | (B[i] & ~Op[2]);
        end
		if (Op[1:0] == 2'b00) begin
		    for(i = 0; i < 64; i++) 
                Result[i] = a[i] & b[i];        
		end
		if (Op[1:0] == 2'b01) begin
			for(i = 0; i < 64; i++) 
                Result[i] = a[i] | b[i];        
		end
		if (Op[1:0] == 2'b10) begin
			{CarryOut, Result} = Op[2] + a + b;
		end
		if(Result != 0)
            Zero = 0;
        if(Result == 0)
            Zero = 1;
	end
endmodule