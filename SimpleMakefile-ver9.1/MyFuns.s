	.file	"MyFuns.c"
	.text
	.section	.rodata
.LC0:
	.string	"Func-1"
	.text
	.globl	func1
	.type	func1, @function
func1:
.LFB509:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	func1, .-func1
	.section	.rodata
.LC1:
	.string	"Func-2"
	.text
	.globl	func2
	.type	func2, @function
func2:
.LFB510:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movsd	%xmm1, -16(%rbp)
	movss	%xmm2, -8(%rbp)
	movsd	%xmm3, -24(%rbp)
	movss	%xmm4, -28(%rbp)
	movss	%xmm5, -32(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	func2, .-func2
	.section	.rodata
.LC2:
	.string	"Func-3"
	.text
	.globl	func3
	.type	func3, @function
func3:
.LFB511:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -8(%rbp)
	movss	%xmm1, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	func3, .-func3
	.section	.rodata
.LC3:
	.string	"Func-4"
	.text
	.globl	func4
	.type	func4, @function
func4:
.LFB512:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, -8(%rbp)
	movaps	%xmm1, -32(%rbp)
	movl	%edi, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movaps	%xmm3, -48(%rbp)
	movaps	%xmm4, -64(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	func4, .-func4
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
