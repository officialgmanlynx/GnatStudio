with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

procedure Show_Arbitrary_Big_Integer_Conversion is

   type Mod_32_Bit is mod 2 ** 32;

   package Long_Long_Integer_Conversions is new
     Signed_Conversions (Long_Long_Integer);
   use Long_Long_Integer_Conversions;

   package Mod_32_Bit_Conversions is new
     Unsigned_Conversions (Mod_32_Bit);
   use Mod_32_Bit_Conversions;

   BI   : Big_Integer;
   LLI  : Long_Long_Integer := 10000;
   U_32 : Mod_32_Bit        := 2 ** 32 + 1;

begin
   BI := To_Big_Integer (LLI);
   Put_Line ("BI:   " & BI'Image);

   LLI := From_Big_Integer (BI + 1);
   Put_Line ("LLI:  " & LLI'Image);

   BI := To_Big_Integer (U_32);
   Put_Line ("BI:   " & BI'Image);

   U_32 := From_Big_Integer (BI + 1);
   Put_Line ("U_32: " & U_32'Image);

end Show_Arbitrary_Big_Integer_Conversion;