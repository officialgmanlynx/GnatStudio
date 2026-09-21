with Simple_Controlled_Types;
use  Simple_Controlled_Types;

procedure Show_Controlled_Types is
   A : T;
   --
   --  This declaration roughly
   --  corresponds to:
   --
   --     A : T;
   --  begin
   --     Initialize (A);
   --
begin
   Dummy (A);

   --  When A is about to get out of
   --  scope:
   --
   --  Finalize (A);
   --
end Show_Controlled_Types;