with Custom_Recs; use Custom_Recs;

procedure Show_Discriminants_As_Access_Values is

   IA : constant Integer_Access :=
          new Integer'(10);
   R  : Rec (IA);

begin
   Show (R);

   IA.all := 20;
   R.I    := 30;
   Show (R);

   --  As expected, we cannot change the
   --  discriminant. The following line is
   --  triggers a compilation error:
   --
   --  R.IA := new Integer;

end Show_Discriminants_As_Access_Values;