#include <stdio.h>

int main(int argc, const char * argv[])
{
    // variable declarations
    int a = 0, b = 0, c = 100, d;

    // c shorthand for increment
    a++;

    // regular addition
    d = a + b + c;

    // printing the result
    printf("d = %d\n", d);

    {
        const int e = d * 100;
        printf("e = %d\n", e);
    }

    return 0;
}