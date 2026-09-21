with Ada.Text_IO; use Ada.Text_IO;

package body Matrices is

   procedure Display (M : Matrix) is

      procedure Display_Row (M : Matrix;
                             I : Integer) is
      begin
         Put_Line ("  (");
         for J in M'Range (2) loop
            Put ("    "
                 & J'Image
                 & " => "
                 & M (I, J)'Image);
            if J /= M'Last (2) then
               Put_Line (",");
            else
               New_Line;
            end if;
         end loop;
         Put ("  )");
      end Display_Row;

   begin
      Put_Line ("Length (1) = "
                & M'Length (1)'Image);
      Put_Line ("Length (2) = "
                & M'Length (2)'Image);

      Put_Line ("(");
      for I in M'Range (1) loop
         Display_Row (M, I);
         if I /= M'Last (1) then
            Put_Line (",");
         else
            New_Line;
         end if;
      end loop;
      Put_Line (")");

   end Display;

end Matrices;