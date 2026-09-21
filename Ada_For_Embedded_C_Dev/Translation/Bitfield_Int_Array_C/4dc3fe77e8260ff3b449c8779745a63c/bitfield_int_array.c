#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    int a[2] = {0, 0};

    a[0] = a[0] | (1 << 2);

    for (i = 0; i < 2; i++)
    {
        printf("a[%d] = %d\n", i, a[i]);
    }

    return 0;
}