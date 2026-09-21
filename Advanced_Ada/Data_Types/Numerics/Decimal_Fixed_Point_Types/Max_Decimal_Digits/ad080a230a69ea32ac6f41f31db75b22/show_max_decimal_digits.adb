with Ada.Text_IO; use Ada.Text_IO;
with Ada.Decimal; use Ada.Decimal;

procedure Show_Max_Decimal_Digits is
begin
   Put_Line ("Max_Decimal_Digits : "
             & Max_Decimal_Digits'Image);
end Show_Max_Decimal_Digits;