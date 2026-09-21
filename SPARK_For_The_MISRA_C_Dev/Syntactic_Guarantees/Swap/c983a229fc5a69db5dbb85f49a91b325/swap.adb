procedure Swap (X, Y : in out Integer) is
   Tmp : constant Integer := X;
begin
   X := Y;
   Y := Tmp;
end Swap;