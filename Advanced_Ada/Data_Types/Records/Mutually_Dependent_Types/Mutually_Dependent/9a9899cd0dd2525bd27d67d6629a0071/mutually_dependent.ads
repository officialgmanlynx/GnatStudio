package Mutually_Dependent is

   type T1;
   type T1_Access is access T1;

   type T2;
   type T2_Access is access T2;

   type T1 is record
      B : T2_Access;
   end record;

   type T2 is record
      A : T1_Access;
   end record;

end Mutually_Dependent;