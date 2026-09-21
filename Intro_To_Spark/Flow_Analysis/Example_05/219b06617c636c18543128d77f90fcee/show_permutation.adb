package body Show_Permutation is

   procedure Swap (A    : in out Permutation;
                   I, J : Positive)
   is
      Tmp : Positive := A (I);
   begin
      A (I) := A (J);
      A (J) := Tmp;
   end Swap;

   procedure Init (A : out Permutation) is
   begin
      A (A'First) := A'First;
      for I in A'First + 1 .. A'Last loop
         A (I) := I;
      end loop;
   end Init;

   function Cyclic_Permutation (N : Natural) return Permutation is
      A : Permutation (1 .. N);
   begin
      Init (A);
      for I in A'First .. A'Last - 1 loop
         Swap (A, I, I + 1);
      end loop;
      return A;
   end Cyclic_Permutation;

end Show_Permutation;