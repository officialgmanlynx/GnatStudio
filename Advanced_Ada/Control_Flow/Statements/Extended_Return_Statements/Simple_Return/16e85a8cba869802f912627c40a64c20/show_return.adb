procedure Show_Return is

   type Array_Of_Natural is
     array (Positive range <>) of Natural;

   function Sum (A : Array_Of_Natural)
                 return Natural
   is
      Result : Natural := 0;
   begin
      for Index in A'Range loop
         Result := Result + A (Index);
      end loop;
      return Result;
   end Sum;

begin
   null;
end Show_Return;