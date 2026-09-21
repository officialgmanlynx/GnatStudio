package Show_Default_Initialization_Dependency is

   function Init return Integer is
     (42);

   type Rec is record
      A : Integer := Init;
      B : Integer := Rec.A;  --  Illegal!
   end record;

end Show_Default_Initialization_Dependency;