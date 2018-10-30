/*
        K Rahul Reddy	17CO119
        Sushruth V	17CO148
        24 October 2018

        funct7[5] and funct3[2:0] are required to identify operation.
*/
module CU(output [3:0] Op, input[1:0] ALU_Op, input[6:0] funct7, input[2:0] funct3);
    wire F0 = funct3[0];
    wire F1 = funct3[1];
    wire F2 = funct3[2];
    wire F3 = funct7[5]; 
    assign Op[3] = 0;
    assign Op[2] = ALU_Op[0] | (ALU_Op[1] & F3 & ~F2 & ~F1 & ~F0);
    assign Op[1] = ~F1 | ~ALU_Op[1];
    assign Op[0] = ALU_Op[1] & F1 & ~F0;
endmodule