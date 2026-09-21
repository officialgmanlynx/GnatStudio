package Addresses is

   type Person is private;

   function "+" (Name    : String;
                 Address : String)
                 return Person;
   function "+" (Left, Right : Person)
                 return Person;

   procedure Display (P : Person);

private

   subtype Name_String    is String (1 .. 40);
   subtype Address_String is String (1 .. 100);

   type Person is record
      Name    : Name_String;
      Address : Address_String;
   end record;

end Addresses;