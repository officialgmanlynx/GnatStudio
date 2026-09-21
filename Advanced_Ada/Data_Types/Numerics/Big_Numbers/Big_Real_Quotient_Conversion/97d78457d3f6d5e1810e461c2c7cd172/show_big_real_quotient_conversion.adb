with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

procedure Show_Big_Real_Quotient_Conversion
is
   BR   : Big_Real;
begin
   BR := 2 / 3;
   --  Same as:
   --  BR := From_Quotient_String ("2 / 3");

   Put_Line ("BR:   " & BR'Image);

   Put_Line ("Q:    "
             & To_Quotient_String (BR));

   Put_Line ("Q numerator:    "
             & Numerator (BR)'Image);
   Put_Line ("Q denominator:  "
             & Denominator (BR)'Image);
end Show_Big_Real_Quotient_Conversion;