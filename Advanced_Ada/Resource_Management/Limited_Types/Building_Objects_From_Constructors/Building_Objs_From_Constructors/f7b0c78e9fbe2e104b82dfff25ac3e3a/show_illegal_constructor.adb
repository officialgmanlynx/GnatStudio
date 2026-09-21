with P;     use P;
with P.Aux; use P.Aux;

procedure Show_Illegal_Constructor is
   Rumplestiltskin_Is_My_Name : T;
begin
   Rumplestiltskin_Is_My_Name :=
     Make_T (Name => "");  --  Illegal!
end Show_Illegal_Constructor;