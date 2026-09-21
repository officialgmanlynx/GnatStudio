#include <stdio.h>

void decrease_until_one_is_null (int *x, int *y) {
   if (x == 0 || y == 0) {
      return;
   }
   while (--*x != 0 && --*y != 0) {
      // nothing
   }
}

int main() {
   int x = 42, y = 42;
   decrease_until_one_is_null (&x, &y);
   printf("x = %d, y = %d\n", x, y);
   return 0;
}