#include <stdio.h>

float sinx(float degree)
{
    float result, two_right_angles = 180.0f;
    __asm__ __volatile__("fld %1;"
                         "fld %2;"
                         "fldpi;"
                         "fmul;"
                         "fdiv;"
                         "fsin;"
                         "fstp %0;" : "=m"(result) : "m"(two_right_angles), "m"(degree));
    return result;
}

float cosx(float degree)
{
    float result, two_right_angles = 180.0f, radians;
    __asm__ __volatile__("fld %1;"
                         "fld %2;"
                         "fldpi;"
                         "fmul;"
                         "fdiv;"
                         "fstp %0;" : "=m"(radians) : "m"(two_right_angles), "m"(degree));
    __asm__ __volatile__("fld %1;"
                         "fcos;"
                         "fstp %0;" : "=m"(result) : "m"(radians));
    return result;
}

float square_root(float val)
{
    float result;
    __asm__ __volatile__("fld %1;"
                         "fsqrt;"
                         "fstp %0;" : "=m"(result) : "m"(val));
    return result;
}

int main()
{
    float theta;
    printf("Enter theta in degrees : ");
    scanf("%f", &theta);

    printf("sinx(%f) = %f\n", theta, sinx(theta));
    printf("cosx(%f) = %f\n", theta, cosx(theta));
    printf("square_root(%f) = %f\n", theta, square_root(theta));

    return 0;
}