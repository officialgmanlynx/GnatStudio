package Init_Array is
   type Arr is array (1 .. 10) of Integer;
   A : Arr := (1 => 1);  --  ERROR, elements 2..10 not specified
end Init_Array;