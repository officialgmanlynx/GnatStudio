function Count (P : Int_Array; V : Integer) return Natural is
   Count : Natural := 0;
begin
   for I in P'Range loop
      if P (I) = V then
         Count := Count + 1;
      end if;
   end loop;
   return Count;
end Count;