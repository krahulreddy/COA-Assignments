#This program prints "Hello World!!" to the output screen
#K Rahul Reddy -> 17CO119
#Sushruth V -> 17CO148
#Date -> 7/9/18


	.section	.rodata
	.align	3
.LC0:
	.string "Hello World!!\n"	#String constant
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
	lui	a5, %hi(.LC0)
	addi	a0, a5, %lo(.LC0)
	call	printf				#printf call
	nop
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	addi	sp, sp, 16
	jr	ra
	.size	main, .-main
