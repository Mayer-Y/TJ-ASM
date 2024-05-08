#include<stdio.h>
 
int foo(int n)
{
 
    int sum=0;
    int i=0;
 
    for (i=0; i<=n; i++)
    {
        sum = sum+i;
    }
 
    return sum;
}
 
int main(int argc, char** argv)
{
    int c = 0,a = -34,b = 700;
    c = a + b;
    int result = 0;
    int N = 100;
 
    result = foo(N);
 
    printf("1+2+3+...+%d= %d\n", N, result);
 
    return 0;
 
}