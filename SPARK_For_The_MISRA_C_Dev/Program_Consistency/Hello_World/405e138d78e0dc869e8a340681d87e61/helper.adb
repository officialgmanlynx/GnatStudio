with Ada.Text_IO;

package body Helper is
   procedure Put_Line (S : String) is
   begin
      Ada.Text_IO.Put_Line ("Start helper version");
      Ada.Text_IO.Put_Line (S);
      Ada.Text_IO.Put_Line ("End helper version");
   end Put_Line;
end Helper;