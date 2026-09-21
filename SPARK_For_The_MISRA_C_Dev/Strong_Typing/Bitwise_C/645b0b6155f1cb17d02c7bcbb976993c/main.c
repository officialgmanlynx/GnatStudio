#include <stdbool.h>
#include <assert.h>

int main() {
   typedef enum {Ape, Bee, Cat, Dog} Animal;
   Animal mutant = Bee ^ Dog;
   assert (mutant == Cat);
   return 0;
}