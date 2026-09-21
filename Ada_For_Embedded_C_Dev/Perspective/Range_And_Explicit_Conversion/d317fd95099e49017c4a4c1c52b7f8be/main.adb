with Ada.Text_IO;

procedure Main is
   type Grade is range 0 .. 100;

   G1, G2 : Grade := 99;
begin
   G1 := Grade ((Integer (G1) + Integer (G2)) / 2);
   Ada.Text_IO.Put_Line (Grade'Image (G1));
end Main;