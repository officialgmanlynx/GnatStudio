with Ada.Text_IO; use Ada.Text_IO;

with Biquads.Fixed_P;
with Biquads.Float_P;

procedure Show_Biquad is
   FD : Biquads.Float_P.Filter_Delay;
   QD : Biquads.Fixed_P.Filter_Delay;
   FY : Float;
   QY : Biquads.Fixed_P.PCM_Sample;
begin
   Put_Line (" n |    float    |   fixed");
   for N in 0 .. 2000 loop
      --  7/8-scale step: above the ~0.55
      --  limit, so the unscaled filter
      --  would overflow here.
      FY := Biquads.Float_P.Biquad (FD, 0.875);
      QY := Biquads.Fixed_P.Biquad (QD, 0.875);

      if N <= 4 or else N mod 400 = 0 then
         Put_Line (N'Image
                   & " | " & FY'Image
                   & " | " & QY'Image);
      end if;
   end loop;
end Show_Biquad;