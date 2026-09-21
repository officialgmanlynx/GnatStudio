package Simple_Recs is

   type Rec is limited private;
   --  Partial view of Rec is limited

private

   type Rec is record
   --  Full view of Rec is nonlimited
      I : Integer;
   end record;

end Simple_Recs;