#include <stdio.h>
#include <stdlib.h>

int func(int x)
{
    return x % 4;
}

int main()
{
    int a, b;

    a = 10;
    b = func(a);

#ifdef DEBUG
    printf("func(%d) => %d\n", a, b);
#endif

    return 0;
}