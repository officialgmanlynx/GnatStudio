package Incomplete_Type_Example is

   type R;
   --  Incomplete type declaration!

   type R is record
      I : Integer;
   end record;
   --  type R is now complete!

end Incomplete_Type_Example;