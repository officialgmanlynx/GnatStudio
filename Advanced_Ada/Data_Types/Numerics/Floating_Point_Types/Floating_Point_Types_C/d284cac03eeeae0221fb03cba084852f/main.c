#include <stdio.h>

int main(int argc, const char * argv[])
{
    printf("float:        %zu bytes\n",
           sizeof(float) * 8);
    printf("double:       %zu bytes\n",
           sizeof(double) * 8);
    printf("long double:  %zu bytes\n",
           sizeof(long double) * 8);
    return 0;
}