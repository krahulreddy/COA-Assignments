/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/

module Dff (output q, output  qn, input d, input clk, input res);
	reg clkn;
	wire qi, qni;
	wire new_d;
	assign new_d = d & res;
	D inst1 (qi, qni, new_d, clkn);		// D-latch 1
	D inst2 (q, qn, qi, clk);		// D-latch 2
	// complement of clock
	always @ (clk) begin
		clkn <= ~clk;
	end
endmodule



module SR (output reg q, output reg qn, input r, input s);	//SR-latch
	always @(q, qn, r, s) begin
		q <= ~ (qn | r);	//NOR gate SR-latch
		qn <= ~ (q | s);	
	end
endmodule


module D (output q, output qn, input d, input clk);		//D-latch
	reg r, s;
	SR SR1 (q, qn, r, s);
	always @ (r, s, d, clk) begin
		r <= (~ d) & clk;
		s <= d & clk;
	end
endmodule 









