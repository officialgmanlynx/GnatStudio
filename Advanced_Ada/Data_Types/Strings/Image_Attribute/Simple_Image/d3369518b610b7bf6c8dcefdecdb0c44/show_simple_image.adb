with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Simple_Image is
   type Status is (Unknown, Off, On);

   V : Float;
   S : Status;
begin
   V := 10.0;
   S := Unknown;

   Put_Line ("V: " & Float'Image (V));
   Put_Line ("S: " & Status'Image (S));
end Show_Simple_Image;