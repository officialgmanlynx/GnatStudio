with Ada.Text_IO; use Ada.Text_IO;

with Simple_Controlled_Types;
use  Simple_Controlled_Types;

procedure Show_Controlled_Types is
   A, B : T;
begin
   Put_Line ("A := B");
   A := B;

   Dummy (A);
   Dummy (B);
end Show_Controlled_Types;