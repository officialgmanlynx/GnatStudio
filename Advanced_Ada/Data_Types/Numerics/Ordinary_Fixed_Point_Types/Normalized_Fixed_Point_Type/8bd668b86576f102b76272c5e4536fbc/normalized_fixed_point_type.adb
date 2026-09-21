with Ada.Text_IO; use Ada.Text_IO;

procedure Normalized_Fixed_Point_Type is
   D : constant := 2.0 ** (-15);

   type TQ15 is
     delta D
     range -1.0 .. 1.0 - D;
begin
   Put_Line ("TQ15 requires "
             & TQ15'Size'Image
             & " bits");
   Put_Line ("The delta    value of TQ15 is "
             & TQ15'Delta'Image);
   Put_Line ("The minimum  value of TQ15 is "
             & TQ15'First'Image);
   Put_Line ("The maximum  value of TQ15 is "
             & TQ15'Last'Image);
end Normalized_Fixed_Point_Type;