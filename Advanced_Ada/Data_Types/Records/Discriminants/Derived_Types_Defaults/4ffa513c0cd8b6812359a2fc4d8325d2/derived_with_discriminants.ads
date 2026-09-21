package Derived_With_Discriminants is

   type T
     (L : Positive := 1;
      M : Positive := 2) is
     null record;

   type T_Derived is new T;

   type T_Derived_2
     (L : Positive := 1;
      M : Positive := 3) is
     new T (L => L, M => M);

end Derived_With_Discriminants;