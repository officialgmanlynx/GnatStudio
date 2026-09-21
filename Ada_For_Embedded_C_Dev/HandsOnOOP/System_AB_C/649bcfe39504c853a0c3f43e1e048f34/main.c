#include <stdio.h>
#include "system_ab.h"

void display_active (AB *ab)
{
    if (AB_is_active (ab))
        printf ("System AB is active.\n");
    else
        printf ("System AB is not active.\n");
}

void display_check (AB *ab)
{
    if (AB_check (ab))
        printf ("System AB check: PASSED.\n");
    else
        printf ("System AB check: FAILED.\n");
}

int main()
{
    AB s;

    printf ("Activating system AB...\n");
    AB_activate (&s);

    display_active (&s);
    display_check (&s);

    printf ("Deactivating system AB...\n");
    AB_deactivate (&s);

    display_active (&s);
}