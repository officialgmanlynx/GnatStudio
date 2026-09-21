#include <stdio.h>
#include <stdlib.h>

#define SWAP(t, a, b) ({\
                           t tmp = a; \
                           a = b; \
                           b = tmp; \
                        })

int main()
{
    int a = 10;
    int b = 42;

    printf("a = %d, b = %d\n", a, b);

    SWAP (int, a, b);

    printf("a = %d, b = %d\n", a, b);

    return 0;
}