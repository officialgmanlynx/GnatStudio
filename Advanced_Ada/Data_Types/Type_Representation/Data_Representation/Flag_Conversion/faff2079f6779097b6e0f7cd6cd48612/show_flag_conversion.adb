with Ada.Text_IO;      use Ada.Text_IO;
with Flag_Definitions; use Flag_Definitions;

procedure Show_Flag_Conversion is
   Flags_1 : Flags (1 .. 8);
   Flags_2 : Packed_Flags (1 .. 8);
begin
   Flags_1 := Default_Flags;
   Flags_2 := Packed_Flags (Flags_1);

   for I in Flags_2'Range loop
      Put_Line (I'Image & ": "
                & Flags_1 (I)'Image & ", "
                & Flags_2 (I)'Image);
   end loop;
end Show_Flag_Conversion;