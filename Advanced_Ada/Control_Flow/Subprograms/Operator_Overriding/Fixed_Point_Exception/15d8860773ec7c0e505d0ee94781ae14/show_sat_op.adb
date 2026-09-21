with Ada.Text_IO; use Ada.Text_IO;
with Fixed_Point; use Fixed_Point;

procedure Show_Sat_Op is
   A, B, C : TQ31;
begin
   A := TQ31'Last;
   B := TQ31'Last;
   C := A + B;

   Put_Line (A'Image   & " + "
             & B'Image & " = "
             & C'Image);

   A := TQ31'First;
   B := TQ31'First;
   C := A + B;

   Put_Line (A'Image   & " + "
             & B'Image & " = "
             & C'Image);

end Show_Sat_Op;