#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    int arr[10];

    int *a = arr;
    /* int *a = &arr[0]; */

    for (i = 0; i < 10; i++)
    {
        *a++ = i;
        printf("curr address: %p\n", a);
    }

    for (i = 0; i < 10; i++)
    {
        printf("arr[%d]: %d\n", i, arr[i]);
    }

    return 0;
}