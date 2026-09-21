with Ada.Text_IO;     use Ada.Text_IO;
with Data_Processing; use Data_Processing;

with Log_Element_Per_Line;
with Log_Csv;

procedure Show_Access_To_Subprograms is
   D : Data_Container (1 .. 5) := (others => 1.0);
begin
   Put_Line ("==== Log_Element_Per_Line ====");
   Process (D, Log_Element_Per_Line'Access);

   Put_Line ("==== Log_Csv ====");
   Process (D, Log_Csv'Access);

   Put_Line ("==== None ====");
   Process (D);
end Show_Access_To_Subprograms;