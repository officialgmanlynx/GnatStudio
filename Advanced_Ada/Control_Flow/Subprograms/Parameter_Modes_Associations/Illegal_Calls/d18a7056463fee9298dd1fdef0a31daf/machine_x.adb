package body Machine_X is

   procedure Update_Value (V1 : in out Integer;
                           V2 :    out Integer) is
   begin
      V1 := V1 + 1;
      V2 := V2 + 1;
   end Update_Value;

end Machine_X;