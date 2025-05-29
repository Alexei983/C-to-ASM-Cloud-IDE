	.file	"code.c"
# GNU C23 (GCC) version 15.1.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello World"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB17:
	.cfi_startproc
# code.c:91:     printf("Hello World");
	movl	$.LC0, %edi	#,
	xorl	%eax, %eax	#
	jmp	printf	#
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.globl	microcode
	.data
	.align 32
	.type	microcode, @object
	.size	microcode, 6144
microcode:
	.long	0
	.long	1
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	1
	.long	2
	.long	4
	.long	12
	.long	12
	.long	0
	.long	1
	.long	5
	.long	3
	.long	12
	.long	12
	.long	0
	.long	1
	.long	4
	.long	12
	.long	12
	.long	12
	.long	0
	.long	1
	.long	2
	.long	6
	.long	12
	.long	12
	.long	0
	.long	1
	.long	2
	.long	7
	.long	12
	.long	12
	.long	0
	.long	1
	.long	2
	.long	12
	.long	12
	.zero	4
	.long	0
	.long	1
	.long	2
	.long	12
	.long	12
	.zero	4
	.long	0
	.long	1
	.long	2
	.long	12
	.long	12
	.zero	4
	.long	0
	.long	1
	.long	10
	.long	12
	.long	12
	.long	12
	.long	0
	.long	1
	.long	8
	.long	12
	.long	12
	.long	12
	.long	0
	.long	1
	.long	9
	.long	8
	.long	12
	.long	12
	.long	0
	.long	1
	.long	8
	.long	12
	.long	12
	.zero	4
	.long	0
	.long	1
	.long	8
	.long	12
	.long	12
	.zero	4
	.long	0
	.long	1
	.long	2
	.long	7
	.long	12
	.long	12
	.long	0
	.long	1
	.long	11
	.long	12
	.long	12
	.long	12
	.zero	5736
	.long	11
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.globl	memory
	.align 32
	.type	memory, @object
	.size	memory, 256
memory:
	.string	"\001\n\004\005\005\003\377"
	.zero	248
	.ident	"GCC: (GNU) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
