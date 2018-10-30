/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/

`include "decoder.v"

module four_16BitDecoder;
	initial begin
		$dumpfile("tb_decoder.vcd");
		$dumpvars(0, four_16BitDecoder);
	end
	wire [0:15] out;		// output is a collection of 15 wires
	reg [0:3] in;			// input is 4-bit register
	decoder inst (out, in);		// instantiating decoder module
	
	initial begin			// check for various input combinations
		in = 4'b0000;
	#10	in = 4'b0001;	
	#10	in = 4'b0010;
	#10	in = 4'b0011;	
	#10	in = 4'b0100;
	#10	in = 4'b0101;	
	#10	in = 4'b0110;
	#10	in = 4'b0111;
	#10	in = 4'b1000;
	#10	in = 4'b1001;	
	#10	in = 4'b1010;
	#10	in = 4'b1011;	
	#10	in = 4'b1100;
	#10	in = 4'b1101;	
	#10	in = 4'b1110;
	#10	in = 4'b1111;	
	#10;					
	end	
	
	initial begin			// print result
		 $monitor("input: %b output: %b", in, out);	
	end
endmodule


