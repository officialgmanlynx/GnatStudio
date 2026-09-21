package body Show_Find is

   function Find (A : Nat_Array; E : Natural) return Natural is
   begin
      for I in A'Range loop
         pragma Loop_Invariant
           (for all J in A'First .. I - 1 => A (J) /= E);
         if A (I) = E then
            return I;
         end if;
      end loop;
      pragma Assert (for all I in A'Range => A (I) /= E);
      return 0;
   end Find;

end Show_Find;