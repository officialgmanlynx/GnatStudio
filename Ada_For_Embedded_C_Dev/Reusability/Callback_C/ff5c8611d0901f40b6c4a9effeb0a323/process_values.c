#include "process_values.h"

#include <assert.h>
#include <stdio.h>

void process_values (int                  *values,
                     int                   len,
                     process_one_callback  process_one)
{
    int i;

    assert (process_one != NULL);

    for (i = 0; i < len; i++)
    {
        values[i] = process_one (values[i]);
    }
}
