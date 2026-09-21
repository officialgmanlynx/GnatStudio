package Private_Arrays is

   type Private_Unconstrained_Array is private;

   type Private_Constrained_Array
     (L : Positive) is private;

private

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Private_Unconstrained_Array is
     array (Positive range <>) of Integer;

   type Private_Constrained_Array
     (L : Positive) is
       array (1 .. 2) of Integer;

   --  NOTE: using an array type fails as well:
   --
   --  type Private_Constrained_Array
   --    (L : Positive) is
   --      Integer_Array (1 .. L);

end Private_Arrays;