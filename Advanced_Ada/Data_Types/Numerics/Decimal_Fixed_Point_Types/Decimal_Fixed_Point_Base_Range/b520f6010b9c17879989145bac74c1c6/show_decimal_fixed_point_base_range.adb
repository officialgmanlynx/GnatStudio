with Ada.Text_IO;   use Ada.Text_IO;

procedure Show_Decimal_Fixed_Point_Base_Range is

   type D6 is
     delta 1.0 digits 6;

begin
   Put_Line ("D6'Range      : "
             & D6'First'Image
             & " .. "
             & D6'Last'Image);
   Put_Line ("D6'Base'Range : "
             & D6'Base'First'Image
             & " .. "
             & D6'Base'Last'Image);
end Show_Decimal_Fixed_Point_Base_Range;