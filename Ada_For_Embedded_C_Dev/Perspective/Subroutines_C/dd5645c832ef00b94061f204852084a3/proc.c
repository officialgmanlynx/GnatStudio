#include "func.h"

void Proc
    (int   Var1,
     int * Var2,
     int * Var3)
{
    *Var2 = Func (Var1);
    *Var3 += 1;
}
