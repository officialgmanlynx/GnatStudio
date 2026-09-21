function Factorial (N : Integer)
                    return Long_Long_Integer is
   Fact : Long_Long_Integer := 1;
begin
   for I in 2 .. N loop
      Fact := Fact * Long_Long_Integer (I);
   end loop;

   return Fact;
end Factorial;