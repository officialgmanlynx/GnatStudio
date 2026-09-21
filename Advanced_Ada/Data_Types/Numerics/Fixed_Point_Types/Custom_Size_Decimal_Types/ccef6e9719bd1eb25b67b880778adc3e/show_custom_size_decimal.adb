with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Custom_Size_Decimal is

   type Decimal_128_Bits is
     delta 10.0 ** (-2) digits 6
       with Size => 128;

begin
   Put_Line ("Decimal_128_Bits'Size      :"
             & Decimal_128_Bits'Size'Image
             & " bits");
end Show_Custom_Size_Decimal;