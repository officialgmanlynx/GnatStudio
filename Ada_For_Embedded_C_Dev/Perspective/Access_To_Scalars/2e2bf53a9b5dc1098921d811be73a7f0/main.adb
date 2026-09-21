procedure Main is
   type A_Int is access Integer;
   Var : A_Int := new Integer;
begin
   Var.all := 0;
end Main;