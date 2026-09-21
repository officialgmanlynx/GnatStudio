with Ada.Text_IO;

package body Helper is
   procedure Public_Put_Line (S : String) is
   begin
      Ada.Text_IO.Put_Line (S);
   end Public_Put_Line;

   procedure Private_Put_Line (S : String) is
   begin
      Ada.Text_IO.Put_Line (S);
   end Private_Put_Line;

   procedure Body_Put_Line (S : String) is
   begin
      Ada.Text_IO.Put_Line (S);
   end Body_Put_Line;
end Helper;