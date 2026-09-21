#include <stdio.h>

int main(int argc, const char * argv[])
{
    int v = 0;

    v = v | (1 << 2);

    printf("v = %d\n", v);

    return 0;
}