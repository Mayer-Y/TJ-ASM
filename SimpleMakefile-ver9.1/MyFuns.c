#include<emmintrin.h>
#include<stdio.h>
//func1  所有整数
void func1(int a, int b, int c, int d, int e, int f)
{
	printf("Func-1\n");
}
// a in RCX, b in RDX, c in R8, d in R9, f then e pushed on stack

//func2  所有浮点数
void func2(float a, double b, float c, double d, float e, float f)
{
	printf("Func-2\n");
}
// a in XMM0, b in XMM1, c in XMM2, d in XMM3, f then e pushed on stack

//func3  整数与浮点数混合
void func3(int a, double b, int c, float d, int e, float f)
{
	printf("Func-3\n");
}
// a in RCX, b in XMM1, c in R8, d in XMM3, f then e pushed on stack

//func4  参数传递实例
void func4(__m64 a, __m128 b, int c, float d, __m128 e, __m128 f)
{
	printf("Func-4\n");
}
// a in RCX, ptr to b in RDX, ptr to c in R8, d in XMM3,
// ptr to f pushed on stack, then ptr to e pushed on stack


