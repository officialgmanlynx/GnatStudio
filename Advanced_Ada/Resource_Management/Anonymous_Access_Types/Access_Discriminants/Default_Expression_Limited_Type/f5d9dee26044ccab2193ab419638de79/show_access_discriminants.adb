with Custom_Recs; use Custom_Recs;

procedure Show_Access_Discriminants is
   R : Rec;
   --  ^^^
   --  This triggers "new Integer'(0)", so an
   --  integer object is allocated and stored in
   --  the R.IA discriminant.
begin
   Show (R);

   --  R gets out of scope here, and the object
   --  allocated via new hasn't been deallocated.
end Show_Access_Discriminants;