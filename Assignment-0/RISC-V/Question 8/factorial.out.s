
a.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	34818193          	addi	gp,gp,840 # 123f8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c10 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c48 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1d8000ef          	jal	ra,1029c <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	12a50513          	addi	a0,a0,298 # 101f2 <__libc_fini_array>
   100d0:	0f6000ef          	jal	ra,101c6 <atexit>
   100d4:	166000ef          	jal	ra,1023a <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	0f00006f          	j	101d2 <exit>

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
   10156:	49050513          	addi	a0,a0,1168 # 11490 <__EH_FRAME_BEGIN__>
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
   10186:	49050513          	addi	a0,a0,1168 # 11490 <__EH_FRAME_BEGIN__>
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
   101a2:	00001397          	auipc	t2,0x1
   101a6:	30638393          	addi	t2,t2,774 # 114a8 <__fini_array_end>
   101aa:	0003b383          	ld	t2,0(t2)
   101ae:	4301                	li	t1,0
   101b0:	4285                	li	t0,1

00000000000101b2 <for>:
   101b2:	0305                	addi	t1,t1,1
   101b4:	026282b3          	mul	t0,t0,t1
   101b8:	fe734de3          	blt	t1,t2,101b2 <for>
   101bc:	6402                	ld	s0,0(sp)
   101be:	60a2                	ld	ra,8(sp)
   101c0:	0141                	addi	sp,sp,16
   101c2:	00008067          	ret

00000000000101c6 <atexit>:
   101c6:	85aa                	mv	a1,a0
   101c8:	4681                	li	a3,0
   101ca:	4601                	li	a2,0
   101cc:	4501                	li	a0,0
   101ce:	1780006f          	j	10346 <__register_exitproc>

00000000000101d2 <exit>:
   101d2:	1141                	addi	sp,sp,-16
   101d4:	4581                	li	a1,0
   101d6:	e022                	sd	s0,0(sp)
   101d8:	e406                	sd	ra,8(sp)
   101da:	842a                	mv	s0,a0
   101dc:	1d0000ef          	jal	ra,103ac <__call_exitprocs>
   101e0:	67c9                	lui	a5,0x12
   101e2:	c007b503          	ld	a0,-1024(a5) # 11c00 <_global_impure_ptr>
   101e6:	6d3c                	ld	a5,88(a0)
   101e8:	c391                	beqz	a5,101ec <exit+0x1a>
   101ea:	9782                	jalr	a5
   101ec:	8522                	mv	a0,s0
   101ee:	26e000ef          	jal	ra,1045c <_exit>

00000000000101f2 <__libc_fini_array>:
   101f2:	7179                	addi	sp,sp,-48
   101f4:	67c5                	lui	a5,0x11
   101f6:	6745                	lui	a4,0x11
   101f8:	f022                	sd	s0,32(sp)
   101fa:	4a070713          	addi	a4,a4,1184 # 114a0 <__init_array_end>
   101fe:	4a878413          	addi	s0,a5,1192 # 114a8 <__fini_array_end>
   10202:	8c19                	sub	s0,s0,a4
   10204:	ec26                	sd	s1,24(sp)
   10206:	e84a                	sd	s2,16(sp)
   10208:	e44e                	sd	s3,8(sp)
   1020a:	f406                	sd	ra,40(sp)
   1020c:	840d                	srai	s0,s0,0x3
   1020e:	4481                	li	s1,0
   10210:	4a878913          	addi	s2,a5,1192
   10214:	59e1                	li	s3,-8
   10216:	00941a63          	bne	s0,s1,1022a <__libc_fini_array+0x38>
   1021a:	7402                	ld	s0,32(sp)
   1021c:	70a2                	ld	ra,40(sp)
   1021e:	64e2                	ld	s1,24(sp)
   10220:	6942                	ld	s2,16(sp)
   10222:	69a2                	ld	s3,8(sp)
   10224:	6145                	addi	sp,sp,48
   10226:	ec1ff06f          	j	100e6 <_fini>
   1022a:	033487b3          	mul	a5,s1,s3
   1022e:	0485                	addi	s1,s1,1
   10230:	97ca                	add	a5,a5,s2
   10232:	ff87b783          	ld	a5,-8(a5)
   10236:	9782                	jalr	a5
   10238:	bff9                	j	10216 <__libc_fini_array+0x24>

000000000001023a <__libc_init_array>:
   1023a:	1101                	addi	sp,sp,-32
   1023c:	e822                	sd	s0,16(sp)
   1023e:	e426                	sd	s1,8(sp)
   10240:	6445                	lui	s0,0x11
   10242:	64c5                	lui	s1,0x11
   10244:	49448793          	addi	a5,s1,1172 # 11494 <__preinit_array_end>
   10248:	49440413          	addi	s0,s0,1172 # 11494 <__preinit_array_end>
   1024c:	8c1d                	sub	s0,s0,a5
   1024e:	e04a                	sd	s2,0(sp)
   10250:	ec06                	sd	ra,24(sp)
   10252:	840d                	srai	s0,s0,0x3
   10254:	49448493          	addi	s1,s1,1172
   10258:	4901                	li	s2,0
   1025a:	02891763          	bne	s2,s0,10288 <__libc_init_array+0x4e>
   1025e:	64c5                	lui	s1,0x11
   10260:	e87ff0ef          	jal	ra,100e6 <_fini>
   10264:	6445                	lui	s0,0x11
   10266:	49848793          	addi	a5,s1,1176 # 11498 <__frame_dummy_init_array_entry>
   1026a:	4a040413          	addi	s0,s0,1184 # 114a0 <__init_array_end>
   1026e:	8c1d                	sub	s0,s0,a5
   10270:	840d                	srai	s0,s0,0x3
   10272:	49848493          	addi	s1,s1,1176
   10276:	4901                	li	s2,0
   10278:	00891d63          	bne	s2,s0,10292 <__libc_init_array+0x58>
   1027c:	60e2                	ld	ra,24(sp)
   1027e:	6442                	ld	s0,16(sp)
   10280:	64a2                	ld	s1,8(sp)
   10282:	6902                	ld	s2,0(sp)
   10284:	6105                	addi	sp,sp,32
   10286:	8082                	ret
   10288:	609c                	ld	a5,0(s1)
   1028a:	0905                	addi	s2,s2,1
   1028c:	04a1                	addi	s1,s1,8
   1028e:	9782                	jalr	a5
   10290:	b7e9                	j	1025a <__libc_init_array+0x20>
   10292:	609c                	ld	a5,0(s1)
   10294:	0905                	addi	s2,s2,1
   10296:	04a1                	addi	s1,s1,8
   10298:	9782                	jalr	a5
   1029a:	bff9                	j	10278 <__libc_init_array+0x3e>

000000000001029c <memset>:
   1029c:	433d                	li	t1,15
   1029e:	872a                	mv	a4,a0
   102a0:	02c37163          	bleu	a2,t1,102c2 <memset+0x26>
   102a4:	00f77793          	andi	a5,a4,15
   102a8:	e3c1                	bnez	a5,10328 <memset+0x8c>
   102aa:	e1bd                	bnez	a1,10310 <memset+0x74>
   102ac:	ff067693          	andi	a3,a2,-16
   102b0:	8a3d                	andi	a2,a2,15
   102b2:	96ba                	add	a3,a3,a4
   102b4:	e30c                	sd	a1,0(a4)
   102b6:	e70c                	sd	a1,8(a4)
   102b8:	0741                	addi	a4,a4,16
   102ba:	fed76de3          	bltu	a4,a3,102b4 <memset+0x18>
   102be:	e211                	bnez	a2,102c2 <memset+0x26>
   102c0:	8082                	ret
   102c2:	40c306b3          	sub	a3,t1,a2
   102c6:	068a                	slli	a3,a3,0x2
   102c8:	00000297          	auipc	t0,0x0
   102cc:	9696                	add	a3,a3,t0
   102ce:	00a68067          	jr	10(a3)
   102d2:	00b70723          	sb	a1,14(a4)
   102d6:	00b706a3          	sb	a1,13(a4)
   102da:	00b70623          	sb	a1,12(a4)
   102de:	00b705a3          	sb	a1,11(a4)
   102e2:	00b70523          	sb	a1,10(a4)
   102e6:	00b704a3          	sb	a1,9(a4)
   102ea:	00b70423          	sb	a1,8(a4)
   102ee:	00b703a3          	sb	a1,7(a4)
   102f2:	00b70323          	sb	a1,6(a4)
   102f6:	00b702a3          	sb	a1,5(a4)
   102fa:	00b70223          	sb	a1,4(a4)
   102fe:	00b701a3          	sb	a1,3(a4)
   10302:	00b70123          	sb	a1,2(a4)
   10306:	00b700a3          	sb	a1,1(a4)
   1030a:	00b70023          	sb	a1,0(a4)
   1030e:	8082                	ret
   10310:	0ff5f593          	andi	a1,a1,255
   10314:	00859693          	slli	a3,a1,0x8
   10318:	8dd5                	or	a1,a1,a3
   1031a:	01059693          	slli	a3,a1,0x10
   1031e:	8dd5                	or	a1,a1,a3
   10320:	02059693          	slli	a3,a1,0x20
   10324:	8dd5                	or	a1,a1,a3
   10326:	b759                	j	102ac <memset+0x10>
   10328:	00279693          	slli	a3,a5,0x2
   1032c:	00000297          	auipc	t0,0x0
   10330:	9696                	add	a3,a3,t0
   10332:	8286                	mv	t0,ra
   10334:	fa2680e7          	jalr	-94(a3)
   10338:	8096                	mv	ra,t0
   1033a:	17c1                	addi	a5,a5,-16
   1033c:	8f1d                	sub	a4,a4,a5
   1033e:	963e                	add	a2,a2,a5
   10340:	f8c371e3          	bleu	a2,t1,102c2 <memset+0x26>
   10344:	b79d                	j	102aa <memset+0xe>

0000000000010346 <__register_exitproc>:
   10346:	67c9                	lui	a5,0x12
   10348:	c007b703          	ld	a4,-1024(a5) # 11c00 <_global_impure_ptr>
   1034c:	832a                	mv	t1,a0
   1034e:	1f873783          	ld	a5,504(a4)
   10352:	e789                	bnez	a5,1035c <__register_exitproc+0x16>
   10354:	20070793          	addi	a5,a4,512
   10358:	1ef73c23          	sd	a5,504(a4)
   1035c:	4798                	lw	a4,8(a5)
   1035e:	487d                	li	a6,31
   10360:	557d                	li	a0,-1
   10362:	04e84463          	blt	a6,a4,103aa <__register_exitproc+0x64>
   10366:	02030a63          	beqz	t1,1039a <__register_exitproc+0x54>
   1036a:	00371813          	slli	a6,a4,0x3
   1036e:	983e                	add	a6,a6,a5
   10370:	10c83823          	sd	a2,272(a6)
   10374:	3107a883          	lw	a7,784(a5)
   10378:	4605                	li	a2,1
   1037a:	00e6163b          	sllw	a2,a2,a4
   1037e:	00c8e8b3          	or	a7,a7,a2
   10382:	3117a823          	sw	a7,784(a5)
   10386:	20d83823          	sd	a3,528(a6)
   1038a:	4689                	li	a3,2
   1038c:	00d31763          	bne	t1,a3,1039a <__register_exitproc+0x54>
   10390:	3147a683          	lw	a3,788(a5)
   10394:	8e55                	or	a2,a2,a3
   10396:	30c7aa23          	sw	a2,788(a5)
   1039a:	0017069b          	addiw	a3,a4,1
   1039e:	0709                	addi	a4,a4,2
   103a0:	070e                	slli	a4,a4,0x3
   103a2:	c794                	sw	a3,8(a5)
   103a4:	97ba                	add	a5,a5,a4
   103a6:	e38c                	sd	a1,0(a5)
   103a8:	4501                	li	a0,0
   103aa:	8082                	ret

00000000000103ac <__call_exitprocs>:
   103ac:	715d                	addi	sp,sp,-80
   103ae:	67c9                	lui	a5,0x12
   103b0:	f44e                	sd	s3,40(sp)
   103b2:	c007b983          	ld	s3,-1024(a5) # 11c00 <_global_impure_ptr>
   103b6:	f052                	sd	s4,32(sp)
   103b8:	ec56                	sd	s5,24(sp)
   103ba:	e85a                	sd	s6,16(sp)
   103bc:	e486                	sd	ra,72(sp)
   103be:	e0a2                	sd	s0,64(sp)
   103c0:	fc26                	sd	s1,56(sp)
   103c2:	f84a                	sd	s2,48(sp)
   103c4:	e45e                	sd	s7,8(sp)
   103c6:	8aaa                	mv	s5,a0
   103c8:	8a2e                	mv	s4,a1
   103ca:	4b05                	li	s6,1
   103cc:	1f89b403          	ld	s0,504(s3)
   103d0:	c801                	beqz	s0,103e0 <__call_exitprocs+0x34>
   103d2:	4404                	lw	s1,8(s0)
   103d4:	34fd                	addiw	s1,s1,-1
   103d6:	00349913          	slli	s2,s1,0x3
   103da:	9922                	add	s2,s2,s0
   103dc:	0004dd63          	bgez	s1,103f6 <__call_exitprocs+0x4a>
   103e0:	60a6                	ld	ra,72(sp)
   103e2:	6406                	ld	s0,64(sp)
   103e4:	74e2                	ld	s1,56(sp)
   103e6:	7942                	ld	s2,48(sp)
   103e8:	79a2                	ld	s3,40(sp)
   103ea:	7a02                	ld	s4,32(sp)
   103ec:	6ae2                	ld	s5,24(sp)
   103ee:	6b42                	ld	s6,16(sp)
   103f0:	6ba2                	ld	s7,8(sp)
   103f2:	6161                	addi	sp,sp,80
   103f4:	8082                	ret
   103f6:	000a0963          	beqz	s4,10408 <__call_exitprocs+0x5c>
   103fa:	21093783          	ld	a5,528(s2)
   103fe:	01478563          	beq	a5,s4,10408 <__call_exitprocs+0x5c>
   10402:	34fd                	addiw	s1,s1,-1
   10404:	1961                	addi	s2,s2,-8
   10406:	bfd9                	j	103dc <__call_exitprocs+0x30>
   10408:	441c                	lw	a5,8(s0)
   1040a:	01093683          	ld	a3,16(s2)
   1040e:	37fd                	addiw	a5,a5,-1
   10410:	02979663          	bne	a5,s1,1043c <__call_exitprocs+0x90>
   10414:	c404                	sw	s1,8(s0)
   10416:	d6f5                	beqz	a3,10402 <__call_exitprocs+0x56>
   10418:	31042703          	lw	a4,784(s0)
   1041c:	009b163b          	sllw	a2,s6,s1
   10420:	00842b83          	lw	s7,8(s0)
   10424:	8f71                	and	a4,a4,a2
   10426:	2701                	sext.w	a4,a4
   10428:	ef09                	bnez	a4,10442 <__call_exitprocs+0x96>
   1042a:	9682                	jalr	a3
   1042c:	4418                	lw	a4,8(s0)
   1042e:	1f89b783          	ld	a5,504(s3)
   10432:	f9771de3          	bne	a4,s7,103cc <__call_exitprocs+0x20>
   10436:	fcf406e3          	beq	s0,a5,10402 <__call_exitprocs+0x56>
   1043a:	bf49                	j	103cc <__call_exitprocs+0x20>
   1043c:	00093823          	sd	zero,16(s2)
   10440:	bfd9                	j	10416 <__call_exitprocs+0x6a>
   10442:	31442783          	lw	a5,788(s0)
   10446:	11093583          	ld	a1,272(s2)
   1044a:	8ff1                	and	a5,a5,a2
   1044c:	2781                	sext.w	a5,a5
   1044e:	e781                	bnez	a5,10456 <__call_exitprocs+0xaa>
   10450:	8556                	mv	a0,s5
   10452:	9682                	jalr	a3
   10454:	bfe1                	j	1042c <__call_exitprocs+0x80>
   10456:	852e                	mv	a0,a1
   10458:	9682                	jalr	a3
   1045a:	bfc9                	j	1042c <__call_exitprocs+0x80>

000000000001045c <_exit>:
   1045c:	4581                	li	a1,0
   1045e:	4601                	li	a2,0
   10460:	4681                	li	a3,0
   10462:	4701                	li	a4,0
   10464:	4781                	li	a5,0
   10466:	05d00893          	li	a7,93
   1046a:	00000073          	ecall
   1046e:	00055c63          	bgez	a0,10486 <_exit+0x2a>
   10472:	1141                	addi	sp,sp,-16
   10474:	e022                	sd	s0,0(sp)
   10476:	842a                	mv	s0,a0
   10478:	e406                	sd	ra,8(sp)
   1047a:	4080043b          	negw	s0,s0
   1047e:	00a000ef          	jal	ra,10488 <__errno>
   10482:	c100                	sw	s0,0(a0)
   10484:	a001                	j	10484 <_exit+0x28>
   10486:	a001                	j	10486 <_exit+0x2a>

0000000000010488 <__errno>:
   10488:	8101b503          	ld	a0,-2032(gp) # 11c08 <_impure_ptr>
   1048c:	8082                	ret

Disassembly of section .eh_frame:

0000000000011490 <__EH_FRAME_BEGIN__>:
   11490:	0000                	unimp
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

00000000000114a8 <num>:
   114a8:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   114ac:	0000                	unimp
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
