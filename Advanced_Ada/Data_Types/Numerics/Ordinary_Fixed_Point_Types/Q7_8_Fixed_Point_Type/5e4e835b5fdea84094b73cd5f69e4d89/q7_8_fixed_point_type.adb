with Ada.Text_IO; use Ada.Text_IO;

procedure Q7_8_Fixed_Point_Type is
   type TQ7_8 is
     delta  2.0 ** (-8)
     range -2.0 ** 7 ..
            2.0 ** 7 - 2.0 ** (-8);
begin
   Put_Line ("TQ7_8 requires "
             & TQ7_8'Size'Image
             & " bits");
   Put_Line ("The delta    value of TQ7_8 is "
             & TQ7_8'Delta'Image);
   Put_Line ("The minimum  value of TQ7_8 is "
             & TQ7_8'First'Image);
   Put_Line ("The maximum  value of TQ7_8 is "
             & TQ7_8'Last'Image);
end Q7_8_Fixed_Point_Type;