with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

procedure Show_Big_Real_Fixed_Point_Conversion
is
   D : constant := 2.0 ** (-31);
   type TQ31 is delta D range -1.0 .. 1.0 - D;

   package TQ31_Conversions is new
     Fixed_Conversions (TQ31);
   use TQ31_Conversions;

   BR   : Big_Real;
   FQ31 : TQ31 := 0.25;

begin
   BR := To_Big_Real (FQ31);
   Put_Line ("BR:   " & BR'Image);

   FQ31 := From_Big_Real (BR * 2.0);
   Put_Line ("FQ31: " & FQ31'Image);

end Show_Big_Real_Fixed_Point_Conversion;