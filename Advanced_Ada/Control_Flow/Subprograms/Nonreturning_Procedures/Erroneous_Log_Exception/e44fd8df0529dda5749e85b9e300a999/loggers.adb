with Ada.Text_IO; use Ada.Text_IO;

package body Loggers is

   procedure Log_And_Raise (Msg : String) is
   begin
      Put_Line (Msg);
   end Log_And_Raise;

end Loggers;