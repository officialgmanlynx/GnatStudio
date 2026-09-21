package Show_Failed_Proof_Attempt is

   function GCD (A, B : Positive) return Positive with
     Post =>
       A mod GCD'Result = 0
       and B mod GCD'Result = 0;

end Show_Failed_Proof_Attempt;