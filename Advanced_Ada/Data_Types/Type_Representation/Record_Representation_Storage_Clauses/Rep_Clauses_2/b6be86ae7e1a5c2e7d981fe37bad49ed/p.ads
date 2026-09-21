package P is

   type R is record
      A : Integer;
      B : Integer;
   end record;

   --  Representation clause for record R:
   for R use record
      A at 0 range 0 .. 31;
      --   ^ starting memory position
      B at 4 range 0 .. 31;
      --           ^ first bit .. last bit
   end record;

end P;