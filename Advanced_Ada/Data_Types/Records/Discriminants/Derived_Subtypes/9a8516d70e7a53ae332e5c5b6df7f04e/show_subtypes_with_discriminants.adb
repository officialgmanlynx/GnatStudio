with Subtypes_With_Discriminants;
use  Subtypes_With_Discriminants;

procedure Show_Subtypes_With_Discriminants is
   A1 : T (1, 2);
   A2 : T (3, 4);
   B1 : Sub_T (1, 2);
   B2 : Sub_T (3, 4);
   C2 : Sub_T_2;

   --  C1 : Sub_T_2 (1, 2);
   --                ^^^^
   --  ERROR: discriminants already
   --         constrained
begin
   B1 := A1;
   --  OK: discriminants match

   B2 := A1;
   --  CONSTRAINT_ERROR!

   B2 := A2;
   --  OK: discriminants match

   C2 := A1;
   --  CONSTRAINT_ERROR!

   C2 := A2;
   --  OK: discriminants match
end Show_Subtypes_With_Discriminants;