#include <stdio.h>

int computeSum(int n)
{
    int result;
    asm volatile(
        "mov $0, %%eax\n"
        "mov $1, %%ebx\n"
        "start:\n"
        "cmp %1, %%ebx\n"
        "jg end\n"
        "add %%ebx, %%eax\n"
        "inc %%ebx\n"
        "jmp start\n"
        "end:\n"
        "mov %%eax, %0\n"
        : "=r"(result)
        : "r"(n)
        : "eax", "ebx");
    return result;
}
int main()
{
    int n = 100;
    int sum = computeSum(n);
    printf("Sum: %d\n", sum);
    return 0;
}
