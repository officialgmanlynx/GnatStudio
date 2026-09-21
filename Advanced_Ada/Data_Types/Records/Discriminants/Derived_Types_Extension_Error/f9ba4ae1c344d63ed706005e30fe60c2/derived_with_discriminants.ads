package Derived_With_Discriminants is

   type T
     (L : Positive;
      M : Positive) is
     null record;

   type T_Derived
     (X : Positive;
      Y : Positive;
      A : Boolean) is
   --  ^^^^^^^^^^^
   --  ERROR: cannot extend type with new
   --         Boolean discriminant A
     new T (L => X, M => Y);

end Derived_With_Discriminants;