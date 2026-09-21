package Data_Processing is

   type Integer_Array is
     array (Positive range <>) of Integer;

private

   type Integer_Array_Access is
     access constant Integer_Array;

   Table : constant array (1 .. 3) of
             Integer_Array_Access :=
     (1 => new Integer_Array'(1 => 15),
      2 => new Integer_Array'(1 => 12,
                              2 => 15,
                              3 => 20),
      3 => new Integer_Array'(1 => 12,
                              2 => 15,
                              3 => 20,
                              4 => 20,
                              5 => 25,
                              6 => 30));

end Data_Processing;