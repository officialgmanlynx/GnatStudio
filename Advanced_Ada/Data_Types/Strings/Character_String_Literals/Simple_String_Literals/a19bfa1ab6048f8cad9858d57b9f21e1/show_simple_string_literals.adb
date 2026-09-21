with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Simple_String_Literals is
   S1 : String := "Hello";
   --             ^^^^^^^
   --         String literal

   S2 : String := "World";
   --             ^^^^^^^
   --           String literal
begin
   Put_Line (S1 & " " & S2);
end Show_Simple_String_Literals;