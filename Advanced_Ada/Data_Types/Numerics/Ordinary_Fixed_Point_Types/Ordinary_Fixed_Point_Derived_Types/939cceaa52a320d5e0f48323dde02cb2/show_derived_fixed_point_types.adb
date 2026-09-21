with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Derived_Fixed_Point_Types is
   Q15         : TQ15;
   Q15_Derived : TQ15_Derived;
begin
   Put_Line ("TQ15'Delta         = "
             & TQ15'Delta'Image);
   Put_Line ("TQ15'Small         = "
             & TQ15'Small'Image);
   Put_Line ("TQ15_Derived'Delta = "
             & TQ15_Derived'Delta'Image);
   Put_Line ("TQ15_Derived'Small = "
             & TQ15_Derived'Small'Image);

   Q15  := 0.25;
   Put_Line ("Q15         = "
             & Q15'Image);

   Q15_Derived := TQ15_Derived (Q15);
   Put_Line ("Q15_Derived = "
             & Q15_Derived'Image);
end Show_Derived_Fixed_Point_Types;