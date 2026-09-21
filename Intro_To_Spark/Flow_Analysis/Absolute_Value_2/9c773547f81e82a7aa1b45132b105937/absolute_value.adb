procedure Absolute_Value
  (X :     Integer;
   R : out Natural)
is
begin
   if X < 0 then
      R := -X;
   else
      R := X;
   end if;
   --  flow analysis knows that R is initialized
end Absolute_Value;