with System;

package Shared_Var_Types is

private
   R : Integer
         with Atomic,
              Address =>
                System'To_Address (16#FFFF00A0#);

end Shared_Var_Types;