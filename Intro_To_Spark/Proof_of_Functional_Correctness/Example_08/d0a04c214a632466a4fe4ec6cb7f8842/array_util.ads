package Array_Util is

   type Nat_Array is array (Positive range <>) of Natural;

   function Max_Array (A, B : Nat_Array) return Nat_Array with
     Pre  => A'First = B'First and A'Last = B'Last,
     Post => (for all K in A'Range =>
               Max_Array'Result (K) = Natural'Max (A (K), B (K)));

end Array_Util;