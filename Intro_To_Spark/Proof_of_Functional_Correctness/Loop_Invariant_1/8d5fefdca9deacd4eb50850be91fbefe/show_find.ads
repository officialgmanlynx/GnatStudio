package Show_Find is

   type Nat_Array is array (Positive range <>) of Natural;

   function Find (A : Nat_Array; E : Natural) return Natural;

end Show_Find;