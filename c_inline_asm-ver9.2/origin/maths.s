	.file	"maths.c"
	.text
	.globl	sinx
	.type	sinx, @function
sinx:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
#APP
# 16 "maths.c" 1
	fld -12(%rbp);fld -20(%rbp);fldpi;fmul;fdiv;fsin;fstp -16(%rbp);
# 0 "" 2
#NO_APP
	movss	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sinx, .-sinx
	.globl	cosx
	.type	cosx, @function
cosx:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
#APP
# 31 "maths.c" 1
	fld -12(%rbp);fld -20(%rbp);fldpi;fmul;fdiv;fcos;fstp -16(%rbp);
# 0 "" 2
#NO_APP
	movss	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	cosx, .-cosx
	.globl	square_root
	.type	square_root, @function
square_root:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 50 "maths.c" 1
	fld -20(%rbp);fsqrt;fstp -12(%rbp);
# 0 "" 2
#NO_APP
	movss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	square_root, .-square_root
	.section	.rodata
.LC1:
	.string	"Enter theta in degrees : "
.LC2:
	.string	"%f"
.LC3:
	.string	"sinx(%f) = %f\n"
.LC4:
	.string	"cosx(%f) = %f\n"
.LC5:
	.string	"square_root(%f) = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	sinx
	cvtss2sd	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	cosx
	cvtss2sd	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	movq	%xmm3, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	square_root
	cvtss2sd	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm1, %xmm4
	movq	%xmm4, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1127481344
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
