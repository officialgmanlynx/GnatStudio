with Ada.Text_IO; use Ada.Text_IO;

with Fixed_Types; use Fixed_Types;

procedure Show_Saturating is
   A, B, C : Sample;
   R       : Sat_Sample;
begin
   A := 0.5;
   B := 0.75;
   R := Sat_Sample (A) + Sat_Sample (B);
   C := Sample (R);
   Put_Line ("0.5 + 0.75    = "
             & C'Image);

   A := -1.0;
   B := -1.0;
   R := Sat_Sample (A) * Sat_Sample (B);
   C := Sample (R);
   Put_Line ("(-1.0)*(-1.0) = "
             & C'Image);

   A := 0.5;
   B := 0.25;
   R := Sat_Sample (A) + Sat_Sample (B);
   C := Sample (R);
   Put_Line ("0.5 + 0.25    = "
             & C'Image);

   A := -0.5;
   B := 0.75;
   R := Sat_Sample (A) - Sat_Sample (B);
   C := Sample (R);
   Put_Line ("-0.5 - 0.75   = "
             & C'Image);
end Show_Saturating;