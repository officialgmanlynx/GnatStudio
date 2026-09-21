with Ada.Text_IO; use Ada.Text_IO;

with Num_Types;   use Num_Types;

procedure Show_Modular is
   X : Modular;
begin
   X := 1;
   Put_Line (X'Image);

   X := -X;
   Put_Line (X'Image);
end Show_Modular;