with Ada.Text_IO; use Ada.Text_IO;

with Biquads.Fixed_P;

procedure Show_Biquad is
   QD : Biquads.Fixed_P.Filter_Delay;
   QY : Biquads.Fixed_P.PCM_Sample;
begin
   Put_Line (" n |   fixed (guard bits)");
   for N in 0 .. 2000 loop
      QY := Biquads.Fixed_P.Biquad (QD, 0.875);
      if N <= 4 or else N mod 400 = 0 then
         Put_Line (N'Image & " | " & QY'Image);
      end if;
   end loop;
end Show_Biquad;