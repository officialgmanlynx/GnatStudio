package Derived_With_Discriminants is

   type T
     (L : Positive;
      M : Positive) is
     null record;

   --  The declaration:
   --
   --     type T_Derived is new T;
   --
   --  is the same as:
   --
   type T_Derived
     (L : Positive;
      M : Positive) is
     new T (L => L, M => M);

end Derived_With_Discriminants;