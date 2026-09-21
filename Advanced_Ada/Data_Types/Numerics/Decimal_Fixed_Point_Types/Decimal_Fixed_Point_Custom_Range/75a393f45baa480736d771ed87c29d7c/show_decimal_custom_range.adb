with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Custom_Range is

   type D6 is
     delta 1.0 digits 6;
   type D6_R100 is
     delta 1.0 digits 6
       range -100_000.0 .. 100_000.0;

begin
   Put_Line ("D6'Range      : "
             & D6'First'Image
             & " .. "
             & D6'Last'Image);
   Put_Line ("D6_R100'Range : "
             & D6_R100'First'Image
             & " .. "
             & D6_R100'Last'Image);
end Show_Decimal_Custom_Range;