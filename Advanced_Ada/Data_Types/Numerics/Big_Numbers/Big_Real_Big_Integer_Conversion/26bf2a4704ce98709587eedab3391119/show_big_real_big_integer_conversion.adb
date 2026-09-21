with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

procedure Show_Big_Real_Big_Integer_Conversion
is
   I  : Integer;
   BI : Big_Integer;
   BR : Big_Real;

begin
   I  := 12345;
   BR := To_Real (I);
   Put_Line ("BR (from I):  " & BR'Image);

   BI := 123456;
   BR := To_Big_Real (BI);
   Put_Line ("BR (from BI): " & BR'Image);

end Show_Big_Real_Big_Integer_Conversion;