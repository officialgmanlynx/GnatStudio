package Derived_With_Discriminants is

   type T
     (L : Positive;
      M : Positive) is
     null record;

   type T_2
     (X : Positive;
      Y : Positive;
      A : Boolean) is
   record
      A_Comp : T (L => X, M => Y);
   end record;

end Derived_With_Discriminants;