package Mutability is

   type T_Mutable_Array (L : Positive := 10) is
     private;

private

   type Integer_Array is
     array (Positive range <>) of Integer;

   type T_Mutable_Array (L : Positive := 10) is
   record
      Arr : Integer_Array (1 .. L);
   end record;

end Mutability;