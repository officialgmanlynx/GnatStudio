with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

package Persons is
   type Years is new Natural;

   type Person is record
      Name : Unbounded_String;
      Age  : Years;
   end record;
end Persons;