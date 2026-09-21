with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Character_Literals is
   C   : Character := 'a';
   --                 ^^^
   --           Character literal
begin
   Put_Line ("Character : " & C);
end Show_Character_Literals;