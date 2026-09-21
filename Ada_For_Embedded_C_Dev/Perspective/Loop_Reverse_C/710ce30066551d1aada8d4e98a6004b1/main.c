#include <stdio.h>

#define LIST_LENGTH (100)

int main(int argc, const char * argv[])
{
    int list[LIST_LENGTH];

    for(int i = LIST_LENGTH; i > 0; --i) {
        list[i] = LIST_LENGTH - i;
    }

    for (int i = 0; i < LIST_LENGTH; ++i)
    {
        printf("%d ", list[i]);

        if (i % 10 == 0) {
            printf("\n");
        }
    }

    return 0;
}