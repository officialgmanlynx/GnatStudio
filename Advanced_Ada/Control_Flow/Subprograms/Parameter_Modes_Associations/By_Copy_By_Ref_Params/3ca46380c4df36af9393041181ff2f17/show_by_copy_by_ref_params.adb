with Ada.Text_IO; use Ada.Text_IO;
with Machine_X;   use Machine_X;

procedure Show_By_Copy_By_Ref_Params is
   TR : Tagged_Rec := (A   => 5);
   R  : Rec        := (A   => 5);
   RA : Rec_Array  := (A   => 5,
                       Arr => (others => 0));
begin
   Put_Line ("Tagged record");
   Update_Value (TR, TR'Address);

   Put_Line ("Untagged record");
   Update_Value (R,  R'Address);

   Put_Line ("Untagged record with array");
   Update_Value (RA, RA'Address);
end Show_By_Copy_By_Ref_Params;