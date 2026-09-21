with Ada.Text_IO; use Ada.Text_IO;

package body Points is

   procedure Display (P : Point_3D) is
   begin
      Put_Line ("(X => "
                & Integer'Image (P (1))
                & ",");
      Put_Line (" Y => "
                & Integer'Image (P (2))
                & ",");
      Put_Line (" Z => "
                & Integer'Image (P (3))
                & ")");
   end Display;

end Points;