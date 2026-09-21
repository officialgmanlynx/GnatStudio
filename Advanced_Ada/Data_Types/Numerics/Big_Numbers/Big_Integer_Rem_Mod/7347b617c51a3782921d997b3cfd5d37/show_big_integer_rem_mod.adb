with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

procedure Show_Big_Integer_Rem_Mod is
   BI : Big_Integer;
begin
   BI := 145 mod (-4);
   Put_Line ("BI (mod): " & BI'Image);

   BI := 145 rem (-4);
   Put_Line ("BI (rem): " & BI'Image);
end Show_Big_Integer_Rem_Mod;