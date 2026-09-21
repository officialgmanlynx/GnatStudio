#include <stdio.h>
#include "my_recs.h"

int main(int argc, const char * argv[])
{
    rec r1 = {5, "abc"};
    rec r2 = {0, "zzz"};

    printf("r2 = ");
    display_r (&r2);
    printf("\n");

    to_r(&r1, sizeof(r1) * 8, &r2);

    printf("New bitstream received!\n");
    printf("r2 = ");
    display_r (&r2);
    printf("\n");

    return 0;
}