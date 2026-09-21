#include <stdio.h>
#include <stdlib.h>

float calculate (float  f1,
                 float  f2,
                 int   *success)
{
    if (f1 < f2) {
        *success = 1;
        return f2 - f1;
    }
    else {
        *success = 0;
        return 0.0;
    }
}

void display (float v,
              int   success)
{
    if (success) {
        printf("Value = %f\n", v);
    }
    else {
        printf("Calculation error!\n");
    }
}

int main(int argc, const char * argv[])
{
    float f;
    int success;

    f = calculate (1.0, 0.5, &success);
    display (f, success);

    f = calculate (0.5, 1.0, &success);
    display (f, success);

    return 0;
}