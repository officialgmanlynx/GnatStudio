with Ada.Text_IO;      use Ada.Text_IO;

with Measurement_Defs; use Measurement_Defs;

procedure Show_Measurements is
   use Measurement_Defs.Vectors;

   M : Measurements := To_Vector (10);
   --                  ^ Creating 10-element
   --                    vector.
begin
   Put_Line ("First index: "
             & M.First_Index'Image);
   Put_Line ("Last index:  "
             & M.Last_Index'Image);

   Put_Line ("Adding element...");
   M.Append (1.0);

   Put_Line ("First index: "
             & M.First_Index'Image);
   Put_Line ("Last index:  "
             & M.Last_Index'Image);
end Show_Measurements;