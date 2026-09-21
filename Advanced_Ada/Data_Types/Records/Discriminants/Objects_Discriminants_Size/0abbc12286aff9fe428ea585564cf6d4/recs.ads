package Recs is

   type Null_Rec (L : Positive;
                  M : Positive) is
     private;

   type Rec_Array (L : Positive) is
     private;

private

   type Null_Rec (L : Positive;
                  M : Positive) is
     null record;

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Rec_Array (L : Positive) is
   record
      Arr : Integer_Array (1 .. L);
   end record;

end Recs;