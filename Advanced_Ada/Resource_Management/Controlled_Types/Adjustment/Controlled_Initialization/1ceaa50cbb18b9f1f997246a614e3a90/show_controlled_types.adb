with Ada.Text_IO; use Ada.Text_IO;

with Simple_Controlled_Types;
use  Simple_Controlled_Types;

procedure Show_Controlled_Types is
   A, B : T;
begin
   Dummy (A);

   Put_Line ("----------");
   Put_Line ("A := B");
   A := B;
   Put_Line ("----------");
end Show_Controlled_Types;