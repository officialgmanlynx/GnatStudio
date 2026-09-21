with Ada.Text_IO; use Ada.Text_IO;

with Static_Expressions;
use  Static_Expressions;

procedure Show_Static_Expressions is
begin
   Put_Line (Long_Long_Float (Pi)'Image);
   Put_Line (Long_Long_Float'(Pi)'Image);
end Show_Static_Expressions;