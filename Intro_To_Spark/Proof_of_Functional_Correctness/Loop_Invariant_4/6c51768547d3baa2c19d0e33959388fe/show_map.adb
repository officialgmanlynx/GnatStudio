package body Show_Map is

   procedure Map (A : in out Nat_Array) is
      A_I : constant Nat_Array := A with Ghost;
   begin
      for K in A'Range loop
         if K /= A'First then
            A (K - 1) := F (A (K));
         end if;
         pragma Loop_Invariant
           (for all J in A'First .. K =>
             (if J /= A'First then A (J - 1) = F (A'Loop_Entry (J))));
         --  pragma Loop_Invariant
         --  (for all J in K .. A'Last => A (J) = A'Loop_Entry (J));
      end loop;
      pragma Assert (for all K in A'Range =>
                      (if K /= A'First then A (K - 1) = F (A_I (K))));
   end Map;

end Show_Map;