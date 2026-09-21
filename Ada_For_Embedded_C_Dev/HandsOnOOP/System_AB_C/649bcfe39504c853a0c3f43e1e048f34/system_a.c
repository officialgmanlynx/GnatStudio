#include "system_a.h"

void A_activate (A *a)
{
    int i;

    for (i = 0; i < 2; i++)
    {
        a->val[i] = 0.0;
    }
    a->active = 1;
}

int A_is_active (A *a)
{
    return a->active == 1;
}

float A_value (A *a)
{
    return (a->val[0] + a->val[1]) / 2.0;
}

void A_deactivate (A *a)
{
    a->active = 0;
}
