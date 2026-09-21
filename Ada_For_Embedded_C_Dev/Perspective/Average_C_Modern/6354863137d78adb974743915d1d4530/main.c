// The modern C way

#include <stdio.h>

int average(int* list, int length)
{
    int sum = 0;

    for(int i = 0; i < length; ++i) {
        sum += list[i];
    }

    return (sum / length);
}

int main(int argc, const char * argv[])
{
    int vals[] = { 2, 2, 4, 4 };

    printf("Average: %d\n", average(vals, 4));

    return 0;
}