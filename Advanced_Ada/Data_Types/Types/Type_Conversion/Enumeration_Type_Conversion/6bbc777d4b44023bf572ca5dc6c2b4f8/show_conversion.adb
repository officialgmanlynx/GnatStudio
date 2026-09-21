with Ada.Text_IO;         use Ada.Text_IO;
with Custom_Enumerations; use Custom_Enumerations;

procedure Show_Conversion is
   P  : Priority;
   IP : Important_Priority;
begin
   P  := Low;
   IP := Important_Priority (P);

   Put_Line ("IP: "
             & IP'Image);
end Show_Conversion;