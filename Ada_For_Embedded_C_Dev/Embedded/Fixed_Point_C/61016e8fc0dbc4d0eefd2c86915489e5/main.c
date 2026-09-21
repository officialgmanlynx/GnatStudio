#include <stdio.h>
#include <math.h>

#define SHIFT_FACTOR  32

#define TO_FIXED(x)     ((int)   ((x) * pow (2.0, SHIFT_FACTOR - 1)))
#define TO_FLOAT(x)     ((float) ((double)(x) * (double)pow (2.0, -(SHIFT_FACTOR - 1))))

typedef int fixed;

fixed add (fixed a, fixed b)
{
    return a + b;
}

fixed mult (fixed a, fixed b)
{
    return (fixed)(((long)a * (long)b) >> (SHIFT_FACTOR - 1));
}

void display_fixed (fixed x)
{
    printf("value (integer) = %d\n",    x);
    printf("value (float)   = %3.5f\n\n", TO_FLOAT (x));
}

int main(int argc, const char * argv[])
{
    int fixed_value = TO_FIXED(0.25);

    printf("Original value\n");
    display_fixed(fixed_value);

    printf("... + 0.25\n");
    fixed_value = add(fixed_value, TO_FIXED(0.25));
    display_fixed(fixed_value);

    printf("... * 0.5\n");
    fixed_value = mult(fixed_value, TO_FIXED(0.5));
    display_fixed(fixed_value);

    return 0;
}