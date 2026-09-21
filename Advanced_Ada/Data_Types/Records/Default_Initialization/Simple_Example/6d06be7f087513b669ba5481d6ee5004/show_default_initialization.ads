package Show_Default_Initialization is

   function Init return Integer is
     (42);

   type Rec is record
      A : Integer := Init;
   end record;

end Show_Default_Initialization;