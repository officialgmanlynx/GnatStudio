package body Show_Find is

   function Find (A : Nat_Array; E : Natural) return Natural is
   begin
      for I in A'Range loop
         pragma Loop_Invariant (A (A'First) /= E);
         --  loop invariant not proved in first iteration
         --  but preservation of loop invariant is proved
         if A (I) = E then
            return I;
         end if;
      end loop;
      return 0;
   end Find;

end Show_Find;