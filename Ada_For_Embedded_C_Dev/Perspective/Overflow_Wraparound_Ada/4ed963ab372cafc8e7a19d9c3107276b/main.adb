with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Unsigned_32 is mod 2**32;

   X : Unsigned_32 := Unsigned_32'Last + 1;
   --  Now: X = 0
begin
   Put_Line ("X = " & Unsigned_32'Image (X));
end Main;