package Mutually_Dependent is

   type T2;
   type T2_Access is access T2;

   type T1 is record
      B : T2_Access;
   end record;

   type T2 is record
      A : T1;
   end record;

end Mutually_Dependent;