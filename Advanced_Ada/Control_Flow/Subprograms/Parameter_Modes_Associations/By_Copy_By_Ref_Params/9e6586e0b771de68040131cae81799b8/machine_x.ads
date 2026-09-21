with System;

package Machine_X is

   procedure Update_Value
     (V  : aliased in out Integer;
      AV :                System.Address);

end Machine_X;