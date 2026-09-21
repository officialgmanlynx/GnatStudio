#include <stdio.h>

struct Data {
    int prev, curr;
};

void init_data(struct Data *d)
{
    d->prev = 0;
    d->curr = 1;
}

struct Data get_init_data()
{
    struct Data d  = { 0, 1 };

    return d;
}

int main(int argc, const char * argv[])
{
    struct Data D1;

    D1 = get_init_data();

    init_data(&D1);

    return 0;
}