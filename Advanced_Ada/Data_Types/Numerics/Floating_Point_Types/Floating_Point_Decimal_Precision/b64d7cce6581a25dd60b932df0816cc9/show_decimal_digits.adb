with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Digits is

   type Float_6_Digits is
     digits 6;

   type Float_9_Digits is
     digits 9;

   F6 : Float_6_Digits;
begin
   F6 := 0.123456123;

   Put_Line ("F6 = "
             & F6'Image);

   Put_Line ("F6 = "
             & Float_9_Digits (F6)'Image
             & " (9 digits)");

   Put_Line ("Float_6_Digits'Size  :"
             & Float_6_Digits'Size'Image
             & " bits");
end Show_Decimal_Digits;