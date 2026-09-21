with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Derived_Decimal_Types is
   D  : T2_D6;
   SM : Smaller_Money;
begin
   Put_Line ("T2_D6'Range : "
             & T2_D6'First'Image
             & " .. "
             & T2_D6'Last'Image);
   Put_Line ("T2_D6'Delta : "
             & T2_D6'Delta'Image);
   Put_Line ("--------------------");

   Put_Line ("Smaller_Money'Range : "
             & Smaller_Money'First'Image
             & " .. "
             & Smaller_Money'Last'Image);
   Put_Line ("Smaller_Money'Delta : "
             & Smaller_Money'Delta'Image);
   Put_Line ("--------------------");

   D  := 231.53;
   Put_Line ("D  = "
             & D'Image);

   SM := Smaller_Money (D);
   Put_Line ("SM = "
             & SM'Image);
end Show_Derived_Decimal_Types;