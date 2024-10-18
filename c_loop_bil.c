#include <stdio.h>

int main() {
    int count = 0;

    while (count < 1000000000) {
        count++;
    }

    printf("Final count: %d\n", count);

    return 0;
}