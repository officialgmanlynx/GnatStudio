package Unknown_Discriminants.Children.Grand is

   type Grand_Rec_Unknown_Discr (<>) is
     new Derived_Rec_Known_Discr (1)
       with private;

private

   type Grand_Rec_Unknown_Discr is
     new Derived_Rec_Known_Discr (1)
       with null record;

end Unknown_Discriminants.Children.Grand;