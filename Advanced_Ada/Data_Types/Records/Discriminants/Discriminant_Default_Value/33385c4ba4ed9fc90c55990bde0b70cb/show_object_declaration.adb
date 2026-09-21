with Ada.Text_IO; use Ada.Text_IO;

with Recs;        use Recs;

procedure Show_Object_Declaration is
   A : T;
   B : T (7, 8);
begin
   Put_Line ("A.L = "
             & A.L'Image);
   Put_Line ("A.M = "
             & A.M'Image);
   Put_Line ("B.L = "
             & B.L'Image);
   Put_Line ("B.M = "
             & B.M'Image);
end Show_Object_Declaration;