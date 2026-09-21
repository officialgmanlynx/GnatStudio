#include <stdio.h>

int absval (int x) {
   int result = x;
   if (x >= 0)
      if (x == 0)
         result = 0;
   else
      result = -x;
   return result;
}

int main() {
   printf("absval(5) = %d\n", absval(5));
   printf("absval(0) = %d\n", absval(0));
   printf("absval(-10) = %d\n", absval(-10));
}