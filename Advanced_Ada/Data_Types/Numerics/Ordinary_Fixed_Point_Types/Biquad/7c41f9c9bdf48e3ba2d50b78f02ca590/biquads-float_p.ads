package Biquads.Float_P is

   --  Two-element delay line
   --  (transposed direct form II)
   type Filter_Delay is record
      Z1 : Float := 0.0;
      Z2 : Float := 0.0;
   end record;

   --  Floating-point biquad filter
   function Biquad (D    : in out Filter_Delay;
                    X_In : Float)
                    return Float;

end Biquads.Float_P;