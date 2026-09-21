#include <stdbool.h>
#include <stdio.h>

int main() {
   typedef enum {Ape, Bee, Cat} Animal;
   int b = Bee;
   bool t = 2 * b;
   bool answer = t || ! t;
   printf("two bee or not two bee? %d\n", answer);
   return 0;
}