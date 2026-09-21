with Ada.Text_IO; use Ada.Text_IO;

package body States is

   procedure Display_State_Value
     (V : Unchecked_State_Or_Integer)
   is
   begin
      Put_Line ("State: " & V.S'Image);
      Put_Line ("Value: " & V.I'Image);
   end Display_State_Value;

end States;