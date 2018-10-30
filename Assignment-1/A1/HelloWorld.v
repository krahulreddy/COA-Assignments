/*
	K Rahul Reddy	17CO119
	Sushruth V	17CO148
	15 October 2018
*/

module helloWorld;
integer i;
	initial begin;
	 	for(i = 0;i < 100;i = i + 1)begin
			#1 $display("Hello World!\tTime : %3d\n",$time);
		end
	end
endmodule
