#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[])
{
    int A1 [2];
    int A2 [2];

    A1 [0] = 0;
    A1 [1] = 1;

    memcpy (A2, A1, sizeof (int) * 2);

    for (int i = 0; i < 2; i++) {
        printf("%d\n", A2[i]);
    }

    return 0;
}