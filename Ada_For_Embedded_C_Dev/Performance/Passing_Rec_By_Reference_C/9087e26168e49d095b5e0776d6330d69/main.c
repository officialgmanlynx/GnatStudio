#include <stdio.h>

struct Data {
    int prev, curr;
};

void update(struct Data *d,
            int          v)
{
    d->prev = d->curr;
    d->curr = v;
}

void display(const struct Data *d)
{
    printf("Prev : %d\n", d->prev);
    printf("Curr : %d\n", d->curr);
}

int main(int argc, const char * argv[])
{
    struct Data D1 = { 0, 1 };

    update (&D1, 3);
    display (&D1);

    return 0;
}