with Ada.Text_IO; use Ada.Text_IO;

with Ada.Characters.Handling;
use  Ada.Characters.Handling;

package body Names is

   procedure Lower_And_Show (N : in out Name) is
   begin
      N := new String'(To_Lower (N.all));
      Put_Line ("Name: " & N.all);
   end Lower_And_Show;

end Names;