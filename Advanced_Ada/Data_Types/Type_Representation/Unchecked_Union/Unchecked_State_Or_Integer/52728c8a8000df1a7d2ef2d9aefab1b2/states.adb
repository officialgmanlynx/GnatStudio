with Ada.Text_IO; use Ada.Text_IO;

package body States is

   procedure Display_State_Value
     (V : Unchecked_State_Or_Integer)
   is
   begin
      if V.S'Valid then
         Put_Line ("State: " & V.S'Image);
      else
         Put_Line ("State: <invalid>");
      end if;
      Put_Line ("Value: " & V.I'Image);
   end Display_State_Value;

end States;