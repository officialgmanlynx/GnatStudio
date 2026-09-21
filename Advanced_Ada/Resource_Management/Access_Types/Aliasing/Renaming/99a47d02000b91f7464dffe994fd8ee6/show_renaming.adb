with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Renaming is
   A1 : Integer;
   A2 : Integer renames A1;
begin
   A1 := 22;
   Put_Line ("A1: " & Integer'Image (A1));
   Put_Line ("A2: " & Integer'Image (A2));

   A2 := 24;
   Put_Line ("A1: " & Integer'Image (A1));
   Put_Line ("A2: " & Integer'Image (A2));
end Show_Renaming;