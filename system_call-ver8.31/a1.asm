# 这段汇编代码实现了一个简单的用户输入和输出的交互程序
# #
.data                  
userMsg:    .string "请输入一个数: "
lenUserMsg: .long   . - userMsg
dispMsg:    .string "你输入了: "
lenDispMsg: .long   . - dispMsg

# 数据段
# 'userMsg'和'dispMsg'是要显示的提示和消息
# 'lenUserMsg'和'lenDispMsg'是提示和消息的长度

.bss
    .lcomm num, 5
# num 是一个用于储存用户输入数字的未初始化的缓冲区

.text
.globl _start

_start:
    # 显示提示，要求用户输入数字
    movl $4, %eax       # 系统调用号：sys_write（输出）
    movl $1, %ebx       # 文件描述符（标准输出）
    movl $userMsg, %ecx # 指向要显示的消息的指针
    movl $lenUserMsg, %edx # 消息的长度
    int $0x80

    # 读取并存储用户输入
    movl $3, %eax       # 系统调用号：sys_read（输入）
    movl $0, %ebx       # 文件描述符（标准输入）
    movl $num, %ecx     # 指向存储输入的缓冲区的指针
    movl $5, %edx       # 最多要读取的字节数
    int $0x80

    # 显示消息
    movl $4, %eax
    movl $1, %ebx
    movl $dispMsg, %ecx
    movl $lenDispMsg, %edx
    int $0x80

    # 显示输入的数字
    movl $4, %eax
    movl $1, %ebx
    movl $num, %ecx
    movl $5, %edx
    int $0x80

    # 退出程序
    movl $1, %eax       # 系统调用号：sys_exit
    xorl %ebx, %ebx     # 退出状态
    int $0x80
