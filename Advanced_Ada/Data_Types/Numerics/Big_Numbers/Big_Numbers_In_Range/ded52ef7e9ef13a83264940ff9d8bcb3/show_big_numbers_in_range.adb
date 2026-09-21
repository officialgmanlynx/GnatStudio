with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

procedure Show_Big_Numbers_In_Range is

   BI : Big_Integer;
   BR : Big_Real;

   BI_From : constant Big_Integer := 0;
   BI_To   : constant Big_Integer := 1024;

   BR_From : constant Big_Real := 0.0;
   BR_To   : constant Big_Real := 1024.0;

begin
   BI := 1023;
   BR := 1023.9;

   if In_Range (BI, BI_From, BI_To) then
      Put_Line ("BI ("
                & BI'Image
                & ") is in the "
                & BI_From'Image
                & " .. "
                & BI_To'Image
                & " range");
   end if;

   if In_Range (BR, BR_From, BR_To) then
      Put_Line ("BR ("
                & BR'Image
                & ") is in the "
                & BR_From'Image
                & " .. "
                & BR_To'Image
                & " range");
   end if;

end Show_Big_Numbers_In_Range;