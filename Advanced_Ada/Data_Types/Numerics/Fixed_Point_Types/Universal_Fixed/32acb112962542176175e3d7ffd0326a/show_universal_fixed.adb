with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Universal_Fixed is
   Acc  : TQ7_24;
   A, B : TQ31;
begin
   Acc := 1.0;
   A   := 0.75;
   B   := 0.75;
   Put_Line ("A    = " & A'Image);
   Put_Line ("B    = " & B'Image);
   Put_Line ("Acc  = " & Acc'Image);
   Put_Line ("--------------");

   Put_Line ("Acc := Acc * A * 2");
   Acc := Acc * A * 2;
   --     ^^^^^^^^^^^
   --  Using universal fixed point

   Put_Line ("Acc  = " & Acc'Image);

   Put_Line ("--------------");
   Put_Line ("A   := Acc / 2 * B");
   A := Acc / 2 * B;
   --   ^^^^^^^^^^^
   --  Using universal fixed point
   Put_Line ("A    = " & A'Image);

end Show_Universal_Fixed;