package Simple_Recs is

   type Int_Rec is limited record
      V : Integer;
   end record;

   type Rec is limited record
      IR : Int_Rec;
   end record;

end Simple_Recs;