	.file	"basic_arithmetic.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 5 "basic_arithmetic.c" 1
	movl $10, %eax;movl $20, %ebx;addl %ebx, %eax;
# 0 "" 2
# 10 "basic_arithmetic.c" 1
	movl $10, %eax;movl $20, %ebx;subl %ebx, %eax;
# 0 "" 2
# 15 "basic_arithmetic.c" 1
	movl $10, %eax;movl $20, %ebx;imull %ebx, %eax;
# 0 "" 2
#NO_APP
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
