with Ada.Text_IO; use Ada.Text_IO;

package body Points is

   procedure Display (P : Point_1D) is
   begin
      Put_Line ("(X => " & P.X'Image & ")");
   end Display;

   procedure Display (P : Point_2D) is
   begin
      Put_Line ("(X => " & P.X'Image
                & ", Y => " & P.Y'Image & ")");
   end Display;

   procedure Display (P : Point_3D) is
   begin
      Put_Line ("(X => " & P.X'Image
                & ", Y => " & P.Y'Image
                & ", Z => " & P.Z'Image & ")");
   end Display;

end Points;