with Custom_Recs; use Custom_Recs;

procedure Show_Access_Discriminants is
   I  : aliased Integer := 10;
   R  : Rec (I'Access);
begin
   Show (R);

   I   := 20;
   R.I := 30;
   Show (R);
end Show_Access_Discriminants;