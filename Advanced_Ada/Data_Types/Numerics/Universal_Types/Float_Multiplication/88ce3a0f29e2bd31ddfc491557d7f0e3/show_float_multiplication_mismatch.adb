with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Float_Multiplication_Mismatch is
   F  : Float      := 0.25;
   LF : Long_Float := 0.50;
begin
   F := F * LF;
   Put_Line ("F = " & F'Image);
end Show_Float_Multiplication_Mismatch;