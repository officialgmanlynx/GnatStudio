with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Mixing_Decimal_Types is
   A : T0_D4;
   B : T2_D6;
begin
   A := T0_D4'Last;     --  9_999.0
   B := T2_D6 (A);
   Put_Line ("A =     " &
             A'Image);
   Put_Line ("B = A = " &
             B'Image);

   Put_Line ("--------------");
   B := 9_999.0;
   A := T0_D4 (B);
   Put_Line ("B =     " &
             B'Image);
   Put_Line ("A = B = " &
             A'Image);

end Show_Mixing_Decimal_Types;