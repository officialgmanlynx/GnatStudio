with Ada.Text_IO; use Ada.Text_IO;

package body Integer_Arrays is

   procedure Display (A : Integer_Array) is
   begin
      Put_Line ("Length = "
                & A'Length'Image);

      Put_Line ("(");
      for I in A'Range loop
         Put ("  "
              & I'Image
              & " => "
              & A (I)'Image);
         if I /= A'Last then
            Put_Line (",");
         else
            New_Line;
         end if;
      end loop;
      Put_Line (")");
   end Display;

end Integer_Arrays;