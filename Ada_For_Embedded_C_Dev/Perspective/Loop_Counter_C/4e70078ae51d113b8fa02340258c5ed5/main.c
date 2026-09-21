#include <stdio.h>

#define MY_RANGE (10)

int main(int argc, const char * argv[])
{

    for (int i = MY_RANGE; i >= 0; --i) {
        printf("%d\n", i);
    }

    return 0;
}