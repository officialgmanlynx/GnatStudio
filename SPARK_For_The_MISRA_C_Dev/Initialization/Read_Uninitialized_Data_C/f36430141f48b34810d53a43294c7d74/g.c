#include <stdint.h>
#include "f.h"

static void g (void)
{
   uint16_t u;

   f ( 0, &u );

   if ( u == 3U )
   {
      /* Non-compliant use - "u" has not been assigned a value. */
   }
}