with Ada.Text_IO; use Ada.Text_IO;

package body Points is

   procedure Display (P : Point) is
   begin
      Put_Line (Point_Dimension'Image (P.D));

      case P.D is
      when Dim_1 =>
         Put_Line ("  (X => "
                   & Integer'Image (P.X1)
                   & ")");
      when Dim_2 =>
         Put_Line ("  (X => "
                   & Integer'Image (P.X2)
                   & ",");
         Put_Line ("   Y => "
                   & Integer'Image (P.Y2)
                  & ")");
      when Dim_3 =>
         Put_Line ("  (X => "
                   & Integer'Image (P.X3)
                   & ",");
         Put_Line ("   Y => "
                   & Integer'Image (P.Y3)
                   & ",");
         Put_Line ("   Z => "
                   & Integer'Image (P.Z3)
                   & ")");
      end case;
   end Display;

end Points;