with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

procedure Show_Big_Positive_Natural is
   BI, D, N : Big_Integer;
begin
   D  := 3;
   N  := 2;
   BI := Big_Natural (D / Big_Positive (N));

   Put_Line ("BI: " & BI'Image);
end Show_Big_Positive_Natural;