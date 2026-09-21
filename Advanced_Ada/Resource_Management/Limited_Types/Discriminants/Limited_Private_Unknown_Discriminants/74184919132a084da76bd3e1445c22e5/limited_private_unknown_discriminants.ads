package Limited_Private_Unknown_Discriminants is

   type Rec (<>) is limited private;

private

   type Rec is limited
   record
      I : Integer;
   end record;

end Limited_Private_Unknown_Discriminants;