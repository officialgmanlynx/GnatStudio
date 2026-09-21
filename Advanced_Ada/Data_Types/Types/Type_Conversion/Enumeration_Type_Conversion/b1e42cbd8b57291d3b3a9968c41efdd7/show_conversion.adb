with Ada.Text_IO;         use Ada.Text_IO;
with Custom_Enumerations; use Custom_Enumerations;

procedure Show_Conversion is
   P  : Priority           := Low;
   IP : Important_Priority := High;
begin
   P := Priority (IP);

   Put_Line ("P:  "
             & P'Image);

   P  := Mid;
   IP := Important_Priority (P);

   Put_Line ("IP: "
             & IP'Image);
end Show_Conversion;