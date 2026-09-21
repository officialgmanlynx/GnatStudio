package Private_Arrays is

   type Private_Constrained_Array (<>) is
     private;

   function Init
     (L : Positive)
      return Private_Constrained_Array;

private

   type Private_Constrained_Array is
     array (Positive range <>) of Integer;

end Private_Arrays;