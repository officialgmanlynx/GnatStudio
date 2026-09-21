with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Decimal_Type_Conversions is
   D6  : T2_D6;
   D38 : T2_D38;
begin
   D6  := T2_D6'Last;
   D38 := T2_D38 (D6);

   Put_Line ("D6  = "
             & D6'Image);
   Put_Line ("D38 = "
             & D38'Image);
end Show_Decimal_Type_Conversions;