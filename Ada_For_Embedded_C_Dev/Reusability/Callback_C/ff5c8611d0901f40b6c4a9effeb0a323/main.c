#include <stdio.h>
#include <stdlib.h>

#include "process_values.h"

int proc_10 (int val)
{
    return val + 10;
}

# define LEN_VALUES     5

int main()
{

    int values[LEN_VALUES] = { 1, 2, 3, 4, 5 };
    int i;

    process_values (values, LEN_VALUES, &proc_10);

    for (i = 0; i < LEN_VALUES; i++)
    {
        printf("Value [%d] = %d\n", i, values[i]);
    }

    return 0;
}