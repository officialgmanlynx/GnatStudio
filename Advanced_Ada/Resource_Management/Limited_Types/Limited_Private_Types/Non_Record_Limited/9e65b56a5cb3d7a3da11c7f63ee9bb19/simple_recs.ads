package Simple_Recs is

   type Limited_Enumeration is
     limited private;

   type Limited_Integer is
     limited private;

   type Limited_Integer_Array_2 is
     limited private;

private

   type Limited_Enumeration is (Off, On);

   type Limited_Integer is new Integer;

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Limited_Integer_Array_2 is
     new Integer_Array (1 .. 2);

end Simple_Recs;