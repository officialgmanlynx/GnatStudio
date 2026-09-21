with Ada.Text_IO;      use Ada.Text_IO;

with Measurement_Defs; use Measurement_Defs;

procedure Show_Measurements is
   M : Measurements (1 .. 10);
   --                ^ Providing bounds here!
begin
   Put_Line ("First index: " & M'First'Image);
   Put_Line ("Last index:  " & M'Last'Image);
end Show_Measurements;