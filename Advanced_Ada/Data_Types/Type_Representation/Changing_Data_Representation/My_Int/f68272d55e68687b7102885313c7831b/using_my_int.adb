with My_Ints; use My_Ints;

procedure Using_My_Int is
   Var : My_Int_2;
begin

   if Odd (Var) then
      --   ^ Calling Odd function
      --     for My_Int_2 type.
      null;
   end if;

end Using_My_Int;