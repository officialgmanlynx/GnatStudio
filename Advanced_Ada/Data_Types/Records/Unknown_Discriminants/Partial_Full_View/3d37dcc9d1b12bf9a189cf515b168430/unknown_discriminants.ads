package Unknown_Discriminants is

   type Rec_No_Discr (<>) is private;

   type Rec_Known_Discr (<>) is private;

private

   type Rec_No_Discr is null record;

   type Rec_Known_Discr
     (L : Positive) is null record;

end Unknown_Discriminants;