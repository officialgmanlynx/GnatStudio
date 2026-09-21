with Ada.Text_IO; use Ada.Text_IO;

with Multidimensional_Arrays_Decl;
use  Multidimensional_Arrays_Decl;

procedure Show_Multidimensional_Arrays is
   A1 : F1 (1 .. 2);
   A2 : F2 (1 .. 4, 10 .. 20);
   A3 : F3 (2 .. 3, 1 .. 5, 1 .. 2);
begin
   Put_Line ("A1'Length (1): "
             & A1'Length (1)'Image);
   Put_Line ("A2'Length (1): "
             & A2'Length (1)'Image);
   Put_Line ("A2'Length (2): "
             & A2'Length (2)'Image);
   Put_Line ("A3'Length (1): "
             & A3'Length (1)'Image);
   Put_Line ("A3'Length (2): "
             & A3'Length (2)'Image);
   Put_Line ("A3'Length (3): "
             & A3'Length (3)'Image);
end Show_Multidimensional_Arrays;