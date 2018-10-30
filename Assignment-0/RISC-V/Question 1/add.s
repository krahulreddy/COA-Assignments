#Program to load two 64b constants from memory on to x5 and x6, add them and store the result in x7.
#K Rahul Reddy  171CO119
#Sushruth V     171CO148
#7 September 2018

	.option nopic
	.globl	a
	.align	2
	.type	a, @object
	.size	a, 8		#making 'a' 64 bit
a:
	.word	5
	.globl	b
	.align	2
	.type	b, @object
	.size	b, 8		#making 'b' 64 bit
b:
	.word	6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	lui	a5,%hi(a)
	lw	x6,%lo(a)(a5)	#accessing x6 from memory a
	lui	a5,%hi(b)
	lw	x6,%lo(b)(a5)	#accessing x6 from memory b
	addw	x7,x5,x6	#adding x5 and x6 and store in x7
	sw	x7,-20(s0)		#store
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
