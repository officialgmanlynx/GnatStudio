with Ada.Text_IO; use Ada.Text_IO;

with Normalized_Fixed_Point_Types;
use  Normalized_Fixed_Point_Types;

procedure Show_Fixed_Multiplication is
   A : TQ15 := 0.25;
   B : TQ31 := 0.50;
begin
   A := A * B;
   Put_Line ("A = " & A'Image);
end Show_Fixed_Multiplication;