with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Fixed_Point_Subtypes is
   Q15    : TQ15;
   Q15_05 : TQ15_05;
begin
   Q15  := 0.25;
   Put_Line ("Q15    = "
             & Q15'Image);

   Q15_05 := Q15;
   Put_Line ("Q15_05 = "
             & Q15_05'Image);
end Show_Fixed_Point_Subtypes;