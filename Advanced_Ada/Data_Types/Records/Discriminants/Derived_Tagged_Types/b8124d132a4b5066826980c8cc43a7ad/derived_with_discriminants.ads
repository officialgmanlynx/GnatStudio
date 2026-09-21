package Derived_With_Discriminants is

   type T
     (L : Positive;
      M : Positive) is
     tagged null record;

   type T_Derived_Extended
     (X : Positive;
      Y : Positive;
      A : Boolean) is  --  New discriminant
     new T (L => X, M => Y)
       with null record;

   type T_Derived_Extended_2
     (A : Boolean;     --  New discriminant
      X : Positive;
      Y : Positive) is
     new T (L => X, M => Y)
       with null record;

   type T_Derived_Extended_3
     (A : Boolean) is  --  New discriminant
     new T (L => 1, M => 2)
       with null record;

   type T_Derived_Extended_4
     (A : Boolean;     --  New discriminant
      X : Positive) is
     new T (L => X, M => X)
       with null record;

end Derived_With_Discriminants;