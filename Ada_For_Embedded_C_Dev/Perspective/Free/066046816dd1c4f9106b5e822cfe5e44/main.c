#include <stdlib.h>

int main(int argc, const char * argv[])
{
    int * my_pointer = malloc (sizeof(int));
    free (my_pointer);

    return 0;
}