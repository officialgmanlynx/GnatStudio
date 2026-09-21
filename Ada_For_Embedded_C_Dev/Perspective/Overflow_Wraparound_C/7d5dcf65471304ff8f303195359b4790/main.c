#include <stdio.h>
#include <limits.h>

int main(int argc, const char * argv[])
{
    unsigned int x = UINT_MAX + 1;
    /* Now: x == 0 */

    printf("x = %u\n", x);

    return 0;
}