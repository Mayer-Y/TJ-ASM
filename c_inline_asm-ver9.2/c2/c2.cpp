#include <iostream>
using namespace std;

int factorial(int n)
{
    int result;
    asm volatile("mov $1, %%eax \n"
                 "mov $1, %%ebx \n"
                 "start:\n"
                 "cmp %0, %%ebx\n"
                 "jg end\n"
                 "imul %%ebx, %%eax\n"
                 "inc %%ebx\n"
                 "jmp start\n"
                 "end:\n"
                 "mov %%eax, %0 \n"
                 : "=r"(result)
                 : "r"(n)
                 : "eax", "ebx");
    return result;
}
int main()
{
    int n = 0;
    cout << "请输入n:" << endl;
    cin >> n;
    cout << "n的阶乘为" << factorial(n) << endl;
    return 0;
}
