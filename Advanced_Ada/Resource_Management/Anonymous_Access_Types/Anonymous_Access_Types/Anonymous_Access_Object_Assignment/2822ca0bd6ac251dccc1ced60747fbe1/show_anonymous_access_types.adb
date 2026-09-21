with Show;

procedure Show_Anonymous_Access_Types is
   I_Var : aliased Integer;
   A     : access Integer;
   B     : access Integer;
begin
   A := I_Var'Access;
   B := A;

   A.all := 22;

   Show ("A", A);
   Show ("B", B);
end Show_Anonymous_Access_Types;