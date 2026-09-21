package Biquads.Fixed_P is

   --  Public sample type: normalized Q31
   --  (the "pcm_sample" type in
   --  the C version)
   Sample_Bits : constant := 31;
   D_Sample    : constant
     := 2.0 ** (-Sample_Bits);
   type PCM_Sample is
     delta D_Sample
     range -1.0 .. 1.0 - D_Sample;

   --  Two-element delay line
   --  (transposed direct form II)
   type Filter_Delay is private;

   --  Fixed-point biquad filter
   function Biquad (D    : in out Filter_Delay;
                    X_In : PCM_Sample)
                    return PCM_Sample;

private

   --  Internal type with two guard bits: the
   --  same delta as PCM_Sample, but two extra
   --  integer bits of headroom so the feedback
   --  term b1 * y stays in range, with no
   --  input/output scaling.
   Headroom_Bits      : constant := 2;
   Scaled_Sample_Bits : constant :=
     Sample_Bits - Headroom_Bits;
   D_Scaled           : constant :=
     2.0 ** (-Scaled_Sample_Bits);
   type Scaled_PCM_Sample is
     delta D_Scaled
     range -(2.0 ** Headroom_Bits)
             .. 2.0 ** Headroom_Bits - D_Scaled;

   type Filter_Delay is record
      Z1 : Scaled_PCM_Sample := 0.0;
      Z2 : Scaled_PCM_Sample := 0.0;
   end record;

end Biquads.Fixed_P;