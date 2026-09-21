package P.Rep is

   type R_New is new R
     with Object_Size => 72;

   for R_New use record
      A at 0 range 0 .. 31;
      B at 5 range 0 .. 31;
   end record;

end P.Rep;