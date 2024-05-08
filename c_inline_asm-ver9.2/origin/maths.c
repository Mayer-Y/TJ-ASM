/*
 * @Author: Yan Hyoung
 * @Date: 2023-09-02 12:02:58
 * @Last Modified by: Yan Hyoung
 * @Last Modified time: 2023-09-02 12:07:49
 */

/*fixing bug
1.操作数类型不匹配 : 将输出操作数的约束从 "=g" 更改为 "=m"，以指定输出操作数是一个内存位置
*/
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