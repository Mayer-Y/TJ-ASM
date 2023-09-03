// ssize_t write (int fd @rax=1, const void * buf@rsi=a, size_t count@rdx=15); 
int main() {
	char* a = "！";
	long long n;
	asm volatile (
		"syscall\t\n"
		: "=a" (n)
		: "a" (1), "S" (a), "D" (1), "d" (15));
	return 0;
}

