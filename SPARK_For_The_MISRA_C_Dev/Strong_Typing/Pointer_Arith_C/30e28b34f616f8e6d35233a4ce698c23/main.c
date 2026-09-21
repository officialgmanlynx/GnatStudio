#include <stdbool.h>
#include <stdio.h>

int main() {
   bool b1 = true;
   bool b2 = false;
   bool b3 = b1 + b2;

   typedef enum {Apple, Orange} fruit;
   fruit f1 = Apple;
   fruit f2 = Orange;
   fruit f3 = f1 + f2;

   printf("b3 = %d; f3 = %d\n", b3, f3);

   return 0;
}