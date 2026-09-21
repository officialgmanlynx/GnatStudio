package Biquads.Fixed_P is

   --  PCM_Sample fixed-point type
   --  (-1.0 .. 1.0)
   D_31 : constant := 2.0 ** (-31);
   type PCM_Sample is
     delta D_31
     range -1.0 .. 1.0 - D_31;

   --  Two-element delay line
   --  (transposed direct form II)
   type Filter_Delay is record
      Z1 : PCM_Sample := 0.0;
      Z2 : PCM_Sample := 0.0;
   end record;

   --  Fixed-point biquad filter
   function Biquad (D    : in out Filter_Delay;
                    X_In : PCM_Sample)
                    return PCM_Sample;

end Biquads.Fixed_P;