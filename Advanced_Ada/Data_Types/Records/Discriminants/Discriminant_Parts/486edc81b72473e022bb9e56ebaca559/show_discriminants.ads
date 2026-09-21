package Show_Discriminants is

   type T_Unknown_Discr (<>) is
   --                    ^^
   --   Unknown discriminant
     private;

   type T_Known_Discr (D : Integer) is
   --                  ^^^^^^^^^^^
   --   Known discriminant
     private;

private

   type T_Unknown_Discr is
     null record;

   type T_Known_Discr (D : Integer) is
     null record;

end Show_Discriminants;