#include <stdio.h>
#include "proc.h"

int main(int argc, const char * argv[])
{
    int v1, v2;

    v2 = 2;
    Proc (5, &v1, &v2);

    printf("v1: %d\n", v1);
    printf("v2: %d\n", v2);

    return 0;
}