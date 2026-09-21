with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Digits is
   type T3_D6 is delta 10.0 ** (-3) digits 6;
   subtype T3_D2 is T3_D6 digits 2;
begin
   Put_Line ("T3_D6'Digits: "
             & T3_D6'Digits'Image);
   Put_Line ("T3_D2'Digits: "
             & T3_D2'Digits'Image);
end Show_Decimal_Digits;