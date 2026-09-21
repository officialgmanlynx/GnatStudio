package Unknown_Discriminants.Children is

   type Derived_Rec_Unknown_Discr (<>) is
     new Rec with private;

   type Derived_Rec_Known_Discr (L : Positive) is
     new Rec with private;

   type Derived_Rec_No_Discr is
     new Rec with private;

private

   type Derived_Rec_Unknown_Discr is
     new Rec with null record;

   type Derived_Rec_Known_Discr (L : Positive) is
     new Rec with null record;

   type Derived_Rec_No_Discr is
     new Rec with null record;

end Unknown_Discriminants.Children;