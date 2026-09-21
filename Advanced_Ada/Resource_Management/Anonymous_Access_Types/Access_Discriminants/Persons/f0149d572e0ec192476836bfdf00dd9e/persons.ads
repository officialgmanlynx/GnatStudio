package Persons is

   --  Declaring a discriminant with an anonymous
   --  access type whose designated subtype is
   --  unconstrained:
   type Person (Name : access String) is record
      Age : Integer;
   end record;

   procedure Show (P : Person);

end Persons;