package Persons is

   --  Declaring an access type whose
   --  designated subtype is unconstrained:
   type String_Access is access String;

   --  Declaring a discriminant with this
   --  access type:
   type Person (Name : String_Access) is record
      Age : Integer;
   end record;

   procedure Show (P : Person);

end Persons;