package Persons is

   --  ERROR: Declaring a discriminant with an
   --         unconstrained type:
   type Person (Name : String) is record
      Age : Integer;
   end record;

end Persons;