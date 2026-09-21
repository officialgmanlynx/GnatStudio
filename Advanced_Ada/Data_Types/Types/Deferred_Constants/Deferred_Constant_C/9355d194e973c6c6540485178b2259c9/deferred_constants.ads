package Deferred_Constants is

   type Speed is new Long_Float;

   Light : constant Speed with
     Import, Convention => C;
   --  ^^^^ deferred constant
   --       declaration; imported
   --       from C file

end Deferred_Constants;