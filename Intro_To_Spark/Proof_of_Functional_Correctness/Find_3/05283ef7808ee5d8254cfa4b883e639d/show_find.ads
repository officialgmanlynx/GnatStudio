package Show_Find is

   type Nat_Array is array (Positive range <>) of Natural;

   function Find (A : Nat_Array; E : Natural) return Natural with
     Post =>
       (if (for all I in A'Range => A (I) /= E)
          then Find'Result = 0
        else Find'Result in A'Range and then A (Find'Result) = E);

end Show_Find;