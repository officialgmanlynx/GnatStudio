with Ada.Text_IO; use Ada.Text_IO;

package body Names is

   procedure Show (N : String) is
   begin
      Put_Line ("Name: " & N);
   end Show;

end Names;