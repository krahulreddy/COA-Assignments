#Program to load to constants from the memory, add them and store them in the 100th doubleword of data segment
#K Rahul Reddy 171CO119
#Sushruth V    171CO148
#7 September 2018

	.option nopic
	.data
	.size a,8
a: 
	.dword 9
	.text
	.align 1
	.global main
	.type main,@function
main:
	addi    sp,sp,-32
        sd      s0,24(sp)
        addi    s0,sp,32
	la t0,a			#loading constant to location pointed by global pointer 
	ld t0,0(t0)
	ld t1,0(sp)		#loading constant to data segment
	add t2,t0,t1		#adding
	addi sp,sp,-800
	sd t2,0(sp)		#storing in 100th doubleword of data segment
	nop
        ld      s0,24(sp)
        addi    sp,sp,32
        jr      ra
        .size   main, .-main

