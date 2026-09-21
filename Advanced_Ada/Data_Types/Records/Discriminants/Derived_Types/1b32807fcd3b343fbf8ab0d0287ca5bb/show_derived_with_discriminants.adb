with Derived_With_Discriminants;
use  Derived_With_Discriminants;

procedure Show_Derived_With_Discriminants is
   A1 : T (1, 2);
   A2 : T (3, 4);
   B1 : T_Derived (1, 2);
   B2 : T_Derived (3, 4);
   C2 : T_Derived_2;

   --  C1 : Sub_T_2 (1, 2);
   --                ^^^^
   --  ERROR: discriminants already
   --         constrained
begin
   B1 := T_Derived (A1);
   --  OK: discriminants match

   B2 := T_Derived (A1);
   --  ERROR!

   C2 := T_Derived_2 (A1);
   --  CONSTRAINT_ERROR!

   C2 := T_Derived_2 (A2);
   --  OK: discriminants match
end Show_Derived_With_Discriminants;