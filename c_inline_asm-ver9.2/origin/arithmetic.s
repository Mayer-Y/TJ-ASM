	.file	"arithmetic.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter two integer numbers : "
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d + %d = %d\n"
.LC3:
	.string	"%d - %d = %d\n"
.LC4:
	.string	"%d * %d = %d\n"
.LC5:
	.string	"%d / %d = %d\n"
.LC6:
	.string	"%d %% %d = %d\n"
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
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-52(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %ebx
#APP
# 10 "arithmetic.c" 1
	addl %ebx, %eax;
# 0 "" 2
#NO_APP
	movl	%eax, -44(%rbp)
	movl	-52(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %ebx
#APP
# 11 "arithmetic.c" 1
	subl %ebx, %eax;
# 0 "" 2
#NO_APP
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %ebx
#APP
# 12 "arithmetic.c" 1
	imull %ebx, %eax;
# 0 "" 2
#NO_APP
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %eax
	movl	-48(%rbp), %edx
#APP
# 14 "arithmetic.c" 1
	movl %eax, %eax;movl %edx, %ebx;xorl %edx, %edx;testl %ebx, %ebx;je divide_by_zero;idivl %ebx;jmp done;divide_by_zero:xorl %eax, %eax;done:
# 0 "" 2
#NO_APP
	movl	%eax, -32(%rbp)
	movl	%edx, -28(%rbp)
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	-40(%rbp), %ecx
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	-36(%rbp), %ecx
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	-28(%rbp), %ecx
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	movq	-8(%rbp), %rbx
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
