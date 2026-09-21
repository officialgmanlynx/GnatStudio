with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Range is

   type Float_6_Digits is
     digits 6;

   type Float_6_Digits_Normalized is new
     Float_6_Digits
       range -1.0 .. 1.0;

   type Float_6_Digits_Normalized_Positive is new
     Float_6_Digits_Normalized
       range 0.0 .. 1.0;

   F6_N  : Float_6_Digits_Normalized;
   F6_NP : Float_6_Digits_Normalized_Positive;
begin
   F6_N := 0.123456123;

   Put_Line ("F6_N  = "
             & F6_N'Image);

   F6_NP :=
     Float_6_Digits_Normalized_Positive (F6_N);

   Put_Line ("F6_NP = "
             & F6_NP'Image);

   Put_Line
     ("Float_6_Digits_Normalized'Size  :"
      & Float_6_Digits_Normalized'Size'Image
      & " bits");
end Show_Range;