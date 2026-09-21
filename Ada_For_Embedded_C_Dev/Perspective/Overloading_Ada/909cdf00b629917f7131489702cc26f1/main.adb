with Ada.Text_IO; use Ada.Text_IO;
with Machine;     use Machine;

procedure Main is
   S : Status;
   C : Code;
   T : Threshold;
begin
   S := On;
   C := Get (S);
   T := Get (S);

   Put_Line ("S: " & Status'Image (S));
   Put_Line ("C: " & Code'Image (C));
   Put_Line ("T: " & Threshold'Image (T));
end Main;