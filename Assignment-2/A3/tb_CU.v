/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	24 October 2018
*/
`include "CU.v"

module tb_CU;
    initial begin
        $dumpfile("CU.vcd");
        $dumpvars(0, tb_CU);
    end
    reg[1:0] ALU_Op;
    reg[6:0] funct7;
    reg[2:0] funct3;
    wire[3:0] Op;
    integer i;
    CU inst(Op, ALU_Op, funct7, funct3);
    initial begin
    #20   ALU_Op = 2'b00;
        funct7 = 7'b0100111;
        funct3 = 3'b111;
        $display("Case 0: Add(ALU_Op code)");
    #20    ALU_Op = 2'b01;
        funct7 = 7'b0000000;
        funct3 = 3'b111;
        $display("Case 1: Subtract(ALU_Op code)");
    #20 ALU_Op = 2'b10;
        funct7 = 7'b0000000;
        funct3 = 3'b000;
        $display("Case 2: Add(R-type)");
    #20 ALU_Op = 2'b10;
        funct7 = 7'b0100000;
        funct3 = 3'b000;
        $display("Case 3: Subtract(R-type)");
    #20 ALU_Op = 2'b10;
        funct7 = 7'b0000000;
        funct3 = 3'b111;
        $display("Case 4: And(R-type)");
    #20 ALU_Op = 2'b10;
        funct7 = 7'b0000000;
        funct3 = 3'b110;
        $display("Case 5: Or(R-type)");
    #20;
    end
    initial begin
        for(i = 0; i < 6; i++)
    #21    $display("ALU_Op = %3b\t\tfunct7 = %8b\t\tfunct3 = %4b\n\nOpcode = %b\n", ALU_Op, funct7, funct3, Op);
    end
endmodule