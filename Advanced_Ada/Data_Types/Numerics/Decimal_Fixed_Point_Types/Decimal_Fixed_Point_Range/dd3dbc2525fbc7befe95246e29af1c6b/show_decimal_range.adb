with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Decimal_Range is

   type D1 is
     delta 1.0 digits 1;
   type D2 is
     delta 1.0 digits 2;
   type D3 is
     delta 1.0 digits 3;
   type D6 is
     delta 1.0 digits 6;
   type D38 is
     delta 1.0 digits 38;

begin
   Put_Line ("D1'Range : "
             & D1'First'Image
             & " .. "
             & D1'Last'Image);
   Put_Line ("D2'Range : "
             & D2'First'Image
             & " .. "
             & D2'Last'Image);
   Put_Line ("D3'Range : "
             & D3'First'Image
             & " .. "
             & D3'Last'Image);
   Put_Line ("D6'Range : "
             & D6'First'Image
             & " .. "
             & D6'Last'Image);
   Put_Line ("D38'Range : "
             & D38'First'Image
             & " .. "
             & D38'Last'Image);
end Show_Decimal_Range;