#include <stdio.h>
#include <time.h>

int main() {
    clock_t start, end;
    double time_used;
    start = clock(); 
    int sum = 0;
    for (int i = 1; i <= 1000000; i++) {
        sum += i;
    }
    end = clock(); 
    time_used = ((double) (end - start)) / CLOCKS_PER_SEC * 1000; 
    printf("Sum is %d\n", sum);
    printf("Time taken: %lf ms\n", time_used);

    return 0;
}
