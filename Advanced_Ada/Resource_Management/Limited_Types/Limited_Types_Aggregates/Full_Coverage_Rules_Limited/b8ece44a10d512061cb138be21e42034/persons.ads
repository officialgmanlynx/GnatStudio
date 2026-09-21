with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

package Persons is

   type Limited_Person;
   type Limited_Person_Access is
     access all Limited_Person;

   type Limited_Person is limited record
      Self : Limited_Person_Access :=
               Limited_Person'Unchecked_Access;
      Name : Unbounded_String;
      Age  : Natural;
      Shoe_Size : Positive;
   end record;

end Persons;