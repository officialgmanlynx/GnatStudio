package Show_Root_Integer_Real is

   type Score is range 0 .. 10;
   --  Type Score is derived from
   --  the root integer type.

   type Real_Score is
     digits 10 range 0.0 .. 10.0;
   --  Type Real_Score is derived from
   --  the root real type.

end Show_Root_Integer_Real;