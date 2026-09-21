with Show_Integer_Array;

procedure Show_Integer_Array_Plus
  (A : Integer_Array;
   V : Integer)
is
   A_Plus : Integer_Array (A'Range);
begin
   for I in A_Plus'Range loop
      A_Plus (I) := A (I) + V;
   end loop;
   Show_Integer_Array (A_Plus);
end Show_Integer_Array_Plus;