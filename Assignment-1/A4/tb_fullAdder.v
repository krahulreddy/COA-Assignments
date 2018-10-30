/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/
`include "fullAdder.v"

module main;
	initial begin
		$dumpfile("tb_fullAdder.vcd");	
		$dumpvars(0, main);
	end
	wire sum, carry;		//outputs
	reg op1,op2, op3;			//inputs 	
	reg[3:0] n1;
	reg[3:0] n2;
	reg[3:0] n3;
	integer i, j;
	fullAdder inst (sum, carry, op1, op2, op3);		//instantiating full adder
	initial begin
		n1 = 3;
		n2 = 5;
		n3 = 2;
        	op1 = 1'b0;
        	op2 = 1'b0;
		op3 = 1'b0;
        	for (j = 0;j <= 1;j = j + 1) begin
            		for(i = 0;i <= 3;i = i + 1) begin
                	#1	$display("Sum of %d, %d and %d",n1[i],n2[i],n3[j]);
			#1	op1=n1[i];		//input fields		
			    	op2=n2[i];
			    	op3=n3[j];
	    	    	#1	$display("Sum=%d\nCarry=%d\n",sum,carry);	// Displaying the sum and carry bits
			end
        	end
	end
endmodule
