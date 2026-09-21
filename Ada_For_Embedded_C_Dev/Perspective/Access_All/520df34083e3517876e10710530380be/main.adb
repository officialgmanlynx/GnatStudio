procedure Main is
   type A_Int is access all Integer;
   Var : aliased Integer;
   Ptr : A_Int := Var'Access;
begin
   null;
end Main;