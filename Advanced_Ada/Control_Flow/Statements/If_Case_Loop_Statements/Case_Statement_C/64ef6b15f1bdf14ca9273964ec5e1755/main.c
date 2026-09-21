
#include <stdio.h>

int main(int argc, const char * argv[])
{
   int s = 0;

   switch (s)
   {
      case 0:
      case 1:
         printf("Value in the 0 -- 1 range\n");
      default:
         printf("Value > 1\n");
   }
}