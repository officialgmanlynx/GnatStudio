with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

procedure Show_Simple_Big_Numbers is
   BI : Big_Integer;
   BR : Big_Real;
begin
   BI := 12345678901234567890;
   BR := 2.0 ** 1234;

   Put_Line ("BI: " & BI'Image);
   Put_Line ("BR: " & BR'Image);

   BI := BI + 1;
   BR := BR + 1.0;

   Put_Line ("BI: " & BI'Image);
   Put_Line ("BR: " & BR'Image);
end Show_Simple_Big_Numbers;