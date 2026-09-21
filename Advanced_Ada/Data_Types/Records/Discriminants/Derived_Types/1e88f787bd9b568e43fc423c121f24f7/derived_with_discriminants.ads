package Derived_With_Discriminants is

   type T
     (L : Positive;
      M : Positive) is
     null record;

   type T_Derived is new T;
   --  Discriminants are not specified:
   --  taking the ones from T.

   type T_Derived_2 is new T
     (L => 3, M => 4);
   --  Discriminants are specified:
   --  taking the ones from T_Derived_2

end Derived_With_Discriminants;