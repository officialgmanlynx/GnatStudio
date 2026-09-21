package Derived_With_Discriminants is

   type T
     (L : Positive;
      M : Positive) is
     null record;

   type T_Derived
     (X : Positive;
      Y : Positive) is
     new T (L => X, M => Y);

end Derived_With_Discriminants;