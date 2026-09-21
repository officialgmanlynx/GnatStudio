package Custom_Types is

   type UInt_7 is range 0 .. 127;

   type Aligned_UInt_7 is new UInt_7
     with Alignment => 4;

end Custom_Types;