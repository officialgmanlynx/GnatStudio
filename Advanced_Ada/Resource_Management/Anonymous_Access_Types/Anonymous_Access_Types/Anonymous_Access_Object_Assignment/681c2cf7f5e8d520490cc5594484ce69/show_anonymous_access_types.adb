with Aux; use Aux;

procedure Show_Anonymous_Access_Types is
   --  I_Var : aliased Integer;

   A : Integer_Access;
   B : Integer_Access;
begin
   --  A := I_Var'Access;
   --       ^ ERROR: non-local pointer cannot
   --                point to local object.

   A := new Integer;
   B := A;

   A.all := 22;

   Show ("A", A);
   Show ("B", B);
end Show_Anonymous_Access_Types;