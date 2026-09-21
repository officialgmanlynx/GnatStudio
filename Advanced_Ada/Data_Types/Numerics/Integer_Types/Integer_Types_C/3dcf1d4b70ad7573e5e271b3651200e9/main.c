#include <stdio.h>

int main(int argc, const char * argv[])
{
    printf("signed char:   %zu bytes\n",
           sizeof(signed char) * 8);
    printf("short int:     %zu bytes\n",
           sizeof(short int) * 8);
    printf("int:           %zu bytes\n",
           sizeof(int) * 8);
    printf("long int:      %zu bytes\n",
           sizeof(long int) * 8);
    printf("long long int: %zu bytes\n",
           sizeof(long long int) * 8);
    return 0;
}