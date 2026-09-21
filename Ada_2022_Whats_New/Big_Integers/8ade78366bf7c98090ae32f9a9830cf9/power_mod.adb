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