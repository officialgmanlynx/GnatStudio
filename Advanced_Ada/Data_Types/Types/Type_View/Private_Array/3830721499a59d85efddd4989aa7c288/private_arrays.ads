package Private_Arrays is

   type Private_Constrained_Array
     (L : Positive) is private;

private

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Private_Constrained_Array
     (L : Positive) is
   record
      Arr : Integer_Array  (1 .. 2);
   end record;

end Private_Arrays;