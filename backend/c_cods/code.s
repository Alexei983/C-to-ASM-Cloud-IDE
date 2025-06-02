	.file	"code.c"
# GNU C23 (GCC) version 15.1.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello, %s!\n"
	.text
	.p2align 4
	.globl	greet
	.type	greet, @function
greet:
.LFB11:
	.cfi_startproc
# code.c:3: void greet(const char *name) {
	movq	%rdi, %rsi	# name, name
# code.c:4: 	printf("Hello, %s!\n", name);
	xorl	%eax, %eax	#
	movl	$.LC0, %edi	#,
	jmp	printf	#
	.cfi_endproc
.LFE11:
	.size	greet, .-greet
	.section	.rodata.str1.1
.LC1:
	.string	"Alexei"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# code.c:4: 	printf("Hello, %s!\n", name);
	movl	$.LC1, %esi	#,
	movl	$.LC0, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
# code.c:10: }
	xorl	%eax, %eax	#
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
