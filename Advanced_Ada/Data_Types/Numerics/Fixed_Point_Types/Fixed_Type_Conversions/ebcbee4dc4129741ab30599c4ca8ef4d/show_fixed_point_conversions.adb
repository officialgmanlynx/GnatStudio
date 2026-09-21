with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Fixed_Point_Conversions is
   FP : Fixed_Point;
   D  : Decimal;
begin
   FP := 0.5;
   D  := Decimal (FP);

   Put_Line ("FP = "
             & FP'Image);
   Put_Line ("D  = "
             & D'Image);
   Put_Line ("------------------------------");

   D  := 0.25;
   FP := Fixed_Point (D);

   Put_Line ("FP = "
             & FP'Image);
   Put_Line ("D  = "
             & D'Image);
end Show_Fixed_Point_Conversions;