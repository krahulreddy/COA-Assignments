/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	25 October 2018

*/

module Reg32b (input [31:0] Data_Write , input Write, output reg [31:0] Data);
    
    initial begin
        Data <= 32'b00000000000000000000000000000000;
    end

    always @ (Write or Data_Write) begin
        if (Write == 1'b1)
            Data <= Data_Write;
        else
            Data <= Data;
    end
endmodule