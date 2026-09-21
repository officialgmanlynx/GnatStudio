package Show_Failed_Proof_Attempt is

   Incremented : Boolean := False;

   procedure Incr_Until (X : in out Natural) with
     Contract_Cases =>
       (Incremented => X > X'Old,
        others      => X = X'Old);

end Show_Failed_Proof_Attempt;