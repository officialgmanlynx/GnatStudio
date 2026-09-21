with Ada.Text_IO; use Ada.Text_IO;

package body Points is

   procedure Display (P : Point_3D) is
   begin
      Put_Line ("(X => "
                & Integer'Image (P.X)
                & ",");
      Put_Line (" Y => "
                & Integer'Image (P.Y)
                & ",");
      Put_Line (" Z => "
                & Integer'Image (P.Z)
                & ")");
   end Display;

end Points;