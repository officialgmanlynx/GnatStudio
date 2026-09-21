package Unknown_Discriminants is

   type T_Unknown_Discr (<>) is
   --                   ^^^^
   --   Unknown discriminant part
     private;

private

   type T_Unknown_Discr is
     null record;

end Unknown_Discriminants;