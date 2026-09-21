with Ada.Text_IO; use Ada.Text_IO;
with Ada.Decimal; use Ada.Decimal;

procedure Show_Max_Decimal_Digits_Min_Scale is

   type Max_Decimal is
     delta 10.0 ** (-Min_Scale)
     digits Max_Decimal_Digits;

begin
   Put_Line ("Max_Decimal'Range : "
             & Max_Decimal'First'Image
             & " .. "
             & Max_Decimal'Last'Image);
   Put_Line ("Max_Decimal'Delta : "
             & Max_Decimal'Delta'Image);
   Put_Line ("Max_Decimal'Size  : "
             & Max_Decimal'Size'Image);
end Show_Max_Decimal_Digits_Min_Scale;