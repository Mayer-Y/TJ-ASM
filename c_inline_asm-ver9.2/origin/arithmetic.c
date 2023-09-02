/*
 * @Author: Yan Hyoung 
 * @Date: 2023-09-02 12:01:23 
 * @Last Modified by: Yan Hyoung
 * @Last Modified time: 2023-09-02 12:11:25
 */

/*
fixing bug
原始代码在执行 idivl 指令之前将 EDX 寄存器手动设置为零，这是为了确保在除法操作中 EDX 寄存器的初始状态是零。
然后，idivl 指令执行整数除法，将结果存储在 EAX 寄存器中的 quo 变量和 EDX 寄存器中的 rem 变量中。
然而，在这种情况下，如果除数 arg2 为零，那么无论如何，idivl 指令都会引发除零异常，因为被除数 EAX 寄存器已经被设置了。
修改后的代码在执行之前检查除数是否为零。如果除数为零，它将清零 EAX 寄存器，表示结果为零，而不会引发除以零的异常。
如果除数不为零，它将执行整数除法操作，并将结果存储在 EAX 寄存器中的 quo 变量和 EDX 寄存器中的 rem 变量中。
*/
#include <stdio.h>

int main() {

	int arg1, arg2, add, sub, mul, quo, rem ;

	printf( "Enter two integer numbers : " );
	scanf( "%d%d", &arg1, &arg2 );

	__asm__ ( "addl %%ebx, %%eax;" : "=a" (add) : "a" (arg1) , "b" (arg2) );
	__asm__ ( "subl %%ebx, %%eax;" : "=a" (sub) : "a" (arg1) , "b" (arg2) );
	__asm__ ( "imull %%ebx, %%eax;" : "=a" (mul) : "a" (arg1) , "b" (arg2) );

	__asm__ (
    	"movl %2, %%eax;"   // 将被除数加载到 EAX 寄存器
    	"movl %3, %%ebx;"   // 将除数加载到 EBX 寄存器
    	"xorl %%edx, %%edx;"   // 将 EDX 寄存器清零，用于存储余数
    	"testl %%ebx, %%ebx;"  // 检查除数是否为零
    	"je divide_by_zero;"   // 如果除数为零，跳转到除以零的标签
    	"idivl %%ebx;"   // 执行整数除法，结果保存在 EAX (quo) 和 EDX (rem) 中
    	"jmp done;"   // 跳转到完成的标签
    	"divide_by_zero:"
    	"xorl %%eax, %%eax;"   // 将 EAX 寄存器清零，表示结果为零
    	"done:"
    	: "=a" (quo), "=d" (rem)  // 输出操作数约束，将结果赋给 quo 和 rem 变量
    	: "g" (arg1), "g" (arg2)   // 输入操作数约束，使用 arg1 和 arg2 变量作为输入
	);



	printf( "%d + %d = %d\n", arg1, arg2, add );
	printf( "%d - %d = %d\n", arg1, arg2, sub );
	printf( "%d * %d = %d\n", arg1, arg2, mul );
	printf( "%d / %d = %d\n", arg1, arg2, quo );
	printf( "%d %% %d = %d\n", arg1, arg2, rem );

	return 0 ;
}
