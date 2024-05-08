	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Hello World\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB509:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, %eax
	call	call_function@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	hello_world@PLT
	pushq	$8
	pushq	$7
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	func1@PLT
	addq	$16, %rsp
	movsd	.LC1(%rip), %xmm1
	movsd	.LC2(%rip), %xmm0
	movss	.LC3(%rip), %xmm5
	movss	.LC4(%rip), %xmm4
	movapd	%xmm1, %xmm3
	movss	.LC5(%rip), %xmm2
	movapd	%xmm0, %xmm1
	movl	.LC6(%rip), %eax
	movd	%eax, %xmm0
	call	func2@PLT
	movq	.LC2(%rip), %rax
	movss	.LC3(%rip), %xmm2
	movl	$5, %edx
	movss	.LC7(%rip), %xmm1
	movl	$3, %esi
	movq	%rax, %xmm0
	movl	$1, %edi
	call	func3@PLT
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	movd	%edx, %xmm0
	movd	%eax, %xmm6
	punpckldq	%xmm6, %xmm0
	nop
	movq	%xmm0, -56(%rbp)
	movaps	.LC8(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	.LC9(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	.LC10(%rip), %xmm0
	movaps	%xmm0, -16(%rbp)
	movaps	-16(%rbp), %xmm2
	movaps	-32(%rbp), %xmm1
	movaps	-48(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movaps	%xmm2, %xmm4
	movaps	%xmm1, %xmm3
	movss	.LC7(%rip), %xmm2
	movl	$3, %edi
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	func4@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1074790400
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 4
.LC3:
	.long	1086324736
	.align 4
.LC4:
	.long	1084227584
	.align 4
.LC5:
	.long	1077936128
	.align 4
.LC6:
	.long	1065353216
	.align 4
.LC7:
	.long	1082130432
	.align 16
.LC8:
	.long	1082130432
	.long	1077936128
	.long	1073741824
	.long	1065353216
	.align 16
.LC9:
	.long	1090519040
	.long	1088421888
	.long	1086324736
	.long	1084227584
	.align 16
.LC10:
	.long	1094713344
	.long	1093664768
	.long	1092616192
	.long	1091567616
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
