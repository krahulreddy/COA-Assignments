/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/

`include "Reg32b.v"

module t_Reg32b;
	initial begin
		$dumpfile("Reg32b.vcd");
		$dumpvars(0, t_Reg32b);
	end
	wire [0:31] data_out;		// outputs 
	reg [0:31] data_in;		// inputs 
	reg clk;			// clock
	reg res;			// reset
	Reg32b inst (data_out, data_in, clk, res);	// 32 bit Register instantiated
	integer i;
	// check for various input combinations
	initial begin
		data_in = 32'b0000000000000000000000000000111;
		clk = 1'b0;
		res = 1'b1;
			
		for (i = 1; i <= 20; i = i + 1) begin
    		#6 data_in = data_in + 1'b1;
   		end
			
	end	

	// tweaking reset bit signal
	initial begin
		#10 res = 1'b1;
		#24 res = 1'b0;
		#10 res = 1'b1;
	end
	

	initial begin
		repeat (30) begin	//Clock signal
			#5 clk = ~ clk;
		end
	end
	
	initial begin	// print result
		$monitor("%3t : data in : %b clk : %b reset : %b \t\t\t data out : %b \n", $time, data_in, clk, res, data_out);	
	end
	
	
endmodule	
