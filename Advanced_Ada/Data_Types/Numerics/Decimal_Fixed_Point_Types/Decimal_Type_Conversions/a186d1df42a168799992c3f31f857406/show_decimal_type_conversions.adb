with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Decimal_Type_Conversions is
   D8 : T4_D8;
   D6 : T2_D6;
   D4 : T0_D4;
begin
   D8 := T4_D8'Last;
   D6 := T2_D6 (D8);
   D4 := T0_D4 (D6);

   Put_Line ("D8  = "
             & D8'Image);
   Put_Line ("D6  = "
             & D6'Image);
   Put_Line ("D4  = "
             & D4'Image);
end Show_Decimal_Type_Conversions;