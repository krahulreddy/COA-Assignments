#Find the sum of elemets in the array
#K Rahul Reddy	171CO119
#Sushruth V	171CO148
#7 September 2018
#The elements are present in array variable

	.option nopic 
	.data
	.global a
array:
	.dword 7,5,9		#sum = 21 = 0x15
	.text
	.global main
	.type main,@function
main:
	addi sp,sp,-16
	sd ra,8(sp)
	sd s0,0(sp)
	li a0,3
	la a1,array
	jal ra,sum
	div t0,a1,a0					
	ld s0,0(sp)
	ld ra,8(sp)
	addi sp,sp,16
	jalr x0,0(ra)	
	.global sum
	.type sum,@function
sum:					#function to add the elements of the array
	addi sp,sp,-16
	sd ra,8(sp)
	sd s0,0(sp)
	mv t0,x0
	mv t1,x0
for:
	beq t0,a0,end_for
	ld t2,0(a1)
	add t1,t1,t2		#t1 will store the sum
	addi a1,a1,8
	addi t0,t0,1
	jal x0,for
end_for:
	mv a1,t1
	ld s0,0(sp)
	ld ra,8(sp)
	addi sp,sp,16
	jalr x0,0(ra)

