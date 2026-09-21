package Unknown_Discriminants is

   type Arr (<>) is private;

private

   type Arr is
     array (Positive range <>)
       of Integer;

end Unknown_Discriminants;