with Ada.Exceptions;
with Ada.Text_IO;   use Ada.Text_IO;

procedure Main is

   procedure Nested is
   begin
      raise Constraint_Error
              with "some message";
   end Nested;

begin
   Nested;

exception
   when E : others =>
      Put_Line
       (Ada.Exceptions.Exception_Information (E));
end Main;