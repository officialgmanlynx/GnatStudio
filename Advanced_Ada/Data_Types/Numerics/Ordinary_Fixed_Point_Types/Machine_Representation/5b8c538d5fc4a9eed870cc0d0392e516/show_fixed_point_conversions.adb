with Ada.Text_IO; use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Fixed_Point_Conversions is
   V_31 : TQ31;
   V_15 : TQ15;

   procedure Show_Vars is
   begin
      Put_Line ("V_31 = "
                & V_31'Image);
      Put_Line ("V_15 = "
                & V_15'Image);
      Put_Line ("--------------");
   end Show_Vars;
begin
   V_15 := 2#0.111_1111_1111_1111#;
   V_31 := TQ31 (V_15);
   Show_Vars;

   V_31 :=
     2#0.111_1111_1111_1111_1111_1111_1111_1111#;
   V_15 := TQ15 (V_31);
   Show_Vars;
end Show_Fixed_Point_Conversions;