procedure Absolute_Value
  (X :     Integer;
   R : out Natural)
is
begin
   if X < 0 then
      R := -X;
   end if;
   if X >= 0 then
      R := X;
   end if;
   --  flow analysis doesn't know that R is initialized
end Absolute_Value;