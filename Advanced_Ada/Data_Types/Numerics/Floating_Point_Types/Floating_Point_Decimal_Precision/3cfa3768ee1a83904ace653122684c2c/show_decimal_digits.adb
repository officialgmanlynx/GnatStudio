with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Digits is

   type Float_6_Digits is
     digits 6
       with Size => 128;

begin
   Put_Line ("Float_6_Digits'Size  :"
             & Float_6_Digits'Size'Image
             & " bits");
end Show_Decimal_Digits;