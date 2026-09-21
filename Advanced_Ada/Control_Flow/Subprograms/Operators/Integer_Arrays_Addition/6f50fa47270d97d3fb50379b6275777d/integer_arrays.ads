package Integer_Arrays is

   type Integer_Array is
     array (Positive range <>) of Integer;

   function "+" (Left, Right : Integer_Array)
                 return Integer_Array
     with Post =>
       (for all I in "+"'Result'Range =>
          "+"'Result (I) = Left (I) + Right (I));

end Integer_Arrays;