#include <stdio.h>

int main() {

	__asm__ ( "movl $10, %eax;"
				"movl $20, %ebx;"
				"addl %ebx, %eax;"
	);

	__asm__ ( "movl $10, %eax;"
					"movl $20, %ebx;"
					"subl %ebx, %eax;"
	);

	__asm__ ( "movl $10, %eax;"
					"movl $20, %ebx;"
					"imull %ebx, %eax;"
	);

	return 0 ;
}
