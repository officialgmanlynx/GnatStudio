with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Range is

   type Float_6_Digits_Normalized is
     digits 6
       range -1.0 .. 1.0;

   type Float_9_Digits_Normalized is
     digits 9
       range -1.0 .. 1.0;

   F6_N : Float_6_Digits_Normalized;
   F9_N : Float_9_Digits_Normalized;
begin
   F6_N := 0.123456123;

   Put_Line ("F6_N = "
             & F6_N'Image);

   F9_N := Float_9_Digits_Normalized (F6_N);
   --  Converting from
   --    Float_6_Digits_Normalized
   --  to
   --    Float_9_Digits_Normalized

   Put_Line ("F9_N = "
             & F9_N'Image);

   Put_Line
     ("Float_6_Digits_Normalized'Size  :"
      & Float_6_Digits_Normalized'Size'Image
      & " bits");

   Put_Line
     ("Float_9_Digits_Normalized'Size  :"
      & Float_9_Digits_Normalized'Size'Image
      & " bits");
end Show_Range;