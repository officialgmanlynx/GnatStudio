with Ada.Text_IO; use Ada.Text_IO;

with Simple_Controlled_Types;
use  Simple_Controlled_Types;

procedure Show_Controlled_Types is
   A : T_Access := new T;
begin
   Dummy (A.all);

   Free (A);
   --  At this point, Finalize (A.all)
   --  will be called before the actual
   --  deallocation.

   Put_Line ("We've just freed A.");
end Show_Controlled_Types;