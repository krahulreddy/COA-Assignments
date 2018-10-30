/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/
`include "encoder.v"
module tb_encoder;
	initial begin
		$dumpfile("tb_encoder.vcd");
		$dumpvars(0, tb_encoder);
	end	
	wire[0:3] out;		//output is a set of 3 wires
	reg[0:15] in;		// input is 16-bit register
	
	encoder inst (out, in);	// instantiating encoder module
	
	initial begin		// check for various input combinations
		in = 16'b0000000000000001;
		#10
		in = 16'b0000000000000010;
		#10
		in = 16'b0000000000000100;
		#10
		in = 16'b0000000000001000;
		#10
		in = 16'b0000000000010000;	
		#10
		in = 16'b0000000000100000;	
		#10
		in = 16'b0000000001000000;	
		#10
		in = 16'b0000000010000000;
		#10
		in = 16'b0000000100000000;		
		#10
		in = 16'b0000001000000000;	
		#10
		in = 16'b0000010000000000;	
		#10
		in = 16'b0000100000000000;	
		#10
		in = 16'b0001000000000000;
		#10
		in = 16'b0010000000000000;		
		#10
		in = 16'b0100000000000000;		
		#10
		in = 16'b1000000000000000;	
		#10;						
	end	
	initial begin			// print result
		$monitor("%t: input: %b output: %b", $time, in, out);	
	end
endmodule
