with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

procedure Show_Big_Integer_Greatest_Common_Divisor
is
   BI : Big_Integer;
begin
   BI := Greatest_Common_Divisor (145, 25);
   Put_Line ("BI: " & BI'Image);

end Show_Big_Integer_Greatest_Common_Divisor;