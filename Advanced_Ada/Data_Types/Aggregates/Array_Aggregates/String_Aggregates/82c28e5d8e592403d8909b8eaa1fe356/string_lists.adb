with Ada.Text_IO; use Ada.Text_IO;

package body String_Lists is

   procedure Display (SL : String_List) is

      procedure Display_Row (SL : String_List;
                             I  : Integer) is
      begin
         Put ("  (");
         for J in SL'Range (2) loop
            Put (SL (I, J));
         end loop;
         Put (")");
      end Display_Row;

   begin
      Put_Line ("Length (1) = "
                & SL'Length (1)'Image);
      Put_Line ("Length (2) = "
                & SL'Length (2)'Image);

      Put_Line ("(");
      for I in SL'Range (1) loop
         Display_Row (SL, I);
         if I /= SL'Last (1) then
            Put_Line (",");
         else
            New_Line;
         end if;
      end loop;
      Put_Line (")");
   end Display;

end String_Lists;