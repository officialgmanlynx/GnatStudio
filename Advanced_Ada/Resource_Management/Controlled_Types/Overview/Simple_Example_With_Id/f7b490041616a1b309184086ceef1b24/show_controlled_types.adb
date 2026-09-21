with Ada.Text_IO; use Ada.Text_IO;

with Simple_Controlled_Types;
use  Simple_Controlled_Types;

procedure Show_Controlled_Types is
   A, B : T;
   --
   --  Declaration corresponds to:
   --
   --  declare
   --     A, B : T;
   --  begin
   --     Initialize (A);
   --     Initialize (B);
   --  end;
begin
   Put_Line ("--------");
   Show (A, "A");
   Show (B, "B");

   Put_Line ("--------");
   Put_Line ("A := B;");

   A := B;
   --  Statement corresponds to:
   --
   --  Finalize (A);
   --  A := B;
   --  Adjust (A);

   Put_Line ("--------");
   Show (A, "A");
   Show (B, "B");
   Put_Line ("--------");

   --  When A and B get out of scope::
   --
   --  Finalize (A);
   --  Finalize (B);
   --
end Show_Controlled_Types;