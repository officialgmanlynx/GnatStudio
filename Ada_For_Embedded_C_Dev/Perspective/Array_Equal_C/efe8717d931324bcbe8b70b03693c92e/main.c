#include <stdio.h>

int main(int argc, const char * argv[])
{
    int A1 [2] = { 10, 20 };
    int A2 [2] = { 10, 20 };

    int eq = 1;

    for (int i = 0; i < 2; ++i) {
        if (A1 [i] != A2 [i]) {
            eq = 0;
            break;
        }
    }

    if (eq) {
        printf("A1 == A2\n");
    }
    else {
        printf("A1 != A2\n");
    }

    return 0;
}