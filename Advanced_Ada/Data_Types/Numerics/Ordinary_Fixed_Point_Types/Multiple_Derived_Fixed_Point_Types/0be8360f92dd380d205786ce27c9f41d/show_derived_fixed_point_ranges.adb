with Ada.Text_IO;   use Ada.Text_IO;

with Custom_Fixed_Point;
use  Custom_Fixed_Point;

procedure Show_Derived_Fixed_Point_Ranges is
begin
   Put_Line ("TQ15'Range         : "
             & TQ15'First'Image
             & " .. "
             & TQ15'Last'Image);
   Put_Line ("TQ15_Half'Range    : "
             & TQ15_Half'First'Image
             & " .. "
             & TQ15_Half'Last'Image);
   Put_Line ("TQ15_Quarter'Range : "
             & TQ15_Quarter'First'Image
             & " .. "
             & TQ15_Quarter'Last'Image);
end Show_Derived_Fixed_Point_Ranges;