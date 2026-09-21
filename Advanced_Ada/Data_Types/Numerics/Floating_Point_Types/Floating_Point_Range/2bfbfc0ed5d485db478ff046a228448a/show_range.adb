with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Range is

   type Float_6_Digits_Normalized is
     digits 6
       range -1.0 .. 1.0;

   F6_N : Float_6_Digits_Normalized;
begin
   F6_N := 0.123456123;

   Put_Line ("F6_N = "
             & F6_N'Image);

   F6_N := F6_N * 10.0 - 0.5;

   Put_Line ("F6_N = "
             & F6_N'Image);

   F6_N := F6_N + 1.0;
   --  ERROR:  result of this operation
   --          is outside of the interval
   --          [-1.0, 1.0].

   Put_Line ("F6_N = "
             & F6_N'Image);
end Show_Range;