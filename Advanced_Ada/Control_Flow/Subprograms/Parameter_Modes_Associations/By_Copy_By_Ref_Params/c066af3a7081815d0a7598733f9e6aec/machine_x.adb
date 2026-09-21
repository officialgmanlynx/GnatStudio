with Check_Param_Passing;

package body Machine_X is

   procedure Update_Value
     (V  : aliased in out Integer;
      AV :                System.Address)
   is
   begin
      V := V + 1;
      Check_Param_Passing (Formal => V'Address,
                           Actual => AV);
   end Update_Value;

end Machine_X;