package body Array_Util is

   function Max_Array (A, B : Nat_Array) return Nat_Array is
      R : Nat_Array (A'Range) := (others => 0);
   begin
      for I in A'Range loop
         pragma Loop_Invariant (for all K in A'First .. I =>
                                  R (K) = Natural'Max (A (K), B (K)));
         if A (I) > B (I) then
            R (I) := A (I);
         else
            R (I) := B (I);
         end if;
      end loop;
      return R;
   end Max_Array;

end Array_Util;