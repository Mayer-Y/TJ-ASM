	.file	"float.c"
	.text
	.section	.rodata
.LC0:
	.string	"\350\257\267\350\276\223\345\205\245\344\270\244\344\270\252\346\265\256\347\202\271\346\225\260\357\274\232"
.LC1:
	.string	"%f %f"
.LC2:
	.string	"%f + %f = %f\n"
.LC3:
	.string	"%f - %f = %f\n"
.LC4:
	.string	"%f * %f = %f\n"
.LC5:
	.string	"%f / %f = %f\n"
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
#APP
# 25 "float.c" 1
	fld -32(%rbp);fld -28(%rbp);fadd;fstp -24(%rbp);
# 0 "" 2
# 34 "float.c" 1
	fld -28(%rbp);fld -32(%rbp);fsub;fstp -20(%rbp);
# 0 "" 2
# 43 "float.c" 1
	fld -28(%rbp);fld -32(%rbp);fmul;fstp -16(%rbp);
# 0 "" 2
# 52 "float.c" 1
	fld -28(%rbp);fld -32(%rbp);fdiv;fstp -12(%rbp);
# 0 "" 2
#NO_APP
	movss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	-32(%rbp), %xmm2
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm2, %xmm3
	movq	%xmm3, %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movss	-20(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	-32(%rbp), %xmm2
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm2, %xmm4
	movq	%xmm4, %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movss	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	-32(%rbp), %xmm2
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm2, %xmm5
	movq	%xmm5, %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movss	-12(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	-32(%rbp), %xmm2
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm2, %xmm6
	movq	%xmm6, %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
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
