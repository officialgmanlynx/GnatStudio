package Simple_Recs is

   type Rec is tagged limited private;

private

   type Rec is tagged limited record
      I : Integer;
   end record;

end Simple_Recs;