#ifndef MYFUNS_H
#define MYFUNS_H
#include <emmintrin.h> // for __m128i

void func1(int a, int b, int c, int d, int e, int f, int g, int h);
void func2(float a, double b, float c, double d, float e, float f);
void func3(int a, double b, int c, float d, int e, float f);
void func4(__m64 a, __m128 b, int c, float d, __m128 e, __m128 f);

#endif // MYFUNS_H
