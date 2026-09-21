#include <stdio.h>

int main(int argc, const char * argv[])
{
    int v = 0;

    switch(v) {
        case 0:
            printf("Zero\n");
        case 1:
            printf("One\n");
        default:
            printf("Other\n");
    }

    return 0;
}