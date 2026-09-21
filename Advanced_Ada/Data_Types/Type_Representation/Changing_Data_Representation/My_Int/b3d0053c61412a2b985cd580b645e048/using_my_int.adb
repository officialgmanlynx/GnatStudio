with My_Ints; use My_Ints;

procedure Using_My_Int is
   Var : My_Int_2;
begin

   if Odd (My_Int_1 (Var)) then
      --   ^ Converting My_Int_2 to
      --     My_Int_1 type before
      --     calling Odd function.
      null;
   end if;

end Using_My_Int;