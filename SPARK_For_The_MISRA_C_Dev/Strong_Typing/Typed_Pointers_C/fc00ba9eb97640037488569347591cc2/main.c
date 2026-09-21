#include <stdio.h>

void assign_int (int *p) {
   *p = 42;
}

void assign_float (float *p) {
   *p = 42.0;
}

typedef void (*assign_fun)(void *p);

void assign(assign_fun fun, void *p) {
   fun(p);
}

int main() {
   int i;
   float f;
   assign((assign_fun)&assign_int, &i);
   assign((assign_fun)&assign_float, &f);
   printf("i = %d; f = %f\n", i, f);
}