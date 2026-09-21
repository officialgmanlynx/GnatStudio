with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Floating_Point_Subtype_Ranges is

   type Float_6_Digits is
     digits 6;

   subtype Float_6_Digits_Subtype is
     Float_6_Digits;
   --  Same range as Float_6_Digits

   subtype Float_6_Digits_Normalized is
     Float_6_Digits
       range -1.0 .. 1.0;

   F6_N : Float_6_Digits_Normalized;
begin
   F6_N := 0.123456123;

   Put_Line ("F6_N = "
             & F6_N'Image);
end Show_Floating_Point_Subtype_Ranges;