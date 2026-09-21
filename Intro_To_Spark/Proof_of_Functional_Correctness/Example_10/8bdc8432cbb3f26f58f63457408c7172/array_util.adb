package body Array_Util is

   procedure Max_Array (A : in out Nat_Array; B : Nat_Array) is
   begin
      for I in A'Range loop
         pragma Loop_Invariant
           (for all K in A'First .. I - 1 =>
              A (K) = Natural'Max (A'Loop_Entry (K), B (K)));
         if A (I) <= B (I) then
            A (I) := B (I);
         end if;
      end loop;
   end Max_Array;

end Array_Util;