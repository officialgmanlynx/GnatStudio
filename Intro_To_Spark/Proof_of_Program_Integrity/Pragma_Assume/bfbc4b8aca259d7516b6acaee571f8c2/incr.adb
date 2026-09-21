procedure Incr (X : in out Integer) is
begin
   pragma Assume (X < Integer'Last);
   X := X + 1;
end Incr;