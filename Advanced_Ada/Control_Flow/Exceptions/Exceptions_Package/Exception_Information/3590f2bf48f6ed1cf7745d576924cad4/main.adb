with Ada.Exceptions;
with Ada.Text_IO;      use Ada.Text_IO;

procedure Main is

   procedure Nested (Index : Integer) is
      type T_Array is array (1 .. 2) of Integer;
      T : constant T_Array := (10, 20);
   begin
      Put_Line (T (Index)'Img);
   end Nested;

begin
   Nested (3);

exception
   when E : others =>
      Put_Line
       (Ada.Exceptions.Exception_Information (E));
end Main;