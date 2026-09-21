with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Fixed_Point_Conversions is
   In_Data : constant array (1 .. 5)
               of TQ31 :=
                 (0.5, 0.75, 0.5, 0.25, 0.125);
   Res     : TQ31;
   Acc     : TQ15_48;
begin
   Acc := 0.0;
   for I in In_Data'Range loop
      Acc := Acc + TQ15_48 (In_Data (I));
   end loop;

   --  ERROR: Acc might be out-of-range
   --         when converted to TQ31
   Res := TQ31 (Acc) / In_Data'Length;

   --  CORRECT: put Acc in the expected range
   --           before converting to TQ31
   Res := TQ31 (Acc / In_Data'Length);

   Put_Line ("Res = "
             & Res'Image);
end Show_Fixed_Point_Conversions;