package body Show_Failed_Proof_Attempt is

   function GCD (A, B : Positive) return Positive
   is
      Result : Positive;
   begin
      if A > B then
         Result := GCD (A - B, B);
         pragma Assert ((A - B) mod Result = 0);
         --  info: assertion proved
         pragma Assert (B mod Result = 0);
         --  info: assertion proved
         pragma Assert (A mod Result = 0);
         --  medium: assertion might fail
      elsif B > A then
         Result := GCD (A, B - A);
         pragma Assert ((B - A) mod Result = 0);
         --  info: assertion proved
      else
         Result := A;
      end if;
      return Result;
   end GCD;

end Show_Failed_Proof_Attempt;