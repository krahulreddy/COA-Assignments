/*
        K Rahul Reddy	17CO119
        Sushruth V	17CO148
        24 October 2018
*/
`include "CU.v"
`include "64-bit_ALU.v"

module tb_ALU;
    initial begin
        $dumpfile("ALU.vcd");
        $dumpvars(0, tb_ALU);
    end
    reg[1:0] ALU_Op;
    reg[6:0] funct7;
    reg[2:0] funct3;
    wire[3:0] Op;
    integer i, j;
    reg[63:0] A;
    reg[63:0] B;
    wire[63:0] Result;
    reg CarryIn;
    wire Zero, CarryOut;
    CU inst(Op, ALU_Op, funct7, funct3);
    ALU alu1(Result, Zero, CarryOut, A, B, CarryIn, Op);
    initial begin
    for(j = 0; j < 4; j++) begin
    #20 ALU_Op = 2'b00;
        CarryIn = Op[2];
        funct7 = 7'b0100111;
        funct3 = 3'b111;
        $display("Case 0: Add(ALU_Op code)\n\n");
    #20    ALU_Op = 2'b01;
        CarryIn = Op[2];
        funct7 = 7'b0000000;
        funct3 = 3'b111;
        $display("Case 1: Subtract(ALU_Op code)\n\n");
    #20 ALU_Op = 2'b10;
        CarryIn = Op[2];
        funct7 = 7'b0000000;
        funct3 = 3'b000;
        $display("Case 2: Add(R-type)\n\n");
    #20 ALU_Op = 2'b10;
        CarryIn = Op[2];
        funct7 = 7'b0100000;
        funct3 = 3'b000;
        $display("Case 3: Subtract(R-type)\n\n");
    #20 ALU_Op = 2'b10;
        CarryIn = Op[2];
        funct7 = 7'b0000000;
        funct3 = 3'b111;
        $display("Case 4: And(R-type)\n\n");
    #20 ALU_Op = 2'b10;
        CarryIn = Op[2];
        funct7 = 7'b0000000;
        funct3 = 3'b110;
        $display("Case 5: Or(R-type)\n\n");
    end
    end
    initial begin
        A = 1;                                  //A= 1
        B = -64'h1;                             //B = -1
    #120
        A = 64'h7fffffffffffffff;                             //A = max
        B = 1;                                                //B = 1
    #120
        A = 64'h7fffffffffffffff;               //A = max
        B = 64'h8000000000000000;               //b = min
    #120
        A = 0;
        B = 0;
    end
    initial begin
    #1;
        for(i = 0; i < 24; i++) begin
    #20     $display("ALU_Op = %3b\t\tfunct7 = %8b\t\tfunct3 = %4b\n\nOpcode = %b\n", ALU_Op, funct7, funct3, Op);
            $display("Time = %4d\nA = %10h\t\tB = %10h\t\tCarry In = %3b\n\nResult = %10h\t\tZero = %3d\t\tCarry Out = %b\n\n\n", $time, A[63:0], B[63:0], CarryIn,  Result[63:0], Zero, CarryOut);
        end
    end
endmodule