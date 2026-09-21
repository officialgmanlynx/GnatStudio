package Show_Sort is

   type Nat_Array is array (Positive range <>) of Natural;

   function Is_Sorted (A : Nat_Array) return Boolean is
     (for all I in A'Range =>
        (if I < A'Last then A (I) <= A (I + 1)));
   --  Returns True if A is sorted in increasing order.

   subtype Sorted_Nat_Array is Nat_Array with
     Dynamic_Predicate => Is_Sorted (Sorted_Nat_Array);
   --  Elements of type Sorted_Nat_Array are all sorted.

   Good_Array : Sorted_Nat_Array := (1, 2, 4, 8, 42);
end Show_Sort;