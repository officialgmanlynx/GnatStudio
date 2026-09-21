#include <stdio.h>
#include <stdlib.h>

#include "defs.h"

int func(int x)
{
    return x % MOD_VALUE;
}

int main()
{
    int a, b;

    a = 10;
    b = func(a);

    return 0;
}