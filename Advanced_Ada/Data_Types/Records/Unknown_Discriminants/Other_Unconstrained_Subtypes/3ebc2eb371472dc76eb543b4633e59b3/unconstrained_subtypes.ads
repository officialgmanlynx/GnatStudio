package Unconstrained_Subtypes is

   type Arr is
     array (Positive range <>) of
       Integer;

   type Rec (L : Positive) is
     null record;

   subtype Arr_Sub is Arr;
   --                 ^^^
   --  no constraints

   subtype Rec_Sub is Rec;
   --                 ^^^
   --  no constraints

end Unconstrained_Subtypes;