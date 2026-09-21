package Unconstrained_Types is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Integer_Array_Access is
     access Integer_Array;

   type Simple_Record
     (Arr : Integer_Array_Access) is
   record
      L : Natural := Arr'Length;
   end record;

end Unconstrained_Types;