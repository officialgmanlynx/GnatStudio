package P is

   type R is record
      A : Integer;
      B : Integer;
   end record
     with Object_Size => 72;

   for R use record
      A at 0 range 0 .. 31;
      B at 5 range 0 .. 31;
   end record;

end P;