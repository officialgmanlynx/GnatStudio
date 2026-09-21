with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Type_Conversions is

   type Decimal is
     delta 10.0 ** (-2) digits 9;

   type Long_Long_Decimal is
     delta 10.0 ** (-2) digits 38;

   D   : Decimal;
   Acc : Long_Long_Decimal;
begin
   D   := 2.0;
   Acc := Long_Long_Decimal (D);

   Put_Line ("D   = "
             & D'Image);
   Put_Line ("Acc = "
             & Acc'Image);
   Put_Line ("--------------");

   Acc := 10.0;
   D   := Decimal (Acc);

   Put_Line ("D   = "
             & D'Image);
   Put_Line ("Acc = "
             & Acc'Image);
end Show_Decimal_Type_Conversions;