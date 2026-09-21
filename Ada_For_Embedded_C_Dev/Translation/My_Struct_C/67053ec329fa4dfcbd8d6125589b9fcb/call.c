#include <stdio.h>

struct my_struct {
    int A, B;
};

void call (struct my_struct *p) {
    printf ("%d", p->A);
}