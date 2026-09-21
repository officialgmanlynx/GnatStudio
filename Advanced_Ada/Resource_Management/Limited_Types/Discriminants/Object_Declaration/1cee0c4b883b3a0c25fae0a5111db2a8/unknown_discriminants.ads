package Unknown_Discriminants is

   type Rec (<>) is private;

   function Init return Rec;

private

   type Rec is
   record
      I : Integer;
   end record;

   function Init return Rec is
     ((I => 0));

end Unknown_Discriminants;