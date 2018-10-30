
a.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	34018193          	addi	gp,gp,832 # 123f0 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c08 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c40 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1de000ef          	jal	ra,102a2 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	13050513          	addi	a0,a0,304 # 101f8 <__libc_fini_array>
   100d0:	0fc000ef          	jal	ra,101cc <atexit>
   100d4:	16c000ef          	jal	ra,10240 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0c6000ef          	jal	ra,101a4 <main>
   100e2:	0f60006f          	j	101d8 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	bf050713          	addi	a4,a0,-1040 # 11bf0 <__TMC_END__>
   100f0:	bf078793          	addi	a5,a5,-1040 # 11bf0 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	bf050513          	addi	a0,a0,-1040
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	bf078593          	addi	a1,a5,-1040 # 11bf0 <__TMC_END__>
   10114:	bf050793          	addi	a5,a0,-1040 # 11bf0 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	bf050513          	addi	a0,a0,-1040
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11c08 <_edata>
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
   10156:	49450513          	addi	a0,a0,1172 # 11494 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11c08 <_edata>
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
   10182:	c1058593          	addi	a1,a1,-1008 # 11c10 <object.5217>
   10186:	49450513          	addi	a0,a0,1172 # 11494 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <a>:
   1019c:	0005                	c.nop	1
	...

00000000000101a0 <b>:
   101a0:	0006                	c.slli	zero,0x1
	...

00000000000101a4 <main>:
   101a4:	1101                	addi	sp,sp,-32
   101a6:	ec22                	sd	s0,24(sp)
   101a8:	1000                	addi	s0,sp,32
   101aa:	000107b7          	lui	a5,0x10
   101ae:	19c7a303          	lw	t1,412(a5) # 1019c <a>
   101b2:	000107b7          	lui	a5,0x10
   101b6:	1a07a303          	lw	t1,416(a5) # 101a0 <b>
   101ba:	006283bb          	addw	t2,t0,t1
   101be:	fe742623          	sw	t2,-20(s0)
   101c2:	0001                	nop
   101c4:	6462                	ld	s0,24(sp)
   101c6:	6105                	addi	sp,sp,32
   101c8:	8082                	ret
	...

00000000000101cc <atexit>:
   101cc:	85aa                	mv	a1,a0
   101ce:	4681                	li	a3,0
   101d0:	4601                	li	a2,0
   101d2:	4501                	li	a0,0
   101d4:	1780006f          	j	1034c <__register_exitproc>

00000000000101d8 <exit>:
   101d8:	1141                	addi	sp,sp,-16
   101da:	4581                	li	a1,0
   101dc:	e022                	sd	s0,0(sp)
   101de:	e406                	sd	ra,8(sp)
   101e0:	842a                	mv	s0,a0
   101e2:	1d0000ef          	jal	ra,103b2 <__call_exitprocs>
   101e6:	67c9                	lui	a5,0x12
   101e8:	bf87b503          	ld	a0,-1032(a5) # 11bf8 <_global_impure_ptr>
   101ec:	6d3c                	ld	a5,88(a0)
   101ee:	c391                	beqz	a5,101f2 <exit+0x1a>
   101f0:	9782                	jalr	a5
   101f2:	8522                	mv	a0,s0
   101f4:	26e000ef          	jal	ra,10462 <_exit>

00000000000101f8 <__libc_fini_array>:
   101f8:	7179                	addi	sp,sp,-48
   101fa:	67c5                	lui	a5,0x11
   101fc:	6745                	lui	a4,0x11
   101fe:	f022                	sd	s0,32(sp)
   10200:	4a070713          	addi	a4,a4,1184 # 114a0 <__init_array_end>
   10204:	4a878413          	addi	s0,a5,1192 # 114a8 <__fini_array_end>
   10208:	8c19                	sub	s0,s0,a4
   1020a:	ec26                	sd	s1,24(sp)
   1020c:	e84a                	sd	s2,16(sp)
   1020e:	e44e                	sd	s3,8(sp)
   10210:	f406                	sd	ra,40(sp)
   10212:	840d                	srai	s0,s0,0x3
   10214:	4481                	li	s1,0
   10216:	4a878913          	addi	s2,a5,1192
   1021a:	59e1                	li	s3,-8
   1021c:	00941a63          	bne	s0,s1,10230 <__libc_fini_array+0x38>
   10220:	7402                	ld	s0,32(sp)
   10222:	70a2                	ld	ra,40(sp)
   10224:	64e2                	ld	s1,24(sp)
   10226:	6942                	ld	s2,16(sp)
   10228:	69a2                	ld	s3,8(sp)
   1022a:	6145                	addi	sp,sp,48
   1022c:	ebbff06f          	j	100e6 <_fini>
   10230:	033487b3          	mul	a5,s1,s3
   10234:	0485                	addi	s1,s1,1
   10236:	97ca                	add	a5,a5,s2
   10238:	ff87b783          	ld	a5,-8(a5)
   1023c:	9782                	jalr	a5
   1023e:	bff9                	j	1021c <__libc_fini_array+0x24>

0000000000010240 <__libc_init_array>:
   10240:	1101                	addi	sp,sp,-32
   10242:	e822                	sd	s0,16(sp)
   10244:	e426                	sd	s1,8(sp)
   10246:	6445                	lui	s0,0x11
   10248:	64c5                	lui	s1,0x11
   1024a:	49848793          	addi	a5,s1,1176 # 11498 <__frame_dummy_init_array_entry>
   1024e:	49840413          	addi	s0,s0,1176 # 11498 <__frame_dummy_init_array_entry>
   10252:	8c1d                	sub	s0,s0,a5
   10254:	e04a                	sd	s2,0(sp)
   10256:	ec06                	sd	ra,24(sp)
   10258:	840d                	srai	s0,s0,0x3
   1025a:	49848493          	addi	s1,s1,1176
   1025e:	4901                	li	s2,0
   10260:	02891763          	bne	s2,s0,1028e <__libc_init_array+0x4e>
   10264:	64c5                	lui	s1,0x11
   10266:	e81ff0ef          	jal	ra,100e6 <_fini>
   1026a:	6445                	lui	s0,0x11
   1026c:	49848793          	addi	a5,s1,1176 # 11498 <__frame_dummy_init_array_entry>
   10270:	4a040413          	addi	s0,s0,1184 # 114a0 <__init_array_end>
   10274:	8c1d                	sub	s0,s0,a5
   10276:	840d                	srai	s0,s0,0x3
   10278:	49848493          	addi	s1,s1,1176
   1027c:	4901                	li	s2,0
   1027e:	00891d63          	bne	s2,s0,10298 <__libc_init_array+0x58>
   10282:	60e2                	ld	ra,24(sp)
   10284:	6442                	ld	s0,16(sp)
   10286:	64a2                	ld	s1,8(sp)
   10288:	6902                	ld	s2,0(sp)
   1028a:	6105                	addi	sp,sp,32
   1028c:	8082                	ret
   1028e:	609c                	ld	a5,0(s1)
   10290:	0905                	addi	s2,s2,1
   10292:	04a1                	addi	s1,s1,8
   10294:	9782                	jalr	a5
   10296:	b7e9                	j	10260 <__libc_init_array+0x20>
   10298:	609c                	ld	a5,0(s1)
   1029a:	0905                	addi	s2,s2,1
   1029c:	04a1                	addi	s1,s1,8
   1029e:	9782                	jalr	a5
   102a0:	bff9                	j	1027e <__libc_init_array+0x3e>

00000000000102a2 <memset>:
   102a2:	433d                	li	t1,15
   102a4:	872a                	mv	a4,a0
   102a6:	02c37163          	bleu	a2,t1,102c8 <memset+0x26>
   102aa:	00f77793          	andi	a5,a4,15
   102ae:	e3c1                	bnez	a5,1032e <memset+0x8c>
   102b0:	e1bd                	bnez	a1,10316 <memset+0x74>
   102b2:	ff067693          	andi	a3,a2,-16
   102b6:	8a3d                	andi	a2,a2,15
   102b8:	96ba                	add	a3,a3,a4
   102ba:	e30c                	sd	a1,0(a4)
   102bc:	e70c                	sd	a1,8(a4)
   102be:	0741                	addi	a4,a4,16
   102c0:	fed76de3          	bltu	a4,a3,102ba <memset+0x18>
   102c4:	e211                	bnez	a2,102c8 <memset+0x26>
   102c6:	8082                	ret
   102c8:	40c306b3          	sub	a3,t1,a2
   102cc:	068a                	slli	a3,a3,0x2
   102ce:	00000297          	auipc	t0,0x0
   102d2:	9696                	add	a3,a3,t0
   102d4:	00a68067          	jr	10(a3)
   102d8:	00b70723          	sb	a1,14(a4)
   102dc:	00b706a3          	sb	a1,13(a4)
   102e0:	00b70623          	sb	a1,12(a4)
   102e4:	00b705a3          	sb	a1,11(a4)
   102e8:	00b70523          	sb	a1,10(a4)
   102ec:	00b704a3          	sb	a1,9(a4)
   102f0:	00b70423          	sb	a1,8(a4)
   102f4:	00b703a3          	sb	a1,7(a4)
   102f8:	00b70323          	sb	a1,6(a4)
   102fc:	00b702a3          	sb	a1,5(a4)
   10300:	00b70223          	sb	a1,4(a4)
   10304:	00b701a3          	sb	a1,3(a4)
   10308:	00b70123          	sb	a1,2(a4)
   1030c:	00b700a3          	sb	a1,1(a4)
   10310:	00b70023          	sb	a1,0(a4)
   10314:	8082                	ret
   10316:	0ff5f593          	andi	a1,a1,255
   1031a:	00859693          	slli	a3,a1,0x8
   1031e:	8dd5                	or	a1,a1,a3
   10320:	01059693          	slli	a3,a1,0x10
   10324:	8dd5                	or	a1,a1,a3
   10326:	02059693          	slli	a3,a1,0x20
   1032a:	8dd5                	or	a1,a1,a3
   1032c:	b759                	j	102b2 <memset+0x10>
   1032e:	00279693          	slli	a3,a5,0x2
   10332:	00000297          	auipc	t0,0x0
   10336:	9696                	add	a3,a3,t0
   10338:	8286                	mv	t0,ra
   1033a:	fa2680e7          	jalr	-94(a3)
   1033e:	8096                	mv	ra,t0
   10340:	17c1                	addi	a5,a5,-16
   10342:	8f1d                	sub	a4,a4,a5
   10344:	963e                	add	a2,a2,a5
   10346:	f8c371e3          	bleu	a2,t1,102c8 <memset+0x26>
   1034a:	b79d                	j	102b0 <memset+0xe>

000000000001034c <__register_exitproc>:
   1034c:	67c9                	lui	a5,0x12
   1034e:	bf87b703          	ld	a4,-1032(a5) # 11bf8 <_global_impure_ptr>
   10352:	832a                	mv	t1,a0
   10354:	1f873783          	ld	a5,504(a4)
   10358:	e789                	bnez	a5,10362 <__register_exitproc+0x16>
   1035a:	20070793          	addi	a5,a4,512
   1035e:	1ef73c23          	sd	a5,504(a4)
   10362:	4798                	lw	a4,8(a5)
   10364:	487d                	li	a6,31
   10366:	557d                	li	a0,-1
   10368:	04e84463          	blt	a6,a4,103b0 <__register_exitproc+0x64>
   1036c:	02030a63          	beqz	t1,103a0 <__register_exitproc+0x54>
   10370:	00371813          	slli	a6,a4,0x3
   10374:	983e                	add	a6,a6,a5
   10376:	10c83823          	sd	a2,272(a6)
   1037a:	3107a883          	lw	a7,784(a5)
   1037e:	4605                	li	a2,1
   10380:	00e6163b          	sllw	a2,a2,a4
   10384:	00c8e8b3          	or	a7,a7,a2
   10388:	3117a823          	sw	a7,784(a5)
   1038c:	20d83823          	sd	a3,528(a6)
   10390:	4689                	li	a3,2
   10392:	00d31763          	bne	t1,a3,103a0 <__register_exitproc+0x54>
   10396:	3147a683          	lw	a3,788(a5)
   1039a:	8e55                	or	a2,a2,a3
   1039c:	30c7aa23          	sw	a2,788(a5)
   103a0:	0017069b          	addiw	a3,a4,1
   103a4:	0709                	addi	a4,a4,2
   103a6:	070e                	slli	a4,a4,0x3
   103a8:	c794                	sw	a3,8(a5)
   103aa:	97ba                	add	a5,a5,a4
   103ac:	e38c                	sd	a1,0(a5)
   103ae:	4501                	li	a0,0
   103b0:	8082                	ret

00000000000103b2 <__call_exitprocs>:
   103b2:	715d                	addi	sp,sp,-80
   103b4:	67c9                	lui	a5,0x12
   103b6:	f44e                	sd	s3,40(sp)
   103b8:	bf87b983          	ld	s3,-1032(a5) # 11bf8 <_global_impure_ptr>
   103bc:	f052                	sd	s4,32(sp)
   103be:	ec56                	sd	s5,24(sp)
   103c0:	e85a                	sd	s6,16(sp)
   103c2:	e486                	sd	ra,72(sp)
   103c4:	e0a2                	sd	s0,64(sp)
   103c6:	fc26                	sd	s1,56(sp)
   103c8:	f84a                	sd	s2,48(sp)
   103ca:	e45e                	sd	s7,8(sp)
   103cc:	8aaa                	mv	s5,a0
   103ce:	8a2e                	mv	s4,a1
   103d0:	4b05                	li	s6,1
   103d2:	1f89b403          	ld	s0,504(s3)
   103d6:	c801                	beqz	s0,103e6 <__call_exitprocs+0x34>
   103d8:	4404                	lw	s1,8(s0)
   103da:	34fd                	addiw	s1,s1,-1
   103dc:	00349913          	slli	s2,s1,0x3
   103e0:	9922                	add	s2,s2,s0
   103e2:	0004dd63          	bgez	s1,103fc <__call_exitprocs+0x4a>
   103e6:	60a6                	ld	ra,72(sp)
   103e8:	6406                	ld	s0,64(sp)
   103ea:	74e2                	ld	s1,56(sp)
   103ec:	7942                	ld	s2,48(sp)
   103ee:	79a2                	ld	s3,40(sp)
   103f0:	7a02                	ld	s4,32(sp)
   103f2:	6ae2                	ld	s5,24(sp)
   103f4:	6b42                	ld	s6,16(sp)
   103f6:	6ba2                	ld	s7,8(sp)
   103f8:	6161                	addi	sp,sp,80
   103fa:	8082                	ret
   103fc:	000a0963          	beqz	s4,1040e <__call_exitprocs+0x5c>
   10400:	21093783          	ld	a5,528(s2)
   10404:	01478563          	beq	a5,s4,1040e <__call_exitprocs+0x5c>
   10408:	34fd                	addiw	s1,s1,-1
   1040a:	1961                	addi	s2,s2,-8
   1040c:	bfd9                	j	103e2 <__call_exitprocs+0x30>
   1040e:	441c                	lw	a5,8(s0)
   10410:	01093683          	ld	a3,16(s2)
   10414:	37fd                	addiw	a5,a5,-1
   10416:	02979663          	bne	a5,s1,10442 <__call_exitprocs+0x90>
   1041a:	c404                	sw	s1,8(s0)
   1041c:	d6f5                	beqz	a3,10408 <__call_exitprocs+0x56>
   1041e:	31042703          	lw	a4,784(s0)
   10422:	009b163b          	sllw	a2,s6,s1
   10426:	00842b83          	lw	s7,8(s0)
   1042a:	8f71                	and	a4,a4,a2
   1042c:	2701                	sext.w	a4,a4
   1042e:	ef09                	bnez	a4,10448 <__call_exitprocs+0x96>
   10430:	9682                	jalr	a3
   10432:	4418                	lw	a4,8(s0)
   10434:	1f89b783          	ld	a5,504(s3)
   10438:	f9771de3          	bne	a4,s7,103d2 <__call_exitprocs+0x20>
   1043c:	fcf406e3          	beq	s0,a5,10408 <__call_exitprocs+0x56>
   10440:	bf49                	j	103d2 <__call_exitprocs+0x20>
   10442:	00093823          	sd	zero,16(s2)
   10446:	bfd9                	j	1041c <__call_exitprocs+0x6a>
   10448:	31442783          	lw	a5,788(s0)
   1044c:	11093583          	ld	a1,272(s2)
   10450:	8ff1                	and	a5,a5,a2
   10452:	2781                	sext.w	a5,a5
   10454:	e781                	bnez	a5,1045c <__call_exitprocs+0xaa>
   10456:	8556                	mv	a0,s5
   10458:	9682                	jalr	a3
   1045a:	bfe1                	j	10432 <__call_exitprocs+0x80>
   1045c:	852e                	mv	a0,a1
   1045e:	9682                	jalr	a3
   10460:	bfc9                	j	10432 <__call_exitprocs+0x80>

0000000000010462 <_exit>:
   10462:	4581                	li	a1,0
   10464:	4601                	li	a2,0
   10466:	4681                	li	a3,0
   10468:	4701                	li	a4,0
   1046a:	4781                	li	a5,0
   1046c:	05d00893          	li	a7,93
   10470:	00000073          	ecall
   10474:	00055c63          	bgez	a0,1048c <_exit+0x2a>
   10478:	1141                	addi	sp,sp,-16
   1047a:	e022                	sd	s0,0(sp)
   1047c:	842a                	mv	s0,a0
   1047e:	e406                	sd	ra,8(sp)
   10480:	4080043b          	negw	s0,s0
   10484:	00a000ef          	jal	ra,1048e <__errno>
   10488:	c100                	sw	s0,0(a0)
   1048a:	a001                	j	1048a <_exit+0x28>
   1048c:	a001                	j	1048c <_exit+0x2a>

000000000001048e <__errno>:
   1048e:	8101b503          	ld	a0,-2032(gp) # 11c00 <_impure_ptr>
   10492:	8082                	ret

Disassembly of section .eh_frame:

0000000000011494 <__EH_FRAME_BEGIN__>:
   11494:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011498 <__frame_dummy_init_array_entry>:
   11498:	0172                	slli	sp,sp,0x1c
   1149a:	0001                	nop
   1149c:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000114a0 <__do_global_dtors_aux_fini_array_entry>:
   114a0:	0138                	addi	a4,sp,136
   114a2:	0001                	nop
   114a4:	0000                	unimp
	...

Disassembly of section .data:

00000000000114a8 <impure_data>:
	...
   114b0:	19e0                	addi	s0,sp,252
   114b2:	0001                	nop
   114b4:	0000                	unimp
   114b6:	0000                	unimp
   114b8:	1a90                	addi	a2,sp,368
   114ba:	0001                	nop
   114bc:	0000                	unimp
   114be:	0000                	unimp
   114c0:	1b40                	addi	s0,sp,436
   114c2:	0001                	nop
	...
   11590:	0001                	nop
   11592:	0000                	unimp
   11594:	0000                	unimp
   11596:	0000                	unimp
   11598:	330e                	fld	ft6,224(sp)
   1159a:	abcd                	j	11b8c <impure_data+0x6e4>
   1159c:	1234                	addi	a3,sp,296
   1159e:	e66d                	bnez	a2,11688 <impure_data+0x1e0>
   115a0:	deec                	sw	a1,124(a3)
   115a2:	0005                	c.nop	1
   115a4:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011bf0 <__TMC_END__>:
	...

0000000000011bf8 <_global_impure_ptr>:
   11bf8:	14a8                	addi	a0,sp,616
   11bfa:	0001                	nop
   11bfc:	0000                	unimp
	...

0000000000011c00 <_impure_ptr>:
   11c00:	14a8                	addi	a0,sp,616
   11c02:	0001                	nop
   11c04:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011c08 <__bss_start>:
	...

0000000000011c10 <object.5217>:
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
