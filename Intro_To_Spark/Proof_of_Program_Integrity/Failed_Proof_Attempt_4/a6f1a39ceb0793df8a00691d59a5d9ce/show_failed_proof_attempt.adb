package body Show_Failed_Proof_Attempt is

   function GCD (A, B : Positive) return Positive is
   begin
      if A > B then
         return GCD (A - B, B);
      elsif B > A then
         return GCD (A, B - A);
      else
         return A;
      end if;
   end GCD;

end Show_Failed_Proof_Attempt;