package Array_Util is

   type Nat_Array is array (Positive range <>) of Natural;

   procedure Max_Array (A : in out Nat_Array; B : Nat_Array) with
     Pre  => A'First = B'First and A'Last = B'Last,
     Post => (for all K in A'Range =>
                A (K) = Natural'Max (A'Old (K), B (K)));

end Array_Util;