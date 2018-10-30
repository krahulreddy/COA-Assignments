#add 10 two digit numbers stored in continuous memory locations(array)
#K Rahul Reddy -> 17CO119
#Sushruth V -> 17CO148
#Date -> 7/9/18

	.option nopic
	.data
	.globl array
array:
	.half 10,11,12,13,14,15,16,17,18,19     #10 two digit numbers(sum = 145 = (91)hex)
	.text
	.globl main
	.type main,@function
main:
	li x7,0
	li x6,10
	li x5,0
	la x28,array
loop:
	lh x29,0(x28)
	add x5,x5,x29       #add each element to x5(t0) register in loop
	addi x28,x28,2
	addi x7,x7,1
	ble x7,x6,loop      #loop executes 10 times
	ret
