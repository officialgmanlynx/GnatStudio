#include <stdbool.h>
#include <stdio.h>

int main() {
   typedef enum {Ape, Bee, Cat} Animal;
   bool answer = (2 * Bee) || ! (2 * Bee);
   printf("two bee or not two bee? %d\n", answer);
   return 0;
}