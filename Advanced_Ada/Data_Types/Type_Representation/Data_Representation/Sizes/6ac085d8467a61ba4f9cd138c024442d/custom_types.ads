package Custom_Types is

   type UInt_7 is range 0 .. 127;

   type UInt_7_Reserved_Access is access UInt_7
     with Storage_Size => 8;

end Custom_Types;