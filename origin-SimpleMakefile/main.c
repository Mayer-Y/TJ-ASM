#include "functions.h"

extern void hello_world(char *s);

int main(int argc, char ** argv) {
  call_function();
  hello_world("Hello World\n");
  return 0;
}
