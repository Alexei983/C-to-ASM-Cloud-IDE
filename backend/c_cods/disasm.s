
program:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 d5 2f 00 00 	mov    0x2fd5(%rip),%rax        # 403fe0 <__gmon_start__@Base>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	call   *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <printf@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <printf@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 404000 <printf@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401040 <main>:
  401040:	48 83 ec 08          	sub    $0x8,%rsp
  401044:	be 10 20 40 00       	mov    $0x402010,%esi
  401049:	bf 04 20 40 00       	mov    $0x402004,%edi
  40104e:	31 c0                	xor    %eax,%eax
  401050:	e8 db ff ff ff       	call   401030 <printf@plt>
  401055:	31 c0                	xor    %eax,%eax
  401057:	48 83 c4 08          	add    $0x8,%rsp
  40105b:	c3                   	ret
  40105c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401060 <_start>:
  401060:	31 ed                	xor    %ebp,%ebp
  401062:	49 89 d1             	mov    %rdx,%r9
  401065:	5e                   	pop    %rsi
  401066:	48 89 e2             	mov    %rsp,%rdx
  401069:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40106d:	50                   	push   %rax
  40106e:	54                   	push   %rsp
  40106f:	45 31 c0             	xor    %r8d,%r8d
  401072:	31 c9                	xor    %ecx,%ecx
  401074:	48 c7 c7 40 10 40 00 	mov    $0x401040,%rdi
  40107b:	ff 15 57 2f 00 00    	call   *0x2f57(%rip)        # 403fd8 <__libc_start_main@GLIBC_2.34>
  401081:	f4                   	hlt
  401082:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  401089:	00 00 00 
  40108c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401090 <_dl_relocate_static_pie>:
  401090:	c3                   	ret
  401091:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  401098:	00 00 00 
  40109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010a0 <deregister_tm_clones>:
  4010a0:	b8 18 40 40 00       	mov    $0x404018,%eax
  4010a5:	48 3d 18 40 40 00    	cmp    $0x404018,%rax
  4010ab:	74 13                	je     4010c0 <deregister_tm_clones+0x20>
  4010ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4010b2:	48 85 c0             	test   %rax,%rax
  4010b5:	74 09                	je     4010c0 <deregister_tm_clones+0x20>
  4010b7:	bf 18 40 40 00       	mov    $0x404018,%edi
  4010bc:	ff e0                	jmp    *%rax
  4010be:	66 90                	xchg   %ax,%ax
  4010c0:	c3                   	ret
  4010c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010c8:	00 00 00 00 
  4010cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010d0 <register_tm_clones>:
  4010d0:	be 18 40 40 00       	mov    $0x404018,%esi
  4010d5:	48 81 ee 18 40 40 00 	sub    $0x404018,%rsi
  4010dc:	48 89 f0             	mov    %rsi,%rax
  4010df:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010e3:	48 c1 f8 03          	sar    $0x3,%rax
  4010e7:	48 01 c6             	add    %rax,%rsi
  4010ea:	48 d1 fe             	sar    %rsi
  4010ed:	74 11                	je     401100 <register_tm_clones+0x30>
  4010ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4010f4:	48 85 c0             	test   %rax,%rax
  4010f7:	74 07                	je     401100 <register_tm_clones+0x30>
  4010f9:	bf 18 40 40 00       	mov    $0x404018,%edi
  4010fe:	ff e0                	jmp    *%rax
  401100:	c3                   	ret
  401101:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401108:	00 00 00 00 
  40110c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401110 <__do_global_dtors_aux>:
  401110:	f3 0f 1e fa          	endbr64
  401114:	80 3d fd 2e 00 00 00 	cmpb   $0x0,0x2efd(%rip)        # 404018 <__TMC_END__>
  40111b:	75 13                	jne    401130 <__do_global_dtors_aux+0x20>
  40111d:	55                   	push   %rbp
  40111e:	48 89 e5             	mov    %rsp,%rbp
  401121:	e8 7a ff ff ff       	call   4010a0 <deregister_tm_clones>
  401126:	c6 05 eb 2e 00 00 01 	movb   $0x1,0x2eeb(%rip)        # 404018 <__TMC_END__>
  40112d:	5d                   	pop    %rbp
  40112e:	c3                   	ret
  40112f:	90                   	nop
  401130:	c3                   	ret
  401131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401140 <frame_dummy>:
  401140:	f3 0f 1e fa          	endbr64
  401144:	eb 8a                	jmp    4010d0 <register_tm_clones>
  401146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40114d:	00 00 00 

0000000000401150 <greet>:
  401150:	48 89 fe             	mov    %rdi,%rsi
  401153:	31 c0                	xor    %eax,%eax
  401155:	bf 04 20 40 00       	mov    $0x402004,%edi
  40115a:	e9 d1 fe ff ff       	jmp    401030 <printf@plt>

Disassembly of section .fini:

0000000000401160 <_fini>:
  401160:	48 83 ec 08          	sub    $0x8,%rsp
  401164:	48 83 c4 08          	add    $0x8,%rsp
  401168:	c3                   	ret
