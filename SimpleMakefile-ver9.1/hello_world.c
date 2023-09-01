/*
gcc hello_world.c hello_world.s -o hello_world
*/

#include <stdio.h>
extern void hello_world(char *s);
 
void main()
{
    hello_world("Hello World\n");
}

#if 0
void hello_world(char *s)
{
    //printf("%s", s);
}
#endif
