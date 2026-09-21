with Ada.Text_IO; use Ada.Text_IO;

with Num_Types;   use Num_Types;

procedure Show_Modular is
   I : constant Integer := -1;
   X : Modular := 1;
begin
   X := Modular'Mod (I);
   Put_Line (X'Image);
end Show_Modular;