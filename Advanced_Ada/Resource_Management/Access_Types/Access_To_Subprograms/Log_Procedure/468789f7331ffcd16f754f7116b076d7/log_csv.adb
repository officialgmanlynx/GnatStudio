with Ada.Text_IO;     use Ada.Text_IO;
with Data_Processing; use Data_Processing;

procedure Log_Csv (D : Data_Container) is
begin
   for I in D'First .. D'Last - 1 loop
      Put (D (I)'Image & ", ");
   end loop;
   Put (D (D'Last)'Image);
   New_Line;
end Log_Csv;