with Ada.Text_IO; use Ada.Text_IO;

package body Points is

   procedure Display (P : Point_3D) is
   begin
      Put ("      (X => "
           & Point_Value'Image (P.X)
           & ",");
      New_Line;
      Put ("       Y => "
           & Point_Value'Image (P.Y)
           & ",");
      New_Line;
      Put ("       Z => "
           & Point_Value'Image (P.Z)
           & ")");
   end Display;

   procedure Display (PA : Point_3D_Array) is
   begin
      Put_Line ("(");
      for I in PA'Range (1) loop
         Put_Line ("  "
                   & Integer'Image (I)
                   & " =>");
         Display (PA (I));
         if I /= PA'Last (1) then
            Put_Line (",");
         else
            New_Line;
         end if;
      end loop;
      Put_Line (")");
   end Display;

end Points;