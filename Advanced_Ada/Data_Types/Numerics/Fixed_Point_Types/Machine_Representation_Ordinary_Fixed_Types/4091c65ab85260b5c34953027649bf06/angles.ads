package Angles is

   D : constant := 0.2;
   --  Note: D is not a power of two.

   type Angle is
     delta D
       range 0.0 .. 360.0 - D;

   type Int_Angle is
     range -2 ** (Angle'Size - 1) ..
            2 ** (Angle'Size - 1) - 1;

   type Angle_Adj is
     delta D
       range 0.0 .. 360.0 - D
     with Small => D;

   type Int_Angle_Adj is
     range -2 ** (Angle_Adj'Size - 1) ..
            2 ** (Angle_Adj'Size - 1) - 1;

end Angles;