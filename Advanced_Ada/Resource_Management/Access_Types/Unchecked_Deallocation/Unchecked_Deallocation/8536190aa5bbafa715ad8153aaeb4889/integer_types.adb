with Ada.Text_IO; use Ada.Text_IO;

package body Integer_Types is

   procedure Show_Is_Null (I : Integer_Access) is
   begin
      if I = null then
         Put_Line ("access value is null.");
      else
         Put_Line ("access value is NOT null.");
      end if;
   end Show_Is_Null;

end Integer_Types;