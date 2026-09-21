#include <stdio.h>

int count(int *p, int len, int v) {
   int count = 0;
   while (len--) {
      if (*p++ == v) {
         count++;
      }
   }
   return count;
}

int main() {
   int p[5] = {0, 3, 9, 3, 3};
   int c = count(p, 5, 3);
   printf("value 3 is seen %d times in p\n", c);
   return 0;
}