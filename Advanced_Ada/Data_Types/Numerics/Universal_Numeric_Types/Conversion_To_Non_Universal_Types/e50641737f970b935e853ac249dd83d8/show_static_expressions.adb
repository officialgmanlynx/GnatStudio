with Ada.Text_IO; use Ada.Text_IO;

with Static_Expressions;
use  Static_Expressions;

procedure Show_Static_Expressions is
begin
   Put_Line (Pi'Image);
   --  Same as:
   --  Put_Line (Float (Pi)'Image);

   Put_Line (Seed'Image);
   --  Same as:
   --  Put_Line (
   --    Long_Long_Long_Integer (Seed)'Image);
end Show_Static_Expressions;