with Ada.Text_IO; use Ada.Text_IO;

--  with Ada.Characters.Handling;
--  use  Ada.Characters.Handling;

package body Names is

   procedure Show (N : Constant_Name) is
   begin
      --  for I in N'Range loop
      --     N (I) := To_Lower (N (I));
      --  end loop;
      Put_Line ("Name: " & N.all);
   end Show;

end Names;