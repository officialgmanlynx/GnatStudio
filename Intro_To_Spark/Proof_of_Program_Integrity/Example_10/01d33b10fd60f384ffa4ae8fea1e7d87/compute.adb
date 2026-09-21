procedure Compute (X : in out Integer) with
  Contract_Cases => ((X in    0 ..  199) => X >= X'Old,
                     (X in -199 ..   -1) => X <= X'Old,
                      X >=  200           => X =  200,
                      X <  -200           => X = -200)
is
begin
   if X in -100 .. 100 then
      X := X * 2;
   elsif X in 0 .. 199 then
      X := X + 1;
   elsif X in -199 .. 0 then
      X := X - 1;
   elsif X >= 200 then
      X := 200;
   else
      X := -200;
   end if;
end Compute;