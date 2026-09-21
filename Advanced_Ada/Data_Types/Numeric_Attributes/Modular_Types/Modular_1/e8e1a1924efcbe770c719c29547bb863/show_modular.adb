with Ada.Text_IO; use Ada.Text_IO;

with Num_Types;   use Num_Types;

procedure Show_Modular is
   I : Integer := -1;
   X : Modular := 1;
begin
   X := Modular (I);  --  raises Constraint_Error
   Put_Line (X'Image);
end Show_Modular;