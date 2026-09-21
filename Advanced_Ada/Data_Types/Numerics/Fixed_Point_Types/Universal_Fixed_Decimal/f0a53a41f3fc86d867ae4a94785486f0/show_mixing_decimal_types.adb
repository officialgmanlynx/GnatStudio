with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Mixing_Decimal_Types is
   A : Short_Decimal;
   B : Decimal;
begin
   A := 1000.0;
   B := 0.19;
   Put_Line ("A = " &
             A'Image);
   Put_Line ("B = " &
             B'Image);
   Put_Line ("----------");

   A := A * B;
   Put_Line ("A := A * B");
   Put_Line ("A = " &
             A'Image);
end Show_Mixing_Decimal_Types;