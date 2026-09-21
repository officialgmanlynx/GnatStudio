#include <stdio.h>

int main(int argc, const char * argv[])
{
    // try changing the initial value to change the
    //    output of the program
    int v = 0;

    if (v > 0) {
        printf("Positive\n");
    }
    else if (v < 0) {
        printf("Negative\n");
    }
    else {
        printf("Zero\n");
    }

    return 0;
}