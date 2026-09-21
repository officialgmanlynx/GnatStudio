package body Show_Map is

   procedure Map (A : in out Nat_Array) is
      A_I : constant Nat_Array := A with Ghost;
   begin
      for K in A'Range loop
         A (K) := F (A (K));
         pragma Loop_Invariant
           (for all J in A'First .. K => A (J) = F (A'Loop_Entry (J)));
      end loop;
      pragma Assert (for all K in A'Range => A (K) = F (A_I (K)));
   end Map;

end Show_Map;