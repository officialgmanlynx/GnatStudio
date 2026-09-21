with Ada.Text_IO;
with Ada.Numerics.Big_Numbers.Big_Integers;
use  Ada.Numerics.Big_Numbers.Big_Integers;

procedure Main is

   --  Calculate M ** D mod N

   function Power_Mod (M, D, N : Big_Integer) return Big_Integer is

      function Is_Odd (X : Big_Integer) return Boolean is
        (X mod 2 /= 0);

         Result : Big_Integer := 1;
         Exp    : Big_Integer := D;
         Mult   : Big_Integer := M mod N;
   begin
      while Exp /= 0 loop
         --  Loop invariant is Power_Mod'Result = Result * Mult**Exp mod N
         if Is_Odd (Exp) then
            Result := (Result * Mult) mod N;
         end if;

         Mult := Mult ** 2 mod N;
         Exp := Exp / 2;
      end loop;

      return Result;
   end Power_Mod;

begin
   Ada.Text_IO.Put_Line (Big_Integer'Image (2 ** 256));
   --  Encrypt:
   Ada.Text_IO.Put_Line (Power_Mod (M => 65, D => 17, N => 3233)'Image);
   --  Decrypt:
   Ada.Text_IO.Put_Line (Power_Mod (M => 2790, D => 413, N => 3233)'Image);
end Main;