/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/

`include "Dff.v"

module t_Dff;
	initial begin
		$dumpfile("Dff.vcd");
		$dumpvars(0, t_Dff);
	end 
	wire q, qn;		// outputs
	reg d, clk;		// inputs 
	reg res;		// reset
	Dff inst (q, qn, d, clk, res);		// D flip-flop instantiated
	initial begin		// D input for simulation
		d = 1'b0;
		repeat (30) begin
			#8 d = ~d;
		end
	end
	
	initial begin		// res input
		res = 1'b1;
		repeat (5) begin
			#27 res = ~res;
		end
	end	
	
	initial begin		// clk
		clk = 1'b0;
		repeat (30) begin
			#5 clk = ~clk;
		end
	end
	
	initial begin			//print result
		$monitor("%3t: d : %b clk : %b reset : %b    \t\t\t q : %b q' : %b\n", $time, d, clk, res, q, qn);	
	end
	
	
endmodule	
