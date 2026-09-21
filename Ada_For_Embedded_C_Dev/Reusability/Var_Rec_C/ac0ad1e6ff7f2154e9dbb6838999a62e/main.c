#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int use_float;
    union {
        float f;
        int   i;
    };
} float_int;

float_int init_float (float f)
{
    float_int v;

    v.use_float = 1;
    v.f         = f;
    return v;
}

float_int init_int (int i)
{
    float_int v;

    v.use_float = 0;
    v.i         = i;
    return v;
}

void display (float_int v)
{
    if (v.use_float) {
        printf("Float value   : %f\n", v.f);
    }
    else {
        printf("Integer value : %d\n", v.i);
    }
}

int main(int argc, const char * argv[])
{
    float_int f = init_float (10.0);
    float_int i = init_int (9);

    display (f);
    display (i);

    return 0;
}