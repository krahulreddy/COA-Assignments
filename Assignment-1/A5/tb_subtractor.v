/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/

`include "fullAdder.v"

module tb_Subtractor;
	initial begin
		$dumpfile("Sub.vcd");	
		$dumpvars(0, tb_Subtractor);
	end	
	wire sum, carry;		//outputs
	reg op1, op2, op3;		//inputs
	//n1 and n2 are the numbers. By replacing 3 by (n-1), we can add n-bit numbers.
	reg[3:0] n1;
	reg[3:0] n2;	
	reg imm;		// Immediate value
	integer i;	
	fullAdder inst (sum, carry, op1, op2, op3);	// Full Adder thread instantiated
	initial begin
		n1=6;	//random values n1 and n2
		n2=9;		
		imm=1;		
		op1=1'b0;
		op2=1'b0;
		op3=1'b0;
		$display("%d -%d = ",n1,n2);
		$display("Bits from LSB to MSB in order are as follows");
		//3 must be replaced by (n - 1)
		for (i=0;i<=3;i=i+1) begin
		#10	op1=n1[i];				
			op2=~n2[i];
			op3=imm;
			assign imm=carry;
		#10	$display("%b",sum);	// Displaying the sum bit
		end	
		
		$display("%b",~carry);	// displaying the last carry bit 
	end		
endmodule

