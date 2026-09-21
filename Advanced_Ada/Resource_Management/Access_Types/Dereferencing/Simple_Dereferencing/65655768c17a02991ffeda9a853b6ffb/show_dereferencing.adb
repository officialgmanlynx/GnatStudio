with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Dereferencing is

   --  Declaring access type:
   type Integer_Access is access Integer;

   --  Declaring access object:
   A1 : Integer_Access;

begin
   A1 := new Integer;

   --  Dereferencing access value:
   A1.all := 22;

   Put_Line ("A1: " & Integer'Image (A1.all));
end Show_Dereferencing;