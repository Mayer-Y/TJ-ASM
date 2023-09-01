#include "functions.h"
#include "MyFuns.h"
#include <emmintrin.h>

extern void hello_world(char *s);
/*
extern void func1(int a, int b, int c, int d, int e, int f);
extern void func2(float a, double b, float c, double d, float e, float f);
extern void func3(int a, double b, int c, float d, int e, float f);
extern void func4(__m64 a, __m128 b, int c, float d, __m128 e, __m128 f);
*/

int main(int argc, char ** argv) {
  call_function();
  hello_world("Hello World\n");
  func1(1,2,3,4,5,6);
  func2(1.0,2.0,3.0,4.0,5.0,6.0);
  func3(1,2.0,3,4.0,5,6.0);
  __m64 a = _mm_set_pi32(1,2);
  __m128 b = _mm_set_ps(1.0,2.0,3.0,4.0);
  __m128 e = _mm_set_ps(5.0,6.0,7.0,8.0);
  __m128 f = _mm_set_ps(9.0,10.0,11.0,12.0);
  func4(a,b,3,4.0,e,f);
  

  return 0;
}
