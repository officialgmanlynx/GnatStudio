with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Mixing_Decimal_Types is
   A : T0_D4;
   B : T2_D6;
begin
   A := 1000.0;
   B := 500.25;
   Put_Line ("A = " &
             A'Image);
   Put_Line ("B = " &
             B'Image);

   Put_Line ("--------------");
   Put_Line ("A := A + B");
   A := A + T0_D4 (B);
   Put_Line ("A = " &
             A'Image);

   Put_Line ("--------------");
   A := 1000.0;
   B := 500.25;
   Put_Line ("A := A - B");
   A := A - T0_D4 (B);
   Put_Line ("A = " &
             A'Image);
end Show_Mixing_Decimal_Types;