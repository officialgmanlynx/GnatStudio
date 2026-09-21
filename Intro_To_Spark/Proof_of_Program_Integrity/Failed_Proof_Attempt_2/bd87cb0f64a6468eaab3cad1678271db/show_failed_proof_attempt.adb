package body Show_Failed_Proof_Attempt is

   procedure Incr_Until (X : in out Natural) is
   begin
      if X < 1000 then
         X := X + 1;
         Incremented := True;
      else
         Incremented := False;
      end if;
   end Incr_Until;

end Show_Failed_Proof_Attempt;