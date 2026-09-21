with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Mixing_Fixed_Point is
   A : TQ7_24;
   B : TQ31;
begin
   A := 2.0;
   B := 0.75;
   Put_Line ("A = " &
             A'Image);
   Put_Line ("B = " &
             B'Image);

   Put_Line ("--------------");
   Put_Line ("A := A + B");
   A := A + TQ7_24 (B);
   Put_Line ("A = " &
             A'Image);

   A := 2.0;
   B := 0.75;

   Put_Line ("--------------");
   Put_Line ("A := A - B");
   A := A - TQ7_24 (B);
   Put_Line ("A = " &
             A'Image);
end Show_Mixing_Fixed_Point;