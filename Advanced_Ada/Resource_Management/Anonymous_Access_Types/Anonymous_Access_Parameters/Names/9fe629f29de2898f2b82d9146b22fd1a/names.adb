with Ada.Text_IO; use Ada.Text_IO;

package body Names is

   procedure Show (N : access constant String) is
   begin
      Put_Line ("Name: " & N.all);
   end Show;

end Names;