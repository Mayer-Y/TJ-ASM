/*
 * @Author: Yan Hyoung 
 * @Date: 2023-09-02 12:02:46 
 * @Last Modified by:   Yan Hyoung 
 * @Last Modified time: 2023-09-02 12:02:46 
 */

#include <stdio.h>

int gcd( int a, int b ) {
	int result ;
	/* Compute Greatest Common divisor using Euclid's Algorithm */
	__asm__ __volatile__ ( "movl %1, %%eax;"
						  "movl %2, %%ebx;"
						  "CONTD: cmpl $0, %%ebx;"
						  "je DONE;"
						  "xorl %%edx, %%edx;"
						  "idivl %%ebx;"
						  "movl %%ebx, %%eax;"
						  "movl %%edx, %%ebx;"
						  "jmp CONTD;"
						  "DONE: movl %%eax, %0;" : "=g" (result) : "g" (a), "g" (b)
	);

	return result ;
}

int main() {
	int first, second, third;
	printf( "Enter three integers : " ) ;
	scanf( "%d%d%d", &first, &second, &third);
	printf( "GCD of %d & %d & %d is %d\n", first, second, third,gcd(third,gcd(first, second) )) ;

	return 0 ;
}

