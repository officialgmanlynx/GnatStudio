#include <stdio.h>

enum Day {
    Monday    = 10,
    Tuesday   = 11,
    Wednesday = 12,
    Thursday  = 13,
    Friday    = 14,
    Saturday  = 15,
    Sunday    = 16
};

int main(int argc, const char * argv[])
{
    enum Day d = Monday;

    printf("d = %d\n", d);

    return 0;
}