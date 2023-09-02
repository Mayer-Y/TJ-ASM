/*
 * @Author: Yan Hyoung 
 * @Date: 2023-09-02 12:21:37 
 * @Last Modified by: Yan Hyoung
 * @Last Modified time: 2023-09-02 12:28:19
 */

/*
fixing bug
1.确保操作数的数据类型和大小与汇编指令的要求相匹配
2.fld %1 是x86汇编语言中的指令，它用于将浮点数值从内存中加载到FPU（浮点处理单元）的浮点堆栈中。
%1 表示内联汇编代码中的第一个操作数，通常是一个变量或内存地址。这个操作会将指定的浮点数值推入FPU堆栈的顶部。
修改的过程中出现了第二个减第一个的情况，结合入栈出栈的顺序加以修改
3.fld和fstp指令的操作数类型不匹配
*/
#include <stdio.h>

int main() {
    float arg1, arg2, add, sub, mul, div;

    printf("请输入两个浮点数：");
    scanf("%f %f", &arg1, &arg2);

    // 使用内联汇编操作浮点数
    __asm__ volatile(
        "fld %1;"
        "fld %2;"
        "fadd;"
        "fstp %0;"
        : "=m"(add)
        : "m"(arg1), "m"(arg2)
    );

    __asm__ volatile(
        "fld %2;"
        "fld %1;"
        "fsub;"
        "fstp %0;"
        : "=m"(sub)
        : "m"(arg1), "m"(arg2)
    );

    __asm__ volatile(
        "fld %2;"
        "fld %1;"
        "fmul;"
        "fstp %0;"
        : "=m"(mul)
        : "m"(arg1), "m"(arg2)
    );

    __asm__ volatile(
        "fld %2;"
        "fld %1;"
        "fdiv;"
        "fstp %0;"
        : "=m"(div)
        : "m"(arg1), "m"(arg2)
    );

    printf("%f + %f = %f\n", arg1, arg2, add);
    printf("%f - %f = %f\n", arg1, arg2, sub);
    printf("%f * %f = %f\n", arg1, arg2, mul);
    printf("%f / %f = %f\n", arg1, arg2, div);

    return 0;
}
