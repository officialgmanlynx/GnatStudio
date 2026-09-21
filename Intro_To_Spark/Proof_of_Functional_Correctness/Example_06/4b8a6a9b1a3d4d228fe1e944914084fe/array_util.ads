package Array_Util is

   type Nat_Array is array (Positive range <>) of Natural;

   function Max_Array (A, B : Nat_Array) return Nat_Array with
     Pre => A'Length = B'Length;

end Array_Util;