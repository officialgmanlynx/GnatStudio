with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Subtype_Range is

   type D6 is
     delta 1.0 digits 6;

   subtype D6_RD3 is D6
     range -999.0 .. 999.0;

   subtype D6_R5 is D6
     range -5.0 .. 5.0;

begin
   Put_Line ("D6'Range     : "
             & D6'First'Image
             & " .. "
             & D6'Last'Image);
   Put_Line ("D6_RD3'Range : "
             & D6_RD3'First'Image
             & " .. "
             & D6_RD3'Last'Image);
   Put_Line ("D6_R5'Range  : "
             & D6_R5'First'Image
             & " .. "
             & D6_R5'Last'Image);
end Show_Decimal_Subtype_Range;