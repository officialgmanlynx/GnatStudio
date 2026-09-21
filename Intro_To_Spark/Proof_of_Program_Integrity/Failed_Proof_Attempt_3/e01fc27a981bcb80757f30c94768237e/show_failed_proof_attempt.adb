package body Show_Failed_Proof_Attempt is

   procedure Increase (X : in out Natural) is
   begin
      if X < 90 then
         X := X + 10;
      elsif X >= C then
         X := C;
      else
         X := X + 1;
      end if;
   end Increase;

end Show_Failed_Proof_Attempt;