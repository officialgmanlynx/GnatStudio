with Ada.Text_IO; use Ada.Text_IO;

package body Info is

   procedure Show (R : Id_Number) is
   begin
      Put_Line ("ID: " & Positive'Image (R.Id));
   end Show;

end Info;