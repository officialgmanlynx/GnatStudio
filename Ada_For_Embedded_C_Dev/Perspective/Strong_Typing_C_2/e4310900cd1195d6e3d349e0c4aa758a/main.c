#include <stdio.h>

void weakTyping (void) {
    const int   alpha = 1;
    const int   beta = 10;
    float result;

    result = alpha / beta;

    printf("%f\n", result);
}

int main(int argc, const char * argv[])
{
    weakTyping();

    return 0;
}