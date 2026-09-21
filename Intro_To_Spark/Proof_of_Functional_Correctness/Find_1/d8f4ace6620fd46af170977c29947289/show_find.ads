package Show_Find is

   type Nat_Array is array (Positive range <>) of Natural;

   function Find (A : Nat_Array; E : Natural) return Natural with
     Post => Find'Result in 0 | A'Range;

end Show_Find;