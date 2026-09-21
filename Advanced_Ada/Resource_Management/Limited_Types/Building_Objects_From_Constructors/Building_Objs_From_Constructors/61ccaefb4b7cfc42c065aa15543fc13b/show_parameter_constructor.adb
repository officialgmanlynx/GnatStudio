with P;     use P;
with P.Aux; use P.Aux;

procedure Show_Parameter_Constructor is
   procedure Do_Something (X : T) is null;
begin
   Do_Something (X => Make_Rumplestiltskin);
end Show_Parameter_Constructor;