package Init_Array is
   type Arr is array (1 .. 10) of Integer;
   A : Arr := (1 .. 8 => 1, 9 .. 10 => 2, 7 => 3);  --  ERROR, A(7) duplicated
end Init_Array;