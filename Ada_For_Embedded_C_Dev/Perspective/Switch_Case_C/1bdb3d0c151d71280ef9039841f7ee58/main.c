#include <stdio.h>

int main(int argc, const char * argv[])
{
    // try changing the initial value to change the
    //    output of the program
    int v = 0;

    switch(v) {
        case 0:
            printf("Zero\n");
            break;
        case 1: case 2: case 3: case 4: case 5:
        case 6: case 7: case 8: case 9:
            printf("Positive\n");
            break;
        case 10: case 12: case 14: case 16: case 18:
            printf("Even number between 10 and 18\n");
            break;
        default:
            printf("Something else\n");
            break;
    }

    return 0;
}