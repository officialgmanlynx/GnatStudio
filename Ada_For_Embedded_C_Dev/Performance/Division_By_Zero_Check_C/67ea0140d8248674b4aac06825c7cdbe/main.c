#include <stdio.h>

int main(int argc, const char * argv[])
{
    int a = 8, b = 0, res;

    if (b != 0) {
        res = a / b;

        // printing the result
        printf("res = %d\n", res);
    }
    else
    {
        // printing error message
        printf("Error: cannot calculate value (division by zero)\n");
    }

    return 0;
}