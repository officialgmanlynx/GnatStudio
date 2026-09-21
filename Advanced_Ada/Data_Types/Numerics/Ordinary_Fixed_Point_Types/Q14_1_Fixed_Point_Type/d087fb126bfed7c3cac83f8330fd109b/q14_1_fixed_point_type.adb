with Ada.Text_IO; use Ada.Text_IO;

procedure Q14_1_Fixed_Point_Type is
   type TQ14_1 is
     delta  0.5
     range -2.0 ** 14 ..
            2.0 ** 14 - 0.5;
begin
   Put_Line ("TQ14_1 requires "
             & TQ14_1'Size'Image
             & " bits");
   Put_Line ("The delta    value of TQ14_1 is "
             & TQ14_1'Delta'Image);
   Put_Line ("The minimum  value of TQ14_1 is "
             & TQ14_1'First'Image);
   Put_Line ("The maximum  value of TQ14_1 is "
             & TQ14_1'Last'Image);
end Q14_1_Fixed_Point_Type;