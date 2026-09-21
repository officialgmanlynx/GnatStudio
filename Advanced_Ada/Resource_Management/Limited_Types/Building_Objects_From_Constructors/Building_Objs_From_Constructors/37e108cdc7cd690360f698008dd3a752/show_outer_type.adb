with P;     use P;
with P.Aux; use P.Aux;

procedure Show_Outer_Type is

   type Outer_Type is limited record
      This : T;
      That : T;
   end record;

   Outer_Obj : Outer_Type :=
                (This => Make_Rumplestiltskin,
                 That => Make_T (Name => ""));

begin
   null;
end Show_Outer_Type;