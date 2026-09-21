with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Empty_String_Literals is
   S1 : String          := "";
   S2 : String (1 .. 0) := "";
begin
   Put_Line (S1);
   Put_Line (S2);
   Put_Line ("");
end Show_Empty_String_Literals;