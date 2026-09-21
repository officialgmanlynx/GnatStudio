package Custom_Types is

   type UInt_7 is range 0 .. 127;

   type UInt_7_S24 is range 0 .. 127
     with Size => 24;

end Custom_Types;