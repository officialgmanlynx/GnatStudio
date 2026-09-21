with Ada.Text_IO;      use Ada.Text_IO;
with Array_Definition; use Array_Definition;

procedure Main is
   V : S (9);
begin
   Put_Line ("Last : " & Integer'Image (V.Last));
end Main;