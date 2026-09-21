package Mutually_Dependent is

   type T1 is record
      B : T2;
   end record;

   type T2 is record
      A : T1;
   end record;

end Mutually_Dependent;