#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int       * a;
    const int   last;
} S;

S init_s (int last)
{
    S v = { malloc (sizeof(int) * last + 1), last };
    return v;
}

int main(int argc, const char * argv[])
{
    S v = init_s (9);

    return 0;
}