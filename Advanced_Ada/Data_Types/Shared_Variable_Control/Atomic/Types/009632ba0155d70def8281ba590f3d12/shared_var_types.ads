with System;

package Shared_Var_Types is

   type Atomic_Integer is new Integer
     with Atomic;

private
   R : Atomic_Integer
         with Address =>
                System'To_Address (16#FFFF00A0#);

end Shared_Var_Types;