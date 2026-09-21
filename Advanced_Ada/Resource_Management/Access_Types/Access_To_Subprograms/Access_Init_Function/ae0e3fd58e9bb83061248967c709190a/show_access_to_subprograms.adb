with Ada.Text_IO;     use Ada.Text_IO;
with Data_Processing; use Data_Processing;

with Init_Zero;
with Init_One;

with Log_Element_Per_Line;

procedure Show_Access_To_Subprograms is
   D : Data_Container (1 .. 5) := (others => 1.0);
begin
   Put_Line ("==== Init_Zero ====");
   Process (D, Init_Zero'Access);
   Log_Element_Per_Line (D);

   Put_Line ("==== Init_One ====");
   Process (D, Init_One'Access);
   Log_Element_Per_Line (D);

   --  Put_Line ("==== None ====");
   --  Process (D, null);
   --  Log_Element_Per_Line (D);
end Show_Access_To_Subprograms;