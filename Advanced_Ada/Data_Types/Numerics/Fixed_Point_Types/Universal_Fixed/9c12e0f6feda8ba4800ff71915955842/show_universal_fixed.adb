with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Universal_Fixed is
   Acc : TQ7_24;
   A   : TQ31;
begin
   Acc := 1.0;
   A   := 0.75;
   Put_Line ("A    = " & A'Image);
   Put_Line ("Acc  = " & Acc'Image);
   Put_Line ("--------------");

   Put_Line ("Acc := Acc / A");
   Acc := Acc / A;
   --     ^^^^^^^
   --  Using universal fixed point

   Put_Line ("Acc  = " & Acc'Image);
end Show_Universal_Fixed;