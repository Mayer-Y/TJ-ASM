.section .data
msg:
    .string "Hello, Loop!\n" 
.section .text
.global _start
_start:
    movl $10, %ecx           
loop_start:
    movl $4, %eax            
    movl $1, %ebx           
    movl $msg, %esi         
    movl $13, %edx        
    int $0x80               

    loop loop_start
    movl $1, %eax         
    xorl %ebx, %ebx         
    int $0x80                
