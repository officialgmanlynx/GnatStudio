with P;     use P;
with P.Aux; use P.Aux;

procedure Show_Illegal_Constructor is
   Rumplestiltskin_Is_My_Name : constant T :=
     Make_T (Name => "");
   Other : T :=
     Rumplestiltskin_Is_My_Name; -- Illegal!
begin
   null;
end Show_Illegal_Constructor;