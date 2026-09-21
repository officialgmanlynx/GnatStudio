procedure Swap (X, Y : Integer) is
   Tmp : Integer := X;
begin
   X := Y;  --  ERROR
   Y := Tmp;  --  ERROR
end Swap;