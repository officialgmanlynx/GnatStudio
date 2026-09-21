package Subtypes_With_Discriminants is

   type T
     (L : Positive;
      M : Positive) is
     null record;

   subtype Sub_T is T;
   --  Discriminants are not specified:
   --  taking the ones from T.

   subtype Sub_T_2 is T
    (L => 3, M => 4);
   --  Discriminants are specified:
   --  taking the ones from Sub_T_2

end Subtypes_With_Discriminants;