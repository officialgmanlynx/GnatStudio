with Ada.Text_IO; use Ada.Text_IO;
with Machine_X;   use Machine_X;

procedure Show_By_Copy_By_Ref_Params is
begin
   Put_Line ("Calling Update_Value...");
   Update_Value (Global_R,  Global_R'Address);

   Put_Line ("After call to Update_Value...");
   Put_Line ("Global_R.A: "
             & Integer'Image (Global_R.A));
end Show_By_Copy_By_Ref_Params;