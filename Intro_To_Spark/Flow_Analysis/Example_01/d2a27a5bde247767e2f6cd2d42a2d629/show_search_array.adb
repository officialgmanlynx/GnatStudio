package body Show_Search_Array is

   procedure Search_Array
     (A      :     Array_Of_Positives;
      E      :     Positive;
      Result : out Integer;
      Found  : out Boolean) is
   begin
      for I in A'Range loop
         if A (I) = E then
            Result := I;
            Found  := True;
            return;
         end if;
      end loop;
      Found := False;
   end Search_Array;

end Show_Search_Array;