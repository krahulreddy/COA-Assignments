#Reverse a string
#K Rahul Reddy	171CO119
#Sushruth V	171CO148
#7 September 2018
#The string is "HELLO"

	.option nopic
	.data
	.global str
	.type str,@object
str:
	.byte 'H','E','L','L', 'O'
	.global rev
rev:						
	.space 5
	.text
	.global main
	.type main,@function
main:
	addi sp,sp,-16
	sd ra,8(sp)
	sd s0,0(sp)
	la t0,str
	add t2,sp,0 				
for1:						
	ld t1,0(t0) 				
	beq t1,x0,end_for1
	addi sp,sp,-1
	sb t1,0(sp)
	addi t0,t0,1
	jal x0, for1
end_for1:
	la t0,rev
for2:
	beq t2,sp,end_for2
	lb t1,0(sp)
	sw t1,0(t0)
	addi t0,t0,1
	addi sp,sp,1
	jal x0,for2
end_for2:
	lui a0,%hi(rev)
	addi a0,a0,%lo(rev)
	jal ra,printf
	ld s0,0(sp)
	ld ra,8(sp)
	addi sp,sp,16
	ret

