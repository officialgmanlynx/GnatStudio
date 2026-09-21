with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Text_IO;       use Ada.Text_IO;

package body Addresses is

   function "+" (Name    : String;
                 Address : String)
                 return Person
   is
   begin
      return (Name    =>
                Head (Name,
                      Name_String'Length),
              Address =>
                Head (Address,
                      Address_String'Length));
   end "+";

   function "+" (Left, Right : Person)
                 return Person
   is
   begin
      return (Name    => Left.Name,
              Address => Right.Address);
   end "+";

   procedure Display (P : Person) is
   begin
      Put_Line ("Name:    " & P.Name);
      Put_Line ("Address: " & P.Address);
      New_Line;
   end Display;

end Addresses;