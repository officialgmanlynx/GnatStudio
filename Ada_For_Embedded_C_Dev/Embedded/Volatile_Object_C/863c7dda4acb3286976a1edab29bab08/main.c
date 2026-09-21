#include <stdio.h>

int main(int argc, const char * argv[])
{
    volatile double val = 0.0;
    int i;

    for (i = 0; i < 1000; i++)
    {
        val += i * 2.0;
    }
    printf ("val: %5.3f\n", val);

    return 0;
}