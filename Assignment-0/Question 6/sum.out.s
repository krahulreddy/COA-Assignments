
a.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	37818193          	addi	gp,gp,888 # 12428 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c40 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c78 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1fc000ef          	jal	ra,102c0 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	14e50513          	addi	a0,a0,334 # 10216 <__libc_fini_array>
   100d0:	11a000ef          	jal	ra,101ea <atexit>
   100d4:	18a000ef          	jal	ra,1025e <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	1140006f          	j	101f6 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	c2850713          	addi	a4,a0,-984 # 11c28 <__TMC_END__>
   100f0:	c2878793          	addi	a5,a5,-984 # 11c28 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	c2850513          	addi	a0,a0,-984
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	c2878593          	addi	a1,a5,-984 # 11c28 <__TMC_END__>
   10114:	c2850793          	addi	a5,a0,-984 # 11c28 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	c2850513          	addi	a0,a0,-984
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11c40 <_edata>
   1013c:	eb15                	bnez	a4,10170 <__do_global_dtors_aux+0x38>
   1013e:	1141                	addi	sp,sp,-16
   10140:	e022                	sd	s0,0(sp)
   10142:	e406                	sd	ra,8(sp)
   10144:	843e                	mv	s0,a5
   10146:	fa3ff0ef          	jal	ra,100e8 <deregister_tm_clones>
   1014a:	000007b7          	lui	a5,0x0
   1014e:	00078793          	mv	a5,a5
   10152:	cb81                	beqz	a5,10162 <__do_global_dtors_aux+0x2a>
   10154:	6545                	lui	a0,0x11
   10156:	4b450513          	addi	a0,a0,1204 # 114b4 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11c40 <_edata>
   10168:	60a2                	ld	ra,8(sp)
   1016a:	6402                	ld	s0,0(sp)
   1016c:	0141                	addi	sp,sp,16
   1016e:	8082                	ret
   10170:	8082                	ret

0000000000010172 <frame_dummy>:
   10172:	000007b7          	lui	a5,0x0
   10176:	00078793          	mv	a5,a5
   1017a:	cf99                	beqz	a5,10198 <frame_dummy+0x26>
   1017c:	65c9                	lui	a1,0x12
   1017e:	6545                	lui	a0,0x11
   10180:	1141                	addi	sp,sp,-16
   10182:	c4858593          	addi	a1,a1,-952 # 11c48 <object.5217>
   10186:	4b450513          	addi	a0,a0,1204 # 114b4 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	1141                	addi	sp,sp,-16
   1019e:	e406                	sd	ra,8(sp)
   101a0:	e022                	sd	s0,0(sp)
   101a2:	450d                	li	a0,3
   101a4:	00001597          	auipc	a1,0x1
   101a8:	32458593          	addi	a1,a1,804 # 114c8 <__fini_array_end>
   101ac:	012000ef          	jal	ra,101be <sum>
   101b0:	02a5c2b3          	div	t0,a1,a0
   101b4:	6402                	ld	s0,0(sp)
   101b6:	60a2                	ld	ra,8(sp)
   101b8:	0141                	addi	sp,sp,16
   101ba:	00008067          	ret

00000000000101be <sum>:
   101be:	1141                	addi	sp,sp,-16
   101c0:	e406                	sd	ra,8(sp)
   101c2:	e022                	sd	s0,0(sp)
   101c4:	00000293          	li	t0,0
   101c8:	00000313          	li	t1,0

00000000000101cc <for>:
   101cc:	00a28963          	beq	t0,a0,101de <end_for>
   101d0:	0005b383          	ld	t2,0(a1)
   101d4:	931e                	add	t1,t1,t2
   101d6:	05a1                	addi	a1,a1,8
   101d8:	0285                	addi	t0,t0,1
   101da:	ff3ff06f          	j	101cc <for>

00000000000101de <end_for>:
   101de:	859a                	mv	a1,t1
   101e0:	6402                	ld	s0,0(sp)
   101e2:	60a2                	ld	ra,8(sp)
   101e4:	0141                	addi	sp,sp,16
   101e6:	00008067          	ret

00000000000101ea <atexit>:
   101ea:	85aa                	mv	a1,a0
   101ec:	4681                	li	a3,0
   101ee:	4601                	li	a2,0
   101f0:	4501                	li	a0,0
   101f2:	1780006f          	j	1036a <__register_exitproc>

00000000000101f6 <exit>:
   101f6:	1141                	addi	sp,sp,-16
   101f8:	4581                	li	a1,0
   101fa:	e022                	sd	s0,0(sp)
   101fc:	e406                	sd	ra,8(sp)
   101fe:	842a                	mv	s0,a0
   10200:	1d0000ef          	jal	ra,103d0 <__call_exitprocs>
   10204:	67c9                	lui	a5,0x12
   10206:	c307b503          	ld	a0,-976(a5) # 11c30 <_global_impure_ptr>
   1020a:	6d3c                	ld	a5,88(a0)
   1020c:	c391                	beqz	a5,10210 <exit+0x1a>
   1020e:	9782                	jalr	a5
   10210:	8522                	mv	a0,s0
   10212:	26e000ef          	jal	ra,10480 <_exit>

0000000000010216 <__libc_fini_array>:
   10216:	7179                	addi	sp,sp,-48
   10218:	67c5                	lui	a5,0x11
   1021a:	6745                	lui	a4,0x11
   1021c:	f022                	sd	s0,32(sp)
   1021e:	4c070713          	addi	a4,a4,1216 # 114c0 <__init_array_end>
   10222:	4c878413          	addi	s0,a5,1224 # 114c8 <__fini_array_end>
   10226:	8c19                	sub	s0,s0,a4
   10228:	ec26                	sd	s1,24(sp)
   1022a:	e84a                	sd	s2,16(sp)
   1022c:	e44e                	sd	s3,8(sp)
   1022e:	f406                	sd	ra,40(sp)
   10230:	840d                	srai	s0,s0,0x3
   10232:	4481                	li	s1,0
   10234:	4c878913          	addi	s2,a5,1224
   10238:	59e1                	li	s3,-8
   1023a:	00941a63          	bne	s0,s1,1024e <__libc_fini_array+0x38>
   1023e:	7402                	ld	s0,32(sp)
   10240:	70a2                	ld	ra,40(sp)
   10242:	64e2                	ld	s1,24(sp)
   10244:	6942                	ld	s2,16(sp)
   10246:	69a2                	ld	s3,8(sp)
   10248:	6145                	addi	sp,sp,48
   1024a:	e9dff06f          	j	100e6 <_fini>
   1024e:	033487b3          	mul	a5,s1,s3
   10252:	0485                	addi	s1,s1,1
   10254:	97ca                	add	a5,a5,s2
   10256:	ff87b783          	ld	a5,-8(a5)
   1025a:	9782                	jalr	a5
   1025c:	bff9                	j	1023a <__libc_fini_array+0x24>

000000000001025e <__libc_init_array>:
   1025e:	1101                	addi	sp,sp,-32
   10260:	e822                	sd	s0,16(sp)
   10262:	e426                	sd	s1,8(sp)
   10264:	6445                	lui	s0,0x11
   10266:	64c5                	lui	s1,0x11
   10268:	4b848793          	addi	a5,s1,1208 # 114b8 <__frame_dummy_init_array_entry>
   1026c:	4b840413          	addi	s0,s0,1208 # 114b8 <__frame_dummy_init_array_entry>
   10270:	8c1d                	sub	s0,s0,a5
   10272:	e04a                	sd	s2,0(sp)
   10274:	ec06                	sd	ra,24(sp)
   10276:	840d                	srai	s0,s0,0x3
   10278:	4b848493          	addi	s1,s1,1208
   1027c:	4901                	li	s2,0
   1027e:	02891763          	bne	s2,s0,102ac <__libc_init_array+0x4e>
   10282:	64c5                	lui	s1,0x11
   10284:	e63ff0ef          	jal	ra,100e6 <_fini>
   10288:	6445                	lui	s0,0x11
   1028a:	4b848793          	addi	a5,s1,1208 # 114b8 <__frame_dummy_init_array_entry>
   1028e:	4c040413          	addi	s0,s0,1216 # 114c0 <__init_array_end>
   10292:	8c1d                	sub	s0,s0,a5
   10294:	840d                	srai	s0,s0,0x3
   10296:	4b848493          	addi	s1,s1,1208
   1029a:	4901                	li	s2,0
   1029c:	00891d63          	bne	s2,s0,102b6 <__libc_init_array+0x58>
   102a0:	60e2                	ld	ra,24(sp)
   102a2:	6442                	ld	s0,16(sp)
   102a4:	64a2                	ld	s1,8(sp)
   102a6:	6902                	ld	s2,0(sp)
   102a8:	6105                	addi	sp,sp,32
   102aa:	8082                	ret
   102ac:	609c                	ld	a5,0(s1)
   102ae:	0905                	addi	s2,s2,1
   102b0:	04a1                	addi	s1,s1,8
   102b2:	9782                	jalr	a5
   102b4:	b7e9                	j	1027e <__libc_init_array+0x20>
   102b6:	609c                	ld	a5,0(s1)
   102b8:	0905                	addi	s2,s2,1
   102ba:	04a1                	addi	s1,s1,8
   102bc:	9782                	jalr	a5
   102be:	bff9                	j	1029c <__libc_init_array+0x3e>

00000000000102c0 <memset>:
   102c0:	433d                	li	t1,15
   102c2:	872a                	mv	a4,a0
   102c4:	02c37163          	bleu	a2,t1,102e6 <memset+0x26>
   102c8:	00f77793          	andi	a5,a4,15
   102cc:	e3c1                	bnez	a5,1034c <memset+0x8c>
   102ce:	e1bd                	bnez	a1,10334 <memset+0x74>
   102d0:	ff067693          	andi	a3,a2,-16
   102d4:	8a3d                	andi	a2,a2,15
   102d6:	96ba                	add	a3,a3,a4
   102d8:	e30c                	sd	a1,0(a4)
   102da:	e70c                	sd	a1,8(a4)
   102dc:	0741                	addi	a4,a4,16
   102de:	fed76de3          	bltu	a4,a3,102d8 <memset+0x18>
   102e2:	e211                	bnez	a2,102e6 <memset+0x26>
   102e4:	8082                	ret
   102e6:	40c306b3          	sub	a3,t1,a2
   102ea:	068a                	slli	a3,a3,0x2
   102ec:	00000297          	auipc	t0,0x0
   102f0:	9696                	add	a3,a3,t0
   102f2:	00a68067          	jr	10(a3)
   102f6:	00b70723          	sb	a1,14(a4)
   102fa:	00b706a3          	sb	a1,13(a4)
   102fe:	00b70623          	sb	a1,12(a4)
   10302:	00b705a3          	sb	a1,11(a4)
   10306:	00b70523          	sb	a1,10(a4)
   1030a:	00b704a3          	sb	a1,9(a4)
   1030e:	00b70423          	sb	a1,8(a4)
   10312:	00b703a3          	sb	a1,7(a4)
   10316:	00b70323          	sb	a1,6(a4)
   1031a:	00b702a3          	sb	a1,5(a4)
   1031e:	00b70223          	sb	a1,4(a4)
   10322:	00b701a3          	sb	a1,3(a4)
   10326:	00b70123          	sb	a1,2(a4)
   1032a:	00b700a3          	sb	a1,1(a4)
   1032e:	00b70023          	sb	a1,0(a4)
   10332:	8082                	ret
   10334:	0ff5f593          	andi	a1,a1,255
   10338:	00859693          	slli	a3,a1,0x8
   1033c:	8dd5                	or	a1,a1,a3
   1033e:	01059693          	slli	a3,a1,0x10
   10342:	8dd5                	or	a1,a1,a3
   10344:	02059693          	slli	a3,a1,0x20
   10348:	8dd5                	or	a1,a1,a3
   1034a:	b759                	j	102d0 <memset+0x10>
   1034c:	00279693          	slli	a3,a5,0x2
   10350:	00000297          	auipc	t0,0x0
   10354:	9696                	add	a3,a3,t0
   10356:	8286                	mv	t0,ra
   10358:	fa2680e7          	jalr	-94(a3)
   1035c:	8096                	mv	ra,t0
   1035e:	17c1                	addi	a5,a5,-16
   10360:	8f1d                	sub	a4,a4,a5
   10362:	963e                	add	a2,a2,a5
   10364:	f8c371e3          	bleu	a2,t1,102e6 <memset+0x26>
   10368:	b79d                	j	102ce <memset+0xe>

000000000001036a <__register_exitproc>:
   1036a:	67c9                	lui	a5,0x12
   1036c:	c307b703          	ld	a4,-976(a5) # 11c30 <_global_impure_ptr>
   10370:	832a                	mv	t1,a0
   10372:	1f873783          	ld	a5,504(a4)
   10376:	e789                	bnez	a5,10380 <__register_exitproc+0x16>
   10378:	20070793          	addi	a5,a4,512
   1037c:	1ef73c23          	sd	a5,504(a4)
   10380:	4798                	lw	a4,8(a5)
   10382:	487d                	li	a6,31
   10384:	557d                	li	a0,-1
   10386:	04e84463          	blt	a6,a4,103ce <__register_exitproc+0x64>
   1038a:	02030a63          	beqz	t1,103be <__register_exitproc+0x54>
   1038e:	00371813          	slli	a6,a4,0x3
   10392:	983e                	add	a6,a6,a5
   10394:	10c83823          	sd	a2,272(a6)
   10398:	3107a883          	lw	a7,784(a5)
   1039c:	4605                	li	a2,1
   1039e:	00e6163b          	sllw	a2,a2,a4
   103a2:	00c8e8b3          	or	a7,a7,a2
   103a6:	3117a823          	sw	a7,784(a5)
   103aa:	20d83823          	sd	a3,528(a6)
   103ae:	4689                	li	a3,2
   103b0:	00d31763          	bne	t1,a3,103be <__register_exitproc+0x54>
   103b4:	3147a683          	lw	a3,788(a5)
   103b8:	8e55                	or	a2,a2,a3
   103ba:	30c7aa23          	sw	a2,788(a5)
   103be:	0017069b          	addiw	a3,a4,1
   103c2:	0709                	addi	a4,a4,2
   103c4:	070e                	slli	a4,a4,0x3
   103c6:	c794                	sw	a3,8(a5)
   103c8:	97ba                	add	a5,a5,a4
   103ca:	e38c                	sd	a1,0(a5)
   103cc:	4501                	li	a0,0
   103ce:	8082                	ret

00000000000103d0 <__call_exitprocs>:
   103d0:	715d                	addi	sp,sp,-80
   103d2:	67c9                	lui	a5,0x12
   103d4:	f44e                	sd	s3,40(sp)
   103d6:	c307b983          	ld	s3,-976(a5) # 11c30 <_global_impure_ptr>
   103da:	f052                	sd	s4,32(sp)
   103dc:	ec56                	sd	s5,24(sp)
   103de:	e85a                	sd	s6,16(sp)
   103e0:	e486                	sd	ra,72(sp)
   103e2:	e0a2                	sd	s0,64(sp)
   103e4:	fc26                	sd	s1,56(sp)
   103e6:	f84a                	sd	s2,48(sp)
   103e8:	e45e                	sd	s7,8(sp)
   103ea:	8aaa                	mv	s5,a0
   103ec:	8a2e                	mv	s4,a1
   103ee:	4b05                	li	s6,1
   103f0:	1f89b403          	ld	s0,504(s3)
   103f4:	c801                	beqz	s0,10404 <__call_exitprocs+0x34>
   103f6:	4404                	lw	s1,8(s0)
   103f8:	34fd                	addiw	s1,s1,-1
   103fa:	00349913          	slli	s2,s1,0x3
   103fe:	9922                	add	s2,s2,s0
   10400:	0004dd63          	bgez	s1,1041a <__call_exitprocs+0x4a>
   10404:	60a6                	ld	ra,72(sp)
   10406:	6406                	ld	s0,64(sp)
   10408:	74e2                	ld	s1,56(sp)
   1040a:	7942                	ld	s2,48(sp)
   1040c:	79a2                	ld	s3,40(sp)
   1040e:	7a02                	ld	s4,32(sp)
   10410:	6ae2                	ld	s5,24(sp)
   10412:	6b42                	ld	s6,16(sp)
   10414:	6ba2                	ld	s7,8(sp)
   10416:	6161                	addi	sp,sp,80
   10418:	8082                	ret
   1041a:	000a0963          	beqz	s4,1042c <__call_exitprocs+0x5c>
   1041e:	21093783          	ld	a5,528(s2)
   10422:	01478563          	beq	a5,s4,1042c <__call_exitprocs+0x5c>
   10426:	34fd                	addiw	s1,s1,-1
   10428:	1961                	addi	s2,s2,-8
   1042a:	bfd9                	j	10400 <__call_exitprocs+0x30>
   1042c:	441c                	lw	a5,8(s0)
   1042e:	01093683          	ld	a3,16(s2)
   10432:	37fd                	addiw	a5,a5,-1
   10434:	02979663          	bne	a5,s1,10460 <__call_exitprocs+0x90>
   10438:	c404                	sw	s1,8(s0)
   1043a:	d6f5                	beqz	a3,10426 <__call_exitprocs+0x56>
   1043c:	31042703          	lw	a4,784(s0)
   10440:	009b163b          	sllw	a2,s6,s1
   10444:	00842b83          	lw	s7,8(s0)
   10448:	8f71                	and	a4,a4,a2
   1044a:	2701                	sext.w	a4,a4
   1044c:	ef09                	bnez	a4,10466 <__call_exitprocs+0x96>
   1044e:	9682                	jalr	a3
   10450:	4418                	lw	a4,8(s0)
   10452:	1f89b783          	ld	a5,504(s3)
   10456:	f9771de3          	bne	a4,s7,103f0 <__call_exitprocs+0x20>
   1045a:	fcf406e3          	beq	s0,a5,10426 <__call_exitprocs+0x56>
   1045e:	bf49                	j	103f0 <__call_exitprocs+0x20>
   10460:	00093823          	sd	zero,16(s2)
   10464:	bfd9                	j	1043a <__call_exitprocs+0x6a>
   10466:	31442783          	lw	a5,788(s0)
   1046a:	11093583          	ld	a1,272(s2)
   1046e:	8ff1                	and	a5,a5,a2
   10470:	2781                	sext.w	a5,a5
   10472:	e781                	bnez	a5,1047a <__call_exitprocs+0xaa>
   10474:	8556                	mv	a0,s5
   10476:	9682                	jalr	a3
   10478:	bfe1                	j	10450 <__call_exitprocs+0x80>
   1047a:	852e                	mv	a0,a1
   1047c:	9682                	jalr	a3
   1047e:	bfc9                	j	10450 <__call_exitprocs+0x80>

0000000000010480 <_exit>:
   10480:	4581                	li	a1,0
   10482:	4601                	li	a2,0
   10484:	4681                	li	a3,0
   10486:	4701                	li	a4,0
   10488:	4781                	li	a5,0
   1048a:	05d00893          	li	a7,93
   1048e:	00000073          	ecall
   10492:	00055c63          	bgez	a0,104aa <_exit+0x2a>
   10496:	1141                	addi	sp,sp,-16
   10498:	e022                	sd	s0,0(sp)
   1049a:	842a                	mv	s0,a0
   1049c:	e406                	sd	ra,8(sp)
   1049e:	4080043b          	negw	s0,s0
   104a2:	00a000ef          	jal	ra,104ac <__errno>
   104a6:	c100                	sw	s0,0(a0)
   104a8:	a001                	j	104a8 <_exit+0x28>
   104aa:	a001                	j	104aa <_exit+0x2a>

00000000000104ac <__errno>:
   104ac:	8101b503          	ld	a0,-2032(gp) # 11c38 <_impure_ptr>
   104b0:	8082                	ret

Disassembly of section .eh_frame:

00000000000114b4 <__EH_FRAME_BEGIN__>:
   114b4:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000114b8 <__frame_dummy_init_array_entry>:
   114b8:	0172                	slli	sp,sp,0x1c
   114ba:	0001                	nop
   114bc:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000114c0 <__do_global_dtors_aux_fini_array_entry>:
   114c0:	0138                	addi	a4,sp,136
   114c2:	0001                	nop
   114c4:	0000                	unimp
	...

Disassembly of section .data:

00000000000114c8 <array>:
   114c8:	00000007          	0x7
   114cc:	0000                	unimp
   114ce:	0000                	unimp
   114d0:	0005                	c.nop	1
   114d2:	0000                	unimp
   114d4:	0000                	unimp
   114d6:	0000                	unimp
   114d8:	0009                	c.nop	2
   114da:	0000                	unimp
   114dc:	0000                	unimp
	...

00000000000114e0 <impure_data>:
	...
   114e8:	1a18                	addi	a4,sp,304
   114ea:	0001                	nop
   114ec:	0000                	unimp
   114ee:	0000                	unimp
   114f0:	1ac8                	addi	a0,sp,372
   114f2:	0001                	nop
   114f4:	0000                	unimp
   114f6:	0000                	unimp
   114f8:	1b78                	addi	a4,sp,444
   114fa:	0001                	nop
	...
   115c8:	0001                	nop
   115ca:	0000                	unimp
   115cc:	0000                	unimp
   115ce:	0000                	unimp
   115d0:	330e                	fld	ft6,224(sp)
   115d2:	abcd                	j	11bc4 <impure_data+0x6e4>
   115d4:	1234                	addi	a3,sp,296
   115d6:	e66d                	bnez	a2,116c0 <impure_data+0x1e0>
   115d8:	deec                	sw	a1,124(a3)
   115da:	0005                	c.nop	1
   115dc:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011c28 <__TMC_END__>:
	...

0000000000011c30 <_global_impure_ptr>:
   11c30:	14e0                	addi	s0,sp,620
   11c32:	0001                	nop
   11c34:	0000                	unimp
	...

0000000000011c38 <_impure_ptr>:
   11c38:	14e0                	addi	s0,sp,620
   11c3a:	0001                	nop
   11c3c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011c40 <__bss_start>:
	...

0000000000011c48 <object.5217>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3720                	fld	fs0,104(a4)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
