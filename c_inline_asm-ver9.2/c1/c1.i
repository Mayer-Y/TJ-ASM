# 0 "c1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "c1.c"

int main() {
 char* a = "！";
 long long n;
 asm volatile (
  "syscall\t\n"
  : "=a" (n)
  : "a" (1), "S" (a), "D" (1), "d" (15));
 return 0;
}
