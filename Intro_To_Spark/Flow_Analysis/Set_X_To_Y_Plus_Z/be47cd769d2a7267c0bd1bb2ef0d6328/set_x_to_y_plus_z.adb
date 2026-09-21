procedure Set_X_To_Y_Plus_Z
  (Y, Z     :     Natural;
   X        : out Natural;
   Overflow : out Boolean)
is
begin
   if Natural'Last - Z < Y then
      Overflow := True; -- X should be initialized on every path
   else
      Overflow := False;
      X := Y + Z;
   end if;
end Set_X_To_Y_Plus_Z;