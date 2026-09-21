with Custom_Recs; use Custom_Recs;

procedure Show_Discriminants_As_Access_Values is

   R1 : Rec;
   --   ^^^
   --   no discriminant: use default

   R2 : Rec (new Integer'(20));
   --        ^^^^^^^^^^^^^^^^
   --        allocating an unnamed integer object

begin
   Show (R1);
   Show (R2);
end Show_Discriminants_As_Access_Values;