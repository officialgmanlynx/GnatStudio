with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

procedure Show_Simple_Big_Integer_Conversion is
   BI : Big_Integer;
   I  : Integer := 10000;
begin
   BI := To_Big_Integer (I);
   Put_Line ("BI: " & BI'Image);

   I := To_Integer (BI + 1);
   Put_Line ("I:  " & I'Image);
end Show_Simple_Big_Integer_Conversion;