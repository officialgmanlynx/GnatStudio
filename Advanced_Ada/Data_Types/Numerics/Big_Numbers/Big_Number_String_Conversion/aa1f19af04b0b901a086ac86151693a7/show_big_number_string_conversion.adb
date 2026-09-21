with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

procedure Show_Big_Number_String_Conversion
is
   BI : Big_Integer;
   BR : Big_Real;
begin
   BI := From_String ("12345678901234567890");
   BR := From_String ("12345678901234567890.0");

   Put_Line ("BI: "
             & To_String (Arg   => BI,
                          Width => 5,
                          Base => 2));
   Put_Line ("BR: "
             & To_String (Arg   => BR,
                          Fore  => 2,
                          Aft   => 6,
                          Exp   => 18));
end Show_Big_Number_String_Conversion;