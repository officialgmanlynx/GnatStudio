package Partial_Full_Views is

   --  Partial view of the R type:
   type R is private;

private

   --  Full view of the R type:
   type R is record
      I : Integer;
   end record;

end Partial_Full_Views;