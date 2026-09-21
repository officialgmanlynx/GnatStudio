function Absval (X : Integer) return Integer is
   Result : Integer := X;
begin
   if X >= 0 then
      if X = 0 then
         Result := 0;
      end if;
   else
      Result := -X;
   end if;
   return Result;
end Absval;