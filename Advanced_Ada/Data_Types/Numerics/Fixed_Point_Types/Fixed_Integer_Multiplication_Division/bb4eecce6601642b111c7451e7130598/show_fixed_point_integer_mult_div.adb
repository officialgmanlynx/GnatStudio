with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Fixed_Point_Integer_Mult_Div is
   FP : Fixed_Point;
   D  : Decimal;

   procedure Show_Vars is
   begin
      Put_Line ("FP = "
                & FP'Image);
      Put_Line ("D  = "
                & D'Image);
      Put_Line ("------------------------------");
   end Show_Vars;

   I : Integer := 8;
begin
   FP := 0.25;
   D  := 0.25;
   Show_Vars;

   FP := FP * 2;
   D  := D  * 2;
   Show_Vars;

   FP := FP / 4;
   D  := D  / 4;
   Show_Vars;

   FP := FP / I;
   D  := D  / I;
   Show_Vars;
end Show_Fixed_Point_Integer_Mult_Div;