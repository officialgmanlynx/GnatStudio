with Simple_Controlled_Types;
use  Simple_Controlled_Types;

with Selections;
use  Selections;

procedure Show_Controlled_Types is
   S1, S2 : aliased Selection;
   A : T (S1'Access, S2'Access);
begin
   Dummy (A);
end Show_Controlled_Types;