package Simple_Recs is

   type Limited_Integer_Array (L : Positive) is
     limited private;

   subtype Limited_Integer_Array_2 is
     Limited_Integer_Array (2);

private

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Limited_Integer_Array (L : Positive) is
     limited record
      Arr : Integer_Array (1 .. L);
   end record;

end Simple_Recs;