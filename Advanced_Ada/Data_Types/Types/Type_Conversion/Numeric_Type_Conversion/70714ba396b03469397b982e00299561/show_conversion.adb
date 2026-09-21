with Fixed_Point_Defs; use Fixed_Point_Defs;
with Ada.Text_IO;      use Ada.Text_IO;

procedure Show_Conversion is
   F  : Float;
   FP : TQ15_31;
   I  : Integer;
begin
   FP := TQ15_31 (10.25);
   I  := Integer (FP);

   Put_Line ("FP : "
             & FP'Image);
   Put_Line ("I : "
             & I'Image);

   I  := 128;
   FP := TQ15_31 (I);
   F  := Float (FP);

   Put_Line ("FP : "
             & FP'Image);
   Put_Line ("F :   "
             & F'Image);
end Show_Conversion;