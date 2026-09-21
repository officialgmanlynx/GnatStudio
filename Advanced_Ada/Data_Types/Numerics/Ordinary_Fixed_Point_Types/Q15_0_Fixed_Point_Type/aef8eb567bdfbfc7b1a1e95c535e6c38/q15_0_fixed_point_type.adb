with Ada.Text_IO; use Ada.Text_IO;

procedure Q15_0_Fixed_Point_Type is
   type TQ15_0 is
     delta 1.0
     range -2.0 ** 15 ..
            2.0 ** 15 - 1.0;

   type Int16 is
     range -2 ** 15 ..
            2 ** 15 - 1;
begin
   Put_Line ("TQ15_0 requires "
             & TQ15_0'Size'Image
             & " bits");
   Put_Line ("The delta    value of TQ15_0 is "
             & TQ15_0'Delta'Image);
   Put_Line ("The minimum  value of TQ15_0 is "
             & TQ15_0'First'Image);
   Put_Line ("The maximum  value of TQ15_0 is "
             & TQ15_0'Last'Image);

   Put_Line ("------------------------------");
   Put_Line ("Int16 requires "
             & Int16'Size'Image
             & " bits");
   Put_Line ("The minimum  value of Int16 is "
             & Int16'First'Image);
   Put_Line ("The maximum  value of Int16 is "
             & Int16'Last'Image);
end Q15_0_Fixed_Point_Type;