with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

procedure Show_Big_Real_Floating_Point_Conversion
is
   type D10 is digits 10;

   package D10_Conversions is new
     Float_Conversions (D10);
   use D10_Conversions;

   package Long_Float_Conversions is new
     Float_Conversions (Long_Float);
   use Long_Float_Conversions;

   BR  : Big_Real;
   LF  : Long_Float := 2.0;
   F10 : D10        := 1.999;

begin
   BR := To_Big_Real (LF);
   Put_Line ("BR:   " & BR'Image);

   LF := From_Big_Real (BR + 1.0);
   Put_Line ("LF:   " & LF'Image);

   BR := To_Big_Real (F10);
   Put_Line ("BR:   " & BR'Image);

   F10 := From_Big_Real (BR + 0.1);
   Put_Line ("F10:  " & F10'Image);

end Show_Big_Real_Floating_Point_Conversion;