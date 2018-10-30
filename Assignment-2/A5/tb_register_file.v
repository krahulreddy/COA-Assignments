/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	25 October 2018

*/
`include "register_file.v"

module tb_register_file;
    initial begin
        $dumpfile("register_file.vcd");
        $dumpvars(0, tb_register_file);
    end
    wire [31:0] Read_Data1;
    wire [31:0] Read_Data2;
    reg Write;
    reg [4:0] Write_Register, Read_Register1, Read_Register2;
    reg [31:0] Register_Data;
    integer i, j;
    register_file inst (Read_Data1, Read_Data2, Write, Register_Data, Write_Register, Read_Register1, Read_Register2);
    initial begin
        Write = 1'b1;
        Read_Register1 = 5'b00000;
        Read_Register2 = 5'b00000;
        Write_Register = 5'b00011;
        Register_Data = 32'b10101011100010111101011010010101;
        for (i = 0; i < 31; i++) begin
        #10 Write = 1'b0;
            Write_Register = Write_Register + 1'b1;
            Register_Data = Register_Data + 1'b1;
            Write = 1'b1;
        end

    #10 Write = 1'b0;
    #10 Read_Register1 = 5'b00000;
    #10 Read_Register2 = 5'b00001;

        Write_Register = 5'b00000;
        Register_Data = 32'b00111001110011100111111110011110;
    
    #10 Write = 1'b1;
    
    #10 Write = 1'b0;

    #10 Write_Register = 5'b00001;
        Register_Data = 32'b11000000000100000000010000100000;
    #10 Write = 1'b1;
    
    #10 Write = 1'b0;
    #10 Read_Register1 = 5'b11010;
    #10 Read_Register2 = 5'b00011;
    
    #10 Read_Register1 = 5'b00110;
    #10 Read_Register2 = 5'b01001;
    
    #10 Read_Register1 = 5'b10101;
    #10 Read_Register2 = 5'b11101;
    
    #10 Read_Register1 = 5'b00110;
    #10 Read_Register2 = 5'b11001;
    #10;
       
    end
    initial begin
        $monitor("Read Register1 = %d\t\tRead Data1 = %d\nRead Register2 = %d\t\tRead Data2 = %d\n", Read_Register1, Read_Data1, Read_Register2, Read_Data2);
    end
endmodule