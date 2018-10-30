/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	24 October 2018
*/
`include "64-bit_ALU.v"

module tb_ALU;
    initial begin
        $dumpfile("ALU.vcd");
        $dumpvars(0, tb_ALU);
    end
    reg[63:0] A;
    reg[63:0] B;
    wire[63:0] Result;
    reg CarryIn;
    reg[3:0] Op;
    wire Zero, CarryOut; 
    integer i;
    ALU alu1(Result, Zero, CarryOut, A, B, CarryIn, Op);
    initial begin
        CarryIn = 0;
        repeat (32) begin
        #1   CarryIn = ~CarryIn;
        end
    end
    initial begin
        Op = 4'b0000;
        repeat (16) begin
        #2   Op = Op + 1'b1;
        end       
    end
    initial begin
    A = 64'h1;
    B = 64'h2;
    //CarryIn = 0;
    //Op = 4'b0010;
    #1;
    for(i = 0; i < 32; i++)
    #1  $display("Time = %4d\nA = %10d\t\tB = %10d\nOp Code = %4b\t\tCarry In = %3b\n\nResult = %10h\t\tZero = %3d\t\tCarry Out = %b\n", $time, A[63:0], B[63:0], Op[3:0], CarryIn,  Result[63:0], Zero, CarryOut);

    end
endmodule