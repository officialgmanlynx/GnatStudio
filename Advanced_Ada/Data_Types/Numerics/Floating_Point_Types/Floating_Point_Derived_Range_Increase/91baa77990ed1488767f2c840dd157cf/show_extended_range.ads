package Show_Extended_Range is

   type Float_6_Digits is
     digits 6;

   type Float_6_Digits_Normalized is new
     Float_6_Digits
       range -1.0 .. 1.0;

   type Float_6_Digits_Normalized_Ext is new
     Float_6_Digits_Normalized
       range -2.0 .. 2.0;

end Show_Extended_Range;