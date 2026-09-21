package Private_With_Discriminants is

   type T (L : Positive) is private;

private

   type Integer_Array is
     array (Positive range <>) of Integer;

   type T (L : Positive) is
   record
      Arr : Integer_Array (1 .. L);
   end record;

end Private_With_Discriminants;