package Limited_Private_Unknown_Discriminants is

   type Rec (<>) is limited private;

   function Init return Rec;

private

   type Rec is limited
   record
      I : Integer;
   end record;

   function Init return Rec is
     ((I => 0));

end Limited_Private_Unknown_Discriminants;