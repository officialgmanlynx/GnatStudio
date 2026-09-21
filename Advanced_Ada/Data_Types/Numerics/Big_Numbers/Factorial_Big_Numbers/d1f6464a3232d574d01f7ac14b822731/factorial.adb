function Factorial (N : Integer)
                    return Big_Integer is
   Fact : Big_Integer := 1;
begin
   for I in 2 .. N loop
      Fact := Fact * To_Big_Integer (I);
   end loop;

   return Fact;
end Factorial;