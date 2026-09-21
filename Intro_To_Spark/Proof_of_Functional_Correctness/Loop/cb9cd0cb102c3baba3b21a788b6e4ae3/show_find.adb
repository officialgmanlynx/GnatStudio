package body Show_Find is

   function Find (A : Nat_Array; E : Natural) return Natural is
   begin
      for I in A'Range loop
         pragma Assert (for all J in A'First .. I - 1 => A (J) /= E);
         --  assertion is not proved
         if A (I) = E then
            return I;
         end if;
         pragma Assert (A (I) /= E);
         --  assertion is proved
      end loop;
      return 0;
   end Find;

end Show_Find;