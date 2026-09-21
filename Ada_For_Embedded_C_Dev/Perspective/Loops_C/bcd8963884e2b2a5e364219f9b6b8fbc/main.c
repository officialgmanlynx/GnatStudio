#include <stdio.h>

int main(int argc, const char * argv[])
{
    int v;

    // this is a while loop
    v = 1;
    while(v < 100) {
        v *= 2;
    }
    printf("v = %d\n", v);

    // this is a do while loop
    v = 1;
    do {
        v *= 2;
    } while(v < 200);
    printf("v = %d\n", v);

    // this is a for loop
    v = 0;
    for(int i = 0; i < 5; ++i) {
        v += (i * i);
    }
    printf("v = %d\n", v);

    // this is a forever loop with a conditional exit
    v = 0;
    while(1) {
        // do stuff here
        v += 1;
        if(v == 10)
            break;
    }
    printf("v = %d\n", v);

    // this is a loop over an array
    {
        #define ARR_SIZE (10)
        const int arr[ARR_SIZE] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
        int sum = 0;

        for(int i = 0; i < ARR_SIZE; ++i) {
            sum += arr[i];
        }
        printf("sum = %d\n", sum);
    }

    return 0;
}