#include <stdio.h>

#include "my_recs.h"
#include "serializer.h"

int main(int argc, const char * argv[])
{
    rec r = {5, "abc"};

    transmit(&r, sizeof(r) * 8);

    return 0;
}