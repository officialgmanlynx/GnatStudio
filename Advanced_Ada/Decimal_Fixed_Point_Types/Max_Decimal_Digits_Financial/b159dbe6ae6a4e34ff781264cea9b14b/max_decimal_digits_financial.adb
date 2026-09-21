with Ada.Text_IO; use Ada.Text_IO;
with Ada.Decimal; use Ada.Decimal;

procedure Max_Decimal_Digits_Financial is

   type Max_Fin_Decimal is
     delta 0.01
     digits Max_Decimal_Digits;

begin
   Put_Line ("Max_Fin_Decimal'Range : "
             & Max_Fin_Decimal'First'Image
             & " .. "
             & Max_Fin_Decimal'Last'Image);
   Put_Line ("Max_Fin_Decimal'Delta : "
             & Max_Fin_Decimal'Delta'Image);
   Put_Line ("Max_Fin_Decimal'Size  : "
             & Max_Fin_Decimal'Size'Image);
end Max_Decimal_Digits_Financial;