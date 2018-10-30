
a.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	34818193          	addi	gp,gp,840 # 123f8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c10 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c48 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1cc000ef          	jal	ra,10290 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	11e50513          	addi	a0,a0,286 # 101e6 <__libc_fini_array>
   100d0:	0ea000ef          	jal	ra,101ba <atexit>
   100d4:	15a000ef          	jal	ra,1022e <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	0e40006f          	j	101c6 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	bf850713          	addi	a4,a0,-1032 # 11bf8 <__TMC_END__>
   100f0:	bf878793          	addi	a5,a5,-1032 # 11bf8 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	bf850513          	addi	a0,a0,-1032
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	bf878593          	addi	a1,a5,-1032 # 11bf8 <__TMC_END__>
   10114:	bf850793          	addi	a5,a0,-1032 # 11bf8 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	bf850513          	addi	a0,a0,-1032
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11c10 <_edata>
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
   10156:	48450513          	addi	a0,a0,1156 # 11484 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11c10 <_edata>
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
   10182:	c1858593          	addi	a1,a1,-1000 # 11c18 <object.5217>
   10186:	48450513          	addi	a0,a0,1156 # 11484 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	4381                	li	t2,0
   1019e:	4329                	li	t1,10
   101a0:	4281                	li	t0,0
   101a2:	00001e17          	auipc	t3,0x1
   101a6:	2f6e0e13          	addi	t3,t3,758 # 11498 <__fini_array_end>

00000000000101aa <loop>:
   101aa:	000e1e83          	lh	t4,0(t3)
   101ae:	92f6                	add	t0,t0,t4
   101b0:	0e09                	addi	t3,t3,2
   101b2:	0385                	addi	t2,t2,1
   101b4:	fe735be3          	ble	t2,t1,101aa <loop>
   101b8:	8082                	ret

00000000000101ba <atexit>:
   101ba:	85aa                	mv	a1,a0
   101bc:	4681                	li	a3,0
   101be:	4601                	li	a2,0
   101c0:	4501                	li	a0,0
   101c2:	1780006f          	j	1033a <__register_exitproc>

00000000000101c6 <exit>:
   101c6:	1141                	addi	sp,sp,-16
   101c8:	4581                	li	a1,0
   101ca:	e022                	sd	s0,0(sp)
   101cc:	e406                	sd	ra,8(sp)
   101ce:	842a                	mv	s0,a0
   101d0:	1d0000ef          	jal	ra,103a0 <__call_exitprocs>
   101d4:	67c9                	lui	a5,0x12
   101d6:	c007b503          	ld	a0,-1024(a5) # 11c00 <_global_impure_ptr>
   101da:	6d3c                	ld	a5,88(a0)
   101dc:	c391                	beqz	a5,101e0 <exit+0x1a>
   101de:	9782                	jalr	a5
   101e0:	8522                	mv	a0,s0
   101e2:	26e000ef          	jal	ra,10450 <_exit>

00000000000101e6 <__libc_fini_array>:
   101e6:	7179                	addi	sp,sp,-48
   101e8:	67c5                	lui	a5,0x11
   101ea:	6745                	lui	a4,0x11
   101ec:	f022                	sd	s0,32(sp)
   101ee:	49070713          	addi	a4,a4,1168 # 11490 <__init_array_end>
   101f2:	49878413          	addi	s0,a5,1176 # 11498 <__fini_array_end>
   101f6:	8c19                	sub	s0,s0,a4
   101f8:	ec26                	sd	s1,24(sp)
   101fa:	e84a                	sd	s2,16(sp)
   101fc:	e44e                	sd	s3,8(sp)
   101fe:	f406                	sd	ra,40(sp)
   10200:	840d                	srai	s0,s0,0x3
   10202:	4481                	li	s1,0
   10204:	49878913          	addi	s2,a5,1176
   10208:	59e1                	li	s3,-8
   1020a:	00941a63          	bne	s0,s1,1021e <__libc_fini_array+0x38>
   1020e:	7402                	ld	s0,32(sp)
   10210:	70a2                	ld	ra,40(sp)
   10212:	64e2                	ld	s1,24(sp)
   10214:	6942                	ld	s2,16(sp)
   10216:	69a2                	ld	s3,8(sp)
   10218:	6145                	addi	sp,sp,48
   1021a:	ecdff06f          	j	100e6 <_fini>
   1021e:	033487b3          	mul	a5,s1,s3
   10222:	0485                	addi	s1,s1,1
   10224:	97ca                	add	a5,a5,s2
   10226:	ff87b783          	ld	a5,-8(a5)
   1022a:	9782                	jalr	a5
   1022c:	bff9                	j	1020a <__libc_fini_array+0x24>

000000000001022e <__libc_init_array>:
   1022e:	1101                	addi	sp,sp,-32
   10230:	e822                	sd	s0,16(sp)
   10232:	e426                	sd	s1,8(sp)
   10234:	6445                	lui	s0,0x11
   10236:	64c5                	lui	s1,0x11
   10238:	48848793          	addi	a5,s1,1160 # 11488 <__frame_dummy_init_array_entry>
   1023c:	48840413          	addi	s0,s0,1160 # 11488 <__frame_dummy_init_array_entry>
   10240:	8c1d                	sub	s0,s0,a5
   10242:	e04a                	sd	s2,0(sp)
   10244:	ec06                	sd	ra,24(sp)
   10246:	840d                	srai	s0,s0,0x3
   10248:	48848493          	addi	s1,s1,1160
   1024c:	4901                	li	s2,0
   1024e:	02891763          	bne	s2,s0,1027c <__libc_init_array+0x4e>
   10252:	64c5                	lui	s1,0x11
   10254:	e93ff0ef          	jal	ra,100e6 <_fini>
   10258:	6445                	lui	s0,0x11
   1025a:	48848793          	addi	a5,s1,1160 # 11488 <__frame_dummy_init_array_entry>
   1025e:	49040413          	addi	s0,s0,1168 # 11490 <__init_array_end>
   10262:	8c1d                	sub	s0,s0,a5
   10264:	840d                	srai	s0,s0,0x3
   10266:	48848493          	addi	s1,s1,1160
   1026a:	4901                	li	s2,0
   1026c:	00891d63          	bne	s2,s0,10286 <__libc_init_array+0x58>
   10270:	60e2                	ld	ra,24(sp)
   10272:	6442                	ld	s0,16(sp)
   10274:	64a2                	ld	s1,8(sp)
   10276:	6902                	ld	s2,0(sp)
   10278:	6105                	addi	sp,sp,32
   1027a:	8082                	ret
   1027c:	609c                	ld	a5,0(s1)
   1027e:	0905                	addi	s2,s2,1
   10280:	04a1                	addi	s1,s1,8
   10282:	9782                	jalr	a5
   10284:	b7e9                	j	1024e <__libc_init_array+0x20>
   10286:	609c                	ld	a5,0(s1)
   10288:	0905                	addi	s2,s2,1
   1028a:	04a1                	addi	s1,s1,8
   1028c:	9782                	jalr	a5
   1028e:	bff9                	j	1026c <__libc_init_array+0x3e>

0000000000010290 <memset>:
   10290:	433d                	li	t1,15
   10292:	872a                	mv	a4,a0
   10294:	02c37163          	bleu	a2,t1,102b6 <memset+0x26>
   10298:	00f77793          	andi	a5,a4,15
   1029c:	e3c1                	bnez	a5,1031c <memset+0x8c>
   1029e:	e1bd                	bnez	a1,10304 <memset+0x74>
   102a0:	ff067693          	andi	a3,a2,-16
   102a4:	8a3d                	andi	a2,a2,15
   102a6:	96ba                	add	a3,a3,a4
   102a8:	e30c                	sd	a1,0(a4)
   102aa:	e70c                	sd	a1,8(a4)
   102ac:	0741                	addi	a4,a4,16
   102ae:	fed76de3          	bltu	a4,a3,102a8 <memset+0x18>
   102b2:	e211                	bnez	a2,102b6 <memset+0x26>
   102b4:	8082                	ret
   102b6:	40c306b3          	sub	a3,t1,a2
   102ba:	068a                	slli	a3,a3,0x2
   102bc:	00000297          	auipc	t0,0x0
   102c0:	9696                	add	a3,a3,t0
   102c2:	00a68067          	jr	10(a3)
   102c6:	00b70723          	sb	a1,14(a4)
   102ca:	00b706a3          	sb	a1,13(a4)
   102ce:	00b70623          	sb	a1,12(a4)
   102d2:	00b705a3          	sb	a1,11(a4)
   102d6:	00b70523          	sb	a1,10(a4)
   102da:	00b704a3          	sb	a1,9(a4)
   102de:	00b70423          	sb	a1,8(a4)
   102e2:	00b703a3          	sb	a1,7(a4)
   102e6:	00b70323          	sb	a1,6(a4)
   102ea:	00b702a3          	sb	a1,5(a4)
   102ee:	00b70223          	sb	a1,4(a4)
   102f2:	00b701a3          	sb	a1,3(a4)
   102f6:	00b70123          	sb	a1,2(a4)
   102fa:	00b700a3          	sb	a1,1(a4)
   102fe:	00b70023          	sb	a1,0(a4)
   10302:	8082                	ret
   10304:	0ff5f593          	andi	a1,a1,255
   10308:	00859693          	slli	a3,a1,0x8
   1030c:	8dd5                	or	a1,a1,a3
   1030e:	01059693          	slli	a3,a1,0x10
   10312:	8dd5                	or	a1,a1,a3
   10314:	02059693          	slli	a3,a1,0x20
   10318:	8dd5                	or	a1,a1,a3
   1031a:	b759                	j	102a0 <memset+0x10>
   1031c:	00279693          	slli	a3,a5,0x2
   10320:	00000297          	auipc	t0,0x0
   10324:	9696                	add	a3,a3,t0
   10326:	8286                	mv	t0,ra
   10328:	fa2680e7          	jalr	-94(a3)
   1032c:	8096                	mv	ra,t0
   1032e:	17c1                	addi	a5,a5,-16
   10330:	8f1d                	sub	a4,a4,a5
   10332:	963e                	add	a2,a2,a5
   10334:	f8c371e3          	bleu	a2,t1,102b6 <memset+0x26>
   10338:	b79d                	j	1029e <memset+0xe>

000000000001033a <__register_exitproc>:
   1033a:	67c9                	lui	a5,0x12
   1033c:	c007b703          	ld	a4,-1024(a5) # 11c00 <_global_impure_ptr>
   10340:	832a                	mv	t1,a0
   10342:	1f873783          	ld	a5,504(a4)
   10346:	e789                	bnez	a5,10350 <__register_exitproc+0x16>
   10348:	20070793          	addi	a5,a4,512
   1034c:	1ef73c23          	sd	a5,504(a4)
   10350:	4798                	lw	a4,8(a5)
   10352:	487d                	li	a6,31
   10354:	557d                	li	a0,-1
   10356:	04e84463          	blt	a6,a4,1039e <__register_exitproc+0x64>
   1035a:	02030a63          	beqz	t1,1038e <__register_exitproc+0x54>
   1035e:	00371813          	slli	a6,a4,0x3
   10362:	983e                	add	a6,a6,a5
   10364:	10c83823          	sd	a2,272(a6)
   10368:	3107a883          	lw	a7,784(a5)
   1036c:	4605                	li	a2,1
   1036e:	00e6163b          	sllw	a2,a2,a4
   10372:	00c8e8b3          	or	a7,a7,a2
   10376:	3117a823          	sw	a7,784(a5)
   1037a:	20d83823          	sd	a3,528(a6)
   1037e:	4689                	li	a3,2
   10380:	00d31763          	bne	t1,a3,1038e <__register_exitproc+0x54>
   10384:	3147a683          	lw	a3,788(a5)
   10388:	8e55                	or	a2,a2,a3
   1038a:	30c7aa23          	sw	a2,788(a5)
   1038e:	0017069b          	addiw	a3,a4,1
   10392:	0709                	addi	a4,a4,2
   10394:	070e                	slli	a4,a4,0x3
   10396:	c794                	sw	a3,8(a5)
   10398:	97ba                	add	a5,a5,a4
   1039a:	e38c                	sd	a1,0(a5)
   1039c:	4501                	li	a0,0
   1039e:	8082                	ret

00000000000103a0 <__call_exitprocs>:
   103a0:	715d                	addi	sp,sp,-80
   103a2:	67c9                	lui	a5,0x12
   103a4:	f44e                	sd	s3,40(sp)
   103a6:	c007b983          	ld	s3,-1024(a5) # 11c00 <_global_impure_ptr>
   103aa:	f052                	sd	s4,32(sp)
   103ac:	ec56                	sd	s5,24(sp)
   103ae:	e85a                	sd	s6,16(sp)
   103b0:	e486                	sd	ra,72(sp)
   103b2:	e0a2                	sd	s0,64(sp)
   103b4:	fc26                	sd	s1,56(sp)
   103b6:	f84a                	sd	s2,48(sp)
   103b8:	e45e                	sd	s7,8(sp)
   103ba:	8aaa                	mv	s5,a0
   103bc:	8a2e                	mv	s4,a1
   103be:	4b05                	li	s6,1
   103c0:	1f89b403          	ld	s0,504(s3)
   103c4:	c801                	beqz	s0,103d4 <__call_exitprocs+0x34>
   103c6:	4404                	lw	s1,8(s0)
   103c8:	34fd                	addiw	s1,s1,-1
   103ca:	00349913          	slli	s2,s1,0x3
   103ce:	9922                	add	s2,s2,s0
   103d0:	0004dd63          	bgez	s1,103ea <__call_exitprocs+0x4a>
   103d4:	60a6                	ld	ra,72(sp)
   103d6:	6406                	ld	s0,64(sp)
   103d8:	74e2                	ld	s1,56(sp)
   103da:	7942                	ld	s2,48(sp)
   103dc:	79a2                	ld	s3,40(sp)
   103de:	7a02                	ld	s4,32(sp)
   103e0:	6ae2                	ld	s5,24(sp)
   103e2:	6b42                	ld	s6,16(sp)
   103e4:	6ba2                	ld	s7,8(sp)
   103e6:	6161                	addi	sp,sp,80
   103e8:	8082                	ret
   103ea:	000a0963          	beqz	s4,103fc <__call_exitprocs+0x5c>
   103ee:	21093783          	ld	a5,528(s2)
   103f2:	01478563          	beq	a5,s4,103fc <__call_exitprocs+0x5c>
   103f6:	34fd                	addiw	s1,s1,-1
   103f8:	1961                	addi	s2,s2,-8
   103fa:	bfd9                	j	103d0 <__call_exitprocs+0x30>
   103fc:	441c                	lw	a5,8(s0)
   103fe:	01093683          	ld	a3,16(s2)
   10402:	37fd                	addiw	a5,a5,-1
   10404:	02979663          	bne	a5,s1,10430 <__call_exitprocs+0x90>
   10408:	c404                	sw	s1,8(s0)
   1040a:	d6f5                	beqz	a3,103f6 <__call_exitprocs+0x56>
   1040c:	31042703          	lw	a4,784(s0)
   10410:	009b163b          	sllw	a2,s6,s1
   10414:	00842b83          	lw	s7,8(s0)
   10418:	8f71                	and	a4,a4,a2
   1041a:	2701                	sext.w	a4,a4
   1041c:	ef09                	bnez	a4,10436 <__call_exitprocs+0x96>
   1041e:	9682                	jalr	a3
   10420:	4418                	lw	a4,8(s0)
   10422:	1f89b783          	ld	a5,504(s3)
   10426:	f9771de3          	bne	a4,s7,103c0 <__call_exitprocs+0x20>
   1042a:	fcf406e3          	beq	s0,a5,103f6 <__call_exitprocs+0x56>
   1042e:	bf49                	j	103c0 <__call_exitprocs+0x20>
   10430:	00093823          	sd	zero,16(s2)
   10434:	bfd9                	j	1040a <__call_exitprocs+0x6a>
   10436:	31442783          	lw	a5,788(s0)
   1043a:	11093583          	ld	a1,272(s2)
   1043e:	8ff1                	and	a5,a5,a2
   10440:	2781                	sext.w	a5,a5
   10442:	e781                	bnez	a5,1044a <__call_exitprocs+0xaa>
   10444:	8556                	mv	a0,s5
   10446:	9682                	jalr	a3
   10448:	bfe1                	j	10420 <__call_exitprocs+0x80>
   1044a:	852e                	mv	a0,a1
   1044c:	9682                	jalr	a3
   1044e:	bfc9                	j	10420 <__call_exitprocs+0x80>

0000000000010450 <_exit>:
   10450:	4581                	li	a1,0
   10452:	4601                	li	a2,0
   10454:	4681                	li	a3,0
   10456:	4701                	li	a4,0
   10458:	4781                	li	a5,0
   1045a:	05d00893          	li	a7,93
   1045e:	00000073          	ecall
   10462:	00055c63          	bgez	a0,1047a <_exit+0x2a>
   10466:	1141                	addi	sp,sp,-16
   10468:	e022                	sd	s0,0(sp)
   1046a:	842a                	mv	s0,a0
   1046c:	e406                	sd	ra,8(sp)
   1046e:	4080043b          	negw	s0,s0
   10472:	00a000ef          	jal	ra,1047c <__errno>
   10476:	c100                	sw	s0,0(a0)
   10478:	a001                	j	10478 <_exit+0x28>
   1047a:	a001                	j	1047a <_exit+0x2a>

000000000001047c <__errno>:
   1047c:	8101b503          	ld	a0,-2032(gp) # 11c08 <_impure_ptr>
   10480:	8082                	ret

Disassembly of section .eh_frame:

0000000000011484 <__EH_FRAME_BEGIN__>:
   11484:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011488 <__frame_dummy_init_array_entry>:
   11488:	0172                	slli	sp,sp,0x1c
   1148a:	0001                	nop
   1148c:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011490 <__do_global_dtors_aux_fini_array_entry>:
   11490:	0138                	addi	a4,sp,136
   11492:	0001                	nop
   11494:	0000                	unimp
	...

Disassembly of section .data:

0000000000011498 <array>:
   11498:	000a                	c.slli	zero,0x2
   1149a:	000c000b          	0xc000b
   1149e:	000d                	c.nop	3
   114a0:	000e                	c.slli	zero,0x3
   114a2:	0010000f          	fence	unknown,w
   114a6:	0011                	c.nop	4
   114a8:	0012                	c.slli	zero,0x4
   114aa:	00000013          	nop
	...

00000000000114b0 <impure_data>:
	...
   114b8:	19e8                	addi	a0,sp,252
   114ba:	0001                	nop
   114bc:	0000                	unimp
   114be:	0000                	unimp
   114c0:	1a98                	addi	a4,sp,368
   114c2:	0001                	nop
   114c4:	0000                	unimp
   114c6:	0000                	unimp
   114c8:	1b48                	addi	a0,sp,436
   114ca:	0001                	nop
	...
   11598:	0001                	nop
   1159a:	0000                	unimp
   1159c:	0000                	unimp
   1159e:	0000                	unimp
   115a0:	330e                	fld	ft6,224(sp)
   115a2:	abcd                	j	11b94 <impure_data+0x6e4>
   115a4:	1234                	addi	a3,sp,296
   115a6:	e66d                	bnez	a2,11690 <impure_data+0x1e0>
   115a8:	deec                	sw	a1,124(a3)
   115aa:	0005                	c.nop	1
   115ac:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011bf8 <__TMC_END__>:
	...

0000000000011c00 <_global_impure_ptr>:
   11c00:	14b0                	addi	a2,sp,616
   11c02:	0001                	nop
   11c04:	0000                	unimp
	...

0000000000011c08 <_impure_ptr>:
   11c08:	14b0                	addi	a2,sp,616
   11c0a:	0001                	nop
   11c0c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011c10 <__bss_start>:
	...

0000000000011c18 <object.5217>:
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
