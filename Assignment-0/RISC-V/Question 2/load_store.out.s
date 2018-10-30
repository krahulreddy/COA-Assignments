
a.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	34018193          	addi	gp,gp,832 # 123f0 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c08 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c40 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1d4000ef          	jal	ra,10298 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	12650513          	addi	a0,a0,294 # 101ee <__libc_fini_array>
   100d0:	0f2000ef          	jal	ra,101c2 <atexit>
   100d4:	162000ef          	jal	ra,10236 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	0ec0006f          	j	101ce <exit>

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
   10156:	48c50513          	addi	a0,a0,1164 # 1148c <__EH_FRAME_BEGIN__>
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
   10186:	48c50513          	addi	a0,a0,1164 # 1148c <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	1101                	addi	sp,sp,-32
   1019e:	ec22                	sd	s0,24(sp)
   101a0:	1000                	addi	s0,sp,32
   101a2:	00001297          	auipc	t0,0x1
   101a6:	2fe28293          	addi	t0,t0,766 # 114a0 <__fini_array_end>
   101aa:	0002b283          	ld	t0,0(t0)
   101ae:	6302                	ld	t1,0(sp)
   101b0:	006283b3          	add	t2,t0,t1
   101b4:	ce010113          	addi	sp,sp,-800
   101b8:	e01e                	sd	t2,0(sp)
   101ba:	0001                	nop
   101bc:	6462                	ld	s0,24(sp)
   101be:	6105                	addi	sp,sp,32
   101c0:	8082                	ret

00000000000101c2 <atexit>:
   101c2:	85aa                	mv	a1,a0
   101c4:	4681                	li	a3,0
   101c6:	4601                	li	a2,0
   101c8:	4501                	li	a0,0
   101ca:	1780006f          	j	10342 <__register_exitproc>

00000000000101ce <exit>:
   101ce:	1141                	addi	sp,sp,-16
   101d0:	4581                	li	a1,0
   101d2:	e022                	sd	s0,0(sp)
   101d4:	e406                	sd	ra,8(sp)
   101d6:	842a                	mv	s0,a0
   101d8:	1d0000ef          	jal	ra,103a8 <__call_exitprocs>
   101dc:	67c9                	lui	a5,0x12
   101de:	bf87b503          	ld	a0,-1032(a5) # 11bf8 <_global_impure_ptr>
   101e2:	6d3c                	ld	a5,88(a0)
   101e4:	c391                	beqz	a5,101e8 <exit+0x1a>
   101e6:	9782                	jalr	a5
   101e8:	8522                	mv	a0,s0
   101ea:	26e000ef          	jal	ra,10458 <_exit>

00000000000101ee <__libc_fini_array>:
   101ee:	7179                	addi	sp,sp,-48
   101f0:	67c5                	lui	a5,0x11
   101f2:	6745                	lui	a4,0x11
   101f4:	f022                	sd	s0,32(sp)
   101f6:	49870713          	addi	a4,a4,1176 # 11498 <__init_array_end>
   101fa:	4a078413          	addi	s0,a5,1184 # 114a0 <__fini_array_end>
   101fe:	8c19                	sub	s0,s0,a4
   10200:	ec26                	sd	s1,24(sp)
   10202:	e84a                	sd	s2,16(sp)
   10204:	e44e                	sd	s3,8(sp)
   10206:	f406                	sd	ra,40(sp)
   10208:	840d                	srai	s0,s0,0x3
   1020a:	4481                	li	s1,0
   1020c:	4a078913          	addi	s2,a5,1184
   10210:	59e1                	li	s3,-8
   10212:	00941a63          	bne	s0,s1,10226 <__libc_fini_array+0x38>
   10216:	7402                	ld	s0,32(sp)
   10218:	70a2                	ld	ra,40(sp)
   1021a:	64e2                	ld	s1,24(sp)
   1021c:	6942                	ld	s2,16(sp)
   1021e:	69a2                	ld	s3,8(sp)
   10220:	6145                	addi	sp,sp,48
   10222:	ec5ff06f          	j	100e6 <_fini>
   10226:	033487b3          	mul	a5,s1,s3
   1022a:	0485                	addi	s1,s1,1
   1022c:	97ca                	add	a5,a5,s2
   1022e:	ff87b783          	ld	a5,-8(a5)
   10232:	9782                	jalr	a5
   10234:	bff9                	j	10212 <__libc_fini_array+0x24>

0000000000010236 <__libc_init_array>:
   10236:	1101                	addi	sp,sp,-32
   10238:	e822                	sd	s0,16(sp)
   1023a:	e426                	sd	s1,8(sp)
   1023c:	6445                	lui	s0,0x11
   1023e:	64c5                	lui	s1,0x11
   10240:	49048793          	addi	a5,s1,1168 # 11490 <__frame_dummy_init_array_entry>
   10244:	49040413          	addi	s0,s0,1168 # 11490 <__frame_dummy_init_array_entry>
   10248:	8c1d                	sub	s0,s0,a5
   1024a:	e04a                	sd	s2,0(sp)
   1024c:	ec06                	sd	ra,24(sp)
   1024e:	840d                	srai	s0,s0,0x3
   10250:	49048493          	addi	s1,s1,1168
   10254:	4901                	li	s2,0
   10256:	02891763          	bne	s2,s0,10284 <__libc_init_array+0x4e>
   1025a:	64c5                	lui	s1,0x11
   1025c:	e8bff0ef          	jal	ra,100e6 <_fini>
   10260:	6445                	lui	s0,0x11
   10262:	49048793          	addi	a5,s1,1168 # 11490 <__frame_dummy_init_array_entry>
   10266:	49840413          	addi	s0,s0,1176 # 11498 <__init_array_end>
   1026a:	8c1d                	sub	s0,s0,a5
   1026c:	840d                	srai	s0,s0,0x3
   1026e:	49048493          	addi	s1,s1,1168
   10272:	4901                	li	s2,0
   10274:	00891d63          	bne	s2,s0,1028e <__libc_init_array+0x58>
   10278:	60e2                	ld	ra,24(sp)
   1027a:	6442                	ld	s0,16(sp)
   1027c:	64a2                	ld	s1,8(sp)
   1027e:	6902                	ld	s2,0(sp)
   10280:	6105                	addi	sp,sp,32
   10282:	8082                	ret
   10284:	609c                	ld	a5,0(s1)
   10286:	0905                	addi	s2,s2,1
   10288:	04a1                	addi	s1,s1,8
   1028a:	9782                	jalr	a5
   1028c:	b7e9                	j	10256 <__libc_init_array+0x20>
   1028e:	609c                	ld	a5,0(s1)
   10290:	0905                	addi	s2,s2,1
   10292:	04a1                	addi	s1,s1,8
   10294:	9782                	jalr	a5
   10296:	bff9                	j	10274 <__libc_init_array+0x3e>

0000000000010298 <memset>:
   10298:	433d                	li	t1,15
   1029a:	872a                	mv	a4,a0
   1029c:	02c37163          	bleu	a2,t1,102be <memset+0x26>
   102a0:	00f77793          	andi	a5,a4,15
   102a4:	e3c1                	bnez	a5,10324 <memset+0x8c>
   102a6:	e1bd                	bnez	a1,1030c <memset+0x74>
   102a8:	ff067693          	andi	a3,a2,-16
   102ac:	8a3d                	andi	a2,a2,15
   102ae:	96ba                	add	a3,a3,a4
   102b0:	e30c                	sd	a1,0(a4)
   102b2:	e70c                	sd	a1,8(a4)
   102b4:	0741                	addi	a4,a4,16
   102b6:	fed76de3          	bltu	a4,a3,102b0 <memset+0x18>
   102ba:	e211                	bnez	a2,102be <memset+0x26>
   102bc:	8082                	ret
   102be:	40c306b3          	sub	a3,t1,a2
   102c2:	068a                	slli	a3,a3,0x2
   102c4:	00000297          	auipc	t0,0x0
   102c8:	9696                	add	a3,a3,t0
   102ca:	00a68067          	jr	10(a3)
   102ce:	00b70723          	sb	a1,14(a4)
   102d2:	00b706a3          	sb	a1,13(a4)
   102d6:	00b70623          	sb	a1,12(a4)
   102da:	00b705a3          	sb	a1,11(a4)
   102de:	00b70523          	sb	a1,10(a4)
   102e2:	00b704a3          	sb	a1,9(a4)
   102e6:	00b70423          	sb	a1,8(a4)
   102ea:	00b703a3          	sb	a1,7(a4)
   102ee:	00b70323          	sb	a1,6(a4)
   102f2:	00b702a3          	sb	a1,5(a4)
   102f6:	00b70223          	sb	a1,4(a4)
   102fa:	00b701a3          	sb	a1,3(a4)
   102fe:	00b70123          	sb	a1,2(a4)
   10302:	00b700a3          	sb	a1,1(a4)
   10306:	00b70023          	sb	a1,0(a4)
   1030a:	8082                	ret
   1030c:	0ff5f593          	andi	a1,a1,255
   10310:	00859693          	slli	a3,a1,0x8
   10314:	8dd5                	or	a1,a1,a3
   10316:	01059693          	slli	a3,a1,0x10
   1031a:	8dd5                	or	a1,a1,a3
   1031c:	02059693          	slli	a3,a1,0x20
   10320:	8dd5                	or	a1,a1,a3
   10322:	b759                	j	102a8 <memset+0x10>
   10324:	00279693          	slli	a3,a5,0x2
   10328:	00000297          	auipc	t0,0x0
   1032c:	9696                	add	a3,a3,t0
   1032e:	8286                	mv	t0,ra
   10330:	fa2680e7          	jalr	-94(a3)
   10334:	8096                	mv	ra,t0
   10336:	17c1                	addi	a5,a5,-16
   10338:	8f1d                	sub	a4,a4,a5
   1033a:	963e                	add	a2,a2,a5
   1033c:	f8c371e3          	bleu	a2,t1,102be <memset+0x26>
   10340:	b79d                	j	102a6 <memset+0xe>

0000000000010342 <__register_exitproc>:
   10342:	67c9                	lui	a5,0x12
   10344:	bf87b703          	ld	a4,-1032(a5) # 11bf8 <_global_impure_ptr>
   10348:	832a                	mv	t1,a0
   1034a:	1f873783          	ld	a5,504(a4)
   1034e:	e789                	bnez	a5,10358 <__register_exitproc+0x16>
   10350:	20070793          	addi	a5,a4,512
   10354:	1ef73c23          	sd	a5,504(a4)
   10358:	4798                	lw	a4,8(a5)
   1035a:	487d                	li	a6,31
   1035c:	557d                	li	a0,-1
   1035e:	04e84463          	blt	a6,a4,103a6 <__register_exitproc+0x64>
   10362:	02030a63          	beqz	t1,10396 <__register_exitproc+0x54>
   10366:	00371813          	slli	a6,a4,0x3
   1036a:	983e                	add	a6,a6,a5
   1036c:	10c83823          	sd	a2,272(a6)
   10370:	3107a883          	lw	a7,784(a5)
   10374:	4605                	li	a2,1
   10376:	00e6163b          	sllw	a2,a2,a4
   1037a:	00c8e8b3          	or	a7,a7,a2
   1037e:	3117a823          	sw	a7,784(a5)
   10382:	20d83823          	sd	a3,528(a6)
   10386:	4689                	li	a3,2
   10388:	00d31763          	bne	t1,a3,10396 <__register_exitproc+0x54>
   1038c:	3147a683          	lw	a3,788(a5)
   10390:	8e55                	or	a2,a2,a3
   10392:	30c7aa23          	sw	a2,788(a5)
   10396:	0017069b          	addiw	a3,a4,1
   1039a:	0709                	addi	a4,a4,2
   1039c:	070e                	slli	a4,a4,0x3
   1039e:	c794                	sw	a3,8(a5)
   103a0:	97ba                	add	a5,a5,a4
   103a2:	e38c                	sd	a1,0(a5)
   103a4:	4501                	li	a0,0
   103a6:	8082                	ret

00000000000103a8 <__call_exitprocs>:
   103a8:	715d                	addi	sp,sp,-80
   103aa:	67c9                	lui	a5,0x12
   103ac:	f44e                	sd	s3,40(sp)
   103ae:	bf87b983          	ld	s3,-1032(a5) # 11bf8 <_global_impure_ptr>
   103b2:	f052                	sd	s4,32(sp)
   103b4:	ec56                	sd	s5,24(sp)
   103b6:	e85a                	sd	s6,16(sp)
   103b8:	e486                	sd	ra,72(sp)
   103ba:	e0a2                	sd	s0,64(sp)
   103bc:	fc26                	sd	s1,56(sp)
   103be:	f84a                	sd	s2,48(sp)
   103c0:	e45e                	sd	s7,8(sp)
   103c2:	8aaa                	mv	s5,a0
   103c4:	8a2e                	mv	s4,a1
   103c6:	4b05                	li	s6,1
   103c8:	1f89b403          	ld	s0,504(s3)
   103cc:	c801                	beqz	s0,103dc <__call_exitprocs+0x34>
   103ce:	4404                	lw	s1,8(s0)
   103d0:	34fd                	addiw	s1,s1,-1
   103d2:	00349913          	slli	s2,s1,0x3
   103d6:	9922                	add	s2,s2,s0
   103d8:	0004dd63          	bgez	s1,103f2 <__call_exitprocs+0x4a>
   103dc:	60a6                	ld	ra,72(sp)
   103de:	6406                	ld	s0,64(sp)
   103e0:	74e2                	ld	s1,56(sp)
   103e2:	7942                	ld	s2,48(sp)
   103e4:	79a2                	ld	s3,40(sp)
   103e6:	7a02                	ld	s4,32(sp)
   103e8:	6ae2                	ld	s5,24(sp)
   103ea:	6b42                	ld	s6,16(sp)
   103ec:	6ba2                	ld	s7,8(sp)
   103ee:	6161                	addi	sp,sp,80
   103f0:	8082                	ret
   103f2:	000a0963          	beqz	s4,10404 <__call_exitprocs+0x5c>
   103f6:	21093783          	ld	a5,528(s2)
   103fa:	01478563          	beq	a5,s4,10404 <__call_exitprocs+0x5c>
   103fe:	34fd                	addiw	s1,s1,-1
   10400:	1961                	addi	s2,s2,-8
   10402:	bfd9                	j	103d8 <__call_exitprocs+0x30>
   10404:	441c                	lw	a5,8(s0)
   10406:	01093683          	ld	a3,16(s2)
   1040a:	37fd                	addiw	a5,a5,-1
   1040c:	02979663          	bne	a5,s1,10438 <__call_exitprocs+0x90>
   10410:	c404                	sw	s1,8(s0)
   10412:	d6f5                	beqz	a3,103fe <__call_exitprocs+0x56>
   10414:	31042703          	lw	a4,784(s0)
   10418:	009b163b          	sllw	a2,s6,s1
   1041c:	00842b83          	lw	s7,8(s0)
   10420:	8f71                	and	a4,a4,a2
   10422:	2701                	sext.w	a4,a4
   10424:	ef09                	bnez	a4,1043e <__call_exitprocs+0x96>
   10426:	9682                	jalr	a3
   10428:	4418                	lw	a4,8(s0)
   1042a:	1f89b783          	ld	a5,504(s3)
   1042e:	f9771de3          	bne	a4,s7,103c8 <__call_exitprocs+0x20>
   10432:	fcf406e3          	beq	s0,a5,103fe <__call_exitprocs+0x56>
   10436:	bf49                	j	103c8 <__call_exitprocs+0x20>
   10438:	00093823          	sd	zero,16(s2)
   1043c:	bfd9                	j	10412 <__call_exitprocs+0x6a>
   1043e:	31442783          	lw	a5,788(s0)
   10442:	11093583          	ld	a1,272(s2)
   10446:	8ff1                	and	a5,a5,a2
   10448:	2781                	sext.w	a5,a5
   1044a:	e781                	bnez	a5,10452 <__call_exitprocs+0xaa>
   1044c:	8556                	mv	a0,s5
   1044e:	9682                	jalr	a3
   10450:	bfe1                	j	10428 <__call_exitprocs+0x80>
   10452:	852e                	mv	a0,a1
   10454:	9682                	jalr	a3
   10456:	bfc9                	j	10428 <__call_exitprocs+0x80>

0000000000010458 <_exit>:
   10458:	4581                	li	a1,0
   1045a:	4601                	li	a2,0
   1045c:	4681                	li	a3,0
   1045e:	4701                	li	a4,0
   10460:	4781                	li	a5,0
   10462:	05d00893          	li	a7,93
   10466:	00000073          	ecall
   1046a:	00055c63          	bgez	a0,10482 <_exit+0x2a>
   1046e:	1141                	addi	sp,sp,-16
   10470:	e022                	sd	s0,0(sp)
   10472:	842a                	mv	s0,a0
   10474:	e406                	sd	ra,8(sp)
   10476:	4080043b          	negw	s0,s0
   1047a:	00a000ef          	jal	ra,10484 <__errno>
   1047e:	c100                	sw	s0,0(a0)
   10480:	a001                	j	10480 <_exit+0x28>
   10482:	a001                	j	10482 <_exit+0x2a>

0000000000010484 <__errno>:
   10484:	8101b503          	ld	a0,-2032(gp) # 11c00 <_impure_ptr>
   10488:	8082                	ret

Disassembly of section .eh_frame:

000000000001148c <__EH_FRAME_BEGIN__>:
   1148c:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011490 <__frame_dummy_init_array_entry>:
   11490:	0172                	slli	sp,sp,0x1c
   11492:	0001                	nop
   11494:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011498 <__do_global_dtors_aux_fini_array_entry>:
   11498:	0138                	addi	a4,sp,136
   1149a:	0001                	nop
   1149c:	0000                	unimp
	...

Disassembly of section .data:

00000000000114a0 <a>:
   114a0:	0009                	c.nop	2
   114a2:	0000                	unimp
   114a4:	0000                	unimp
	...

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
