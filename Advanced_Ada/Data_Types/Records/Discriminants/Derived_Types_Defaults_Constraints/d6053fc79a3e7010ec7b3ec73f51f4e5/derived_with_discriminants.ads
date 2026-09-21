package Derived_With_Discriminants is

   type T
     (L : Positive := 1;
      M : Positive := 2) is
     null record;

   type T_Derived_Constrainted is new T
     (L => 1, M => 3);

end Derived_With_Discriminants;