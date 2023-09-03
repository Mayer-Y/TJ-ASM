#include <stdio.h>
#include <time.h>

int main() {
    int sum = 0;
    int i;
    clock_t start, end;
    double time_used;
    start = clock(); 
    asm volatile (
        "xor %0, %0\n"     // 将sum初始化为0
        "mov $1, %1\n"     // 将循环计数器i初始化为1
        "1:\n"
        "add %1, %0\n"     // 将i加到sum
        "inc %1\n"         // 增加i的值
        "cmp $1000001, %1\n"  
        "jl 1b\n"         
        : "+r" (sum), "=r" (i) 
        : 
        : "cc" // 更新标志寄存器
    );
    end = clock(); // 记录结束时间
    time_used = ((double) (end - start)) / CLOCKS_PER_SEC * 1000; 
    printf("Sum is %d\n", sum);
    printf("Time taken: %lf ms\n", time_used);
    return 0;
}
