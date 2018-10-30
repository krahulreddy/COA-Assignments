/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	24 October 2018

    We toggle A, B, CarryIn, Op code to get all possible cases.
    CarryOut is not calculated for 'AND' and 'OR' operations.
    Op codes of the form 'xx11' are not evaluated. i.e, SLT not implemented.
*/
`include "1-bit_ALU.v"

module tb_one_bit_ALU;
    initial begin
        $dumpfile("one_bit_ALU.vcd");
        $dumpvars(0, tb_one_bit_ALU);
    end
    wire Result, Zero, CarryOut;
    reg A, B, CarryIn;
    reg[3:0] Op;
    integer i;
    one_bit_ALU oba (Result, Zero, CarryOut, A, B, CarryIn, Op[3:0]);
    initial begin
        B = 0;
        repeat (128) begin
        #1   B = ~B;
        end
    end
    initial begin
        A = 0;
        repeat (64) begin
        #2   A = ~A;
        end
    end
    initial begin
        CarryIn = 0;
        repeat (32) begin
        #4   CarryIn = ~CarryIn;
        end
    end
    initial begin
        Op = 4'b0000;
        repeat (16) begin
        #8   Op = Op + 1'b1;
        end       
    end

    initial begin
    for(i = 0; i < 128; i++)
    #1  $display("\nTime = %4d\nA = %3d\t\tB = %3d\nOp Code = %4b\t\tCarry In = %3b\n\nResult = %3d\t\tZero = %3d\t\tCarry Out = %b\n", $time,  A, B, Op[3:0], CarryIn,  Result, Zero, CarryOut);
        
    end
endmodule