
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	48 83 ec 08          	sub    $0x8,%rsp
  402004:	48 8b 05 d5 2f 00 00 	mov    0x2fd5(%rip),%rax        # 404fe0 <__gmon_start__@Base>
  40200b:	48 85 c0             	test   %rax,%rax
  40200e:	74 02                	je     402012 <_init+0x12>
  402010:	ff d0                	call   *%rax
  402012:	48 83 c4 08          	add    $0x8,%rsp
  402016:	c3                   	ret

Disassembly of section .plt:

0000000000402020 <_ZSt17__throw_bad_allocv@plt-0x10>:
  402020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 404ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  402026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 404ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402030 <_ZSt17__throw_bad_allocv@plt>:
  402030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 405000 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
  402036:	68 00 00 00 00       	push   $0x0
  40203b:	e9 e0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402040 <strlen@plt>:
  402040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 405008 <strlen@GLIBC_2.2.5>
  402046:	68 01 00 00 00       	push   $0x1
  40204b:	e9 d0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402050 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  402050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 405010 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  402056:	68 02 00 00 00       	push   $0x2
  40205b:	e9 c0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402060 <_ZSt20__throw_length_errorPKc@plt>:
  402060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 405018 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  402066:	68 03 00 00 00       	push   $0x3
  40206b:	e9 b0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402070 <_ZSt19__throw_logic_errorPKc@plt>:
  402070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 405020 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  402076:	68 04 00 00 00       	push   $0x4
  40207b:	e9 a0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402080 <memcpy@plt>:
  402080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 405028 <memcpy@GLIBC_2.14>
  402086:	68 05 00 00 00       	push   $0x5
  40208b:	e9 90 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402090 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>:
  402090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 405030 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@GLIBCXX_3.4.21>
  402096:	68 06 00 00 00       	push   $0x6
  40209b:	e9 80 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  4020a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 405038 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  4020a6:	68 07 00 00 00       	push   $0x7
  4020ab:	e9 70 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020b0 <_Znwm@plt>:
  4020b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 405040 <_Znwm@GLIBCXX_3.4>
  4020b6:	68 08 00 00 00       	push   $0x8
  4020bb:	e9 60 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020c0 <_ZdlPvm@plt>:
  4020c0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 405048 <_ZdlPvm@CXXABI_1.3.9>
  4020c6:	68 09 00 00 00       	push   $0x9
  4020cb:	e9 50 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020d0 <_ZNSolsEPFRSoS_E@plt>:
  4020d0:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 405050 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
  4020d6:	68 0a 00 00 00       	push   $0xa
  4020db:	e9 40 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020e0 <__gxx_personality_v0@plt>:
  4020e0:	ff 25 72 2f 00 00    	jmp    *0x2f72(%rip)        # 405058 <__gxx_personality_v0@CXXABI_1.3>
  4020e6:	68 0b 00 00 00       	push   $0xb
  4020eb:	e9 30 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020f0 <_Unwind_Resume@plt>:
  4020f0:	ff 25 6a 2f 00 00    	jmp    *0x2f6a(%rip)        # 405060 <_Unwind_Resume@GCC_3.0>
  4020f6:	68 0c 00 00 00       	push   $0xc
  4020fb:	e9 20 ff ff ff       	jmp    402020 <_init+0x20>

Disassembly of section .text:

0000000000402100 <_start>:
  402100:	31 ed                	xor    %ebp,%ebp
  402102:	49 89 d1             	mov    %rdx,%r9
  402105:	5e                   	pop    %rsi
  402106:	48 89 e2             	mov    %rsp,%rdx
  402109:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40210d:	50                   	push   %rax
  40210e:	54                   	push   %rsp
  40210f:	45 31 c0             	xor    %r8d,%r8d
  402112:	31 c9                	xor    %ecx,%ecx
  402114:	48 c7 c7 30 22 40 00 	mov    $0x402230,%rdi
  40211b:	ff 15 b7 2e 00 00    	call   *0x2eb7(%rip)        # 404fd8 <__libc_start_main@GLIBC_2.34>
  402121:	f4                   	hlt
  402122:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402129:	00 00 00 
  40212c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402130 <_dl_relocate_static_pie>:
  402130:	c3                   	ret
  402131:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402138:	00 00 00 
  40213b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402140 <deregister_tm_clones>:
  402140:	b8 78 50 40 00       	mov    $0x405078,%eax
  402145:	48 3d 78 50 40 00    	cmp    $0x405078,%rax
  40214b:	74 13                	je     402160 <deregister_tm_clones+0x20>
  40214d:	b8 00 00 00 00       	mov    $0x0,%eax
  402152:	48 85 c0             	test   %rax,%rax
  402155:	74 09                	je     402160 <deregister_tm_clones+0x20>
  402157:	bf 78 50 40 00       	mov    $0x405078,%edi
  40215c:	ff e0                	jmp    *%rax
  40215e:	66 90                	xchg   %ax,%ax
  402160:	c3                   	ret
  402161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402168:	00 00 00 00 
  40216c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402170 <register_tm_clones>:
  402170:	be 78 50 40 00       	mov    $0x405078,%esi
  402175:	48 81 ee 78 50 40 00 	sub    $0x405078,%rsi
  40217c:	48 89 f0             	mov    %rsi,%rax
  40217f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  402183:	48 c1 f8 03          	sar    $0x3,%rax
  402187:	48 01 c6             	add    %rax,%rsi
  40218a:	48 d1 fe             	sar    %rsi
  40218d:	74 11                	je     4021a0 <register_tm_clones+0x30>
  40218f:	b8 00 00 00 00       	mov    $0x0,%eax
  402194:	48 85 c0             	test   %rax,%rax
  402197:	74 07                	je     4021a0 <register_tm_clones+0x30>
  402199:	bf 78 50 40 00       	mov    $0x405078,%edi
  40219e:	ff e0                	jmp    *%rax
  4021a0:	c3                   	ret
  4021a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4021a8:	00 00 00 00 
  4021ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021b0 <__do_global_dtors_aux>:
  4021b0:	f3 0f 1e fa          	endbr64
  4021b4:	80 3d d5 2f 00 00 00 	cmpb   $0x0,0x2fd5(%rip)        # 405190 <completed.0>
  4021bb:	75 13                	jne    4021d0 <__do_global_dtors_aux+0x20>
  4021bd:	55                   	push   %rbp
  4021be:	48 89 e5             	mov    %rsp,%rbp
  4021c1:	e8 7a ff ff ff       	call   402140 <deregister_tm_clones>
  4021c6:	c6 05 c3 2f 00 00 01 	movb   $0x1,0x2fc3(%rip)        # 405190 <completed.0>
  4021cd:	5d                   	pop    %rbp
  4021ce:	c3                   	ret
  4021cf:	90                   	nop
  4021d0:	c3                   	ret
  4021d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4021d8:	00 00 00 00 
  4021dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021e0 <frame_dummy>:
  4021e0:	f3 0f 1e fa          	endbr64
  4021e4:	eb 8a                	jmp    402170 <register_tm_clones>

00000000004021e6 <_Z5greetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
  4021e6:	55                   	push   %rbp
  4021e7:	48 89 e5             	mov    %rsp,%rbp
  4021ea:	48 83 ec 10          	sub    $0x10,%rsp
  4021ee:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4021f2:	be 08 30 40 00       	mov    $0x403008,%esi
  4021f7:	bf 80 50 40 00       	mov    $0x405080,%edi
  4021fc:	e8 9f fe ff ff       	call   4020a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  402201:	48 89 c2             	mov    %rax,%rdx
  402204:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402208:	48 89 c6             	mov    %rax,%rsi
  40220b:	48 89 d7             	mov    %rdx,%rdi
  40220e:	e8 7d fe ff ff       	call   402090 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
  402213:	be 10 30 40 00       	mov    $0x403010,%esi
  402218:	48 89 c7             	mov    %rax,%rdi
  40221b:	e8 80 fe ff ff       	call   4020a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  402220:	be 50 20 40 00       	mov    $0x402050,%esi
  402225:	48 89 c7             	mov    %rax,%rdi
  402228:	e8 a3 fe ff ff       	call   4020d0 <_ZNSolsEPFRSoS_E@plt>
  40222d:	90                   	nop
  40222e:	c9                   	leave
  40222f:	c3                   	ret

0000000000402230 <main>:
  402230:	55                   	push   %rbp
  402231:	48 89 e5             	mov    %rsp,%rbp
  402234:	53                   	push   %rbx
  402235:	48 83 ec 38          	sub    $0x38,%rsp
  402239:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
  40223d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402241:	90                   	nop
  402242:	90                   	nop
  402243:	48 8d 55 e7          	lea    -0x19(%rbp),%rdx
  402247:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40224b:	be 12 30 40 00       	mov    $0x403012,%esi
  402250:	48 89 c7             	mov    %rax,%rdi
  402253:	e8 80 01 00 00       	call   4023d8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
  402258:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40225c:	48 89 c7             	mov    %rax,%rdi
  40225f:	e8 82 ff ff ff       	call   4021e6 <_Z5greetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  402264:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  402268:	48 89 c7             	mov    %rax,%rdi
  40226b:	e8 40 01 00 00       	call   4023b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402270:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
  402274:	48 89 c7             	mov    %rax,%rdi
  402277:	e8 7e 03 00 00       	call   4025fa <_ZNSt15__new_allocatorIcED1Ev>
  40227c:	90                   	nop
  40227d:	b8 00 00 00 00       	mov    $0x0,%eax
  402282:	eb 2c                	jmp    4022b0 <main+0x80>
  402284:	48 89 c3             	mov    %rax,%rbx
  402287:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40228b:	48 89 c7             	mov    %rax,%rdi
  40228e:	e8 1d 01 00 00       	call   4023b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402293:	eb 03                	jmp    402298 <main+0x68>
  402295:	48 89 c3             	mov    %rax,%rbx
  402298:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
  40229c:	48 89 c7             	mov    %rax,%rdi
  40229f:	e8 56 03 00 00       	call   4025fa <_ZNSt15__new_allocatorIcED1Ev>
  4022a4:	90                   	nop
  4022a5:	48 89 d8             	mov    %rbx,%rax
  4022a8:	48 89 c7             	mov    %rax,%rdi
  4022ab:	e8 40 fe ff ff       	call   4020f0 <_Unwind_Resume@plt>
  4022b0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4022b4:	c9                   	leave
  4022b5:	c3                   	ret

00000000004022b6 <_ZNSt11char_traitsIcE6assignERcRKc>:
  4022b6:	55                   	push   %rbp
  4022b7:	48 89 e5             	mov    %rsp,%rbp
  4022ba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4022be:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4022c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4022c6:	0f b6 10             	movzbl (%rax),%edx
  4022c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022cd:	88 10                	mov    %dl,(%rax)
  4022cf:	90                   	nop
  4022d0:	5d                   	pop    %rbp
  4022d1:	c3                   	ret

00000000004022d2 <_ZNSt11char_traitsIcE6lengthEPKc>:
  4022d2:	55                   	push   %rbp
  4022d3:	48 89 e5             	mov    %rsp,%rbp
  4022d6:	48 83 ec 10          	sub    $0x10,%rsp
  4022da:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4022de:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e3:	84 c0                	test   %al,%al
  4022e5:	74 0e                	je     4022f5 <_ZNSt11char_traitsIcE6lengthEPKc+0x23>
  4022e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022eb:	48 89 c7             	mov    %rax,%rdi
  4022ee:	e8 53 00 00 00       	call   402346 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>
  4022f3:	eb 0d                	jmp    402302 <_ZNSt11char_traitsIcE6lengthEPKc+0x30>
  4022f5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022f9:	48 89 c7             	mov    %rax,%rdi
  4022fc:	e8 3f fd ff ff       	call   402040 <strlen@plt>
  402301:	90                   	nop
  402302:	c9                   	leave
  402303:	c3                   	ret

0000000000402304 <_ZNSt11char_traitsIcE4copyEPcPKcm>:
  402304:	55                   	push   %rbp
  402305:	48 89 e5             	mov    %rsp,%rbp
  402308:	48 83 ec 20          	sub    $0x20,%rsp
  40230c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402310:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402314:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402318:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40231d:	75 06                	jne    402325 <_ZNSt11char_traitsIcE4copyEPcPKcm+0x21>
  40231f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402323:	eb 1e                	jmp    402343 <_ZNSt11char_traitsIcE4copyEPcPKcm+0x3f>
  402325:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402329:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40232d:	48 89 d1             	mov    %rdx,%rcx
  402330:	48 89 c6             	mov    %rax,%rsi
  402333:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402337:	48 89 c2             	mov    %rax,%rdx
  40233a:	48 89 cf             	mov    %rcx,%rdi
  40233d:	e8 3e fd ff ff       	call   402080 <memcpy@plt>
  402342:	90                   	nop
  402343:	c9                   	leave
  402344:	c3                   	ret
  402345:	90                   	nop

0000000000402346 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>:
  402346:	55                   	push   %rbp
  402347:	48 89 e5             	mov    %rsp,%rbp
  40234a:	48 83 ec 20          	sub    $0x20,%rsp
  40234e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402352:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  402359:	00 
  40235a:	eb 05                	jmp    402361 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x1b>
  40235c:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  402361:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
  402365:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402369:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40236d:	48 01 c2             	add    %rax,%rdx
  402370:	48 8d 45 f7          	lea    -0x9(%rbp),%rax
  402374:	48 89 c6             	mov    %rax,%rsi
  402377:	48 89 d7             	mov    %rdx,%rdi
  40237a:	e8 f4 00 00 00       	call   402473 <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>
  40237f:	83 f0 01             	xor    $0x1,%eax
  402382:	84 c0                	test   %al,%al
  402384:	75 d6                	jne    40235c <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x16>
  402386:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40238a:	c9                   	leave
  40238b:	c3                   	ret

000000000040238c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
  40238c:	55                   	push   %rbp
  40238d:	48 89 e5             	mov    %rsp,%rbp
  402390:	48 83 ec 20          	sub    $0x20,%rsp
  402394:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402398:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40239c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4023a0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023a4:	48 89 c7             	mov    %rax,%rdi
  4023a7:	e8 4e 02 00 00       	call   4025fa <_ZNSt15__new_allocatorIcED1Ev>
  4023ac:	90                   	nop
  4023ad:	90                   	nop
  4023ae:	c9                   	leave
  4023af:	c3                   	ret

00000000004023b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
  4023b0:	55                   	push   %rbp
  4023b1:	48 89 e5             	mov    %rsp,%rbp
  4023b4:	48 83 ec 10          	sub    $0x10,%rsp
  4023b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4023bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023c0:	48 89 c7             	mov    %rax,%rdi
  4023c3:	e8 48 01 00 00       	call   402510 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
  4023c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023cc:	48 89 c7             	mov    %rax,%rdi
  4023cf:	e8 b8 ff ff ff       	call   40238c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
  4023d4:	90                   	nop
  4023d5:	c9                   	leave
  4023d6:	c3                   	ret
  4023d7:	90                   	nop

00000000004023d8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>:
  4023d8:	55                   	push   %rbp
  4023d9:	48 89 e5             	mov    %rsp,%rbp
  4023dc:	53                   	push   %rbx
  4023dd:	48 83 ec 38          	sub    $0x38,%rsp
  4023e1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4023e5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4023e9:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  4023ed:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  4023f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4023f5:	48 89 c7             	mov    %rax,%rdi
  4023f8:	e8 a9 00 00 00       	call   4024a6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
  4023fd:	48 89 c1             	mov    %rax,%rcx
  402400:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402404:	48 89 c2             	mov    %rax,%rdx
  402407:	48 89 ce             	mov    %rcx,%rsi
  40240a:	48 89 df             	mov    %rbx,%rdi
  40240d:	e8 f4 01 00 00       	call   402606 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
  402412:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  402417:	75 0a                	jne    402423 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x4b>
  402419:	bf 20 30 40 00       	mov    $0x403020,%edi
  40241e:	e8 4d fc ff ff       	call   402070 <_ZSt19__throw_logic_errorPKc@plt>
  402423:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402427:	48 89 c7             	mov    %rax,%rdi
  40242a:	e8 a3 fe ff ff       	call   4022d2 <_ZNSt11char_traitsIcE6lengthEPKc>
  40242f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  402433:	48 01 d0             	add    %rdx,%rax
  402436:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40243a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40243e:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  402442:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402446:	48 89 ce             	mov    %rcx,%rsi
  402449:	48 89 c7             	mov    %rax,%rdi
  40244c:	e8 39 02 00 00       	call   40268a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>
  402451:	eb 1a                	jmp    40246d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x95>
  402453:	48 89 c3             	mov    %rax,%rbx
  402456:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40245a:	48 89 c7             	mov    %rax,%rdi
  40245d:	e8 2a ff ff ff       	call   40238c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
  402462:	48 89 d8             	mov    %rbx,%rax
  402465:	48 89 c7             	mov    %rax,%rdi
  402468:	e8 83 fc ff ff       	call   4020f0 <_Unwind_Resume@plt>
  40246d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402471:	c9                   	leave
  402472:	c3                   	ret

0000000000402473 <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>:
  402473:	55                   	push   %rbp
  402474:	48 89 e5             	mov    %rsp,%rbp
  402477:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40247b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40247f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402483:	0f b6 10             	movzbl (%rax),%edx
  402486:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40248a:	0f b6 00             	movzbl (%rax),%eax
  40248d:	38 c2                	cmp    %al,%dl
  40248f:	0f 94 c0             	sete   %al
  402492:	5d                   	pop    %rbp
  402493:	c3                   	ret

0000000000402494 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>:
  402494:	55                   	push   %rbp
  402495:	48 89 e5             	mov    %rsp,%rbp
  402498:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40249c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4024a0:	48 8b 00             	mov    (%rax),%rax
  4024a3:	5d                   	pop    %rbp
  4024a4:	c3                   	ret
  4024a5:	90                   	nop

00000000004024a6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
  4024a6:	55                   	push   %rbp
  4024a7:	48 89 e5             	mov    %rsp,%rbp
  4024aa:	48 83 ec 10          	sub    $0x10,%rsp
  4024ae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4024b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4024b6:	48 83 c0 10          	add    $0x10,%rax
  4024ba:	48 89 c7             	mov    %rax,%rdi
  4024bd:	e8 ba 02 00 00       	call   40277c <_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc>
  4024c2:	c9                   	leave
  4024c3:	c3                   	ret

00000000004024c4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>:
  4024c4:	55                   	push   %rbp
  4024c5:	48 89 e5             	mov    %rsp,%rbp
  4024c8:	48 83 ec 20          	sub    $0x20,%rsp
  4024cc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4024d0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4024d4:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4024d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4024dc:	48 89 d6             	mov    %rdx,%rsi
  4024df:	48 89 c7             	mov    %rax,%rdi
  4024e2:	e8 f7 00 00 00       	call   4025de <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm>
  4024e7:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
  4024eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4024ef:	48 89 c7             	mov    %rax,%rdi
  4024f2:	e8 9d ff ff ff       	call   402494 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
  4024f7:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4024fb:	48 01 c2             	add    %rax,%rdx
  4024fe:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  402502:	48 89 c6             	mov    %rax,%rsi
  402505:	48 89 d7             	mov    %rdx,%rdi
  402508:	e8 a9 fd ff ff       	call   4022b6 <_ZNSt11char_traitsIcE6assignERcRKc>
  40250d:	90                   	nop
  40250e:	c9                   	leave
  40250f:	c3                   	ret

0000000000402510 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>:
  402510:	55                   	push   %rbp
  402511:	48 89 e5             	mov    %rsp,%rbp
  402514:	48 83 ec 10          	sub    $0x10,%rsp
  402518:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40251c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402520:	48 89 c7             	mov    %rax,%rdi
  402523:	e8 30 00 00 00       	call   402558 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>
  402528:	83 f0 01             	xor    $0x1,%eax
  40252b:	84 c0                	test   %al,%al
  40252d:	74 17                	je     402546 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv+0x36>
  40252f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402533:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402537:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40253b:	48 89 d6             	mov    %rdx,%rsi
  40253e:	48 89 c7             	mov    %rax,%rdi
  402541:	e8 56 02 00 00       	call   40279c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm>
  402546:	90                   	nop
  402547:	c9                   	leave
  402548:	c3                   	ret
  402549:	90                   	nop

000000000040254a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>:
  40254a:	55                   	push   %rbp
  40254b:	48 89 e5             	mov    %rsp,%rbp
  40254e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402552:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402556:	5d                   	pop    %rbp
  402557:	c3                   	ret

0000000000402558 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>:
  402558:	55                   	push   %rbp
  402559:	48 89 e5             	mov    %rsp,%rbp
  40255c:	53                   	push   %rbx
  40255d:	48 83 ec 18          	sub    $0x18,%rsp
  402561:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402565:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402569:	48 89 c7             	mov    %rax,%rdi
  40256c:	e8 23 ff ff ff       	call   402494 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
  402571:	48 89 c3             	mov    %rax,%rbx
  402574:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402578:	48 89 c7             	mov    %rax,%rdi
  40257b:	e8 8e 03 00 00       	call   40290e <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
  402580:	48 39 c3             	cmp    %rax,%rbx
  402583:	0f 94 c0             	sete   %al
  402586:	84 c0                	test   %al,%al
  402588:	74 13                	je     40259d <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv+0x45>
  40258a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40258e:	48 8b 40 08          	mov    0x8(%rax),%rax
  402592:	48 83 f8 0f          	cmp    $0xf,%rax
  402596:	b8 01 00 00 00       	mov    $0x1,%eax
  40259b:	eb 05                	jmp    4025a2 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv+0x4a>
  40259d:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4025a6:	c9                   	leave
  4025a7:	c3                   	ret

00000000004025a8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>:
  4025a8:	55                   	push   %rbp
  4025a9:	48 89 e5             	mov    %rsp,%rbp
  4025ac:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4025b0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4025b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025b8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4025bc:	48 89 10             	mov    %rdx,(%rax)
  4025bf:	90                   	nop
  4025c0:	5d                   	pop    %rbp
  4025c1:	c3                   	ret

00000000004025c2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm>:
  4025c2:	55                   	push   %rbp
  4025c3:	48 89 e5             	mov    %rsp,%rbp
  4025c6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4025ca:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4025ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025d2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4025d6:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4025da:	90                   	nop
  4025db:	5d                   	pop    %rbp
  4025dc:	c3                   	ret
  4025dd:	90                   	nop

00000000004025de <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm>:
  4025de:	55                   	push   %rbp
  4025df:	48 89 e5             	mov    %rsp,%rbp
  4025e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4025e6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4025ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025ee:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4025f2:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4025f6:	90                   	nop
  4025f7:	5d                   	pop    %rbp
  4025f8:	c3                   	ret
  4025f9:	90                   	nop

00000000004025fa <_ZNSt15__new_allocatorIcED1Ev>:
  4025fa:	55                   	push   %rbp
  4025fb:	48 89 e5             	mov    %rsp,%rbp
  4025fe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402602:	90                   	nop
  402603:	5d                   	pop    %rbp
  402604:	c3                   	ret
  402605:	90                   	nop

0000000000402606 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>:
  402606:	55                   	push   %rbp
  402607:	48 89 e5             	mov    %rsp,%rbp
  40260a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40260e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  402612:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  402616:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40261a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40261e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402622:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402626:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40262a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40262e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402632:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  402636:	90                   	nop
  402637:	90                   	nop
  402638:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40263c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  402640:	48 89 10             	mov    %rdx,(%rax)
  402643:	90                   	nop
  402644:	5d                   	pop    %rbp
  402645:	c3                   	ret

0000000000402646 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_>:
  402646:	55                   	push   %rbp
  402647:	48 89 e5             	mov    %rsp,%rbp
  40264a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40264e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402652:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402656:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40265a:	48 89 10             	mov    %rdx,(%rax)
  40265d:	90                   	nop
  40265e:	5d                   	pop    %rbp
  40265f:	c3                   	ret

0000000000402660 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev>:
  402660:	55                   	push   %rbp
  402661:	48 89 e5             	mov    %rsp,%rbp
  402664:	48 83 ec 10          	sub    $0x10,%rsp
  402668:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40266c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402670:	48 8b 00             	mov    (%rax),%rax
  402673:	48 85 c0             	test   %rax,%rax
  402676:	74 0f                	je     402687 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev+0x27>
  402678:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40267c:	48 8b 00             	mov    (%rax),%rax
  40267f:	48 89 c7             	mov    %rax,%rdi
  402682:	e8 89 fe ff ff       	call   402510 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
  402687:	90                   	nop
  402688:	c9                   	leave
  402689:	c3                   	ret

000000000040268a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>:
  40268a:	55                   	push   %rbp
  40268b:	48 89 e5             	mov    %rsp,%rbp
  40268e:	48 83 ec 60          	sub    $0x60,%rsp
  402692:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  402696:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  40269a:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  40269e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4026a2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4026a6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4026aa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4026ae:	90                   	nop
  4026af:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4026b3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4026b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026bb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4026bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026c3:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
  4026c7:	90                   	nop
  4026c8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4026cc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4026d0:	48 83 f8 0f          	cmp    $0xf,%rax
  4026d4:	76 3f                	jbe    402715 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x8b>
  4026d6:	48 8d 4d d8          	lea    -0x28(%rbp),%rcx
  4026da:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4026de:	ba 00 00 00 00       	mov    $0x0,%edx
  4026e3:	48 89 ce             	mov    %rcx,%rsi
  4026e6:	48 89 c7             	mov    %rax,%rdi
  4026e9:	e8 12 01 00 00       	call   402800 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm>
  4026ee:	48 89 c2             	mov    %rax,%rdx
  4026f1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4026f5:	48 89 d6             	mov    %rdx,%rsi
  4026f8:	48 89 c7             	mov    %rax,%rdi
  4026fb:	e8 a8 fe ff ff       	call   4025a8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
  402700:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402704:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402708:	48 89 d6             	mov    %rdx,%rsi
  40270b:	48 89 c7             	mov    %rax,%rdi
  40270e:	e8 af fe ff ff       	call   4025c2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm>
  402713:	eb 09                	jmp    40271e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x94>
  402715:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402719:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40271d:	90                   	nop
  40271e:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  402722:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  402726:	48 89 d6             	mov    %rdx,%rsi
  402729:	48 89 c7             	mov    %rax,%rdi
  40272c:	e8 15 ff ff ff       	call   402646 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_>
  402731:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402735:	48 89 c7             	mov    %rax,%rdi
  402738:	e8 57 fd ff ff       	call   402494 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
  40273d:	48 89 c1             	mov    %rax,%rcx
  402740:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  402744:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  402748:	48 89 c6             	mov    %rax,%rsi
  40274b:	48 89 cf             	mov    %rcx,%rdi
  40274e:	e8 6b 02 00 00       	call   4029be <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_>
  402753:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  40275a:	00 
  40275b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40275f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402763:	48 89 d6             	mov    %rdx,%rsi
  402766:	48 89 c7             	mov    %rax,%rdi
  402769:	e8 56 fd ff ff       	call   4024c4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
  40276e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  402772:	48 89 c7             	mov    %rax,%rdi
  402775:	e8 e6 fe ff ff       	call   402660 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev>
  40277a:	c9                   	leave
  40277b:	c3                   	ret

000000000040277c <_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc>:
  40277c:	55                   	push   %rbp
  40277d:	48 89 e5             	mov    %rsp,%rbp
  402780:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402784:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402788:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40278c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402790:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402794:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402798:	90                   	nop
  402799:	5d                   	pop    %rbp
  40279a:	c3                   	ret
  40279b:	90                   	nop

000000000040279c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm>:
  40279c:	55                   	push   %rbp
  40279d:	48 89 e5             	mov    %rsp,%rbp
  4027a0:	41 54                	push   %r12
  4027a2:	53                   	push   %rbx
  4027a3:	48 83 ec 30          	sub    $0x30,%rsp
  4027a7:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4027ab:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  4027af:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4027b3:	4c 8d 60 01          	lea    0x1(%rax),%r12
  4027b7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4027bb:	48 89 c7             	mov    %rax,%rdi
  4027be:	e8 d1 fc ff ff       	call   402494 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
  4027c3:	48 89 c3             	mov    %rax,%rbx
  4027c6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4027ca:	48 89 c7             	mov    %rax,%rdi
  4027cd:	e8 78 fd ff ff       	call   40254a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
  4027d2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4027d6:	48 89 5d e0          	mov    %rbx,-0x20(%rbp)
  4027da:	4c 89 65 d8          	mov    %r12,-0x28(%rbp)
  4027de:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4027e2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4027e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027ea:	48 89 ce             	mov    %rcx,%rsi
  4027ed:	48 89 c7             	mov    %rax,%rdi
  4027f0:	e8 77 02 00 00       	call   402a6c <_ZNSt15__new_allocatorIcE10deallocateEPcm>
  4027f5:	90                   	nop
  4027f6:	90                   	nop
  4027f7:	48 83 c4 30          	add    $0x30,%rsp
  4027fb:	5b                   	pop    %rbx
  4027fc:	41 5c                	pop    %r12
  4027fe:	5d                   	pop    %rbp
  4027ff:	c3                   	ret

0000000000402800 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm>:
  402800:	55                   	push   %rbp
  402801:	48 89 e5             	mov    %rsp,%rbp
  402804:	53                   	push   %rbx
  402805:	48 83 ec 28          	sub    $0x28,%rsp
  402809:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40280d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402811:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402815:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402819:	48 8b 18             	mov    (%rax),%rbx
  40281c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402820:	48 89 c7             	mov    %rax,%rdi
  402823:	e8 30 01 00 00       	call   402958 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
  402828:	48 39 d8             	cmp    %rbx,%rax
  40282b:	0f 92 c0             	setb   %al
  40282e:	84 c0                	test   %al,%al
  402830:	74 0a                	je     40283c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0x3c>
  402832:	bf 52 30 40 00       	mov    $0x403052,%edi
  402837:	e8 24 f8 ff ff       	call   402060 <_ZSt20__throw_length_errorPKc@plt>
  40283c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402840:	48 8b 00             	mov    (%rax),%rax
  402843:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
  402847:	73 52                	jae    40289b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0x9b>
  402849:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40284d:	48 8b 10             	mov    (%rax),%rdx
  402850:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402854:	48 01 c0             	add    %rax,%rax
  402857:	48 39 c2             	cmp    %rax,%rdx
  40285a:	73 3f                	jae    40289b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0x9b>
  40285c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402860:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
  402864:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402868:	48 89 10             	mov    %rdx,(%rax)
  40286b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40286f:	48 8b 18             	mov    (%rax),%rbx
  402872:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402876:	48 89 c7             	mov    %rax,%rdi
  402879:	e8 da 00 00 00       	call   402958 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
  40287e:	48 39 d8             	cmp    %rbx,%rax
  402881:	0f 92 c0             	setb   %al
  402884:	84 c0                	test   %al,%al
  402886:	74 13                	je     40289b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0x9b>
  402888:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40288c:	48 89 c7             	mov    %rax,%rdi
  40288f:	e8 c4 00 00 00       	call   402958 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
  402894:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402898:	48 89 02             	mov    %rax,(%rdx)
  40289b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40289f:	48 8b 00             	mov    (%rax),%rax
  4028a2:	48 8d 58 01          	lea    0x1(%rax),%rbx
  4028a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4028aa:	48 89 c7             	mov    %rax,%rdi
  4028ad:	e8 98 fc ff ff       	call   40254a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
  4028b2:	48 89 de             	mov    %rbx,%rsi
  4028b5:	48 89 c7             	mov    %rax,%rdi
  4028b8:	e8 3e 01 00 00       	call   4029fb <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m>
  4028bd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4028c1:	c9                   	leave
  4028c2:	c3                   	ret

00000000004028c3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>:
  4028c3:	55                   	push   %rbp
  4028c4:	48 89 e5             	mov    %rsp,%rbp
  4028c7:	48 83 ec 20          	sub    $0x20,%rsp
  4028cb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4028cf:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4028d3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4028d7:	48 83 7d e8 01       	cmpq   $0x1,-0x18(%rbp)
  4028dc:	75 15                	jne    4028f3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm+0x30>
  4028de:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4028e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4028e6:	48 89 d6             	mov    %rdx,%rsi
  4028e9:	48 89 c7             	mov    %rax,%rdi
  4028ec:	e8 c5 f9 ff ff       	call   4022b6 <_ZNSt11char_traitsIcE6assignERcRKc>
  4028f1:	eb 17                	jmp    40290a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm+0x47>
  4028f3:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4028f7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4028fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4028ff:	48 89 ce             	mov    %rcx,%rsi
  402902:	48 89 c7             	mov    %rax,%rdi
  402905:	e8 fa f9 ff ff       	call   402304 <_ZNSt11char_traitsIcE4copyEPcPKcm>
  40290a:	90                   	nop
  40290b:	c9                   	leave
  40290c:	c3                   	ret
  40290d:	90                   	nop

000000000040290e <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
  40290e:	55                   	push   %rbp
  40290f:	48 89 e5             	mov    %rsp,%rbp
  402912:	48 83 ec 10          	sub    $0x10,%rsp
  402916:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40291a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40291e:	48 83 c0 10          	add    $0x10,%rax
  402922:	48 89 c7             	mov    %rax,%rdi
  402925:	e8 14 01 00 00       	call   402a3e <_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_>
  40292a:	c9                   	leave
  40292b:	c3                   	ret

000000000040292c <_ZSt3minImERKT_S2_S2_>:
  40292c:	55                   	push   %rbp
  40292d:	48 89 e5             	mov    %rsp,%rbp
  402930:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402934:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402938:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40293c:	48 8b 10             	mov    (%rax),%rdx
  40293f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402943:	48 8b 00             	mov    (%rax),%rax
  402946:	48 39 c2             	cmp    %rax,%rdx
  402949:	73 06                	jae    402951 <_ZSt3minImERKT_S2_S2_+0x25>
  40294b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40294f:	eb 04                	jmp    402955 <_ZSt3minImERKT_S2_S2_+0x29>
  402951:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402955:	5d                   	pop    %rbp
  402956:	c3                   	ret
  402957:	90                   	nop

0000000000402958 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>:
  402958:	55                   	push   %rbp
  402959:	48 89 e5             	mov    %rsp,%rbp
  40295c:	48 83 ec 40          	sub    $0x40,%rsp
  402960:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  402964:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
  40296b:	ff ff 7f 
  40296e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  402972:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402976:	48 89 c7             	mov    %rax,%rdi
  402979:	e8 e0 00 00 00       	call   402a5e <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
  40297e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402982:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402986:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40298a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40298e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402992:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
  402999:	ff ff 7f 
  40299c:	90                   	nop
  40299d:	90                   	nop
  40299e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4029a2:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  4029a6:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4029aa:	48 89 d6             	mov    %rdx,%rsi
  4029ad:	48 89 c7             	mov    %rax,%rdi
  4029b0:	e8 77 ff ff ff       	call   40292c <_ZSt3minImERKT_S2_S2_>
  4029b5:	48 8b 00             	mov    (%rax),%rax
  4029b8:	48 83 e8 01          	sub    $0x1,%rax
  4029bc:	c9                   	leave
  4029bd:	c3                   	ret

00000000004029be <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_>:
  4029be:	55                   	push   %rbp
  4029bf:	48 89 e5             	mov    %rsp,%rbp
  4029c2:	48 83 ec 30          	sub    $0x30,%rsp
  4029c6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4029ca:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4029ce:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4029d2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4029d6:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
  4029da:	48 89 c2             	mov    %rax,%rdx
  4029dd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4029e1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4029e5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4029e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4029ed:	48 89 ce             	mov    %rcx,%rsi
  4029f0:	48 89 c7             	mov    %rax,%rdi
  4029f3:	e8 cb fe ff ff       	call   4028c3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
  4029f8:	90                   	nop
  4029f9:	c9                   	leave
  4029fa:	c3                   	ret

00000000004029fb <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m>:
  4029fb:	55                   	push   %rbp
  4029fc:	48 89 e5             	mov    %rsp,%rbp
  4029ff:	48 83 ec 30          	sub    $0x30,%rsp
  402a03:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  402a07:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  402a0b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402a0f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402a13:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402a17:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402a1b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  402a1f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a23:	ba 00 00 00 00       	mov    $0x0,%edx
  402a28:	48 89 ce             	mov    %rcx,%rsi
  402a2b:	48 89 c7             	mov    %rax,%rdi
  402a2e:	e8 63 00 00 00       	call   402a96 <_ZNSt15__new_allocatorIcE8allocateEmPKv>
  402a33:	90                   	nop
  402a34:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402a38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a3c:	c9                   	leave
  402a3d:	c3                   	ret

0000000000402a3e <_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_>:
  402a3e:	55                   	push   %rbp
  402a3f:	48 89 e5             	mov    %rsp,%rbp
  402a42:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402a46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402a4a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402a4e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a52:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402a56:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a5a:	90                   	nop
  402a5b:	5d                   	pop    %rbp
  402a5c:	c3                   	ret
  402a5d:	90                   	nop

0000000000402a5e <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>:
  402a5e:	55                   	push   %rbp
  402a5f:	48 89 e5             	mov    %rsp,%rbp
  402a62:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402a66:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a6a:	5d                   	pop    %rbp
  402a6b:	c3                   	ret

0000000000402a6c <_ZNSt15__new_allocatorIcE10deallocateEPcm>:
  402a6c:	55                   	push   %rbp
  402a6d:	48 89 e5             	mov    %rsp,%rbp
  402a70:	48 83 ec 20          	sub    $0x20,%rsp
  402a74:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402a78:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402a7c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402a80:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402a84:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a88:	48 89 d6             	mov    %rdx,%rsi
  402a8b:	48 89 c7             	mov    %rax,%rdi
  402a8e:	e8 2d f6 ff ff       	call   4020c0 <_ZdlPvm@plt>
  402a93:	c9                   	leave
  402a94:	c3                   	ret
  402a95:	90                   	nop

0000000000402a96 <_ZNSt15__new_allocatorIcE8allocateEmPKv>:
  402a96:	55                   	push   %rbp
  402a97:	48 89 e5             	mov    %rsp,%rbp
  402a9a:	48 83 ec 30          	sub    $0x30,%rsp
  402a9e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402aa2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402aa6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402aaa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402aae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402ab2:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
  402ab9:	ff ff 7f 
  402abc:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  402ac0:	0f 92 c0             	setb   %al
  402ac3:	0f b6 c0             	movzbl %al,%eax
  402ac6:	48 85 c0             	test   %rax,%rax
  402ac9:	0f 95 c0             	setne  %al
  402acc:	84 c0                	test   %al,%al
  402ace:	74 05                	je     402ad5 <_ZNSt15__new_allocatorIcE8allocateEmPKv+0x3f>
  402ad0:	e8 5b f5 ff ff       	call   402030 <_ZSt17__throw_bad_allocv@plt>
  402ad5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402ad9:	48 89 c7             	mov    %rax,%rdi
  402adc:	e8 cf f5 ff ff       	call   4020b0 <_Znwm@plt>
  402ae1:	90                   	nop
  402ae2:	c9                   	leave
  402ae3:	c3                   	ret

Disassembly of section .fini:

0000000000402ae4 <_fini>:
  402ae4:	48 83 ec 08          	sub    $0x8,%rsp
  402ae8:	48 83 c4 08          	add    $0x8,%rsp
  402aec:	c3                   	ret
