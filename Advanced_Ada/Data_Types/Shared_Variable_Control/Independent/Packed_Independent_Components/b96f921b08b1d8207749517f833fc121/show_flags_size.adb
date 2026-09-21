with Ada.Text_IO; use Ada.Text_IO;
with System;

with Shared_Var_Types; use Shared_Var_Types;

procedure Show_Flags_Size is
   F : Flags (1 .. 8);
begin
   Put_Line ("Flags'Size:      "
             & F'Size'Image & " bits");
   Put_Line ("Flags (1)'Size:  "
             & F (1)'Size'Image & " bits");
   Put_Line ("# storage units: "
             & Integer'Image
                 (F'Size /
                  System.Storage_Unit));
end Show_Flags_Size;