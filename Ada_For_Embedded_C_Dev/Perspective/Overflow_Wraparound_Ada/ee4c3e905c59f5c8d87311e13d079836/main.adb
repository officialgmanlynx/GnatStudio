with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Unsigned_Int_32 is range 0 .. 2 ** 32 - 1;

   X : Unsigned_Int_32 := Unsigned_Int_32'Last + 1;
   --  Overflow: exception is raised!
begin
   Put_Line ("X = " & Unsigned_Int_32'Image (X));
end Main;