with Ada.Text_IO; use Ada.Text_IO;

package body Float_Arrays is

   procedure Display (P : Float_Array) is
   begin

      Put ("(");
      for I in P'Range loop
         Put (I'Image
              & " => "
              & P (I)'Image);
      end loop;
      Put_Line (")");

   end Display;

end Float_Arrays;