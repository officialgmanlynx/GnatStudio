with Ada.Text_IO; use Ada.Text_IO;

with Static_Expressions;
use  Static_Expressions;

procedure Show_Static_Expressions is
   Initial_Seed : constant
     Long_Long_Long_Integer :=
       Super_Seed;
begin
   Put_Line (Initial_Seed'Image);
end Show_Static_Expressions;