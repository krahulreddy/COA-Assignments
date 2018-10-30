/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/
`include "halfAdder.v"

module main;
	initial begin
		$dumpfile("tb_halfAdder.vcd");	
		$dumpvars(0, main);
	end
	wire sum, carry;		//outputs
	reg op1,op2;			//inputs 	
	reg[3:0] n1;
	reg[3:0] n2;
	integer i;
	halfAdder inst (sum, carry, op1, op2);		//instantiating half adder
	initial begin
		n1 = 3;
		n2 = 5;
        	op1 = 1'b0;
        	op2 = 1'b0;
        	for (i = 0;i <= 3;i = i + 1) begin
        	#1	$display("Sum of %d and %d", n1[i], n2[i]);
		#1	op1=n1[i];	//input fields		
			op2=n2[i];

	    	#1	$display("Sum = %d\nCarry = %d\n", sum, carry);	// Displaying the sum and carry bits	
        end	
    end
endmodule

