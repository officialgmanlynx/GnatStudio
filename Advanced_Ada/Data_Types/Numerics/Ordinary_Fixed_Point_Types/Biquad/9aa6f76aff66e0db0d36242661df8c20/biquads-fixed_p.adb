package body Biquads.Fixed_P is

   --  Low-pass biquad (16-bit quantized):
   --  sample rate = 44,100 Hz, Fc = 500 Hz,
   --  Q = 0.4
   A0 : constant PCM_Sample
          :=  0.00115966796875;
   A1 : constant PCM_Sample
          :=  0.0023193359375;
   A2 : constant PCM_Sample
          :=  0.00115966796875;
   B1 : constant PCM_Sample
          := -1.8319091796875 / 2;
   B2 : constant PCM_Sample
          :=  0.836578369140625;

   function Biquad (D    : in out Filter_Delay;
                    X_In : PCM_Sample)
                    return PCM_Sample
   is
      X, Y : PCM_Sample;
   begin
      X    := X_In;
      Y    := PCM_Sample (X * A0) + D.Z1;
      D.Z1 := PCM_Sample (X * A1) + D.Z2
              - PCM_Sample (B1 * Y) * 2;
      D.Z2 := PCM_Sample (X * A2) -
              PCM_Sample (B2 * Y);
      return Y;
   end Biquad;

end Biquads.Fixed_P;