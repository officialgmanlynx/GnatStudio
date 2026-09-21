with Ada.Text_IO; use Ada.Text_IO;
with System;

with P;           use P;

procedure Show_Storage is
   R1 : R;
begin
   Put_Line ("R'Size:              "
             & R'Size'Image);
   Put_Line ("R'Object_Size:       "
             & R'Object_Size'Image);
   New_Line;

   Put_Line ("System.Storage_Unit: "
             & System.Storage_Unit'Image);
   New_Line;

   Put_Line ("R1.A'Position  : "
             & R1.A'Position'Image);
   Put_Line ("R1.A'First_Bit : "
             & R1.A'First_Bit'Image);
   Put_Line ("R1.A'Last_Bit  : "
             & R1.A'Last_Bit'Image);
   New_Line;

   Put_Line ("R1.B'Position  : "
             & R1.B'Position'Image);
   Put_Line ("R1.B'First_Bit : "
             & R1.B'First_Bit'Image);
   Put_Line ("R1.B'Last_Bit  : "
             & R1.B'Last_Bit'Image);
end Show_Storage;