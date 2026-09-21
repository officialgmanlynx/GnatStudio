#include <stdlib.h>

typedef struct {
    int * a;
} S;

int main(int argc, const char * argv[])
{
    S v;

    v.a = malloc(sizeof(int) * 10);

    return 0;
}