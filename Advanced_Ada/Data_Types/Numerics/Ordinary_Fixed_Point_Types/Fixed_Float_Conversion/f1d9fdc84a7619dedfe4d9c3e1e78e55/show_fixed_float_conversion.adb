with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Fixed_Float_Conversion is
   D : constant := 2.0 ** (-15);

   type TQ15 is
     delta D
     range -1.0 .. 1.0 - D;

   F : TQ15;
   R : Float;
begin
   F := 0.1;
   R := Float (F);
   Put_Line ("Fixed 0.1  = " & F'Image);
   Put_Line ("Float (F)  = " & R'Image);

   Put_Line ("----------");

   R := 0.333_333;
   F := TQ15 (R);
   Put_Line ("Float 0.333333 = " & R'Image);
   Put_Line ("TQ15  (R)      = " & F'Image);
end Show_Fixed_Float_Conversion;