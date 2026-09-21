package Persons is

   type Access_String is access all String;

   --  Declaring a discriminant with a named
   --  access type:
   type Person (Name : Access_String) is record
      Age : Integer;
   end record;

   procedure Show (P : Person);

end Persons;