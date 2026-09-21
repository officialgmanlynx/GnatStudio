with Ada.Text_IO; use Ada.Text_IO;

package body Points is

   procedure Display (P : Point_3D) is
   begin
      Put_Line ("(X => "
                & Point_Value'Image (P.X)
                & ",");
      Put_Line (" Y => "
                & Point_Value'Image (P.Y)
                & ",");
      Put_Line (" Z => "
                & Point_Value'Image (P.Z)
                & ")");
   end Display;

end Points;