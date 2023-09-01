/*
    函数的调用传参方式。
    64 位下
    对于普通调用是把前 6 个参数，依次用 rdi、rsi、rdx、rcx、r8、r9。
    对于系统调用是把前 6 个参数，依次用 rdi、rsi、rdx、r10、r8、r9。
    然后剩下的参数从右到左依次压栈。
*/
    .text
    .align 8;
    .global hello_world;

hello_world:
    endbr64
    push   %rbp
    mov    %rsp,%rbp

    // 参数不在栈上，这种取传入参数的方法是错的
    //mov    -0x8(%rbp),%rsi
    mov %rdi, %rsi
    //输出第一个字符串
    mov     $1, %rax
    mov     $1, %rdi
    mov     $13, %rdx
    syscall
    // 输出第二个字符串
    mov     $1, %rax       
    mov     $1, %rdi        
    mov     $15, %rdx      
    lea     msg1(%rip), %rsi 
    syscall
    // 输出第三个字符串
    mov     $1, %rax        
    mov     $1, %rdi       
    mov     $16, %rdx       
    lea     msg2(%rip), %rsi 
    syscall
    
    // leaveq
    pop     %rbp
    retq
    
.section .rodata
msg1:
    .string "Added string-1\n"
msg2:
    .string "Added string-2\n"
    
