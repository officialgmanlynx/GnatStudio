#include <stdio.h>
#include <stdlib.h>

struct R {
    int A, B;
};

void print_r(const struct R *v,
             const char     *name)
{
    printf("%s = (%d, %d)\n", name, v->A, v->B);
}

int main(int argc, const char * argv[])
{
    struct R * V1, * V2;
    V1 = malloc(sizeof(struct R));
    V1->A = 0;
    V2 = V1;
    V2->A = 1;

    print_r(V1, "V1");
    print_r(V2, "V2");

    return 0;
}