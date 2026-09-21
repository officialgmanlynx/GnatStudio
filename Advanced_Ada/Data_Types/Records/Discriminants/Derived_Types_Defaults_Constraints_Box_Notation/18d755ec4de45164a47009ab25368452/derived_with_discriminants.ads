package Derived_With_Discriminants is

   type T
     (L : Positive := 1;
      M : Positive := 2) is
     null record;

   type T_Derived_Constraint is new T
     (L => <>, M => 3);
   --   ^^^^^^^
   --  ERROR: cannot use default values
   --         via box notation
end Derived_With_Discriminants;