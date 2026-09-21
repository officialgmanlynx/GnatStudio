with Ada.Text_IO; use Ada.Text_IO;
with Ada.Decimal; use Ada.Decimal;

procedure Show_Max_Decimal_Digits_Max_Scale is

   type Smallest_Decimal is
     delta 10.0 ** (-Max_Scale)
     digits Max_Decimal_Digits;

begin
   Put_Line ("Smallest_Decimal'Range : "
             & Smallest_Decimal'First'Image
             & " .. "
             & Smallest_Decimal'Last'Image);
   Put_Line ("Smallest_Decimal'Delta : "
             & Smallest_Decimal'Delta'Image);
   Put_Line ("Smallest_Decimal'Size  : "
             & Smallest_Decimal'Size'Image);
end Show_Max_Decimal_Digits_Max_Scale;