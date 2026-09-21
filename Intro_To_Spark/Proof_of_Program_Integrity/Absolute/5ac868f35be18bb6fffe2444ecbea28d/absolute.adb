procedure Absolute (X : in out Integer) with
  Pre            =>  X > Integer'First,
  Contract_Cases => (X <  0 => X = -X'Old,
                     X >= 0 => X =  X'Old)
is
begin
   if X < 0 then
      X := -X;
   end if;
end Absolute;