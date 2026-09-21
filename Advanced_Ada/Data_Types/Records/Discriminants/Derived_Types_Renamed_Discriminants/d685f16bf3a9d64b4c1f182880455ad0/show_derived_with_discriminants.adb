with Derived_With_Discriminants;
use  Derived_With_Discriminants;

procedure Show_Derived_With_Discriminants is
   A : T (L => 1, M => 2);
   B : T_Derived (X => 1, Y => 2);
begin
   B := T_Derived (A);  --  OK
end Show_Derived_With_Discriminants;