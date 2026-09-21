package body Biquads.Fixed_P is

   --  Low-pass biquad (16-bit quantized):
   --  sample rate = 44,100 Hz, Fc = 500 Hz,
   --  Q = 0.4
   A0 : constant Scaled_PCM_Sample
          :=  0.00115966796875;
   A1 : constant Scaled_PCM_Sample
          :=  0.0023193359375;
   A2 : constant Scaled_PCM_Sample
          :=  0.00115966796875;
   B1 : constant Scaled_PCM_Sample
          := -1.8319091796875;
   B2 : constant Scaled_PCM_Sample
          :=  0.836578369140625;

   --  The two guard bits give the feedback
   --  path enough headroom for any full-scale
   --  input, so the body needs no input/output
   --  scaling.
   function Biquad (D    : in out Filter_Delay;
                    X_In : PCM_Sample)
                    return PCM_Sample
   is
      X : constant Scaled_PCM_Sample :=
        Scaled_PCM_Sample (X_In);
      Y : Scaled_PCM_Sample;
   begin
      Y    := Scaled_PCM_Sample (X * A0) + D.Z1;
      D.Z1 := Scaled_PCM_Sample (X * A1) + D.Z2
              - Scaled_PCM_Sample (B1 * Y);
      D.Z2 := Scaled_PCM_Sample (X * A2)
              - Scaled_PCM_Sample (B2 * Y);
      return PCM_Sample (Y);
   end Biquad;

end Biquads.Fixed_P;