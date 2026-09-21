package Custom_Types is

   type UInt_7 is range 0 .. 127;

   type UInt_7_Array is
     array (Positive range <>) of UInt_7;

   type UInt_7_Array_Comp_32 is
     array (Positive range <>) of UInt_7
       with Component_Size => 32;

end Custom_Types;