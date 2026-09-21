package Custom_Arrays is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Derived_Integer_Array is new
     Integer_Array;

end Custom_Arrays;