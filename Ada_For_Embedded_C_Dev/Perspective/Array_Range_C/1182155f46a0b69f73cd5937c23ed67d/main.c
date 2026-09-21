#include <stdio.h>

int main(int argc, const char * argv[])
{
    char Arr [26];
    char C = 'a';

    for (int I = 0; I < 26; ++I) {
        Arr [I] = C++;
        printf ("%c ", Arr [I]);

        if ((I + 1) % 7 == 0) {
            printf ("\n");
        }
    }

    return 0;
}