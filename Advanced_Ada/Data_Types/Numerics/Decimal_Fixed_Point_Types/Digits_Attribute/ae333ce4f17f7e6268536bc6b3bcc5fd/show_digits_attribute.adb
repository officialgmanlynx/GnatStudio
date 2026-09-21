with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Digits_Attribute is
   type T4_D8 is
     delta 10.0 ** (-4) digits 8;
begin
   Put_Line ("T4_D8'Digits : "
             & T4_D8'Digits'Image);
end Show_Digits_Attribute;