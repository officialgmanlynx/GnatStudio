package Mutually_Dependent is

   type T2;

   type T1 is record
      B : access T2;
   end record;

   type T2 is record
      A : access T1;
   end record;

end Mutually_Dependent;