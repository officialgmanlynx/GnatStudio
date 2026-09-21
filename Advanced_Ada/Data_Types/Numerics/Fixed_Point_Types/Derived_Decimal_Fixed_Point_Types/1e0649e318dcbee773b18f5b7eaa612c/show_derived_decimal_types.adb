with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Derived_Decimal_Types is
   D  : Decimal;
   SM : Small_Money;
begin
   D  := 231.53;
   Put_Line ("D  = "
             & D'Image);

   SM := Small_Money (D);
   Put_Line ("SM = "
             & SM'Image);
end Show_Derived_Decimal_Types;