procedure Show_Extended_Return is

   type Array_Of_Natural is
     array (Positive range <>) of Natural;

   function Sum (A : Array_Of_Natural)
                 return Natural
   is
   begin
      return Result : Natural := 0 do
         for Index in A'Range loop
            Result := Result + A (Index);
         end loop;
      end return;
   end Sum;

begin
   null;
end Show_Extended_Return;