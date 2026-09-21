with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Ordinary_Fixed_Point_Subtypes is
   D : constant := 2.0 ** (-15);

   type TQ15 is
     delta D
     range -1.0 .. 1.0 - D;

   subtype TQ15_Pos is
     TQ15 range 0.0 .. 1.0 - D;

   A : TQ15     := 0.25;
   B : TQ15_Pos := 0.5;
begin
   --  Subtype to parent: always safe,
   --  no conversion needed
   A := B;
   Put_Line ("A = " & A'Image);

   --  Parent to subtype:
   --  range check at run time
   A := 0.75;
   B := A;
   Put_Line ("B = " & B'Image);
end Show_Ordinary_Fixed_Point_Subtypes;