with Ada.Text_IO; use Ada.Text_IO;

with Normalized_Fixed_Point_Types;
use  Normalized_Fixed_Point_Types;

procedure Show_Fixed_Multiplication is
   Q31_A : TQ31 := 0.25;
   Q31_B : TQ31 := 0.50;
   Q15_A : TQ15 := 0.25;
   Q15_B : TQ15 := 0.50;
begin
   Q31_A := Q31_A * Q31_B;
   Put_Line ("Q31_A = " & Q31_A'Image);

   Q15_A := Q15_A * Q15_B;
   Put_Line ("Q15_A = " & Q31_A'Image);

   Q15_A := TQ15 (Q31_A) * Q15_B;
   --       ^^^^^^^^^^^^
   --  A conversion is required because of
   --  the multiplication operator of
   --  TQ15.
   Put_Line ("Q31_A = " & Q31_A'Image);
end Show_Fixed_Multiplication;