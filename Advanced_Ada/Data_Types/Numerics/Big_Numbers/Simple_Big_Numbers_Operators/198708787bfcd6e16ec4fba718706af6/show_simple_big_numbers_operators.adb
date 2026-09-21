with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

procedure Show_Simple_Big_Numbers_Operators is
   BI : Big_Integer;
begin
   BI := 12345678901234567890;

   Put_Line ("BI: " & BI'Image);

   BI := -BI + BI / 2;
   BI :=  BI - BI * 2;

   Put_Line ("BI: " & BI'Image);
end Show_Simple_Big_Numbers_Operators;