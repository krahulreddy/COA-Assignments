#To find factorial of a number using loop
#K Rahul Reddy	171CO119
#Sushruth V	171CO148
#7 September 2018

	.option nopic
	.data
	.global num
	.size	num,8
num:
	.dword 3		#number = 3
	.text
	.global main
	.type main,@function
main:
	addi sp,sp,-16
	sd ra,8(sp)
	sd s0,0(sp)
	la t2,num
	ld t2,0(t2)
	li t1,0
	li t0,1			#factorial is stored in t0
for:
	addi t1,t1,1	#t1 is incremented in each loop
	mul t0,t0,t1
	blt t1,t2,for		#looping back to 'for'
	ld s0,0(sp)
	ld ra,8(sp)
	addi sp,sp,16
	jalr x0,0(ra)
	.global sum
	.type sum,@function

