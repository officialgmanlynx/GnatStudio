with Simple_Controlled_Types;
use  Simple_Controlled_Types;

with Selections; use Selections;

procedure Show_Controlled_Types is
   type T_Access is access T;

   S : aliased Selection;
   A : constant T_Access := new T (S'Access);
begin
   Start_Work (A.all);
   Stop_Work (A.all);
end Show_Controlled_Types;