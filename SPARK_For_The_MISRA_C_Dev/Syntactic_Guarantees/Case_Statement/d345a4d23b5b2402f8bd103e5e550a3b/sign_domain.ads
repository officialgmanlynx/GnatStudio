package Sign_Domain is

   type Sign is (Negative, Zero, Positive);

   function Opposite (A : Sign) return Sign is
     (case A is  --  ERROR
         when Negative => Positive,
         when Positive => Negative);

   function Multiply (A, B : Sign) return Sign is
     (case A is
         when Negative        => Opposite (B),
         when Zero | Positive => Zero,
         when Positive        => B);  --  ERROR

   procedure Get_Sign (X : Integer; S : out Sign);

end Sign_Domain;