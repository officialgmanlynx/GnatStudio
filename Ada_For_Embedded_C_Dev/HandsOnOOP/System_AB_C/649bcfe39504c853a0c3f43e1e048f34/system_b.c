#include "system_b.h"

void B_activate (B *b)
{
    b->val    = 0.0;
    b->active = 1;
}

int B_is_active (B *b)
{
    return b->active == 1;
}

float B_value (B *b)
{
    return b->val;
}

void B_deactivate (B *b)
{
    b->active = 0;
}
