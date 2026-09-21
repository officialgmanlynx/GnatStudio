package Non_Record_Limited_Error is

   type Limited_Enumeration is
     limited (Off, On);

   type Limited_Integer is new
     limited Integer;

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Rec is new
     limited Integer_Array (1 .. 2);

end Non_Record_Limited_Error;