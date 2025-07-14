
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    rsp,0x8
  401004:	48 8b 05 d5 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd5]        # 403fe0 <__gmon_start__@Base>
  40100b:	48 85 c0             	test   rax,rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	call   rax
  401012:	48 83 c4 08          	add    rsp,0x8
  401016:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <std::ostream::put(char)@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <std::ostream::put(char)@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 404000 <std::ostream::put(char)@GLIBCXX_3.4>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <std::ostream::flush()@plt>:
  401040:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 404008 <std::ostream::flush()@GLIBCXX_3.4>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>:
  401050:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 404010 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@GLIBCXX_3.4.9>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <std::ctype<char>::_M_widen_init() const@plt>:
  401060:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 404018 <std::ctype<char>::_M_widen_init() const@GLIBCXX_3.4.11>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>:
  401070:	ff 25 aa 2f 00 00    	jmp    QWORD PTR [rip+0x2faa]        # 404020 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@GLIBCXX_3.4.21>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <std::__throw_bad_cast()@plt>:
  401080:	ff 25 a2 2f 00 00    	jmp    QWORD PTR [rip+0x2fa2]        # 404028 <std::__throw_bad_cast()@GLIBCXX_3.4>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <__gxx_personality_v0@plt>:
  401090:	ff 25 9a 2f 00 00    	jmp    QWORD PTR [rip+0x2f9a]        # 404030 <__gxx_personality_v0@CXXABI_1.3>
  401096:	68 06 00 00 00       	push   0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <_Unwind_Resume@plt>:
  4010a0:	ff 25 92 2f 00 00    	jmp    QWORD PTR [rip+0x2f92]        # 404038 <_Unwind_Resume@GCC_3.0>
  4010a6:	68 07 00 00 00       	push   0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

00000000004010b0 <greet(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [clone .cold]>:
  4010b0:	e8 cb ff ff ff       	call   401080 <std::__throw_bad_cast()@plt>

00000000004010b5 <main.cold>:
  4010b5:	48 89 e7             	mov    rdi,rsp
  4010b8:	e8 b3 ff ff ff       	call   401070 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
  4010bd:	48 89 df             	mov    rdi,rbx
  4010c0:	e8 db ff ff ff       	call   4010a0 <_Unwind_Resume@plt>
  4010c5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4010cc:	00 00 00 
  4010cf:	90                   	nop

00000000004010d0 <main>:
  4010d0:	53                   	push   rbx
  4010d1:	48 83 ec 20          	sub    rsp,0x20
  4010d5:	48 8d 44 24 10       	lea    rax,[rsp+0x10]
  4010da:	48 89 e7             	mov    rdi,rsp
  4010dd:	c7 44 24 10 41 6c 65 	mov    DWORD PTR [rsp+0x10],0x78656c41
  4010e4:	78 
  4010e5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  4010e9:	b8 65 69 00 00       	mov    eax,0x6965
  4010ee:	66 89 44 24 14       	mov    WORD PTR [rsp+0x14],ax
  4010f3:	48 c7 44 24 08 06 00 	mov    QWORD PTR [rsp+0x8],0x6
  4010fa:	00 00 
  4010fc:	c6 44 24 16 00       	mov    BYTE PTR [rsp+0x16],0x0
  401101:	e8 0a 01 00 00       	call   401210 <greet(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)>
  401106:	48 89 e7             	mov    rdi,rsp
  401109:	e8 62 ff ff ff       	call   401070 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
  40110e:	48 83 c4 20          	add    rsp,0x20
  401112:	31 c0                	xor    eax,eax
  401114:	5b                   	pop    rbx
  401115:	c3                   	ret
  401116:	48 89 c3             	mov    rbx,rax
  401119:	e9 97 ff ff ff       	jmp    4010b5 <main.cold>
  40111e:	66 90                	xchg   ax,ax

0000000000401120 <_start>:
  401120:	31 ed                	xor    ebp,ebp
  401122:	49 89 d1             	mov    r9,rdx
  401125:	5e                   	pop    rsi
  401126:	48 89 e2             	mov    rdx,rsp
  401129:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40112d:	50                   	push   rax
  40112e:	54                   	push   rsp
  40112f:	45 31 c0             	xor    r8d,r8d
  401132:	31 c9                	xor    ecx,ecx
  401134:	48 c7 c7 d0 10 40 00 	mov    rdi,0x4010d0
  40113b:	ff 15 97 2e 00 00    	call   QWORD PTR [rip+0x2e97]        # 403fd8 <__libc_start_main@GLIBC_2.34>
  401141:	f4                   	hlt
  401142:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  401149:	00 00 00 
  40114c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401150 <_dl_relocate_static_pie>:
  401150:	c3                   	ret
  401151:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  401158:	00 00 00 
  40115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401160 <deregister_tm_clones>:
  401160:	b8 50 40 40 00       	mov    eax,0x404050
  401165:	48 3d 50 40 40 00    	cmp    rax,0x404050
  40116b:	74 13                	je     401180 <deregister_tm_clones+0x20>
  40116d:	b8 00 00 00 00       	mov    eax,0x0
  401172:	48 85 c0             	test   rax,rax
  401175:	74 09                	je     401180 <deregister_tm_clones+0x20>
  401177:	bf 50 40 40 00       	mov    edi,0x404050
  40117c:	ff e0                	jmp    rax
  40117e:	66 90                	xchg   ax,ax
  401180:	c3                   	ret
  401181:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401188:	00 00 00 00 
  40118c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401190 <register_tm_clones>:
  401190:	be 50 40 40 00       	mov    esi,0x404050
  401195:	48 81 ee 50 40 40 00 	sub    rsi,0x404050
  40119c:	48 89 f0             	mov    rax,rsi
  40119f:	48 c1 ee 3f          	shr    rsi,0x3f
  4011a3:	48 c1 f8 03          	sar    rax,0x3
  4011a7:	48 01 c6             	add    rsi,rax
  4011aa:	48 d1 fe             	sar    rsi,1
  4011ad:	74 11                	je     4011c0 <register_tm_clones+0x30>
  4011af:	b8 00 00 00 00       	mov    eax,0x0
  4011b4:	48 85 c0             	test   rax,rax
  4011b7:	74 07                	je     4011c0 <register_tm_clones+0x30>
  4011b9:	bf 50 40 40 00       	mov    edi,0x404050
  4011be:	ff e0                	jmp    rax
  4011c0:	c3                   	ret
  4011c1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4011c8:	00 00 00 00 
  4011cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004011d0 <__do_global_dtors_aux>:
  4011d0:	f3 0f 1e fa          	endbr64
  4011d4:	80 3d b5 2f 00 00 00 	cmp    BYTE PTR [rip+0x2fb5],0x0        # 404190 <completed.0>
  4011db:	75 13                	jne    4011f0 <__do_global_dtors_aux+0x20>
  4011dd:	55                   	push   rbp
  4011de:	48 89 e5             	mov    rbp,rsp
  4011e1:	e8 7a ff ff ff       	call   401160 <deregister_tm_clones>
  4011e6:	c6 05 a3 2f 00 00 01 	mov    BYTE PTR [rip+0x2fa3],0x1        # 404190 <completed.0>
  4011ed:	5d                   	pop    rbp
  4011ee:	c3                   	ret
  4011ef:	90                   	nop
  4011f0:	c3                   	ret
  4011f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4011f8:	00 00 00 00 
  4011fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401200 <frame_dummy>:
  401200:	f3 0f 1e fa          	endbr64
  401204:	eb 8a                	jmp    401190 <register_tm_clones>
  401206:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40120d:	00 00 00 

0000000000401210 <greet(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)>:
  401210:	53                   	push   rbx
  401211:	ba 07 00 00 00       	mov    edx,0x7
  401216:	48 89 fb             	mov    rbx,rdi
  401219:	be 04 20 40 00       	mov    esi,0x402004
  40121e:	bf 80 40 40 00       	mov    edi,0x404080
  401223:	48 83 ec 10          	sub    rsp,0x10
  401227:	e8 24 fe ff ff       	call   401050 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
  40122c:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
  401230:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
  401233:	bf 80 40 40 00       	mov    edi,0x404080
  401238:	e8 13 fe ff ff       	call   401050 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
  40123d:	ba 01 00 00 00       	mov    edx,0x1
  401242:	be 0c 20 40 00       	mov    esi,0x40200c
  401247:	48 89 c3             	mov    rbx,rax
  40124a:	48 89 c7             	mov    rdi,rax
  40124d:	e8 fe fd ff ff       	call   401050 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
  401252:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  401255:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
  401259:	48 8b bc 03 f0 00 00 	mov    rdi,QWORD PTR [rbx+rax*1+0xf0]
  401260:	00 
  401261:	48 85 ff             	test   rdi,rdi
  401264:	0f 84 46 fe ff ff    	je     4010b0 <greet(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [clone .cold]>
  40126a:	80 7f 38 00          	cmp    BYTE PTR [rdi+0x38],0x0
  40126e:	74 20                	je     401290 <greet(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)+0x80>
  401270:	0f be 77 43          	movsx  esi,BYTE PTR [rdi+0x43]
  401274:	48 89 df             	mov    rdi,rbx
  401277:	e8 b4 fd ff ff       	call   401030 <std::ostream::put(char)@plt>
  40127c:	48 83 c4 10          	add    rsp,0x10
  401280:	48 89 c7             	mov    rdi,rax
  401283:	5b                   	pop    rbx
  401284:	e9 b7 fd ff ff       	jmp    401040 <std::ostream::flush()@plt>
  401289:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401290:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
  401295:	e8 c6 fd ff ff       	call   401060 <std::ctype<char>::_M_widen_init() const@plt>
  40129a:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  40129f:	be 0a 00 00 00       	mov    esi,0xa
  4012a4:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  4012a7:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
  4012ab:	48 3d c0 12 40 00    	cmp    rax,0x4012c0
  4012b1:	74 c1                	je     401274 <greet(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)+0x64>
  4012b3:	ff d0                	call   rax
  4012b5:	0f be f0             	movsx  esi,al
  4012b8:	eb ba                	jmp    401274 <greet(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)+0x64>
  4012ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004012c0 <std::ctype<char>::do_widen(char) const>:
  4012c0:	89 f0                	mov    eax,esi
  4012c2:	c3                   	ret

Disassembly of section .fini:

00000000004012c4 <_fini>:
  4012c4:	48 83 ec 08          	sub    rsp,0x8
  4012c8:	48 83 c4 08          	add    rsp,0x8
  4012cc:	c3                   	ret
