package Show_Range_Definition is

   type Float_Normalized is
     range -1.0 .. 1.0;
   --  ERROR: 'digits' specification
   --         is missing!

end Show_Range_Definition;